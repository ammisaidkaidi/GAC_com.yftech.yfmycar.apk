package io.reactivex;

import io.reactivex.annotations.NonNull;

/* loaded from: /home/user/work/dex/classes.dex */
public interface MaybeSource<T> {
    void subscribe(@NonNull MaybeObserver<? super T> maybeObserver);
}
