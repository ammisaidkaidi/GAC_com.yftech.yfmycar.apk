package io.reactivex;

import io.reactivex.annotations.NonNull;

/* loaded from: /home/user/work/dex/classes.dex */
public interface FlowableConverter<T, R> {
    @NonNull
    R apply(@NonNull Flowable<T> flowable);
}
