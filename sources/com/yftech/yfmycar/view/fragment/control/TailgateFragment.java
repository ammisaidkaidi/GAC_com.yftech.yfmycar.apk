package com.yftech.yfmycar.view.fragment.control;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.sdk.CarDoorManager;
import com.yftech.vehicle.sdk.CarInfoManager;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.BaseFragment;
import com.yftech.yfmycar.view.bean.CarTailgateEvent;
import com.yftech.yfmycar.view.bean.SpeedEvent;
import com.yftech.yfmycar.view.manager.CarConfigControl;
import com.yftech.yfmycar.view.manager.CarDoorControl;
import com.yftech.yfmycar.view.utils.LogUtil;
import com.yftech.yfmycar.view.widgets.TailgateBitmapView;
import com.yftech.yfmycar.view.widgets.TailgateOpenView;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes.dex */
public class TailgateFragment extends BaseFragment implements View.OnClickListener {
    private final String TAG = "TailgateFragment";
    private AppCompatTextView clearMemoryPosition;
    private int doorOpenAnglePercent;
    private FrameLayout frameMemoryLocation;
    private AppCompatTextView mCloseTailDoor;
    private AppCompatTextView mOpenMemoryPosition;
    private AppCompatTextView memoryPosition;
    private TailgateBitmapView tailgateBitmapView;
    private TailgateOpenView tailgateOpenView;
    private TextView tvMemoryLocation;

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 10;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_tailgate);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindView(@Nullable Bundle bundle, View view) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(R.id.img_car);
        if (!CarConfigControl.isArLanguage()) {
            appCompatImageView.setImageResource(CarConfigControl.isGACLogoPresent() ? R.mipmap.mycay_vecl_pic_car01 : R.mipmap.vecl_pic_car01_not_logo);
        }
        this.tailgateOpenView = (TailgateOpenView) view.findViewById(R.id.tailgate_open_view);
        this.tailgateBitmapView = (TailgateBitmapView) view.findViewById(R.id.tailgate_bitmap_view);
        this.mCloseTailDoor = (AppCompatTextView) view.findViewById(R.id.close_tail_door);
        this.mOpenMemoryPosition = (AppCompatTextView) view.findViewById(R.id.open_memory_position);
        this.clearMemoryPosition = (AppCompatTextView) view.findViewById(R.id.clear_memory_position);
        this.memoryPosition = (AppCompatTextView) view.findViewById(R.id.memory_position);
        this.frameMemoryLocation = (FrameLayout) view.findViewById(R.id.frame_memory_location);
        this.tvMemoryLocation = (TextView) view.findViewById(R.id.tv_memory_location);
        this.clearMemoryPosition.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$TailgateFragment$eABdcZIP6XRz_wf68yMgxPZ8qD8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TailgateFragment.lambda$onBindView$0(TailgateFragment.this, view2);
            }
        });
        this.memoryPosition.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.fragment.control.-$$Lambda$TailgateFragment$EsAz_nXc99LM3B7qfuqEUVuz2S8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TailgateFragment.lambda$onBindView$1(TailgateFragment.this, view2);
            }
        });
        this.tailgateOpenView.setOnTailGateStatusChangeListener(new TailgateOpenView.OnTailGateStatusChangeListener() { // from class: com.yftech.yfmycar.view.fragment.control.TailgateFragment.1
            final float dim200;

            @Override // com.yftech.yfmycar.view.widgets.TailgateOpenView.OnTailGateStatusChangeListener
            public void isMoving(boolean z) {
            }

            @Override // com.yftech.yfmycar.view.widgets.TailgateOpenView.OnTailGateStatusChangeListener
            public void onUiBack() {
            }

            {
                this.dim200 = TailgateFragment.this.getResources().getDimension(R.dimen.dp_200);
            }

            @Override // com.yftech.yfmycar.view.widgets.TailgateOpenView.OnTailGateStatusChangeListener
            public void onMemoryChange(int i) {
                if (i < 50 || i >= 100) {
                    TailgateFragment.this.tvMemoryLocation.setTranslationY(0.0f);
                    TailgateFragment.this.frameMemoryLocation.setVisibility(4);
                } else {
                    TailgateFragment.this.frameMemoryLocation.setVisibility(0);
                    TailgateFragment.this.tvMemoryLocation.setTranslationY(((-this.dim200) * (i - 50)) / 50.0f);
                }
            }

            @Override // com.yftech.yfmycar.view.widgets.TailgateOpenView.OnTailGateStatusChangeListener
            public void onTip(boolean z) {
                if (z) {
                    TailgateFragment.this.showTip(true, TailgateFragment.this.getResources().getString(R.string.tip_stop_car));
                }
            }

            @Override // com.yftech.yfmycar.view.widgets.TailgateOpenView.OnTailGateStatusChangeListener
            public void onFinish(int i) {
                TailgateFragment.this.doorOpenAnglePercent = i;
                LogUtil.e("TailgateFragment", "doorOpenAnglePercent = " + i);
                TailgateFragment.this.tailgateBitmapView.setMoveAngle(i);
            }
        });
        this.mCloseTailDoor.setOnClickListener(this);
        this.mOpenMemoryPosition.setOnClickListener(this);
        this.tailgateOpenView.updateMemory();
        int tailgateTravelPercent = CarDoorControl.getInstance().getTailgateTravelPercent();
        ICarDoor.TailDoorState tailgateStatus = CarDoorControl.getInstance().getTailgateStatus();
        this.tailgateOpenView.setMoveAngle(tailgateTravelPercent);
        this.tailgateBitmapView.setMoveAngle(tailgateTravelPercent);
        initButton(tailgateStatus);
        int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
        LogUtil.i("TailgateFragment", "获取车速信息  vehicleSpeed= " + vehicleSpeed);
        if (vehicleSpeed > 0) {
            showTip(true, getResources().getString(R.string.tip_stop_car));
        }
    }

    public static /* synthetic */ void lambda$onBindView$0(TailgateFragment tailgateFragment, View view) {
        LogUtil.e("TailgateFragment", "clearMemoryPosition click clearTailDoorMemory ");
        if (!CarDoorControl.getInstance().clearTailDoorMemory()) {
            tailgateFragment.showLongToast(tailgateFragment.getResources().getString(R.string.clear_memory_location_failure));
        }
        tailgateFragment.tailgateOpenView.onUiBackMessageDelayed(true);
    }

    public static /* synthetic */ void lambda$onBindView$1(TailgateFragment tailgateFragment, View view) {
        LogUtil.e("TailgateFragment", "memoryPosition click saveTailDoorPercent ");
        if (tailgateFragment.doorOpenAnglePercent < 50) {
            tailgateFragment.showLongToast(tailgateFragment.getResources().getString(R.string.memorize_current_position_tip));
            return;
        }
        if (!CarDoorControl.getInstance().saveTailDoorPercent()) {
            tailgateFragment.showLongToast(tailgateFragment.getResources().getString(R.string.memory_location_failure));
        }
        tailgateFragment.tailgateOpenView.onUiBackMessageDelayed(true);
    }

    private void initButton(ICarDoor.TailDoorState tailDoorState) {
        LogUtil.i("TailgateFragment", ">>>>>>>>>>>>>  initButton start ,tailgateStatus = " + tailDoorState);
        int tailDoorPercent = CarDoorControl.getInstance().getTailDoorPercent();
        if (tailDoorState == ICarDoor.TailDoorState.FULLY_CLOSED) {
            this.mCloseTailDoor.setText(getResources().getString(R.string.open_tail_door));
            this.clearMemoryPosition.setVisibility(8);
            this.memoryPosition.setVisibility(8);
            if (tailDoorPercent < 100) {
                this.mCloseTailDoor.setVisibility(8);
                this.mOpenMemoryPosition.setVisibility(0);
            } else {
                this.mCloseTailDoor.setVisibility(0);
                this.mOpenMemoryPosition.setVisibility(8);
            }
        } else if (tailDoorState == ICarDoor.TailDoorState.OPENING || tailDoorState == ICarDoor.TailDoorState.CLOSING) {
            this.mCloseTailDoor.setText(getResources().getString(R.string.stop_tail_door));
            this.mOpenMemoryPosition.setVisibility(8);
            this.mCloseTailDoor.setVisibility(0);
            this.clearMemoryPosition.setVisibility(8);
            this.memoryPosition.setVisibility(8);
        } else {
            this.mCloseTailDoor.setText(getResources().getString(R.string.close_tail_door));
            this.mOpenMemoryPosition.setVisibility(8);
            this.mCloseTailDoor.setVisibility(0);
            if (tailDoorPercent != 100) {
                if (tailDoorState == ICarDoor.TailDoorState.FULLY_OPENED) {
                    this.memoryPosition.setVisibility(8);
                    this.clearMemoryPosition.setVisibility(0);
                } else {
                    this.memoryPosition.setVisibility(0);
                    this.clearMemoryPosition.setVisibility(8);
                }
            } else {
                this.memoryPosition.setVisibility(0);
                this.clearMemoryPosition.setVisibility(8);
            }
        }
        LogUtil.i("TailgateFragment", ">>>>>>>>>>>>>>>>>>> initButton end <<<<<<<<<<<<<<<<<<<<<<<<<");
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            return;
        }
        int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
        LogUtil.i("TailgateFragment", "获取车速信息  vehicleSpeed= " + vehicleSpeed);
        if (vehicleSpeed > 0) {
            showTip(true, getResources().getString(R.string.tip_stop_car));
        }
        ICarDoor.TailDoorState tailgateStatus = CarDoorControl.getInstance().getTailgateStatus();
        if (tailgateStatus == ICarDoor.TailDoorState.OPENING || tailgateStatus == ICarDoor.TailDoorState.CLOSING) {
            return;
        }
        int tailgateTravelPercent = CarDoorControl.getInstance().getTailgateTravelPercent();
        this.tailgateOpenView.setMoveAngle(tailgateTravelPercent);
        this.tailgateBitmapView.setMoveAngle(tailgateTravelPercent);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
        int id = view.getId();
        if (id != 2131165237) {
            if (id != 2131165355) {
                return;
            }
            ICarDoor.TailDoorState tailgateStatus = CarDoorControl.getInstance().getTailgateStatus();
            if (tailgateStatus == ICarDoor.TailDoorState.OPENING || tailgateStatus == ICarDoor.TailDoorState.CLOSING) {
                LogUtil.i("TailgateFragment", "OPENING or CLOSING, click open_memory_position setTailDoorCmd(ICarDoor.TailDoorCmd.STOP) ");
                CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.STOP);
                return;
            } else {
                LogUtil.e("TailgateFragment", "click open memory");
                CarDoorControl.getInstance().controlTailgatePercent(100);
                return;
            }
        }
        ICarDoor.TailDoorState tailgateStatus2 = CarDoorControl.getInstance().getTailgateStatus();
        if (tailgateStatus2 == ICarDoor.TailDoorState.OPENING || tailgateStatus2 == ICarDoor.TailDoorState.CLOSING) {
            LogUtil.i("TailgateFragment", "OPENING or CLOSING, click close_tail_door setTailDoorCmd(ICarDoor.TailDoorCmd.STOP) ");
            CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.STOP);
            return;
        }
        LogUtil.i("TailgateFragment", "click open close ， doorOpenAnglePercent = " + this.doorOpenAnglePercent + ",tailgateStatus = " + tailgateStatus2.name());
        if (tailgateStatus2 == ICarDoor.TailDoorState.FULLY_CLOSED || this.doorOpenAnglePercent == 0) {
            CarDoorControl.getInstance().controlTailgatePercent(CarDoorControl.getInstance().getTailDoorPercent());
        } else if (this.doorOpenAnglePercent > 0 && this.doorOpenAnglePercent <= 20) {
            showLongToast(getResources().getString(R.string.open_position_small));
        } else {
            CarDoorControl.getInstance().controlTailgatePercent(0);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void TailgateEvent(CarTailgateEvent carTailgateEvent) {
        LogUtil.e("TailgateFragment", carTailgateEvent.toString() + " ,>>>>>>>>> TailgateEvent START!!!  <<<<<<<<<<<<<<<<<");
        if (carTailgateEvent.getChangeType() == 1) {
            if (carTailgateEvent.getMemoryPercent() < 100) {
                if (this.memoryPosition.getVisibility() == 0) {
                    showLongToast(getResources().getString(R.string.memory_location_success));
                }
                this.memoryPosition.setVisibility(8);
                this.clearMemoryPosition.setVisibility(0);
            } else {
                if (this.clearMemoryPosition.getVisibility() == 0) {
                    showLongToast(getResources().getString(R.string.clear_memory_location_success));
                }
                this.memoryPosition.setVisibility(0);
                this.clearMemoryPosition.setVisibility(8);
            }
            this.tailgateOpenView.updateMemory();
        } else {
            this.tailgateOpenView.onUiBackMessageDelayed(false);
            ICarDoor.TailDoorState tailgateStatus = CarDoorControl.getInstance().getTailgateStatus();
            this.mCloseTailDoor.getText().toString();
            int tailgateTravelPercent = CarDoorControl.getInstance().getTailgateTravelPercent();
            initButton(tailgateStatus);
            this.tailgateOpenView.isNeedMove(tailgateStatus, tailgateTravelPercent);
            this.tailgateBitmapView.setMoveAngle(tailgateTravelPercent);
        }
        LogUtil.e("TailgateFragment", ">>>>>>>>> TailgateEvent END!!!  <<<<<<<<<<<<<<<<<");
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onFragmentEvent(SpeedEvent speedEvent) {
        if (speedEvent.getSpeed() > 0) {
            showTip(true, getResources().getString(R.string.tip_stop_car));
        } else {
            showTip(false, "");
        }
    }
}
