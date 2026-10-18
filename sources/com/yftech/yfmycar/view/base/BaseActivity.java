package com.yftech.yfmycar.view.base;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import com.yftech.yfmycar.view.manager.EventBusCompat;
import com.yftech.yfmycar.view.utils.LogUtil;
import com.yftech.yfmycar.view.utils.ReflectUtil;
import com.yftech.yfmycar.view.vm.ActivityViewModelFactory;
import com.yftech.yfmycar.view.vm.AppViewModelStore;

/* loaded from: /home/user/work/dex/classes.dex */
public class BaseActivity extends AppCompatActivity {
    protected final String TAG = getClass().getSimpleName() + ":" + Integer.toHexString(hashCode());
    protected boolean finished;
    protected boolean isResumed;

    protected Class<? extends Fragment> getFragmentType(int i) {
        return null;
    }

    protected boolean registerEventBus() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        LogUtil.d(this.TAG, "onCreate");
        super.onCreate(bundle);
        if (isBroughtToFront()) {
            LogUtil.d(this.TAG, "isBroughtToFront finish");
            finish();
        } else {
            if (registerEventBus()) {
                EventBusCompat.register(this);
            }
            System.out.println(getResources().getDisplayMetrics());
        }
    }

    protected boolean isBroughtToFront() {
        return (getIntent().getFlags() & 4194304) != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        LogUtil.d(this.TAG, "onStart");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        LogUtil.d(this.TAG, "onResume");
        super.onResume();
        this.isResumed = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        LogUtil.d(this.TAG, "onPause");
        super.onPause();
        this.isResumed = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        LogUtil.d(this.TAG, "onStop");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        LogUtil.d(this.TAG, "onSaveInstanceState");
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onRestoreInstanceState(@NonNull Bundle bundle) {
        LogUtil.d(this.TAG, "onRestoreInstanceState");
        super.onRestoreInstanceState(bundle);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        LogUtil.d(this.TAG, "onBackPressed()");
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        LogUtil.d(this.TAG, "onDestroy");
        super.onDestroy();
        if (registerEventBus()) {
            EventBusCompat.unregister(this);
        }
    }

    private ViewModelProvider.Factory getFactory() {
        return new ActivityViewModelFactory(this);
    }

    protected <T extends ViewModel> T getFragmentScopeViewModel(Fragment fragment, Class<T> cls) {
        return (T) new ViewModelProvider(fragment, getFactory()).get(cls);
    }

    public <T extends ViewModel> T getActivityScopeViewModel(Class<T> cls) {
        return (T) new ViewModelProvider(this, getFactory()).get(cls);
    }

    public <T extends ViewModel> T getApplicationScopeViewModel(Class<T> cls) {
        return (T) new ViewModelProvider(AppViewModelStore.getViewModelStore(), getFactory()).get(cls);
    }

    protected void showFragment(Fragment fragment, int i) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.findFragmentById(i) == fragment) {
            return;
        }
        int backStackEntryCount = supportFragmentManager.getBackStackEntryCount();
        for (int i2 = 0; i2 < backStackEntryCount; i2++) {
            supportFragmentManager.popBackStack();
        }
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        for (Fragment fragment2 : supportFragmentManager.getFragments()) {
            if (fragment2 != fragment) {
                beginTransaction.remove(fragment2);
                LogUtil.d(this.TAG, "removeFragment:" + fragment2.getClass().getName());
            }
        }
        if (fragment.isAdded()) {
            beginTransaction.show(fragment).commitNow();
            LogUtil.d(this.TAG, "showFragment:" + fragment.getClass().getName());
            return;
        }
        beginTransaction.add(i, fragment, fragment.getClass().getName()).show(fragment).commitNow();
        LogUtil.d(this.TAG, "addFragment:" + fragment.getClass().getName());
    }

    protected Fragment createFragment(Class<? extends Fragment> cls) {
        return (Fragment) ReflectUtil.newInstance(cls, new Object[0]);
    }
}
