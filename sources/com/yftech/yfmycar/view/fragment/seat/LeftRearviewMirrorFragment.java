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
public class LeftRearviewMirrorFragment extends BaseFragment implements View.OnClickListener, View.OnTouchListener {
    private LinearLayout llTipGearNotP;
    private AppCompatTextView mCollapseAll;
    private AppCompatTextView mExpandAll;
    private AppCompatImageView mLeftMirror;
    private AppCompatImageView mMoveDown;
    private AppCompatImageView mMoveLeft;
    private AppCompatImageView mMoveRight;
    private AppCompatImageView mMoveUp;
    private final String TAG = LeftRearviewMirrorFragment.class.getName();
    private ICarSettings.RearviewMirrorCmd cmd = ICarSettings.RearviewMirrorCmd.STOP;
    private final Handler handler = new Handler();
    private final Runnable runnable = new Runnable() { // from class: com.yftech.yfmycar.view.fragment.seat.LeftRearviewMirrorFragment.1
        @Override // java.lang.Runnable
        public void run() {
            CarMirrorControl.getInstance().setRearViewMirrorCmd(LeftRearviewMirrorFragment.this.cmd);
            LeftRearviewMirrorFragment.this.handler.postDelayed(this, 40L);
        }
    };

    @Override // com.yftech.yfmycar.view.base.BaseFragment, android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 8;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_left_rearview_mirror);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindView(@Nullable Bundle bundle, View view) {
        GlobalCarViewModel globalCarViewModel = (GlobalCarViewModel) AppViewModelStore.getApplicationScopeViewModel(GlobalCarViewModel.class);
        this.llTipGearNotP = (LinearLayout) view.findViewById(R.id.ll_tip_gear);
        globalCarViewModel.vehicleGear.observe(this, new Observer() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$LeftRearviewMirrorFragment$XpwTjDfxwirg3EfXIilPdYR0DcI
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LeftRearviewMirrorFragment.this.llTipGearNotP.setVisibility(r2 == ICarInfo.GearPosition.PARKING ? 4 : 0);
            }
        });
        this.mLeftMirror = (AppCompatImageView) view.findViewById(R.id.left_mirror);
        this.mMoveUp = (AppCompatImageView) view.findViewById(R.id.move_up);
        this.mMoveDown = (AppCompatImageView) view.findViewById(R.id.move_down);
        this.mMoveLeft = (AppCompatImageView) view.findViewById(R.id.move_left);
        this.mMoveRight = (AppCompatImageView) view.findViewById(R.id.move_right);
        this.mMoveUp.setOnTouchListener(this);
        this.mMoveDown.setOnTouchListener(this);
        this.mMoveLeft.setOnTouchListener(this);
        this.mMoveRight.setOnTouchListener(this);
        this.mMoveUp.setOnClickListener(this);
        this.mMoveUp.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$LeftRearviewMirrorFragment$6wxitOw5OywxqZmEDpKriFO0jCI
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return LeftRearviewMirrorFragment.lambda$onBindView$1(LeftRearviewMirrorFragment.this, view2);
            }
        });
        this.mMoveDown.setOnClickListener(this);
        this.mMoveDown.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$LeftRearviewMirrorFragment$5WmeWL4esuWn2VlJ5qhO1EcNUPA
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return LeftRearviewMirrorFragment.lambda$onBindView$2(LeftRearviewMirrorFragment.this, view2);
            }
        });
        this.mMoveLeft.setOnClickListener(this);
        this.mMoveLeft.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$LeftRearviewMirrorFragment$2K6XFD4HSnv1uKTOlUtqlLfncuk
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return LeftRearviewMirrorFragment.lambda$onBindView$3(LeftRearviewMirrorFragment.this, view2);
            }
        });
        this.mMoveRight.setOnClickListener(this);
        this.mMoveRight.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$LeftRearviewMirrorFragment$I1N109sTUedvrNPZsrlX8NZTU1g
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return LeftRearviewMirrorFragment.lambda$onBindView$4(LeftRearviewMirrorFragment.this, view2);
            }
        });
        this.mCollapseAll = (AppCompatTextView) view.findViewById(R.id.collapse_all);
        this.mExpandAll = (AppCompatTextView) view.findViewById(R.id.expand_all);
        this.mCollapseAll.setOnClickListener(this);
        this.mExpandAll.setOnClickListener(this);
        this.mCollapseAll.setOnTouchListener(this);
        this.mExpandAll.setOnTouchListener(this);
        this.mCollapseAll.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$LeftRearviewMirrorFragment$aqF4QUTbNItM6OquYAia9irrxtQ
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return LeftRearviewMirrorFragment.lambda$onBindView$5(LeftRearviewMirrorFragment.this, view2);
            }
        });
        this.mExpandAll.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.seat.-$$Lambda$LeftRearviewMirrorFragment$JYcXCCaOTh_RkwU7uar0DcM4C3k
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return LeftRearviewMirrorFragment.lambda$onBindView$6(LeftRearviewMirrorFragment.this, view2);
            }
        });
    }

    public static /* synthetic */ boolean lambda$onBindView$1(LeftRearviewMirrorFragment leftRearviewMirrorFragment, View view) {
        LogUtil.i(leftRearviewMirrorFragment.TAG, "LongClick ^^^^ ICarSettings.RearviewMirrorCmd.FL_MIRROR_UP");
        leftRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FL_MIRROR_UP;
        leftRearviewMirrorFragment.handler.post(leftRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$2(LeftRearviewMirrorFragment leftRearviewMirrorFragment, View view) {
        LogUtil.i(leftRearviewMirrorFragment.TAG, "LongClick vvvv ICarSettings.RearviewMirrorCmd.FL_MIRROR_DOWN");
        leftRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FL_MIRROR_DOWN;
        leftRearviewMirrorFragment.handler.post(leftRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$3(LeftRearviewMirrorFragment leftRearviewMirrorFragment, View view) {
        LogUtil.i(leftRearviewMirrorFragment.TAG, "LongClick <<<< ICarSettings.RearviewMirrorCmd.FL_MIRROR_LEFT");
        leftRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FL_MIRROR_LEFT;
        leftRearviewMirrorFragment.handler.post(leftRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$4(LeftRearviewMirrorFragment leftRearviewMirrorFragment, View view) {
        LogUtil.i(leftRearviewMirrorFragment.TAG, "LongClick >>>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_RIGHT");
        leftRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FL_MIRROR_RIGHT;
        leftRearviewMirrorFragment.handler.post(leftRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$5(LeftRearviewMirrorFragment leftRearviewMirrorFragment, View view) {
        LogUtil.i(leftRearviewMirrorFragment.TAG, "LongClick >>>> ICarSettings.RearviewMirrorCmd.FOLD");
        leftRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.FOLD;
        leftRearviewMirrorFragment.handler.post(leftRearviewMirrorFragment.runnable);
        return false;
    }

    public static /* synthetic */ boolean lambda$onBindView$6(LeftRearviewMirrorFragment leftRearviewMirrorFragment, View view) {
        LogUtil.i(leftRearviewMirrorFragment.TAG, "LongClick >>>> ICarSettings.RearviewMirrorCmd.UNFOLD");
        leftRearviewMirrorFragment.cmd = ICarSettings.RearviewMirrorCmd.UNFOLD;
        leftRearviewMirrorFragment.handler.post(leftRearviewMirrorFragment.runnable);
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
        LogUtil.i(this.TAG, "左后视镜 onHiddenChanged " + z);
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
                    LogUtil.i(this.TAG, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_DOWN");
                    this.cmd = ICarSettings.RearviewMirrorCmd.FL_MIRROR_DOWN;
                    this.mLeftMirror.setImageResource(R.mipmap.im_lift_mirror_under);
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.FL_MIRROR_DOWN);
                    return false;
                case R.id.move_left /* 2131165329 */:
                    LogUtil.i(this.TAG, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_LEFT");
                    this.cmd = ICarSettings.RearviewMirrorCmd.FL_MIRROR_LEFT;
                    this.mLeftMirror.setImageResource(R.mipmap.im_lift_mirror_lift);
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.FL_MIRROR_LEFT);
                    return false;
                case R.id.move_right /* 2131165331 */:
                    LogUtil.i(this.TAG, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_RIGHT");
                    this.cmd = ICarSettings.RearviewMirrorCmd.FL_MIRROR_RIGHT;
                    this.mLeftMirror.setImageResource(R.mipmap.im_lift_mirror_right);
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.FL_MIRROR_RIGHT);
                    return false;
                case R.id.move_up /* 2131165333 */:
                    LogUtil.i(this.TAG, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_UP");
                    this.cmd = ICarSettings.RearviewMirrorCmd.FL_MIRROR_UP;
                    this.mLeftMirror.setImageResource(R.mipmap.im_lift_mirror_up);
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.FL_MIRROR_UP);
                    return false;
                default:
                    return false;
            }
        }
        if (motionEvent.getAction() == 1) {
            switch (view.getId()) {
                case R.id.collapse_all /* 2131165241 */:
                case R.id.expand_all /* 2131165259 */:
                case R.id.move_down /* 2131165325 */:
                case R.id.move_left /* 2131165329 */:
                case R.id.move_right /* 2131165331 */:
                case R.id.move_up /* 2131165333 */:
                    LogUtil.i(this.TAG, "onTouch  MotionEvent.ACTION_UP  ICarSettings.RearviewMirrorCmd.STOP");
                    this.handler.removeCallbacks(this.runnable);
                    if (this.cmd == ICarSettings.RearviewMirrorCmd.__UNKNOWN__) {
                        return false;
                    }
                    this.cmd = ICarSettings.RearviewMirrorCmd.__UNKNOWN__;
                    CarMirrorControl.getInstance().setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd.STOP);
                    this.mLeftMirror.setImageDrawable(null);
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
        this.mLeftMirror.setImageDrawable(null);
        return false;
    }
}
