package io.reactivex;

import io.reactivex.annotations.NonNull;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;

/* loaded from: /home/user/work/dex/classes.dex */
public interface FlowableSubscriber<T> extends Subscriber<T> {
    @Override // org.reactivestreams.Subscriber
    void onSubscribe(@NonNull Subscription subscription);
}
