package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.CarDMS;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarDMSManager extends BaseApiManager implements CarDMS {
    private static final String TAG = "CarDMSManager";
    private static CarDMSManager sMe;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarDMSListener {
        @SignalReceiver(signalId = CarDMS.DMS_DISTR_WARN_SATUS)
        public void onDMSDistrWarnChanged(CarDMS.DMSDistrWarn dMSDistrWarn) {
        }

        @SignalReceiver(signalId = CarDMS.DMS_FATIG_WARN_SATUS)
        public void onDMSFatigWarnChanged(CarDMS.DMSFatigWarn dMSFatigWarn) {
        }

        @SignalReceiver(signalId = CarDMS.DMS_MODE_SATUS)
        public void onDMSModeChanged(CarDMS.DMSMode dMSMode) {
        }

        @SignalReceiver(signalId = CarDMS.DMS_SWITCH_SATUS)
        public void onDMSSwitchChanged(CarDMS.DMSSwitch dMSSwitch) {
        }

        @SignalReceiver(signalId = CarDMS.DMS_SYS_WORK_SATUS)
        public void onDMSSysErrStatusChanged(CarDMS.DMSSysErrStatus dMSSysErrStatus) {
        }
    }

    private CarDMSManager() {
    }

    public static synchronized CarDMSManager get() {
        CarDMSManager carDMSManager;
        synchronized (CarDMSManager.class) {
            if (sMe != null) {
                carDMSManager = sMe;
            } else {
                carDMSManager = new CarDMSManager();
                sMe = carDMSManager;
            }
        }
        return carDMSManager;
    }

    public CarDMS.DMSSysErrStatus getDMSSysErrStatus() {
        return CarDMS.DMSSysErrStatus.valueOf(getSignalValue(CarDMS.DMS_SYS_WORK_SATUS).intValue());
    }

    public boolean setDMSSwitchEnabled(boolean z) {
        return setSignalValue(CarDMS.DMS_SWITCH_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public CarDMS.DMSSwitch getDMSSwitch() {
        return CarDMS.DMSSwitch.valueOf(getSignalValue(CarDMS.DMS_SWITCH_SATUS).intValue());
    }

    public boolean setDMSMode(CarDMS.DMSMode dMSMode) {
        return setSignalValue(CarDMS.DMS_MODE_SETTING, dMSMode.value);
    }

    public CarDMS.DMSMode getDMSMode() {
        return CarDMS.DMSMode.valueOf(getSignalValue(CarDMS.DMS_MODE_SATUS).intValue());
    }

    public CarDMS.DMSFatigWarn getDMSFatigWarn() {
        return CarDMS.DMSFatigWarn.valueOf(getSignalValue(CarDMS.DMS_FATIG_WARN_SATUS).intValue());
    }

    public CarDMS.DMSDistrWarn getDMSDistrWarn() {
        return CarDMS.DMSDistrWarn.valueOf(getSignalValue(CarDMS.DMS_DISTR_WARN_SATUS).intValue());
    }

    public void registerListener(CarDMSListener carDMSListener) {
        registerReceiver(carDMSListener);
    }

    public void unregisterListener(CarDMSListener carDMSListener) {
        unregisterReceiver(carDMSListener);
    }
}
