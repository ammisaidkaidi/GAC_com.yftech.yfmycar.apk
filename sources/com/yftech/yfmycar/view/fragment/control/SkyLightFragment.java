package com.yftech.yfmycar.view.fragment.control;

import android.annotation.SuppressLint;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.CompoundButton;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.vehicle.internal.adapter.ICarWindow;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.BaseFragment;
import com.yftech.yfmycar.view.bean.SkyLightEvent;
import com.yftech.yfmycar.view.callback.WindowAnimCallBack;
import com.yftech.yfmycar.view.manager.MyCarWindowManager;
import com.yftech.yfmycar.view.utils.LogUtil;
import com.yftech.yfmycar.view.widgets.HorizontalAnimWindowTouch;
import com.yftech.yfmycar.view.widgets.WindowReversingTipView;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes.dex */
public class SkyLightFragment extends BaseFragment implements View.OnClickListener {
    private HorizontalAnimWindowTouch horizontalAnimWindowSky;
    private AppCompatImageView mMoveLeft;
    private AppCompatImageView mMoveRight;
    private AppCompatTextView mSunroofMovingTip;
    private AppCompatTextView mSunshadeFullyClosed;
    private AppCompatTextView mSunshadeFullyOpen;
    private AppCompatCheckBox mVentilation;
    private AppCompatImageView skyLightTilUp;
    private String sunRoofTipString;
    private WindowReversingTipView windowReversingTipView;
    private final String TAG = "SkyLightFragment";
    private final int MESSAGE_BACK_SKY_TILT_UP = 3;
    private final Handler handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.fragment.control.SkyLightFragment.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (SkyLightFragment.this.isAdded() && message.what == 3) {
                SkyLightFragment.this.mVentilation.setChecked(MyCarWindowManager.getInstance().getWindowRoofOpenOpertion() == ICarWindow.WindowRoofOpenOpertion.TILT_UP);
            }
            return false;
        }
    });

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 0;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_sky_light);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public void onBindView(@Nullable Bundle bundle, View view) {
        this.windowReversingTipView = (WindowReversingTipView) view.findViewById(R.id.windowReversingTipView);
        this.mSunroofMovingTip = (AppCompatTextView) view.findViewById(R.id.sunroof_moving_tip);
        this.mMoveLeft = (AppCompatImageView) view.findViewById(R.id.move_left_sky);
        this.mMoveRight = (AppCompatImageView) view.findViewById(R.id.move_right_sky);
        this.mMoveLeft.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$SkyLightFragment$q3SbKw6AfYhwXliNt3B1oGELxt0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SkyLightFragment.lambda$onBindView$0(SkyLightFragment.this, view2);
            }
        });
        this.mMoveLeft.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$SkyLightFragment$mjJWCiyyGGkuGer8Oehuzz-CT0c
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return SkyLightFragment.lambda$onBindView$1(view2);
            }
        });
        this.mMoveRight.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$SkyLightFragment$7v5h1GS6C7sOZ83gZx-s74xyPQ0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return SkyLightFragment.lambda$onBindView$2(SkyLightFragment.this, view2);
            }
        });
        this.mMoveRight.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$SkyLightFragment$CSKBdarzrPb_Z0BLNeEIdjKNn6w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                SkyLightFragment.lambda$onBindView$3(SkyLightFragment.this, view2);
            }
        });
        this.skyLightTilUp = (AppCompatImageView) view.findViewById(R.id.skylight_til_up);
        this.horizontalAnimWindowSky = (HorizontalAnimWindowTouch) view.findViewById(R.id.horizontal_anim_window);
        this.horizontalAnimWindowSky.setWindowAnimCallBack(new WindowAnimCallBack() { // from class: com.yftech.yfmycar.view.fragment.control.SkyLightFragment.2
            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doAnimationStartEnd(int i, int i2) {
            }

            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doAnimationUpdate(int i) {
            }

            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doDownUpVisible(int i, int i2) {
                SkyLightFragment.this.mMoveLeft.setVisibility(i2);
                SkyLightFragment.this.mMoveRight.setVisibility(i);
            }
        });
        this.mVentilation = (AppCompatCheckBox) view.findViewById(R.id.ventilation);
        this.mVentilation.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.SkyLightFragment.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                SkyLightFragment.this.handler.removeMessages(3);
                MyCarWindowManager.getInstance().controlTiltUp(SkyLightFragment.this.mVentilation.isChecked());
                SkyLightFragment.this.handler.sendEmptyMessageDelayed(3, 3000L);
            }
        });
        this.mVentilation.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.yfmycar.view.fragment.control.SkyLightFragment.4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SkyLightFragment.this.initTipupUI(z);
            }
        });
        this.mSunshadeFullyOpen = (AppCompatTextView) view.findViewById(R.id.sunshade_fully_open);
        this.mSunshadeFullyClosed = (AppCompatTextView) view.findViewById(R.id.sunshade_fully_closed);
        this.mSunshadeFullyOpen.setOnClickListener(this);
        this.mSunshadeFullyClosed.setOnClickListener(this);
        ICarWindow.WindowRoofShadeOpenOpertion windowRoofShadeOpenState = MyCarWindowManager.getInstance().getWindowRoofShadeOpenState();
        if (windowRoofShadeOpenState == ICarWindow.WindowRoofShadeOpenOpertion.FULLY_OPEN) {
            this.mSunshadeFullyOpen.setSelected(true);
            this.mSunshadeFullyClosed.setSelected(false);
        } else if (windowRoofShadeOpenState == ICarWindow.WindowRoofShadeOpenOpertion.FULLY_CLOSE) {
            this.mSunshadeFullyOpen.setSelected(false);
            this.mSunshadeFullyClosed.setSelected(true);
        } else {
            this.mSunshadeFullyOpen.setSelected(false);
            this.mSunshadeFullyClosed.setSelected(false);
        }
        initUiData();
    }

    public static /* synthetic */ void lambda$onBindView$0(SkyLightFragment skyLightFragment, View view) {
        ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion = MyCarWindowManager.getInstance().getWindowRoofOpenOpertion();
        if (windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.CLOSING || windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.OPENING) {
            MyCarWindowManager.getInstance().setWindowRoofShadeOpenState(ICarWindow.WindowRoofShadeOpenState.STOP);
        } else {
            skyLightFragment.horizontalAnimWindowSky.moveTwentyPercent(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$onBindView$1(View view) {
        MyCarWindowManager.getInstance().controlSkyLightPercent(0);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$2(SkyLightFragment skyLightFragment, View view) {
        LogUtil.i("SkyLightFragment", "mMoveRight OnLongClickListener ,mVentilation.isChecked() = " + skyLightFragment.mVentilation.isChecked());
        if (skyLightFragment.mVentilation.isChecked()) {
            return false;
        }
        MyCarWindowManager.getInstance().controlSkyLightPercent(100);
        return false;
    }

    public static /* synthetic */ void lambda$onBindView$3(SkyLightFragment skyLightFragment, View view) {
        LogUtil.i("SkyLightFragment", "mMoveRight OnClickListener,mVentilation.isChecked() = " + skyLightFragment.mVentilation.isChecked());
        if (skyLightFragment.mVentilation.isChecked()) {
            skyLightFragment.mVentilation.setChecked(false);
            MyCarWindowManager.getInstance().controlTiltUp(false);
            skyLightFragment.handler.sendEmptyMessageDelayed(3, 3000L);
        } else {
            ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion = MyCarWindowManager.getInstance().getWindowRoofOpenOpertion();
            if (windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.CLOSING || windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.OPENING) {
                MyCarWindowManager.getInstance().setWindowRoofShadeOpenState(ICarWindow.WindowRoofShadeOpenState.STOP);
            } else {
                skyLightFragment.horizontalAnimWindowSky.moveTwentyPercent(true);
            }
        }
    }

    private void initUiData() {
        Resources resources;
        int i;
        this.horizontalAnimWindowSky.initSkyLightPercent();
        ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion = MyCarWindowManager.getInstance().getWindowRoofOpenOpertion();
        int windowRoofOpenPercent = MyCarWindowManager.getInstance().getWindowRoofOpenPercent();
        if (windowRoofOpenOpertion != ICarWindow.WindowRoofOpenOpertion.TILT_UP) {
            if (windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.CLOSING || windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.OPENING) {
                this.sunRoofTipString = getResources().getString(R.string.skylight_moving);
            } else {
                if (windowRoofOpenPercent > 0) {
                    resources = getResources();
                    i = R.string.skylight_open;
                } else {
                    resources = getResources();
                    i = R.string.skylight_closed;
                }
                this.sunRoofTipString = resources.getString(i);
            }
            this.mSunroofMovingTip.setText(this.sunRoofTipString);
        }
        this.windowReversingTipView.setVisibility(windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.REVERSING ? 0 : 4);
        this.mVentilation.setChecked(windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.TILT_UP);
        initTipupUI(windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.TILT_UP);
        this.skyLightTilUp.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$FcKW1n4-g7ip3JytTlswytDiUOs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SkyLightFragment.this.onClick(view);
            }
        });
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        LogUtil.i("SkyLightFragment", "天窗 onHiddenChanged " + z);
        if (z) {
            return;
        }
        initUiData();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(SkyLightEvent skyLightEvent) {
        Resources resources;
        int i;
        if (skyLightEvent.getWhichWindow() == 0) {
            this.handler.removeMessages(3);
            ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion = MyCarWindowManager.getInstance().getWindowRoofOpenOpertion();
            this.windowReversingTipView.setVisibility(windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.REVERSING ? 0 : 4);
            if (windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.TILT_UP) {
                this.mVentilation.setChecked(true);
                initTipupUI(true);
                return;
            }
            int windowRoofOpenPercent = MyCarWindowManager.getInstance().getWindowRoofOpenPercent();
            LogUtil.i("SkyLightFragment", "获取天窗百分比 getWindowRoofOpenPercent = " + windowRoofOpenPercent);
            if (windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.CLOSING || windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.OPENING) {
                this.sunRoofTipString = getResources().getString(R.string.skylight_moving);
            } else {
                this.mVentilation.setChecked(false);
                initTipupUI(false);
                if (windowRoofOpenPercent > 0) {
                    resources = getResources();
                    i = R.string.skylight_open;
                } else {
                    resources = getResources();
                    i = R.string.skylight_closed;
                }
                this.sunRoofTipString = resources.getString(i);
            }
            this.mSunroofMovingTip.setText(this.sunRoofTipString);
            if (windowRoofOpenPercent == 101) {
                this.horizontalAnimWindowSky.setPercent(0);
                return;
            } else if (windowRoofOpenPercent == 104) {
                this.horizontalAnimWindowSky.setPercent(100);
                return;
            } else {
                if (windowRoofOpenPercent <= 100) {
                    this.horizontalAnimWindowSky.setPercent(windowRoofOpenPercent);
                    return;
                }
                return;
            }
        }
        ICarWindow.WindowRoofShadeOpenOpertion windowRoofShadeOpenState = MyCarWindowManager.getInstance().getWindowRoofShadeOpenState();
        if (windowRoofShadeOpenState == ICarWindow.WindowRoofShadeOpenOpertion.FULLY_OPEN) {
            this.mSunshadeFullyOpen.setSelected(true);
            this.mSunshadeFullyClosed.setSelected(false);
        } else if (windowRoofShadeOpenState == ICarWindow.WindowRoofShadeOpenOpertion.FULLY_CLOSE) {
            this.mSunshadeFullyOpen.setSelected(false);
            this.mSunshadeFullyClosed.setSelected(true);
        } else {
            this.mSunshadeFullyOpen.setSelected(false);
            this.mSunshadeFullyClosed.setSelected(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initTipupUI(boolean z) {
        this.skyLightTilUp.setVisibility(z ? 0 : 4);
        this.horizontalAnimWindowSky.setVisibility(z ? 4 : 0);
        LogUtil.i("SkyLightFragment", "initTipupUI : " + z + ",horizontalAnimWindowSky " + this.horizontalAnimWindowSky.getVisibility());
        if (z) {
            this.mMoveLeft.setVisibility(4);
            this.mMoveRight.setVisibility(0);
            this.mSunroofMovingTip.setText(getResources().getString(R.string.skylight_ventilation));
            return;
        }
        this.horizontalAnimWindowSky.initSkyLightPercent();
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.sunshade_fully_closed /* 2131165430 */:
                MyCarWindowManager.getInstance().controlSunshade(true);
                return;
            case R.id.sunshade_fully_open /* 2131165431 */:
                MyCarWindowManager.getInstance().controlSunshade(false);
                return;
            default:
                return;
        }
    }
}
