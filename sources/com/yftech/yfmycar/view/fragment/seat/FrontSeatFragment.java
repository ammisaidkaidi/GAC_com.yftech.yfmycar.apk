package com.yftech.yfmycar.view.fragment.seat;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.annotation.Nullable;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.BaseFragment;
import com.yftech.yfmycar.view.bean.AirSeatEvent;
import com.yftech.yfmycar.view.bean.PowerEvent;
import com.yftech.yfmycar.view.manager.CarConfigControl;
import com.yftech.yfmycar.view.manager.CarInfoControl;
import com.yftech.yfmycar.view.manager.SeatsManager;
import com.yftech.yfmycar.view.widgets.FontSeatPositionView;
import com.yftech.yfmycar.view.widgets.SeatVentilationHeatingView;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes.dex */
public class FrontSeatFragment extends BaseFragment {
    private FontSeatPositionView fontSeatPositionView;
    private boolean isLeft;
    private SeatVentilationHeatingView mSeatVentilationHeatingView;
    private int whichSeat;

    public static FrontSeatFragment newInstance(boolean z) {
        Bundle bundle = new Bundle();
        FrontSeatFragment frontSeatFragment = new FrontSeatFragment();
        bundle.putBoolean("isLeft", z);
        frontSeatFragment.setArguments(bundle);
        return frontSeatFragment;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return this.isLeft ? 6 : 7;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_front_seat);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public void onBindView(@Nullable Bundle bundle, View view) {
        if (getArguments() != null) {
            this.isLeft = getArguments().getBoolean("isLeft", true);
        }
        this.whichSeat = !this.isLeft ? 1 : 0;
        RadioGroup radioGroup = (RadioGroup) view.findViewById(R.id.radio_group_seat_adjust);
        FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.rela_main);
        int ventilationHeatConfig = SeatsManager.getInstance().getVentilationHeatConfig(!this.isLeft ? 1 : 0);
        if (ventilationHeatConfig > 0) {
            this.mSeatVentilationHeatingView = new SeatVentilationHeatingView(requireContext());
            this.mSeatVentilationHeatingView.init(!this.isLeft ? 1 : 0);
            frameLayout.addView(this.mSeatVentilationHeatingView);
        }
        boolean isLeftHandDriveVehicles = CarConfigControl.isLeftHandDriveVehicles();
        if ((isLeftHandDriveVehicles && this.isLeft) || (!isLeftHandDriveVehicles && !this.isLeft)) {
            boolean isSeatControlPresent = SeatsManager.getInstance().isSeatControlPresent();
            if (isSeatControlPresent) {
                this.fontSeatPositionView = new FontSeatPositionView(requireContext(), this.isLeft);
                frameLayout.addView(this.fontSeatPositionView);
            }
            if (ventilationHeatConfig > 0 && isSeatControlPresent) {
                radioGroup.setVisibility(0);
                radioGroup.clearCheck();
                RadioButton radioButton = (RadioButton) view.findViewById(R.id.seat_ventilation_heating);
                if (ventilationHeatConfig == 1) {
                    radioButton.setText(getResources().getString(R.string.seat_ventilation_heating));
                } else if (ventilationHeatConfig == 2) {
                    radioButton.setText(getResources().getString(R.string.seat_ventilation));
                } else if (ventilationHeatConfig == 3) {
                    radioButton.setText(getResources().getString(R.string.seat_heating));
                }
                radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.yftech.yfmycar.view.fragment.seat.FrontSeatFragment.1
                    @Override // android.widget.RadioGroup.OnCheckedChangeListener
                    @SuppressLint({"NonConstantResourceId"})
                    public void onCheckedChanged(RadioGroup radioGroup2, int i) {
                        if (i == 2131165400) {
                            FrontSeatFragment.this.fontSeatPositionView.setVisibility(0);
                            if (FrontSeatFragment.this.mSeatVentilationHeatingView != null) {
                                FrontSeatFragment.this.mSeatVentilationHeatingView.setVisibility(4);
                                return;
                            }
                            return;
                        }
                        if (i != 2131165406) {
                            return;
                        }
                        FrontSeatFragment.this.fontSeatPositionView.setVisibility(4);
                        if (FrontSeatFragment.this.mSeatVentilationHeatingView != null) {
                            FrontSeatFragment.this.mSeatVentilationHeatingView.setVisibility(0);
                        }
                    }
                });
                radioGroup.check(R.id.seat_position_adjust);
                return;
            }
            radioGroup.setVisibility(4);
            return;
        }
        radioGroup.setVisibility(4);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onAirSeatEventMainThread(AirSeatEvent airSeatEvent) {
        if (this.mSeatVentilationHeatingView != null) {
            this.mSeatVentilationHeatingView.onAirSeatEvent(!this.isLeft ? 1 : 0);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onPowerEvent(PowerEvent powerEvent) {
        ICarInfo.PowerMode powerModel = CarInfoControl.getInstance().getPowerModel();
        if (powerModel == ICarInfo.PowerMode.ACC) {
            if (this.mSeatVentilationHeatingView != null) {
                this.mSeatVentilationHeatingView.onAirSeat(!this.isLeft ? 1 : 0);
            }
        } else {
            if (powerModel != ICarInfo.PowerMode.ON || this.mSeatVentilationHeatingView == null) {
                return;
            }
            this.mSeatVentilationHeatingView.onAirSeatEvent(!this.isLeft ? 1 : 0);
        }
    }
}
