package com.yftech.yfmycar.view.vm;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;

/* loaded from: /home/user/work/dex/classes.dex */
public class AppViewModelStore {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SingletonHolder {
        private static final ViewModelStore SINGLETON = new ViewModelStore();

        private SingletonHolder() {
        }
    }

    public static ViewModelStore getViewModelStore() {
        return SingletonHolder.SINGLETON;
    }

    public static <T extends ViewModel> T getApplicationScopeViewModel(Class<T> cls) {
        return (T) new ViewModelProvider(getViewModelStore(), new ViewModelProvider.NewInstanceFactory()).get(cls);
    }
}
