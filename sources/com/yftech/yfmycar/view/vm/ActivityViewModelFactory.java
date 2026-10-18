package com.yftech.yfmycar.view.vm;

import android.app.Activity;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import java.lang.reflect.InvocationTargetException;

/* loaded from: /home/user/work/dex/classes.dex */
public class ActivityViewModelFactory extends ViewModelProvider.AndroidViewModelFactory {
    private final Intent intent;

    public ActivityViewModelFactory(@NonNull Activity activity) {
        super(activity.getApplication());
        this.intent = activity.getIntent();
    }

    @Override // androidx.lifecycle.ViewModelProvider.AndroidViewModelFactory, androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
    @NonNull
    public <T extends ViewModel> T create(@NonNull Class<T> cls) {
        if (ActivityViewModel.class.isAssignableFrom(cls)) {
            try {
                return cls.getConstructor(Intent.class).newInstance(this.intent);
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            }
        }
        return (T) super.create(cls);
    }
}
