package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.fuseable.HasUpstreamPublisher;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.NotificationLite;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: /home/user/work/dex/classes.dex */
public final class FlowablePublish<T> extends ConnectableFlowable<T> implements HasUpstreamPublisher<T> {
    static final long CANCELLED = Long.MIN_VALUE;
    final int bufferSize;
    final AtomicReference<PublishSubscriber<T>> current;
    final Publisher<T> onSubscribe;
    final Flowable<T> source;

    public static <T> ConnectableFlowable<T> create(Flowable<T> flowable, int i) {
        AtomicReference atomicReference = new AtomicReference();
        return RxJavaPlugins.onAssembly((ConnectableFlowable) new FlowablePublish(new FlowablePublisher(atomicReference, i), flowable, atomicReference, i));
    }

    private FlowablePublish(Publisher<T> publisher, Flowable<T> flowable, AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
        this.onSubscribe = publisher;
        this.source = flowable;
        this.current = atomicReference;
        this.bufferSize = i;
    }

    @Override // io.reactivex.internal.fuseable.HasUpstreamPublisher
    public Publisher<T> source() {
        return this.source;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super T> subscriber) {
        this.onSubscribe.subscribe(subscriber);
    }

    @Override // io.reactivex.flowables.ConnectableFlowable
    public void connect(Consumer<? super Disposable> consumer) {
        PublishSubscriber<T> publishSubscriber;
        while (true) {
            publishSubscriber = this.current.get();
            if (publishSubscriber != null && !publishSubscriber.isDisposed()) {
                break;
            }
            PublishSubscriber<T> publishSubscriber2 = new PublishSubscriber<>(this.current, this.bufferSize);
            if (this.current.compareAndSet(publishSubscriber, publishSubscriber2)) {
                publishSubscriber = publishSubscriber2;
                break;
            }
        }
        boolean z = !publishSubscriber.shouldConnect.get() && publishSubscriber.shouldConnect.compareAndSet(false, true);
        try {
            consumer.accept(publishSubscriber);
            if (z) {
                this.source.subscribe((FlowableSubscriber) publishSubscriber);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            throw ExceptionHelper.wrapOrThrow(th);
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static final class PublishSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        static final InnerSubscriber[] EMPTY = new InnerSubscriber[0];
        static final InnerSubscriber[] TERMINATED = new InnerSubscriber[0];
        private static final long serialVersionUID = -202316842419149694L;
        final int bufferSize;
        final AtomicReference<PublishSubscriber<T>> current;
        volatile SimpleQueue<T> queue;
        int sourceMode;
        volatile Object terminalEvent;
        final AtomicReference<Subscription> upstream = new AtomicReference<>();
        final AtomicReference<InnerSubscriber<T>[]> subscribers = new AtomicReference<>(EMPTY);
        final AtomicBoolean shouldConnect = new AtomicBoolean();

        PublishSubscriber(AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
            this.current = atomicReference;
            this.bufferSize = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.subscribers.get() == TERMINATED || this.subscribers.getAndSet(TERMINATED) == TERMINATED) {
                return;
            }
            this.current.compareAndSet(this, null);
            SubscriptionHelper.cancel(this.upstream);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.subscribers.get() == TERMINATED;
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this.upstream, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(7);
                    if (requestFusion == 1) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        this.terminalEvent = NotificationLite.complete();
                        dispatch();
                        return;
                    }
                    if (requestFusion == 2) {
                        this.sourceMode = requestFusion;
                        this.queue = queueSubscription;
                        subscription.request(this.bufferSize);
                        return;
                    }
                }
                this.queue = new SpscArrayQueue(this.bufferSize);
                subscription.request(this.bufferSize);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.sourceMode == 0 && !this.queue.offer(t)) {
                onError(new MissingBackpressureException("Prefetch queue is full?!"));
            } else {
                dispatch();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.terminalEvent == null) {
                this.terminalEvent = NotificationLite.error(th);
                dispatch();
            } else {
                RxJavaPlugins.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.terminalEvent == null) {
                this.terminalEvent = NotificationLite.complete();
                dispatch();
            }
        }

        boolean add(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber<T>[] innerSubscriberArr;
            InnerSubscriber<T>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                if (innerSubscriberArr == TERMINATED) {
                    return false;
                }
                int length = innerSubscriberArr.length;
                innerSubscriberArr2 = new InnerSubscriber[length + 1];
                System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr2, 0, length);
                innerSubscriberArr2[length] = innerSubscriber;
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
            return true;
        }

        void remove(InnerSubscriber<T> innerSubscriber) {
            InnerSubscriber<T>[] innerSubscriberArr;
            InnerSubscriber<T>[] innerSubscriberArr2;
            do {
                innerSubscriberArr = this.subscribers.get();
                int length = innerSubscriberArr.length;
                if (length == 0) {
                    return;
                }
                int i = -1;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        break;
                    }
                    if (innerSubscriberArr[i2].equals(innerSubscriber)) {
                        i = i2;
                        break;
                    }
                    i2++;
                }
                if (i < 0) {
                    return;
                }
                if (length == 1) {
                    innerSubscriberArr2 = EMPTY;
                } else {
                    InnerSubscriber<T>[] innerSubscriberArr3 = new InnerSubscriber[length - 1];
                    System.arraycopy(innerSubscriberArr, 0, innerSubscriberArr3, 0, i);
                    System.arraycopy(innerSubscriberArr, i + 1, innerSubscriberArr3, i, (length - i) - 1);
                    innerSubscriberArr2 = innerSubscriberArr3;
                }
            } while (!this.subscribers.compareAndSet(innerSubscriberArr, innerSubscriberArr2));
        }

        boolean checkTerminated(Object obj, boolean z) {
            int i = 0;
            if (obj != null) {
                if (!NotificationLite.isComplete(obj)) {
                    Throwable error = NotificationLite.getError(obj);
                    this.current.compareAndSet(this, null);
                    InnerSubscriber<T>[] andSet = this.subscribers.getAndSet(TERMINATED);
                    if (andSet.length != 0) {
                        int length = andSet.length;
                        while (i < length) {
                            andSet[i].child.onError(error);
                            i++;
                        }
                    } else {
                        RxJavaPlugins.onError(error);
                    }
                    return true;
                }
                if (z) {
                    this.current.compareAndSet(this, null);
                    InnerSubscriber<T>[] andSet2 = this.subscribers.getAndSet(TERMINATED);
                    int length2 = andSet2.length;
                    while (i < length2) {
                        andSet2[i].child.onComplete();
                        i++;
                    }
                    return true;
                }
            }
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:67:0x013f, code lost:
        
            if (r8 == 0) goto L83;
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x0141, code lost:
        
            r6 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x0144, code lost:
        
            if (r25.sourceMode == 1) goto L84;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0146, code lost:
        
            r25.upstream.get().request(r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x0157, code lost:
        
            if (r14 == 0) goto L89;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x0159, code lost:
        
            if (r0 != false) goto L89;
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x0152, code lost:
        
            r6 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        void dispatch() {
            boolean z;
            T t;
            T t2;
            InnerSubscriber<T>[] innerSubscriberArr;
            SimpleQueue<T> simpleQueue;
            boolean z2;
            if (getAndIncrement() != 0) {
                return;
            }
            AtomicReference<InnerSubscriber<T>[]> atomicReference = this.subscribers;
            boolean z3 = true;
            InnerSubscriber<T>[] innerSubscriberArr2 = atomicReference.get();
            int i = 1;
            while (true) {
                Object obj = this.terminalEvent;
                SimpleQueue<T> simpleQueue2 = this.queue;
                boolean z4 = (simpleQueue2 == null || simpleQueue2.isEmpty()) ? z3 : false;
                if (checkTerminated(obj, z4)) {
                    return;
                }
                if (z4) {
                    z = z3;
                } else {
                    int length = innerSubscriberArr2.length;
                    int i2 = 0;
                    long j = Long.MAX_VALUE;
                    for (InnerSubscriber<T> innerSubscriber : innerSubscriberArr2) {
                        long j2 = innerSubscriber.get();
                        if (j2 != FlowablePublish.CANCELLED) {
                            j = Math.min(j, j2 - innerSubscriber.emitted);
                        } else {
                            i2++;
                        }
                    }
                    if (length == i2) {
                        Object obj2 = this.terminalEvent;
                        try {
                            t = simpleQueue2.poll();
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            this.upstream.get().cancel();
                            obj2 = NotificationLite.error(th);
                            this.terminalEvent = obj2;
                            t = null;
                        }
                        if (checkTerminated(obj2, t == null ? z3 : false)) {
                            return;
                        }
                        if (this.sourceMode != z3) {
                            this.upstream.get().request(1L);
                        }
                        z = z3;
                    } else {
                        boolean z5 = z4;
                        int i3 = 0;
                        while (true) {
                            long j3 = i3;
                            if (j3 >= j) {
                                break;
                            }
                            Object obj3 = this.terminalEvent;
                            try {
                                t2 = simpleQueue2.poll();
                            } catch (Throwable th2) {
                                Exceptions.throwIfFatal(th2);
                                this.upstream.get().cancel();
                                obj3 = NotificationLite.error(th2);
                                this.terminalEvent = obj3;
                                t2 = null;
                            }
                            boolean z6 = t2 == null ? z3 : false;
                            if (checkTerminated(obj3, z6)) {
                                return;
                            }
                            if (z6) {
                                z5 = z6;
                                break;
                            }
                            Object value = NotificationLite.getValue(t2);
                            int length2 = innerSubscriberArr2.length;
                            int i4 = 0;
                            boolean z7 = false;
                            while (i4 < length2) {
                                InnerSubscriber<T> innerSubscriber2 = innerSubscriberArr2[i4];
                                long j4 = innerSubscriber2.get();
                                if (j4 != FlowablePublish.CANCELLED) {
                                    if (j4 != Long.MAX_VALUE) {
                                        simpleQueue = simpleQueue2;
                                        z2 = z6;
                                        innerSubscriber2.emitted++;
                                    } else {
                                        simpleQueue = simpleQueue2;
                                        z2 = z6;
                                    }
                                    innerSubscriber2.child.onNext(value);
                                } else {
                                    simpleQueue = simpleQueue2;
                                    z2 = z6;
                                    z7 = true;
                                }
                                i4++;
                                simpleQueue2 = simpleQueue;
                                z6 = z2;
                            }
                            SimpleQueue<T> simpleQueue3 = simpleQueue2;
                            boolean z8 = z6;
                            i3++;
                            innerSubscriberArr = atomicReference.get();
                            if (z7 || innerSubscriberArr != innerSubscriberArr2) {
                                break;
                            }
                            simpleQueue2 = simpleQueue3;
                            z5 = z8;
                            z3 = true;
                        }
                        if (i3 != 0 && this.sourceMode != 1) {
                            this.upstream.get().request(i3);
                        }
                        innerSubscriberArr2 = innerSubscriberArr;
                        z3 = true;
                    }
                    z3 = z;
                }
                i = addAndGet(-i);
                if (i == 0) {
                    return;
                }
                innerSubscriberArr2 = atomicReference.get();
                z3 = z;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class InnerSubscriber<T> extends AtomicLong implements Subscription {
        private static final long serialVersionUID = -4453897557930727610L;
        final Subscriber<? super T> child;
        long emitted;
        volatile PublishSubscriber<T> parent;

        InnerSubscriber(Subscriber<? super T> subscriber) {
            this.child = subscriber;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.addCancel(this, j);
                PublishSubscriber<T> publishSubscriber = this.parent;
                if (publishSubscriber != null) {
                    publishSubscriber.dispatch();
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            PublishSubscriber<T> publishSubscriber;
            if (get() == FlowablePublish.CANCELLED || getAndSet(FlowablePublish.CANCELLED) == FlowablePublish.CANCELLED || (publishSubscriber = this.parent) == null) {
                return;
            }
            publishSubscriber.remove(this);
            publishSubscriber.dispatch();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class FlowablePublisher<T> implements Publisher<T> {
        private final int bufferSize;
        private final AtomicReference<PublishSubscriber<T>> curr;

        FlowablePublisher(AtomicReference<PublishSubscriber<T>> atomicReference, int i) {
            this.curr = atomicReference;
            this.bufferSize = i;
        }

        @Override // org.reactivestreams.Publisher
        public void subscribe(Subscriber<? super T> subscriber) {
            PublishSubscriber<T> publishSubscriber;
            InnerSubscriber<T> innerSubscriber = new InnerSubscriber<>(subscriber);
            subscriber.onSubscribe(innerSubscriber);
            while (true) {
                publishSubscriber = this.curr.get();
                if (publishSubscriber == null || publishSubscriber.isDisposed()) {
                    PublishSubscriber<T> publishSubscriber2 = new PublishSubscriber<>(this.curr, this.bufferSize);
                    if (this.curr.compareAndSet(publishSubscriber, publishSubscriber2)) {
                        publishSubscriber = publishSubscriber2;
                    } else {
                        continue;
                    }
                }
                if (publishSubscriber.add(innerSubscriber)) {
                    break;
                }
            }
            if (innerSubscriber.get() == FlowablePublish.CANCELLED) {
                publishSubscriber.remove(innerSubscriber);
            } else {
                innerSubscriber.parent = publishSubscriber;
            }
            publishSubscriber.dispatch();
        }
    }
}
