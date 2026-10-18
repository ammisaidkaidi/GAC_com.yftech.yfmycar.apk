package io.reactivex;

import io.reactivex.annotations.NonNull;

/* loaded from: /home/user/work/dex/classes.dex */
public interface MaybeConverter<T, R> {
    @NonNull
    R apply(@NonNull Maybe<T> maybe);
}
