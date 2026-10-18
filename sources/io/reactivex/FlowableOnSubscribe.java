package io.reactivex;

import io.reactivex.annotations.NonNull;

/* loaded from: /home/user/work/dex/classes.dex */
public interface FlowableOnSubscribe<T> {
    void subscribe(@NonNull FlowableEmitter<T> flowableEmitter) throws Exception;
}
