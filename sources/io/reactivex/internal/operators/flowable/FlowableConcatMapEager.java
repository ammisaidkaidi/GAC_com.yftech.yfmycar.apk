package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscribers.InnerQueuedSubscriber;
import io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: /home/user/work/dex/classes.dex */
public final class FlowableConcatMapEager<T, R> extends AbstractFlowableWithUpstream<T, R> {
    final ErrorMode errorMode;
    final Function<? super T, ? extends Publisher<? extends R>> mapper;
    final int maxConcurrency;
    final int prefetch;

    public FlowableConcatMapEager(Flowable<T> flowable, Function<? super T, ? extends Publisher<? extends R>> function, int i, int i2, ErrorMode errorMode) {
        super(flowable);
        this.mapper = function;
        this.maxConcurrency = i;
        this.prefetch = i2;
        this.errorMode = errorMode;
    }

    @Override // io.reactivex.Flowable
    protected void subscribeActual(Subscriber<? super R> subscriber) {
        this.source.subscribe((FlowableSubscriber) new ConcatMapEagerDelayErrorSubscriber(subscriber, this.mapper, this.maxConcurrency, this.prefetch, this.errorMode));
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    static final class ConcatMapEagerDelayErrorSubscriber<T, R> extends AtomicInteger implements FlowableSubscriber<T>, Subscription, InnerQueuedSubscriberSupport<R> {
        private static final long serialVersionUID = -4255299542215038287L;
        volatile boolean cancelled;
        volatile InnerQueuedSubscriber<R> current;
        volatile boolean done;
        final Subscriber<? super R> downstream;
        final ErrorMode errorMode;
        final Function<? super T, ? extends Publisher<? extends R>> mapper;
        final int maxConcurrency;
        final int prefetch;
        final SpscLinkedArrayQueue<InnerQueuedSubscriber<R>> subscribers;
        Subscription upstream;
        final AtomicThrowable errors = new AtomicThrowable();
        final AtomicLong requested = new AtomicLong();

        /* JADX INFO: Access modifiers changed from: package-private */
        public ConcatMapEagerDelayErrorSubscriber(Subscriber<? super R> subscriber, Function<? super T, ? extends Publisher<? extends R>> function, int i, int i2, ErrorMode errorMode) {
            this.downstream = subscriber;
            this.mapper = function;
            this.maxConcurrency = i;
            this.prefetch = i2;
            this.errorMode = errorMode;
            this.subscribers = new SpscLinkedArrayQueue<>(Math.min(i2, i));
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.upstream, subscription)) {
                this.upstream = subscription;
                this.downstream.onSubscribe(this);
                subscription.request(this.maxConcurrency == Integer.MAX_VALUE ? Long.MAX_VALUE : this.maxConcurrency);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                Publisher publisher = (Publisher) ObjectHelper.requireNonNull(this.mapper.apply(t), "The mapper returned a null Publisher");
                InnerQueuedSubscriber<R> innerQueuedSubscriber = new InnerQueuedSubscriber<>(this, this.prefetch);
                if (this.cancelled) {
                    return;
                }
                this.subscribers.offer(innerQueuedSubscriber);
                publisher.subscribe(innerQueuedSubscriber);
                if (this.cancelled) {
                    innerQueuedSubscriber.cancel();
                    drainAndCancel();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                this.upstream.cancel();
                onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.errors.addThrowable(th)) {
                this.done = true;
                drain();
            } else {
                RxJavaPlugins.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.done = true;
            drain();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.cancel();
            drainAndCancel();
        }

        void drainAndCancel() {
            if (getAndIncrement() != 0) {
                return;
            }
            do {
                cancelAll();
            } while (decrementAndGet() != 0);
        }

        void cancelAll() {
            InnerQueuedSubscriber<R> innerQueuedSubscriber = this.current;
            this.current = null;
            if (innerQueuedSubscriber != null) {
                innerQueuedSubscriber.cancel();
            }
            while (true) {
                InnerQueuedSubscriber<R> poll = this.subscribers.poll();
                if (poll == null) {
                    return;
                } else {
                    poll.cancel();
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.add(this.requested, j);
                drain();
            }
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        public void innerNext(InnerQueuedSubscriber<R> innerQueuedSubscriber, R r) {
            if (innerQueuedSubscriber.queue().offer(r)) {
                drain();
            } else {
                innerQueuedSubscriber.cancel();
                innerError(innerQueuedSubscriber, new MissingBackpressureException());
            }
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        public void innerError(InnerQueuedSubscriber<R> innerQueuedSubscriber, Throwable th) {
            if (this.errors.addThrowable(th)) {
                innerQueuedSubscriber.setDone();
                if (this.errorMode != ErrorMode.END) {
                    this.upstream.cancel();
                }
                drain();
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        public void innerComplete(InnerQueuedSubscriber<R> innerQueuedSubscriber) {
            innerQueuedSubscriber.setDone();
            drain();
        }

        /* JADX WARN: Code restructure failed: missing block: B:52:0x00ce, code lost:
        
            if (r13 != r6) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00d2, code lost:
        
            if (r18.cancelled == false) goto L62;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00da, code lost:
        
            if (r3 != io.reactivex.internal.util.ErrorMode.IMMEDIATE) goto L68;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x00e4, code lost:
        
            if (r18.errors.get() == null) goto L68;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x00e6, code lost:
        
            r18.current = null;
            r8.cancel();
            cancelAll();
            r2.onError(r18.errors.terminate());
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x00f7, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x00f8, code lost:
        
            r0 = r8.isDone();
            r9 = r12.isEmpty();
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0100, code lost:
        
            if (r0 == false) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0102, code lost:
        
            if (r9 == false) goto L72;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x0104, code lost:
        
            r18.current = null;
            r18.upstream.request(1);
            r0 = null;
            r4 = 0;
            r17 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x00d4, code lost:
        
            cancelAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x00d7, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x0111, code lost:
        
            r0 = r8;
            r4 = 0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:89:0x00cc, code lost:
        
            r17 = false;
         */
        @Override // io.reactivex.internal.subscribers.InnerQueuedSubscriberSupport
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void drain() {
            InnerQueuedSubscriber<R> innerQueuedSubscriber;
            int i;
            long j;
            long j2;
            boolean z;
            SimpleQueue<R> queue;
            if (getAndIncrement() != 0) {
                return;
            }
            InnerQueuedSubscriber<R> innerQueuedSubscriber2 = this.current;
            Subscriber<? super R> subscriber = this.downstream;
            ErrorMode errorMode = this.errorMode;
            int i2 = 1;
            while (true) {
                long j3 = this.requested.get();
                if (innerQueuedSubscriber2 != null) {
                    innerQueuedSubscriber = innerQueuedSubscriber2;
                } else {
                    if (errorMode != ErrorMode.END && this.errors.get() != null) {
                        cancelAll();
                        subscriber.onError(this.errors.terminate());
                        return;
                    }
                    boolean z2 = this.done;
                    innerQueuedSubscriber = this.subscribers.poll();
                    if (z2 && innerQueuedSubscriber == null) {
                        Throwable terminate = this.errors.terminate();
                        if (terminate != null) {
                            subscriber.onError(terminate);
                            return;
                        } else {
                            subscriber.onComplete();
                            return;
                        }
                    }
                    if (innerQueuedSubscriber != null) {
                        this.current = innerQueuedSubscriber;
                    }
                }
                if (innerQueuedSubscriber == null || (queue = innerQueuedSubscriber.queue()) == null) {
                    i = i2;
                    innerQueuedSubscriber2 = innerQueuedSubscriber;
                    j = 0;
                    j2 = 0;
                    z = false;
                } else {
                    j2 = 0;
                    while (true) {
                        i = i2;
                        if (j2 == j3) {
                            break;
                        }
                        if (this.cancelled) {
                            cancelAll();
                            return;
                        }
                        if (errorMode == ErrorMode.IMMEDIATE && this.errors.get() != null) {
                            this.current = null;
                            innerQueuedSubscriber.cancel();
                            cancelAll();
                            subscriber.onError(this.errors.terminate());
                            return;
                        }
                        boolean isDone = innerQueuedSubscriber.isDone();
                        try {
                            R poll = queue.poll();
                            boolean z3 = poll == null;
                            if (isDone && z3) {
                                this.current = null;
                                this.upstream.request(1L);
                                innerQueuedSubscriber = null;
                                z = true;
                                break;
                            }
                            if (z3) {
                                break;
                            }
                            subscriber.onNext(poll);
                            j2++;
                            innerQueuedSubscriber.requestOne();
                            i2 = i;
                        } catch (Throwable th) {
                            Exceptions.throwIfFatal(th);
                            this.current = null;
                            innerQueuedSubscriber.cancel();
                            cancelAll();
                            subscriber.onError(th);
                            return;
                        }
                    }
                }
                if (j2 != j && j3 != Long.MAX_VALUE) {
                    this.requested.addAndGet(-j2);
                }
                if (z) {
                    i2 = i;
                } else {
                    i2 = addAndGet(-i);
                    if (i2 == 0) {
                        return;
                    }
                }
            }
        }
    }
}
