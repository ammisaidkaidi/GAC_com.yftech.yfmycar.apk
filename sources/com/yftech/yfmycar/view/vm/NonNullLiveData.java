package com.yftech.yfmycar.view.vm;

import androidx.annotation.NonNull;

/* loaded from: /home/user/work/dex/classes.dex */
public class NonNullLiveData<T> extends SafetyLiveData<T> {
    public NonNullLiveData(@NonNull T t) {
        super(t);
    }

    @Override // androidx.lifecycle.LiveData
    @NonNull
    public T getValue() {
        return (T) super.getValue();
    }

    public void toggle() {
        if (getValue() instanceof Boolean) {
            setValue(Boolean.valueOf(!((Boolean) r0).booleanValue()));
        }
    }
}
