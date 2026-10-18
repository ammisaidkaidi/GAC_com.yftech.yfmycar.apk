package io.reactivex.internal.fuseable;

import io.reactivex.ObservableSource;

/* loaded from: /home/user/work/dex/classes.dex */
public interface HasUpstreamObservableSource<T> {
    ObservableSource<T> source();
}
