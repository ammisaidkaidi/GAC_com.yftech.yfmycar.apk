package com.yftech.yfmycar.view.manager;

import android.annotation.SuppressLint;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarSeat;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarDriveManager;
import com.yftech.vehicle.sdk.CarSeatManager;
import com.yftech.yfmycar.view.bean.AirSeatEvent;
import com.yftech.yfmycar.view.bean.DriveModeEvent;
import com.yftech.yfmycar.view.utils.LogUtil;

@SuppressLint({"SwitchIntDef"})
/* loaded from: /home/user/work/dex/classes.dex */
public class SeatsManager {
    public static final int TYPE_AUTO = 2;
    public static final int TYPE_CLOSE = -1;
    public static final int TYPE_HEAT = 1;
    public static final int TYPE_VENT = 0;
    private static volatile SeatsManager sInstance;
    private final String TAG = "SeatsManager";
    private CarDriveManager.CarDriveListener carDriveListener = new CarDriveManager.CarDriveListener() { // from class: com.yftech.yfmycar.view.manager.SeatsManager.1
        private DriveModeEvent driveModeEvent = new DriveModeEvent();

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onDriveModeChanged(ICarDrive.DriveMode driveMode) {
            LogUtil.i("SeatsManager", "onDriveModeChanged:" + driveMode);
            this.driveModeEvent.setMode(driveMode);
            EventBusCompat.post(this.driveModeEvent);
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onEspStateChanged(ICarDrive.EspState espState) {
            LogUtil.i("SeatsManager", "onEspStateChanged:" + espState);
        }

        @Override // com.yftech.vehicle.sdk.CarDriveManager.CarDriveListener
        public void onHdcStateChanged(ICarDrive.HdcState hdcState) {
            LogUtil.i("SeatsManager", "onHdcStateChanged:" + hdcState);
        }
    };
    private final AirSeatEvent event = new AirSeatEvent();
    private final CarSeatManager.CarSeatListener listener = new CarSeatManager.CarSeatListener() { // from class: com.yftech.yfmycar.view.manager.SeatsManager.2
        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onHeatLevelFLChanged(ICarSeat.HeatLevel heatLevel) {
            LogUtil.e("SeatsManager", "onHeatLevelFLChanged:" + heatLevel);
            SeatsManager.this.event.setAutoEnable(SeatsManager.this.isHeatVentAutoModeEnabled(0));
            SeatsManager.this.event.setLevel(heatLevel.value);
            SeatsManager.this.event.setSeatType(0);
            SeatsManager.this.event.setVentHeatAuto(1);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onHeatLevelFRChanged(ICarSeat.HeatLevel heatLevel) {
            LogUtil.e("SeatsManager", "onHeatLevelFRChanged:" + heatLevel);
            SeatsManager.this.event.setAutoEnable(SeatsManager.this.isHeatVentAutoModeEnabled(1));
            SeatsManager.this.event.setLevel(heatLevel.value);
            SeatsManager.this.event.setSeatType(1);
            SeatsManager.this.event.setVentHeatAuto(1);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onHeatLevelRLChanged(ICarSeat.HeatLevel heatLevel) {
            LogUtil.e("SeatsManager", "onHeatLevelRLChanged:" + heatLevel);
            SeatsManager.this.event.setAutoEnable(SeatsManager.this.isHeatVentAutoModeEnabled(2));
            SeatsManager.this.event.setLevel(heatLevel.value);
            SeatsManager.this.event.setSeatType(2);
            SeatsManager.this.event.setVentHeatAuto(1);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onHeatLevelRRChanged(ICarSeat.HeatLevel heatLevel) {
            LogUtil.e("SeatsManager", "onHeatLevelRRChanged:" + heatLevel);
            SeatsManager.this.event.setAutoEnable(SeatsManager.this.isHeatVentAutoModeEnabled(3));
            SeatsManager.this.event.setLevel(heatLevel.value);
            SeatsManager.this.event.setSeatType(3);
            SeatsManager.this.event.setVentHeatAuto(1);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onVentLevelFLChanged(ICarSeat.VentLevel ventLevel) {
            LogUtil.e("SeatsManager", "onVentLevelFLChanged:" + ventLevel);
            SeatsManager.this.event.setAutoEnable(SeatsManager.this.isHeatVentAutoModeEnabled(0));
            SeatsManager.this.event.setLevel(ventLevel.value);
            SeatsManager.this.event.setSeatType(0);
            SeatsManager.this.event.setVentHeatAuto(0);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onVentLevelFRChanged(ICarSeat.VentLevel ventLevel) {
            LogUtil.e("SeatsManager", "onVentLevelFRChanged:" + ventLevel);
            SeatsManager.this.event.setLevel(ventLevel.value);
            SeatsManager.this.event.setAutoEnable(SeatsManager.this.isHeatVentAutoModeEnabled(1));
            SeatsManager.this.event.setSeatType(1);
            SeatsManager.this.event.setVentHeatAuto(0);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onVentLevelRLChanged(ICarSeat.VentLevel ventLevel) {
            LogUtil.e("SeatsManager", "onVentLevelRLChanged:" + ventLevel);
            SeatsManager.this.event.setAutoEnable(SeatsManager.this.isHeatVentAutoModeEnabled(2));
            SeatsManager.this.event.setLevel(ventLevel.value);
            SeatsManager.this.event.setSeatType(2);
            SeatsManager.this.event.setVentHeatAuto(0);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onVentLevelRRChanged(ICarSeat.VentLevel ventLevel) {
            LogUtil.e("SeatsManager", "onVentLevelRRChanged:" + ventLevel);
            SeatsManager.this.event.setAutoEnable(SeatsManager.this.isHeatVentAutoModeEnabled(3));
            SeatsManager.this.event.setLevel(ventLevel.value);
            SeatsManager.this.event.setSeatType(3);
            SeatsManager.this.event.setVentHeatAuto(0);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onHeatVentAutoModeFLStateChanged(boolean z) {
            LogUtil.e("SeatsManager", "onHeatVentAutoModeFLStateChanged:" + z);
            SeatsManager.this.event.setAutoEnable(z);
            SeatsManager.this.event.setSeatType(0);
            SeatsManager.this.event.setVentHeatAuto(2);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onHeatVentAutoModeFRStateChanged(boolean z) {
            LogUtil.e("SeatsManager", "onHeatVentAutoModeFRStateChanged:" + z);
            SeatsManager.this.event.setAutoEnable(z);
            SeatsManager.this.event.setSeatType(1);
            SeatsManager.this.event.setVentHeatAuto(2);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onHeatVentAutoModeRLStateChanged(boolean z) {
            LogUtil.e("SeatsManager", "onHeatVentAutoModeRLStateChanged:" + z);
            SeatsManager.this.event.setAutoEnable(z);
            SeatsManager.this.event.setSeatType(2);
            SeatsManager.this.event.setVentHeatAuto(2);
            EventBusCompat.post(SeatsManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarSeatManager.CarSeatListener
        public void onHeatVentAutoModeRRStateChanged(boolean z) {
            LogUtil.e("SeatsManager", "onHeatVentAutoModeRRStateChanged:" + z);
            SeatsManager.this.event.setAutoEnable(z);
            SeatsManager.this.event.setSeatType(3);
            SeatsManager.this.event.setVentHeatAuto(2);
            EventBusCompat.post(SeatsManager.this.event);
        }
    };

    public static SeatsManager getInstance() {
        if (sInstance == null) {
            synchronized (SeatsManager.class) {
                if (sInstance == null) {
                    sInstance = new SeatsManager();
                }
            }
        }
        return sInstance;
    }

    private SeatsManager() {
    }

    public void init() {
        CarSeatManager.get().registerListener(this.listener);
        CarDriveManager.get().registerListener(this.carDriveListener);
    }

    public boolean isA88() {
        return ICarConfig.VehiclePlatform.A88 == CarConfig.getVehiclePlatform();
    }

    public void controlSeatAction(ICarSeat.SSWOperation sSWOperation) {
        LogUtil.e("SeatsManager", "controlSeatAction 座椅调节  setSeatSteeringWheel:" + sSWOperation.name());
        CarSeatManager.get().setSeatSteeringWheel(sSWOperation);
    }

    public boolean isSeatControlPresent() {
        boolean isSeatControlPresent = CarConfig.isSeatControlPresent();
        LogUtil.e("SeatsManager", "isSeatControlPresent 主驾座椅控制是否配置：" + isSeatControlPresent);
        return isSeatControlPresent;
    }

    public ICarConfig.VehiclePlatform getVehicleType() {
        return CarConfig.getVehiclePlatform();
    }

    public boolean getVentilationHeatConfigShow() {
        ICarConfig.HeatingAndVentilationFl heatingAndVentilationFl = CarConfig.getHeatingAndVentilationFl();
        ICarConfig.HeatingAndVentilationFr heatingAndVentilationFr = CarConfig.getHeatingAndVentilationFr();
        boolean isRearviewMirrorAdjustmentPresent = CarConfig.isRearviewMirrorAdjustmentPresent();
        if (heatingAndVentilationFl != ICarConfig.HeatingAndVentilationFl.NOT_PRESENT || heatingAndVentilationFr != ICarConfig.HeatingAndVentilationFr.NOT_PRESENT || isRearviewMirrorAdjustmentPresent) {
            LogUtil.e("SeatsManager", "getVentilationHeatConfigShow：true 显示座舱");
            return true;
        }
        LogUtil.e("SeatsManager", "getVentilationHeatConfigShow：false 不显示座舱");
        return false;
    }

    public int getVentilationHeatConfig(int i) {
        switch (i) {
            case 0:
                ICarConfig.HeatingAndVentilationFl heatingAndVentilationFl = CarConfig.getHeatingAndVentilationFl();
                LogUtil.e("SeatsManager", "getVentilationHeatConfig获取主驾座椅配置：" + heatingAndVentilationFl.name());
                return heatingAndVentilationFl.value;
            case 1:
                ICarConfig.HeatingAndVentilationFr heatingAndVentilationFr = CarConfig.getHeatingAndVentilationFr();
                LogUtil.e("SeatsManager", "getVentilationHeatConfig获取副驾座椅配置：" + heatingAndVentilationFr.name());
                return heatingAndVentilationFr.value;
            case 2:
                ICarConfig.HeatingAndVentilationRl heatingAndVentilationRl = CarConfig.getHeatingAndVentilationRl();
                LogUtil.e("SeatsManager", "getVentilationHeatConfig获取后左座椅配置：" + heatingAndVentilationRl.name());
                return heatingAndVentilationRl.value;
            case 3:
                ICarConfig.HeatingAndVentilationRr heatingAndVentilationRr = CarConfig.getHeatingAndVentilationRr();
                LogUtil.e("SeatsManager", "getVentilationHeatConfig获取后右座椅配置：" + heatingAndVentilationRr.name());
                return heatingAndVentilationRr.value;
            default:
                return 0;
        }
    }

    public boolean isInvalidValue(int i) {
        return getHeatLevel(i) == ICarSeat.HeatLevel.__UNKNOWN__.value || getVentLevel(i) == ICarSeat.VentLevel.__UNKNOWN__.value;
    }

    public int getHeatLevel(int i) {
        ICarSeat.HeatLevel heatLevelFL;
        switch (i) {
            case 0:
                heatLevelFL = CarSeatManager.get().getHeatLevelFL();
                break;
            case 1:
                heatLevelFL = CarSeatManager.get().getHeatLevelFR();
                break;
            case 2:
                heatLevelFL = CarSeatManager.get().getHeatLevelRL();
                break;
            case 3:
                heatLevelFL = CarSeatManager.get().getHeatLevelRR();
                break;
            default:
                heatLevelFL = ICarSeat.HeatLevel.__UNKNOWN__;
                break;
        }
        LogUtil.e("SeatsManager", "getHeatLevel加热等级 = " + heatLevelFL.name());
        return heatLevelFL.value;
    }

    public int getVentLevel(int i) {
        ICarSeat.VentLevel ventLevelFL;
        switch (i) {
            case 0:
                ventLevelFL = CarSeatManager.get().getVentLevelFL();
                break;
            case 1:
                ventLevelFL = CarSeatManager.get().getVentLevelFR();
                break;
            case 2:
                ventLevelFL = CarSeatManager.get().getVentLevelRL();
                break;
            case 3:
                ventLevelFL = CarSeatManager.get().getVentLevelRR();
                break;
            default:
                ventLevelFL = ICarSeat.VentLevel.__UNKNOWN__;
                break;
        }
        LogUtil.e("SeatsManager", "getVentLevel通风等级 = " + ventLevelFL.name());
        return ventLevelFL.value;
    }

    public boolean isVentLevelEnable(int i) {
        return i == ICarSeat.VentLevel.LEVEL_1.value || i == ICarSeat.VentLevel.LEVEL_2.value || i == ICarSeat.VentLevel.LEVEL_3.value;
    }

    public boolean isHeatLevelEnable(int i) {
        return i == ICarSeat.HeatLevel.LEVEL_1.value || i == ICarSeat.HeatLevel.LEVEL_2.value || i == ICarSeat.HeatLevel.LEVEL_3.value;
    }

    public boolean isVentLevelError(int i) {
        return i == ICarSeat.VentLevel.ERROR.value;
    }

    public boolean isHeatLevelError(int i) {
        return i == ICarSeat.HeatLevel.ERROR.value;
    }

    public boolean isHeatVentAutoModeEnabled(int i) {
        boolean isHeatVentAutoModeFLEnabled;
        switch (i) {
            case 0:
                isHeatVentAutoModeFLEnabled = CarSeatManager.get().isHeatVentAutoModeFLEnabled();
                break;
            case 1:
                isHeatVentAutoModeFLEnabled = CarSeatManager.get().isHeatVentAutoModeFREnabled();
                break;
            case 2:
                isHeatVentAutoModeFLEnabled = CarSeatManager.get().isHeatVentAutoModeRLEnabled();
                break;
            case 3:
                isHeatVentAutoModeFLEnabled = CarSeatManager.get().isHeatVentAutoModeRREnabled();
                break;
            default:
                isHeatVentAutoModeFLEnabled = false;
                break;
        }
        LogUtil.e("SeatsManager", "WhichCarSeat = " + i + ">>isHeatVentAutoModeEnabled:" + isHeatVentAutoModeFLEnabled);
        return isHeatVentAutoModeFLEnabled;
    }

    public boolean setHeatLevel(int i, ICarSeat.HeatLevel heatLevel) {
        boolean heatLevelFL;
        switch (i) {
            case 0:
                heatLevelFL = CarSeatManager.get().setHeatLevelFL(heatLevel);
                break;
            case 1:
                heatLevelFL = CarSeatManager.get().setHeatLevelFR(heatLevel);
                break;
            case 2:
                heatLevelFL = CarSeatManager.get().setHeatLevelRL(heatLevel);
                break;
            case 3:
                heatLevelFL = CarSeatManager.get().setHeatLevelRR(heatLevel);
                break;
            default:
                heatLevelFL = false;
                break;
        }
        LogUtil.e("SeatsManager", "WhichCarSeat = " + i + ",setHeatLevel:" + heatLevelFL + " >>  HeatLevel = " + heatLevel.value);
        return heatLevelFL;
    }

    public boolean setVentLevel(int i, ICarSeat.VentLevel ventLevel) {
        boolean ventLevelFL;
        switch (i) {
            case 0:
                ventLevelFL = CarSeatManager.get().setVentLevelFL(ventLevel);
                break;
            case 1:
                ventLevelFL = CarSeatManager.get().setVentLevelFR(ventLevel);
                break;
            case 2:
                ventLevelFL = CarSeatManager.get().setVentLevelRL(ventLevel);
                break;
            case 3:
                ventLevelFL = CarSeatManager.get().setVentLevelRR(ventLevel);
                break;
            default:
                ventLevelFL = false;
                break;
        }
        LogUtil.e("SeatsManager", "WhichCarSeat = " + i + ",setVentLevel:" + ventLevelFL + " >>  HeatLevel = " + ventLevel.value);
        return ventLevelFL;
    }

    public void setHeatVentOff(int i) {
        LogUtil.e("SeatsManager", "WhichCarSeat = " + i + ",setHeatVentOff");
        setHeatLevel(i, ICarSeat.HeatLevel.OFF);
        setVentLevel(i, ICarSeat.VentLevel.OFF);
        setHeatVentMode(i, ICarSeat.HeatVentMode.OFF);
    }

    public boolean setHeatVentAutoModeEnabled(int i, boolean z) {
        boolean heatVentAutoModeFLEnabled;
        switch (i) {
            case 0:
                heatVentAutoModeFLEnabled = CarSeatManager.get().setHeatVentAutoModeFLEnabled(z);
                break;
            case 1:
                heatVentAutoModeFLEnabled = CarSeatManager.get().setHeatVentAutoModeFREnabled(z);
                break;
            case 2:
                heatVentAutoModeFLEnabled = CarSeatManager.get().setHeatVentAutoModeRLEnabled(z);
                break;
            case 3:
                heatVentAutoModeFLEnabled = CarSeatManager.get().setHeatVentAutoModeRREnabled(z);
                break;
            default:
                heatVentAutoModeFLEnabled = false;
                break;
        }
        LogUtil.e("SeatsManager", "WhichCarSeat = " + i + ",setHeatVentAutoModeEnabled:" + heatVentAutoModeFLEnabled);
        return heatVentAutoModeFLEnabled;
    }

    public boolean setHeatVentMode(int i, ICarSeat.HeatVentMode heatVentMode) {
        boolean heatVentModeFL;
        switch (i) {
            case 0:
                heatVentModeFL = CarSeatManager.get().setHeatVentModeFL(heatVentMode);
                break;
            case 1:
                heatVentModeFL = CarSeatManager.get().setHeatVentModeFR(heatVentMode);
                break;
            case 2:
                heatVentModeFL = CarSeatManager.get().setHeatVentModeRL(heatVentMode);
                break;
            case 3:
                heatVentModeFL = CarSeatManager.get().setHeatVentModeRR(heatVentMode);
                break;
            default:
                heatVentModeFL = false;
                break;
        }
        LogUtil.e("SeatsManager", "WhichCarSeat = " + i + ",setHeatVentLevel Mode succeed :" + heatVentModeFL + " >> mode = " + heatVentMode.value);
        return heatVentModeFL;
    }

    public void uninit() {
        if (this.listener != null) {
            CarSeatManager.get().unregisterListener(this.listener);
        }
    }
}
