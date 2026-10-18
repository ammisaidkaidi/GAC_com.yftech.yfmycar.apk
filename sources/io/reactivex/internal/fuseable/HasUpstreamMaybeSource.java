package io.reactivex.internal.fuseable;

import io.reactivex.MaybeSource;

/* loaded from: /home/user/work/dex/classes.dex */
public interface HasUpstreamMaybeSource<T> {
    MaybeSource<T> source();
}
