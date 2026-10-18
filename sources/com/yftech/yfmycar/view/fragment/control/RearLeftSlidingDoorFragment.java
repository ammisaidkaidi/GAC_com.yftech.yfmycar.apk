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
public class RearLeftSlidingDoorFragment extends BaseFragment implements View.OnClickListener {
    private final String TAG = "RearLeftSlidingDoorFragment";
    private AppCompatImageView mMoveDown;
    private AppCompatImageView mMoveUp;
    private VerticalAnimWindowTouchView verticalAnimWindow;

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 4;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_rear_left_sliding_door);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindView(@Nullable Bundle bundle, View view) {
        this.mMoveUp = (AppCompatImageView) view.findViewById(R.id.move_up_left);
        this.mMoveDown = (AppCompatImageView) view.findViewById(R.id.move_down_left);
        this.mMoveUp.setOnClickListener(this);
        this.mMoveDown.setOnClickListener(this);
        this.mMoveUp.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$RearLeftSlidingDoorFragment$1M5buCzqoVgGWyEtwiTg4GT_13I
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RearLeftSlidingDoorFragment.lambda$onBindView$0(view2);
            }
        });
        this.mMoveDown.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$RearLeftSlidingDoorFragment$uBz2mkBb_oSO18OB4kBNMFavBlk
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                return RearLeftSlidingDoorFragment.lambda$onBindView$1(view2);
            }
        });
        this.verticalAnimWindow = (VerticalAnimWindowTouchView) view.findViewById(R.id.verticalWindow);
        this.verticalAnimWindow.setWindowAnimCallBack(new WindowAnimCallBack() { // from class: com.yftech.yfmycar.view.fragment.control.RearLeftSlidingDoorFragment.1
            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doAnimationStartEnd(int i, int i2) {
            }

            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doAnimationUpdate(int i) {
            }

            @Override // com.yftech.yfmycar.view.callback.WindowAnimCallBack
            public void doDownUpVisible(int i, int i2) {
                RearLeftSlidingDoorFragment.this.mMoveDown.setVisibility(i);
                RearLeftSlidingDoorFragment.this.mMoveUp.setVisibility(i2);
            }
        });
        AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(R.id.one_click_open_window_left);
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(R.id.one_click_close_window_left);
        appCompatTextView.setOnClickListener(this);
        appCompatTextView2.setOnClickListener(this);
        initWindowPercent();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$onBindView$0(View view) {
        MyCarWindowManager.getInstance().controlCarWindowRearLeft(ICarWindow.WindowOpenPercent.FULLY_CLOSE);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$onBindView$1(View view) {
        MyCarWindowManager.getInstance().controlCarWindowRearLeft(ICarWindow.WindowOpenPercent.FULLY_OPEN);
        return false;
    }

    public void initWindowPercent() {
        if (this.verticalAnimWindow != null) {
            this.verticalAnimWindow.initWindowPercent();
        }
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131165328) {
            ICarWindow.WindowOperationState windowOperationState = MyCarWindowManager.getInstance().getWindowOperationState(2);
            if (windowOperationState == ICarWindow.WindowOperationState.OPENING || windowOperationState == ICarWindow.WindowOperationState.CLOSING) {
                MyCarWindowManager.getInstance().controlCarWindowRearLeft(ICarWindow.WindowOpenPercent.STOP);
                return;
            } else {
                MyCarWindowManager.getInstance().controlCarWindowRearLeft(ICarWindow.WindowOpenPercent.CHANGE_OPEN);
                return;
            }
        }
        if (id != 2131165336) {
            if (id == 2131165349) {
                MyCarWindowManager.getInstance().controlCarWindowRearLeft(ICarWindow.WindowOpenPercent.FULLY_CLOSE);
                return;
            } else {
                if (id != 2131165353) {
                    return;
                }
                MyCarWindowManager.getInstance().controlCarWindowRearLeft(ICarWindow.WindowOpenPercent.FULLY_OPEN);
                return;
            }
        }
        ICarWindow.WindowOperationState windowOperationState2 = MyCarWindowManager.getInstance().getWindowOperationState(2);
        if (windowOperationState2 == ICarWindow.WindowOperationState.CLOSING || windowOperationState2 == ICarWindow.WindowOperationState.OPENING) {
            MyCarWindowManager.getInstance().controlCarWindowRearLeft(ICarWindow.WindowOpenPercent.STOP);
        } else {
            MyCarWindowManager.getInstance().controlCarWindowRearLeft(ICarWindow.WindowOpenPercent.CHANGE_CLOSE);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCarWindowEvent(CarWindowEvent carWindowEvent) {
        if (carWindowEvent.getWhichCarWindow() == 2 || carWindowEvent.getWhichCarWindow() == 4) {
            LogUtil.e("RearLeftSlidingDoorFragment", carWindowEvent.toString());
            this.verticalAnimWindow.initWindowPercent();
        }
    }
}
