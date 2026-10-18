package com.yftech.yfmycar.view.base;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.bean.FragmentsIndex;
import com.yftech.yfmycar.view.bean.WindowErrorEvent;
import com.yftech.yfmycar.view.manager.EventBusCompat;
import com.yftech.yfmycar.view.manager.MyCarWindowManager;
import com.yftech.yfmycar.view.utils.LogUtil;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class BaseFragment extends Fragment implements View.OnClickListener {

    @FragmentsIndex
    private int fragmentIndex;
    private LinearLayout llTip;
    boolean mCarRestTaskCanceled;
    private TextView tvTip;
    protected String TAG = getClass().getSimpleName();
    public final int CAR_RESET_COUNT = 2;
    private Timer mCarRestTimer = null;
    private TimerTask mCarRestTask = null;
    private int timeCount = 0;

    public void doWorkAfterTimeOut() {
    }

    public abstract void onBindView(@Nullable Bundle bundle, View view);

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @FragmentsIndex
    public abstract int setFragmentIndex();

    public abstract Object setLayout();

    static /* synthetic */ int access$008(BaseFragment baseFragment) {
        int i = baseFragment.timeCount;
        baseFragment.timeCount = i + 1;
        return i;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        View view;
        LogUtil.d(this.TAG, "onViewCreated");
        View inflate = layoutInflater.inflate(R.layout.base_fragment_layout, viewGroup, false);
        if (setLayout() instanceof Integer) {
            view = layoutInflater.inflate(((Integer) setLayout()).intValue(), viewGroup, false);
        } else if (setLayout() instanceof View) {
            view = (View) setLayout();
        } else {
            throw new ClassCastException("setLayout() type must be int or View!");
        }
        if (view != null) {
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(R.id.frame_base);
            this.llTip = (LinearLayout) inflate.findViewById(R.id.ll_tip);
            this.tvTip = (TextView) inflate.findViewById(R.id.tv_tip);
            this.llTip.setOnClickListener(this);
            frameLayout.removeAllViews();
            frameLayout.addView(view);
        }
        onBindView(bundle, inflate);
        this.fragmentIndex = setFragmentIndex();
        showErrorTip(isShowErrorTip(this.fragmentIndex));
        EventBusCompat.register(this);
        return inflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        LogUtil.d(this.TAG, "onHiddenChanged:" + z);
        super.onHiddenChanged(z);
        if (z) {
            return;
        }
        showErrorTip(isShowErrorTip(this.fragmentIndex));
    }

    public boolean isShowErrorTip(@FragmentsIndex int i) {
        switch (i) {
            case 2:
                return MyCarWindowManager.getInstance().getWindowStateError(0);
            case 3:
                return MyCarWindowManager.getInstance().getWindowStateError(1);
            case 4:
                return MyCarWindowManager.getInstance().getWindowStateError(2);
            case 5:
                return MyCarWindowManager.getInstance().getWindowStateError(3);
            default:
                Log.i(this.TAG, "isShowErrorTip FragmentsIndex false:" + i);
                return false;
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onCarWindowErrorEvent(WindowErrorEvent windowErrorEvent) {
        if (windowErrorEvent.getWhichFragment() == this.fragmentIndex) {
            showErrorTip(windowErrorEvent.isError());
        }
    }

    public void showTip(boolean z, String str) {
        if (this.llTip != null) {
            this.tvTip.setText(str);
            this.llTip.setVisibility(z ? 0 : 4);
        }
    }

    public void showErrorTip(boolean z) {
        if (this.llTip != null) {
            this.tvTip.setText(getString(R.string.tip_fault));
            this.llTip.setVisibility(z ? 0 : 4);
        }
    }

    public void showShortToast(String str) {
        Toast.makeText(getActivity(), str, 0).show();
    }

    public void showLongToast(String str) {
        Toast.makeText(getActivity(), str, 1).show();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        LogUtil.d(this.TAG, "onResume");
        super.onResume();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        LogUtil.d(this.TAG, "onPause");
        super.onPause();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        LogUtil.d(this.TAG, "onDestroyView");
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        LogUtil.d(this.TAG, "onDestroy");
        EventBusCompat.unregister(this);
        stopCarRestTimer();
    }

    public void startCarRestTimer(long j) {
        if (this.mCarRestTimer == null) {
            this.mCarRestTimer = new Timer();
        } else {
            this.mCarRestTimer.purge();
        }
        this.timeCount = 0;
        this.mCarRestTaskCanceled = false;
        this.mCarRestTask = new TimerTask() { // from class: com.yftech.yfmycar.view.base.BaseFragment.1
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (BaseFragment.this.mCarRestTaskCanceled) {
                    return;
                }
                if (BaseFragment.this.timeCount >= 2) {
                    BaseFragment.this.timeCount = 0;
                    ((FragmentActivity) Objects.requireNonNull(BaseFragment.this.getActivity())).runOnUiThread(new Runnable() { // from class: com.yftech.yfmycar.view.base.BaseFragment.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            BaseFragment.this.doWorkAfterTimeOut();
                        }
                    });
                    BaseFragment.this.stopCarRestTimer();
                    return;
                }
                BaseFragment.access$008(BaseFragment.this);
            }
        };
        try {
            this.mCarRestTimer.schedule(this.mCarRestTask, j, 1000L);
        } catch (Exception e) {
            LogUtil.e("BaseFragment", e.toString());
        }
    }

    public void stopCarRestTimer() {
        if (this.mCarRestTaskCanceled || this.mCarRestTask == null) {
            return;
        }
        this.mCarRestTaskCanceled = true;
        if (this.mCarRestTask != null) {
            this.mCarRestTask.cancel();
            this.mCarRestTask = null;
        }
        if (this.mCarRestTimer != null) {
            this.mCarRestTimer.cancel();
            this.mCarRestTimer = null;
        }
    }

    public void restartCarRestTimer(long j) {
        stopCarRestTimer();
        startCarRestTimer(j);
    }
}
