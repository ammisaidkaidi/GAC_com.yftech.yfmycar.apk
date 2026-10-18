package com.yftech.yfmycar.view;

import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Observer;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.databinding.ActivityMainBinding;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;
import com.yftech.yfmycar.view.base.VDBBaseActivity;
import com.yftech.yfmycar.view.bean.FragmentsIndex;
import com.yftech.yfmycar.view.fragment.control.FrontLeftWindowFragment;
import com.yftech.yfmycar.view.fragment.control.FrontRightWindowFragment;
import com.yftech.yfmycar.view.fragment.control.RearLeftSlidingDoorFragment;
import com.yftech.yfmycar.view.fragment.control.RearRightSlidingDoorFragment;
import com.yftech.yfmycar.view.fragment.control.SkyLightFragment;
import com.yftech.yfmycar.view.fragment.control.TailgateFragment;
import com.yftech.yfmycar.view.fragment.light.AtmosphereLampFragment;
import com.yftech.yfmycar.view.fragment.seat.FrontSeatFragment;
import com.yftech.yfmycar.view.fragment.seat.LeftRearviewMirrorFragment;
import com.yftech.yfmycar.view.fragment.seat.RightRearviewMirrorFragment;
import com.yftech.yfmycar.view.manager.ManagerUtil;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class MyCarActivity extends VDBBaseActivity<ActivityMainBinding> {
    private static final String TAG = "MyCarActivity";
    private GlobalCarViewModel globalCarViewModel;
    private int mCurrentIndex = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$onCreate$1(View view) {
    }

    @Override // com.yftech.yfmycar.view.base.BaseActivity
    protected boolean registerEventBus() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.yfmycar.view.base.VDBBaseActivity, com.yftech.yfmycar.view.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.setTag("YFMyCar_202506191631");
        this.globalCarViewModel = (GlobalCarViewModel) getApplicationScopeViewModel(GlobalCarViewModel.class);
        ((ActivityMainBinding) this.vdb).setGlobalCarViewModel(this.globalCarViewModel);
        ((ActivityMainBinding) this.vdb).layoutOpenCloseControl.setGlobalCarViewModel(this.globalCarViewModel);
        ((ActivityMainBinding) this.vdb).layoutCockpit.setGlobalCarViewModel(this.globalCarViewModel);
        this.globalCarViewModel.topIndex.observe(this, new Observer() { // from class: com.yftech.yfmycar.view.-$$Lambda$MyCarActivity$aowKkciGVFPZWwtpHjnAQstJ_eE
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MyCarActivity.lambda$onCreate$0(MyCarActivity.this, (Integer) obj);
            }
        });
        this.globalCarViewModel.initCurrentIndex();
        onIntent(getIntent());
        ManagerUtil.initAllManager(this.globalCarViewModel);
        ((ActivityMainBinding) this.vdb).llTip.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.-$$Lambda$MyCarActivity$G8142gTcD1H4yKRxpRPtZt_Vsfo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyCarActivity.lambda$onCreate$1(view);
            }
        });
        this.globalCarViewModel.openCloseControlIndex.observe(this, new Observer() { // from class: com.yftech.yfmycar.view.-$$Lambda$MyCarActivity$ntGpTwJEfMvwZwjsGTMjSCaBegE
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MyCarActivity.lambda$onCreate$2(MyCarActivity.this, (Integer) obj);
            }
        });
        this.globalCarViewModel.cockpitIndex.observe(this, new Observer() { // from class: com.yftech.yfmycar.view.-$$Lambda$MyCarActivity$C5HvZE9aXjmdiFi3uommr-ZPDdM
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MyCarActivity.lambda$onCreate$3(MyCarActivity.this, (Integer) obj);
            }
        });
        this.globalCarViewModel.lampIndex.observe(this, new Observer() { // from class: com.yftech.yfmycar.view.-$$Lambda$MyCarActivity$5cQNlnrcL6HM40eR9WAH0_-Tmlk
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                MyCarActivity.lambda$onCreate$4(MyCarActivity.this, (Integer) obj);
            }
        });
        ((ActivityMainBinding) this.vdb).executePendingBindings();
    }

    public static /* synthetic */ void lambda$onCreate$0(MyCarActivity myCarActivity, Integer num) {
        if (num == null || num.intValue() < 0) {
            LogUtil.i(TAG, "topIndex >>  " + num);
            return;
        }
        int i = 0;
        if (num.intValue() == 0) {
            i = myCarActivity.globalCarViewModel.openCloseControlIndex.getValue().intValue();
        } else if (num.intValue() == 1) {
            i = myCarActivity.globalCarViewModel.cockpitIndex.getValue().intValue();
        } else if (num.intValue() == 2) {
            i = myCarActivity.globalCarViewModel.lampIndex.getValue().intValue();
        }
        LogUtil.i(TAG, "topIndex >> " + num + ", index = " + i);
        myCarActivity.switchFragment(i);
    }

    public static /* synthetic */ void lambda$onCreate$2(MyCarActivity myCarActivity, Integer num) {
        if (myCarActivity.globalCarViewModel.topIndex.getValue().intValue() != 0 || myCarActivity.mCurrentIndex == num.intValue()) {
            return;
        }
        LogUtil.i(TAG, "openCloseControlIndex >> " + num);
        myCarActivity.switchFragment(num.intValue());
    }

    public static /* synthetic */ void lambda$onCreate$3(MyCarActivity myCarActivity, Integer num) {
        if (myCarActivity.globalCarViewModel.topIndex.getValue().intValue() != 1 || myCarActivity.mCurrentIndex == num.intValue()) {
            return;
        }
        LogUtil.i(TAG, "cockpitIndex >> " + num);
        myCarActivity.switchFragment(num.intValue());
    }

    public static /* synthetic */ void lambda$onCreate$4(MyCarActivity myCarActivity, Integer num) {
        if (myCarActivity.globalCarViewModel.topIndex.getValue().intValue() != 2 || myCarActivity.mCurrentIndex == num.intValue()) {
            return;
        }
        LogUtil.i(TAG, "lampIndex >> " + num);
        myCarActivity.switchFragment(num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.yfmycar.view.base.VDBBaseActivity, com.yftech.yfmycar.view.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        ManagerUtil.unInitAllManager(this);
        Process.killProcess(Process.myPid());
    }

    public void switchFragment(@FragmentsIndex int i) {
        this.mCurrentIndex = i;
        switch (i) {
            case 0:
                showFragment(new SkyLightFragment());
                return;
            case 1:
                showFragment(new AtmosphereLampFragment());
                return;
            case 2:
                showFragment(new FrontLeftWindowFragment());
                return;
            case 3:
                showFragment(new FrontRightWindowFragment());
                return;
            case 4:
                showFragment(new RearLeftSlidingDoorFragment());
                return;
            case 5:
                showFragment(new RearRightSlidingDoorFragment());
                return;
            case 6:
                showFragment(FrontSeatFragment.newInstance(true));
                return;
            case 7:
                showFragment(FrontSeatFragment.newInstance(false));
                return;
            case 8:
                showFragment(new LeftRearviewMirrorFragment());
                return;
            case 9:
                showFragment(new RightRearviewMirrorFragment());
                return;
            case 10:
                showFragment(new TailgateFragment());
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        onIntent(intent);
    }

    private void onIntent(Intent intent) {
        int intExtra = intent.getIntExtra("mycarscheme", 100);
        if (intExtra != 100) {
            LogUtil.i(TAG, "getIntent().getIntExtra , jump FragmentsIndex = " + intExtra);
            this.globalCarViewModel.setCurrentIndex(intExtra);
        }
    }

    @Override // com.yftech.yfmycar.view.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        LogUtil.d(TAG, "onPause");
        super.onPause();
    }

    protected void showFragment(Fragment fragment) {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        Fragment findFragmentById = supportFragmentManager.findFragmentById(R.id.fragment_container);
        if (!(fragment instanceof FrontSeatFragment) && findFragmentById != null && findFragmentById.getClass().getName().equals(fragment.getClass().getName())) {
            LogUtil.i(TAG, "showFragment sameFragment , name = " + fragment.getClass().getName());
            return;
        }
        int backStackEntryCount = supportFragmentManager.getBackStackEntryCount();
        for (int i = 0; i < backStackEntryCount; i++) {
            supportFragmentManager.popBackStack();
        }
        FragmentTransaction beginTransaction = supportFragmentManager.beginTransaction();
        for (Fragment fragment2 : supportFragmentManager.getFragments()) {
            if (fragment2 != fragment) {
                beginTransaction.remove(fragment2);
                LogUtil.i(TAG, "removeFragment:" + fragment2.getClass().getName());
            }
        }
        if (fragment.isAdded()) {
            beginTransaction.show(fragment).commitNow();
            LogUtil.i(TAG, "showFragment:" + fragment.getClass().getName());
            return;
        }
        beginTransaction.add(R.id.fragment_container, fragment, fragment.getClass().getName()).show(fragment).commitNow();
        LogUtil.i(TAG, "addFragment:" + fragment.getClass().getName());
    }
}
