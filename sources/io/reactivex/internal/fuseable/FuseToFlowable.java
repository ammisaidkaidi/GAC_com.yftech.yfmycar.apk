package io.reactivex.internal.fuseable;

import io.reactivex.Flowable;

/* loaded from: /home/user/work/dex/classes.dex */
public interface FuseToFlowable<T> {
    Flowable<T> fuseToFlowable();
}
