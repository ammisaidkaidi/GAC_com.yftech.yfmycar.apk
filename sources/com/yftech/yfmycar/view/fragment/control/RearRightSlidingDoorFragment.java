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
public class RearRightSlidingDoorFragment extends BaseFragment implements View.OnClickListener {
    private final String TAG = "RearRightSlidingDoorFragment";
    private AppCompatImageView mMoveDown;
    private AppCompatImageView mMoveUp;
    private VerticalAnimWindowTouchView verticalAnimWindow;

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 5;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_rear_right_sliding_door);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindView(@Nullable Bundle bundle, View view) {
        this.mMoveUp = (AppCompatImageView) view.findViewById(R.id.move_up);
        this.mMoveDown = (AppCompatImageView) view.findViewById(R.id.move_down);
        this.mMoveUp.setOnClickListener(this);
        this.mMoveDown.setOnClickListener(this);
        this.mMoveUp.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$RearRightSlidingDoorFragment$fw9uMFvTMwu3u4EnBkKqN_VFG1M
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RearRightSlidingDoorFragment.lambda$onBindView$0(view2);
            }
        });
        this.mMoveDown.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$RearRightSlidingDoorFragment$DHQx8j-2-ymx4Zd3-jbjrMHp3O8
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RearRightSlidingDoorFragment.lambda$onBindView$1(view2);
            }
        });
        this.verticalAnimWindow = (VerticalAnimWindowTouchView) view.findViewById(R.id.verticalWindow);
        this.verticalAnimWindow.setWindowAnimCallBack(new WindowAnimCallBack() { // from class: com.yftech.yfmycar.view.fragment.control.RearRightSlidingDoorFragment.1
            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doAnimationStartEnd(int i, int i2) {
            }

            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doAnimationUpdate(int i) {
            }

            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doDownUpVisible(int i, int i2) {
                RearRightSlidingDoorFragment.this.mMoveDown.setVisibility(i);
                RearRightSlidingDoorFragment.this.mMoveUp.setVisibility(i2);
            }
        });
        AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(R.id.one_click_open_window);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(R.id.one_click_close_window);
        appCompatTextView.setOnClickListener(this);
        appCompatTextView2.setOnClickListener(this);
        initWindowPercent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$onBindView$0(View view) {
        MyCarWindowManager.getInstance().controlCarWindowRearRight(ICarWindow.WindowOpenPercent.FULLY_CLOSE);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$onBindView$1(View view) {
        MyCarWindowManager.getInstance().controlCarWindowRearRight(ICarWindow.WindowOpenPercent.FULLY_OPEN);
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

    @Override // com.yftech.yfmycar.view.base.BaseFragment, android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131165325) {
            ICarWindow.WindowOperationState windowOperationState = MyCarWindowManager.getInstance().getWindowOperationState(3);
            if (windowOperationState == ICarWindow.WindowOperationState.OPENING || windowOperationState == ICarWindow.WindowOperationState.CLOSING) {
                MyCarWindowManager.getInstance().controlCarWindowRearRight(ICarWindow.WindowOpenPercent.STOP);
                return;
            } else {
                MyCarWindowManager.getInstance().controlCarWindowRearRight(ICarWindow.WindowOpenPercent.CHANGE_OPEN);
                return;
            }
        }
        if (id != 2131165333) {
            if (id == 2131165346) {
                MyCarWindowManager.getInstance().controlCarWindowRearRight(ICarWindow.WindowOpenPercent.FULLY_CLOSE);
                return;
            } else {
                if (id != 2131165350) {
                    return;
                }
                MyCarWindowManager.getInstance().controlCarWindowRearRight(ICarWindow.WindowOpenPercent.FULLY_OPEN);
                return;
            }
        }
        ICarWindow.WindowOperationState windowOperationState2 = MyCarWindowManager.getInstance().getWindowOperationState(3);
        if (windowOperationState2 == ICarWindow.WindowOperationState.CLOSING || windowOperationState2 == ICarWindow.WindowOperationState.OPENING) {
            MyCarWindowManager.getInstance().controlCarWindowRearRight(ICarWindow.WindowOpenPercent.STOP);
        } else {
            MyCarWindowManager.getInstance().controlCarWindowRearRight(ICarWindow.WindowOpenPercent.CHANGE_CLOSE);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCarWindowEvent(CarWindowEvent carWindowEvent) {
        if (carWindowEvent.getWhichCarWindow() == 3 || carWindowEvent.getWhichCarWindow() == 4) {
            LogUtil.e("RearRightSlidingDoorFragment", carWindowEvent.toString());
            this.verticalAnimWindow.initWindowPercent();
        }
    }
}
