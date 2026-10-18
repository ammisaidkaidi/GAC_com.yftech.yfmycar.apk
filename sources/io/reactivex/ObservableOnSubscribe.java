package io.reactivex;

import io.reactivex.annotations.NonNull;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ObservableOnSubscribe<T> {
    void subscribe(@NonNull ObservableEmitter<T> observableEmitter) throws Exception;
}
