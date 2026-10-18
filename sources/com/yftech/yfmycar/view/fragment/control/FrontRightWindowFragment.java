package com.yftech.yfmycar.view.fragment.control;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.vehicle.internal.adapter.ICarWindow;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.BaseFragment;
import com.yftech.yfmycar.view.bean.CarWindowEvent;
import com.yftech.yfmycar.view.callback.WindowAnimCallBack;
import com.yftech.yfmycar.view.manager.MyCarWindowManager;
import com.yftech.yfmycar.view.utils.LogUtil;
import com.yftech.yfmycar.view.widgets.VerticalAnimWindowTouchView;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes.dex */
public class FrontRightWindowFragment extends BaseFragment implements View.OnClickListener {
    private final String TAG = "FrontRightWindowFragment";
    private AppCompatImageView mMoveDown;
    private AppCompatImageView mMoveUp;
    private AppCompatTextView mOneClickCloseWindow;
    private AppCompatTextView mOneClickOpenWindow;
    private VerticalAnimWindowTouchView verticalAnimWindow;

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 3;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_front_right_window);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindView(@Nullable Bundle bundle, View view) {
        this.mMoveUp = (AppCompatImageView) view.findViewById(R.id.move_up_front_right);
        this.mMoveDown = (AppCompatImageView) view.findViewById(R.id.move_down_front_right);
        this.mOneClickOpenWindow = (AppCompatTextView) view.findViewById(R.id.one_click_open_window_front_right);
        this.mOneClickCloseWindow = (AppCompatTextView) view.findViewById(R.id.one_click_close_window_front_right);
        this.mMoveUp.setOnClickListener(this);
        this.mMoveDown.setOnClickListener(this);
        this.mMoveUp.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$FrontRightWindowFragment$mPdd911DnDtNtwHN3Vxe0b3MRuU
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return FrontRightWindowFragment.lambda$onBindView$0(view2);
            }
        });
        this.mMoveDown.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$FrontRightWindowFragment$xKieDkfC_iuQi6O7BJ_4CdTEY6o
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return FrontRightWindowFragment.lambda$onBindView$1(view2);
            }
        });
        this.mOneClickOpenWindow.setOnClickListener(this);
        this.mOneClickCloseWindow.setOnClickListener(this);
        this.verticalAnimWindow = (VerticalAnimWindowTouchView) view.findViewById(R.id.verticalWindow);
        this.verticalAnimWindow.setWindowAnimCallBack(new WindowAnimCallBack() { // from class: com.yftech.yfmycar.view.fragment.control.FrontRightWindowFragment.1
            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doAnimationStartEnd(int i, int i2) {
            }

            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doAnimationUpdate(int i) {
            }

            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doDownUpVisible(int i, int i2) {
                FrontRightWindowFragment.this.mMoveDown.setVisibility(i);
                FrontRightWindowFragment.this.mMoveUp.setVisibility(i2);
            }
        });
        initWindowPercent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$onBindView$0(View view) {
        MyCarWindowManager.getInstance().controlCarWindowFrontRight(ICarWindow.WindowOpenPercent.FULLY_CLOSE);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$onBindView$1(View view) {
        MyCarWindowManager.getInstance().controlCarWindowFrontRight(ICarWindow.WindowOpenPercent.FULLY_OPEN);
        return false;
    }

    public void initWindowPercent() {
        if (this.verticalAnimWindow != null) {
            this.verticalAnimWindow.initWindowPercent();
        }
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            return;
        }
        initWindowPercent();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCarWindowEvent(CarWindowEvent carWindowEvent) {
        if (carWindowEvent.getWhichCarWindow() == 1 || carWindowEvent.getWhichCarWindow() == 4) {
            LogUtil.e("FrontRightWindowFragment", carWindowEvent.toString());
            this.verticalAnimWindow.initWindowPercent();
        }
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131165327) {
            ICarWindow.WindowOperationState windowOperationState = MyCarWindowManager.getInstance().getWindowOperationState(1);
            if (windowOperationState == ICarWindow.WindowOperationState.OPENING || windowOperationState == ICarWindow.WindowOperationState.CLOSING) {
                MyCarWindowManager.getInstance().controlCarWindowFrontRight(ICarWindow.WindowOpenPercent.STOP);
                return;
            } else {
                MyCarWindowManager.getInstance().controlCarWindowFrontRight(ICarWindow.WindowOpenPercent.CHANGE_OPEN);
                return;
            }
        }
        if (id != 2131165335) {
            if (id == 2131165348) {
                MyCarWindowManager.getInstance().controlCarWindowFrontRight(ICarWindow.WindowOpenPercent.FULLY_CLOSE);
                return;
            } else {
                if (id != 2131165352) {
                    return;
                }
                MyCarWindowManager.getInstance().controlCarWindowFrontRight(ICarWindow.WindowOpenPercent.FULLY_OPEN);
                return;
            }
        }
        ICarWindow.WindowOperationState windowOperationState2 = MyCarWindowManager.getInstance().getWindowOperationState(1);
        if (windowOperationState2 == ICarWindow.WindowOperationState.OPENING || windowOperationState2 == ICarWindow.WindowOperationState.CLOSING) {
            MyCarWindowManager.getInstance().controlCarWindowFrontRight(ICarWindow.WindowOpenPercent.STOP);
        } else {
            MyCarWindowManager.getInstance().controlCarWindowFrontRight(ICarWindow.WindowOpenPercent.CHANGE_CLOSE);
        }
    }
}
