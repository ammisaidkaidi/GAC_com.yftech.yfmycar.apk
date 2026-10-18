package com.yftech.yfmycar.view.vm;

import androidx.annotation.NonNull;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.yftech.yfmycar.view.utils.UiHandler;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: /home/user/work/dex/classes.dex */
public class SafetyLiveData<T> extends MutableLiveData<T> {
    public T lastValue;
    private final Map<LifecycleOwner, Set<BeforeSetValueListener<T>>> mBeforeSetValueListeners;
    public SetPropertyValueCallback<T> setPropertyValueCallback;
    public boolean skipSetToSdk;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface BeforeSetValueListener<T> {
        void beforeSetValue(T t, T t2);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface SetPropertyValueCallback<T> {
        void onGetValueDelayed(boolean z, T t, T t2);
    }

    public SafetyLiveData() {
        this.skipSetToSdk = false;
        this.mBeforeSetValueListeners = new HashMap();
    }

    public SafetyLiveData(T t) {
        this();
        setValue(t);
    }

    @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
    public void setValue(T t) {
        safeSetValue(t);
    }

    @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
    public void postValue(final T t) {
        UiHandler.post(new Runnable() { // from class: com.yftech.yfmycar.view.vm.SafetyLiveData.1
            @Override // java.lang.Runnable
            public void run() {
                SafetyLiveData.this.realSetValue(t);
            }
        });
    }

    @Override // androidx.lifecycle.LiveData
    public void observe(@NonNull LifecycleOwner lifecycleOwner, @NonNull Observer<? super T> observer) {
        super.observe(lifecycleOwner, observer);
        observer.onChanged(getValue());
    }

    private void safeSetValue(T t) {
        if (UiHandler.isUIThread()) {
            realSetValue(t);
        } else {
            postValue(t);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void realSetValue(T t) {
        this.lastValue = getValue();
        notifyBeforeSetValue(t);
        super.setValue(t);
    }

    private void notifyBeforeSetValue(T t) {
        T value = getValue();
        Iterator<Map.Entry<LifecycleOwner, Set<BeforeSetValueListener<T>>>> it = this.mBeforeSetValueListeners.entrySet().iterator();
        while (it.hasNext()) {
            Iterator<BeforeSetValueListener<T>> it2 = it.next().getValue().iterator();
            while (it2.hasNext()) {
                it2.next().beforeSetValue(value, t);
            }
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void observeForever(@NonNull final Observer<? super T> observer) {
        if (UiHandler.isUIThread()) {
            super.observeForever(observer);
        } else {
            UiHandler.post(new Runnable() { // from class: com.yftech.yfmycar.view.vm.-$$Lambda$SafetyLiveData$fDj6Y7-5ohfK9Kz8X7BI5a-f-Ao
                @Override // java.lang.Runnable
                public final void run() {
                    super/*androidx.lifecycle.MutableLiveData*/.observeForever(observer);
                }
            });
        }
    }

    @Override // androidx.lifecycle.LiveData
    public void removeObserver(@NonNull final Observer<? super T> observer) {
        if (UiHandler.isUIThread()) {
            super.removeObserver(observer);
        } else {
            UiHandler.post(new Runnable() { // from class: com.yftech.yfmycar.view.vm.-$$Lambda$SafetyLiveData$kG5BnE3b-rhKxd87BIx6w8gK0Kc
                @Override // java.lang.Runnable
                public final void run() {
                    super/*androidx.lifecycle.MutableLiveData*/.removeObserver(observer);
                }
            });
        }
    }

    public void notifyObserver() {
        safeSetValue(getValue());
    }

    public void setSetPropertyValueCallback(SetPropertyValueCallback<T> setPropertyValueCallback) {
        this.setPropertyValueCallback = setPropertyValueCallback;
    }
}
