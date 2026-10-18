package com.yftech.yfmycar.view.fragment.seat;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.lifecycle.Observer;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarSettings;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.BaseFragment;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;
import com.yftech.yfmycar.view.manager.CarMirrorControl;
import com.yftech.yfmycar.view.utils.LogUtil;
import com.yftech.yfmycar.view.vm.AppViewModelStore;

/* loaded from: /home/user/work/dex/classes.dex */
public class RightRearviewMirrorFragment extends BaseFragment implements View.OnClickListener, View.OnTouchListener {
    private LinearLayout llTip;
    private LinearLayout llTipGearNotP;
    private AppCompatTextView mCollapseAll;
    private AppCompatTextView mExpandAll;
    private AppCompatImageView mMoveDown;
    private AppCompatImageView mMoveLeft;
    private AppCompatImageView mMoveRight;
    private AppCompatImageView mMoveUp;
    private AppCompatImageView rightMirror;
    private final String TAG = RightRearviewMirrorFragment.class.getName();
    private ICarSettings.RearviewMirrorCmd cmd = ICarSettings.RearviewMirrorCmd.__UNKNOWN__;
    private final Handler handler = new Handler();
    private final Runnable runnable = new Runnable() { // from class: com.yftech.yfmycar.view.fragment.seat.RightRearviewMirrorFragment.1
        @Override // java.lang.Runnable
        public void run() {
            if (RightRearviewMirrorFragment.this.cmd != ICarSettings.RearviewMirrorCmd.__UNKNOWN__) {
                CarMirrorControl.getInstance().setRearViewMirrorCmd(RightRearviewMirrorFragment.this.cmd);
                RightRearviewMirrorFragment.this.handler.postDelayed(this, 40L);
            } else {
                RightRearviewMirrorFragment.this.rightMirror.setImageDrawable(null);
            }
        }
    };

    @Override // com.yftech.yfmycar.view.base.BaseFragment, android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 9;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_right_rearview_mirror);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindView(@Nullable Bundle bundle, View view) {
        GlobalCarViewModel globalCarViewModel = (GlobalCarViewModel) AppViewModelStore.getApplicationScopeViewModel(GlobalCarViewModel.class);
        this.llTipGearNotP = (LinearLayout) view.findViewById(R.id.ll_tip_gear);
        globalCarViewModel.vehicleGear.observe(this, new Observer() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$RightRearviewMirrorFragment$uPvyPDXY_w9BkCc2Hz4Yz_ml3MA
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                RightRearviewMirrorFragment.this.llTipGearNotP.setVisibility(r2 == ICarInfo.GearPosition.PARKING ? 4 : 0);
            }
        });
        this.rightMirror = (AppCompatImageView) view.findViewById(R.id.right_mirror);
        this.mMoveUp = (AppCompatImageView) view.findViewById(R.id.move_up);
        this.mMoveDown = (AppCompatImageView) view.findViewById(R.id.move_down);
        this.mMoveLeft = (AppCompatImageView) view.findViewById(R.id.move_left);
        this.mMoveRight = (AppCompatImageView) view.findViewById(R.id.move_right);
        this.llTip = (LinearLayout) view.findViewById(R.id.ll_tip);
        this.llTip.setOnClickListener(this);
        this.mMoveUp.setOnTouchListener(this);
        this.mMoveDown.setOnTouchListener(this);
        this.mMoveLeft.setOnTouchListener(this);
        this.mMoveRight.setOnTouchListener(this);
        this.mMoveUp.setOnClickListener(this);
        this.mMoveUp.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$RightRearviewMirrorFragment$CC5PCOGXFfvP7CTm1XM0CuFy9Bg
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RightRearviewMirrorFragment.lambda$onBindView$1(RightRearviewMirrorFragment.this, view2);
            }
        });
        this.mMoveDown.setOnClickListener(this);
        this.mMoveDown.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$RightRearviewMirrorFragment$nuwj304bTOqg07BOYu_uEk77v_A
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RightRearviewMirrorFragment.lambda$onBindView$2(RightRearviewMirrorFragment.this, view2);
            }
        });
        this.mMoveLeft.setOnClickListener(this);
        this.mMoveLeft.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$RightRearviewMirrorFragment$dy1HOTWS4rD78cB_vwunSMaB-Ew
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RightRearviewMirrorFragment.lambda$onBindView$3(RightRearviewMirrorFragment.this, view2);
            }
        });
        this.mMoveRight.setOnClickListener(this);
        this.mMoveRight.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$RightRearviewMirrorFragment$zkRguXQbIK-ALD4c9-UMJ1P6F_k
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RightRearviewMirrorFragment.lambda$onBindView$4(RightRearviewMirrorFragment.this, view2);
            }
        });
        this.mCollapseAll = (AppCompatTextView) view.findViewById(R.id.collapse_all);
        this.mExpandAll = (AppCompatTextView) view.findViewById(R.id.expand_all);
        this.mCollapseAll.setOnClickListener(this);
        this.mExpandAll.setOnClickListener(this);
        this.mCollapseAll.setOnTouchListener(this);
        this.mExpandAll.setOnTouchListener(this);
        this.mCollapseAll.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$RightRearviewMirrorFragment$yXq8-4hm-xGRdH9hNLmC9G4CgBU
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RightRearviewMirrorFragment.lambda$onBindView$5(RightRearviewMirrorFragment.this, view2);
            }
        });
        this.mExpandAll.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$RightRearviewMirrorFragment$3f7guDWss4tA98Crw5KjJ4eXsB0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RightRearviewMirrorFragment.lambda$onBindView$6(RightRearviewMirrorFragment.this, view2);
            }
        });
    }

    public static /* synthetic */ boolean lambda$onBindView$1(RightRearviewMirrorFragment rightRearviewMirrorFragment, View view) {
        LogUtil.i(rightRearviewMirrorFragment.TAG, "LongClick ^^^^ ICarSettings.RearviewMirrorCmd.FR_MIRROR_UP");
        rightRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FR_MIRROR_UP;
        rightRearviewMirrorFragment.handler.post(rightRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$2(RightRearviewMirrorFragment rightRearviewMirrorFragment, View view) {
        LogUtil.i(rightRearviewMirrorFragment.TAG, "LongClick vvvv ICarSettings.RearviewMirrorCmd.FR_MIRROR_DOWN");
        rightRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FR_MIRROR_DOWN;
        rightRearviewMirrorFragment.handler.post(rightRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$3(RightRearviewMirrorFragment rightRearviewMirrorFragment, View view) {
        LogUtil.i(rightRearviewMirrorFragment.TAG, "LongClick <<<< ICarSettings.RearviewMirrorCmd.FR_MIRROR_LEFT");
        rightRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FR_MIRROR_LEFT;
        rightRearviewMirrorFragment.handler.post(rightRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$4(RightRearviewMirrorFragment rightRearviewMirrorFragment, View view) {
        LogUtil.i(rightRearviewMirrorFragment.TAG, "LongClick >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_RIGHT");
        rightRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FR_MIRROR_RIGHT;
        rightRearviewMirrorFragment.handler.post(rightRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$5(RightRearviewMirrorFragment rightRearviewMirrorFragment, View view) {
        LogUtil.i(rightRearviewMirrorFragment.TAG, "LongClick >>>> ICarSettings.RearviewMirrorCmd.FOLD");
        rightRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FOLD;
        rightRearviewMirrorFragment.handler.post(rightRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$6(RightRearviewMirrorFragment rightRearviewMirrorFragment, View view) {
        LogUtil.i(rightRearviewMirrorFragment.TAG, "LongClick >>>> ICarSettings.RearviewMirrorCmd.UNFOLD");
        rightRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.UNFOLD;
        rightRearviewMirrorFragment.handler.post(rightRearviewMirrorFragment.runnable);
        return false;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.handler.removeCallbacks(this.runnable);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            this.handler.removeCallbacks(this.runnable);
        }
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"NonConstantResourceId"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            switch (view.getId()) {
                case R.id.collapse_all /* 2131165241 */:
                    this.cmd = ICarSettings.RearviewMirrorCmd.FOLD;
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.FOLD);
                    return false;
                case R.id.expand_all /* 2131165259 */:
                    this.cmd = ICarSettings.RearviewMirrorCmd.UNFOLD;
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.UNFOLD);
                    return false;
                case R.id.move_down /* 2131165325 */:
                    LogUtil.i(this.TAG, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_DOWN");
                    this.rightMirror.setImageResource(R.mipmap.im_right_mirror_under);
                    this.cmd = ICarSettings.RearviewMirrorCmd.FR_MIRROR_DOWN;
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.FR_MIRROR_DOWN);
                    return false;
                case R.id.move_left /* 2131165329 */:
                    LogUtil.i(this.TAG, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_LEFT");
                    this.rightMirror.setImageResource(R.mipmap.im_right_mirror_lift);
                    this.cmd = ICarSettings.RearviewMirrorCmd.FR_MIRROR_LEFT;
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.FR_MIRROR_LEFT);
                    return false;
                case R.id.move_right /* 2131165331 */:
                    LogUtil.i(this.TAG, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_RIGHT");
                    this.rightMirror.setImageResource(R.mipmap.im_right_mirror_right);
                    this.cmd = ICarSettings.RearviewMirrorCmd.FR_MIRROR_RIGHT;
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.FR_MIRROR_RIGHT);
                    return false;
                case R.id.move_up /* 2131165333 */:
                    LogUtil.i(this.TAG, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_UP");
                    this.rightMirror.setImageResource(R.mipmap.im_right_mirror_up);
                    this.cmd = ICarSettings.RearviewMirrorCmd.FR_MIRROR_UP;
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.FR_MIRROR_UP);
                    return false;
                default:
                    return false;
            }
        }
        if (motionEvent.getAction() == 1) {
            LogUtil.i(this.TAG, "onTouch  MotionEvent.ACTION_UP");
            switch (view.getId()) {
                case R.id.collapse_all /* 2131165241 */:
                case R.id.expand_all /* 2131165259 */:
                case R.id.move_down /* 2131165325 */:
                case R.id.move_left /* 2131165329 */:
                case R.id.move_right /* 2131165331 */:
                case R.id.move_up /* 2131165333 */:
                    LogUtil.i(this.TAG, "onTouch  MotionEvent.ACTION_UP  ICarSettings.RearviewMirrorCmd.STOP");
                    if (this.cmd == ICarSettings.RearviewMirrorCmd.__UNKNOWN__) {
                        return false;
                    }
                    this.cmd = ICarSettings.RearviewMirrorCmd.__UNKNOWN__;
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.STOP);
                    this.rightMirror.setImageDrawable(null);
                    return false;
                default:
                    return false;
            }
        }
        if (motionEvent.getAction() != 2 || this.cmd == ICarSettings.RearviewMirrorCmd.__UNKNOWN__ || this.mMoveUp.isPressed() || this.mMoveDown.isPressed() || this.mMoveLeft.isPressed() || this.mMoveRight.isPressed() || this.mCollapseAll.isPressed() || this.mExpandAll.isPressed()) {
            return false;
        }
        LogUtil.i(this.TAG, "onTouch  MotionEvent.ACTION_MOVE  ICarSettings.RearviewMirrorCmd.STOP");
        this.handler.removeCallbacks(this.runnable);
        this.cmd = ICarSettings.RearviewMirrorCmd.__UNKNOWN__;
        CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.STOP);
        this.rightMirror.setImageDrawable(null);
        return false;
    }
}
