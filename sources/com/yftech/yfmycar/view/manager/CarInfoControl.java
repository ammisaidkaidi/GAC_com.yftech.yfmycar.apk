package com.yftech.yfmycar.view.manager;

import android.util.Log;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarPower;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarInfoManager;
import com.yftech.vehicle.sdk.CarPowerManager;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;
import com.yftech.yfmycar.view.bean.GearPositionEvent;
import com.yftech.yfmycar.view.bean.PowerEvent;
import com.yftech.yfmycar.view.bean.SpeedEvent;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarInfoControl {
    public static volatile CarInfoControl instance;
    private final String TAG = "CarInfoControl";
    private CarInfoManager.CarInfoListener carInfoListener;
    private CarPowerManager.CarPowerListener carPowerListener;
    private GlobalCarViewModel globalCarViewModel;

    public static CarInfoControl getInstance() {
        if (instance == null) {
            synchronized (CarInfoControl.class) {
                if (instance == null) {
                    instance = new CarInfoControl();
                }
            }
        }
        return instance;
    }

    public void init(GlobalCarViewModel globalCarViewModel) {
        this.globalCarViewModel = globalCarViewModel;
        this.carInfoListener = new CarInfoManager.CarInfoListener() { // from class: com.yftech.yfmycar.view.manager.CarInfoControl.1
            private GearPositionEvent gearPositionEvent;
            private PowerEvent powerEvent;
            private SpeedEvent speedEvent;

            @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
            public void onPowerModeChanged(ICarInfo.PowerMode powerMode) {
                super.onPowerModeChanged(powerMode);
                LogUtil.e("CarInfoControl", "CarInfoManager.CarInfoListener >> onPowerModeChanged ICarInfo.PowerMode = " + powerMode.name());
                if (this.powerEvent == null) {
                    this.powerEvent = new PowerEvent();
                }
                EventBusCompat.post(this.powerEvent);
                CarInfoControl.this.globalCarViewModel.powerMode.setValue(powerMode);
            }

            @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
            public void onVehicleSpeedChanged(int i) {
                super.onVehicleSpeedChanged(i);
                LogUtil.e("CarInfoControl", "onVehicleSpeedChanged speed = " + i);
                if (this.speedEvent == null) {
                    this.speedEvent = new SpeedEvent();
                }
                this.speedEvent.setSpeed(i);
                EventBusCompat.post(this.speedEvent);
                CarInfoControl.this.globalCarViewModel.vehicleSpeed.setValue(Integer.valueOf(i));
            }

            @Override // com.yftech.vehicle.sdk.CarInfoManager.CarInfoListener
            public void onGearPositionChanged(ICarInfo.GearPosition gearPosition) {
                super.onGearPositionChanged(gearPosition);
                LogUtil.e("CarInfoControl", "onGearPositionChanged ICarInfo.GearPosition = " + gearPosition.name());
                if (this.gearPositionEvent == null) {
                    this.gearPositionEvent = new GearPositionEvent();
                }
                this.gearPositionEvent.setGearPosition(gearPosition);
                EventBusCompat.post(this.gearPositionEvent);
                CarInfoControl.this.globalCarViewModel.vehicleGear.setValue(gearPosition);
            }
        };
        CarInfoManager.get().registerListener(this.carInfoListener);
        this.carPowerListener = new CarPowerManager.CarPowerListener() { // from class: com.yftech.yfmycar.view.manager.CarInfoControl.2
            private PowerEvent powerEvent;

            @Override // com.yftech.vehicle.sdk.CarPowerManager.CarPowerListener
            public void onPowerStateChanged(ICarPower.PowerState powerState) {
                super.onPowerStateChanged(powerState);
            }

            @Override // com.yftech.vehicle.sdk.CarPowerManager.CarPowerListener
            public void onPowerModeChanged(ICarPower.PowerMode powerMode) {
                super.onPowerModeChanged(powerMode);
                LogUtil.e("CarInfoControl", "CarPowerManager.CarPowerListener >> onPowerModeChanged ICarInfo.PowerMode = " + powerMode.value);
                if (this.powerEvent == null) {
                    this.powerEvent = new PowerEvent();
                }
                this.powerEvent.setPowerMode(powerMode);
                EventBusCompat.post(this.powerEvent);
                CarInfoControl.this.globalCarViewModel.powerMode.setValue(ICarInfo.PowerMode.valueOf(powerMode.value));
            }
        };
        CarPowerManager.get().registerListener(this.carPowerListener);
        this.globalCarViewModel.powerMode.setValue(getPowerModel());
        this.globalCarViewModel.vehicleGear.setValue(getGear());
        this.globalCarViewModel.vehicleSpeed.setValue(Integer.valueOf(getVehicleSpeed()));
    }

    public ICarInfo.PowerMode getPowerModel() {
        ICarInfo.PowerMode powerMode = CarInfoManager.get().getPowerMode();
        Log.i("CarInfoControl", "获取电源状态 : " + powerMode.name());
        return powerMode;
    }

    public int getVehicleSpeed() {
        int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
        Log.i("CarInfoControl", "getVehicleSpeed : " + vehicleSpeed);
        return vehicleSpeed;
    }

    public ICarInfo.GearPosition getGear() {
        ICarInfo.GearPosition gearPosition = CarInfoManager.get().getGearPosition();
        Log.i("CarInfoControl", "获取挡位信息getGearPosition : " + gearPosition.name());
        return gearPosition;
    }

    public boolean isPlgmfunccfgPresent() {
        boolean isPlgmfunccfgPresent = CarConfig.isPlgmfunccfgPresent();
        Log.i("CarInfoControl", "后背门配置是否可见 : " + isPlgmfunccfgPresent);
        return isPlgmfunccfgPresent;
    }

    public void unInit() {
        CarInfoManager.get().unregisterListener(this.carInfoListener);
        CarPowerManager.get().unregisterListener(this.carPowerListener);
    }
}
