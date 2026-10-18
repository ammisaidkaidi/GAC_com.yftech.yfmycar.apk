package com.yftech.yfmycar.view.manager;

import com.yftech.vehicle.internal.adapter.ICarSettings;
import com.yftech.vehicle.sdk.CarSettingsManager;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarMirrorControl {
    public static volatile CarMirrorControl instance;
    private final String TAG = "CarMirrorControl";
    private CarSettingsManager.CarSettingsListener listener = new CarSettingsManager.CarSettingsListener() { // from class: com.yftech.yfmycar.view.manager.CarMirrorControl.1
        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onRearviewMirrorStateLChanged(ICarSettings.RearviewMirrorState rearviewMirrorState) {
            super.onRearviewMirrorStateLChanged(rearviewMirrorState);
            LogUtil.e("CarMirrorControl", "onRearviewMirrorStateLChanged   ICarSettings.RearviewMirrorState = " + rearviewMirrorState.value);
        }

        @Override // com.yftech.vehicle.sdk.CarSettingsManager.CarSettingsListener
        public void onRearviewMirrorStateRChanged(ICarSettings.RearviewMirrorState rearviewMirrorState) {
            super.onRearviewMirrorStateRChanged(rearviewMirrorState);
            LogUtil.e("CarMirrorControl", "onRearviewMirrorStateRChanged   ICarSettings.RearviewMirrorState = " + rearviewMirrorState.value);
        }
    };

    public static CarMirrorControl getInstance() {
        if (instance == null) {
            synchronized (CarMirrorControl.class) {
                if (instance == null) {
                    instance = new CarMirrorControl();
                }
            }
        }
        return instance;
    }

    public void init() {
        CarSettingsManager.get().registerListener(this.listener);
    }

    public void unInit() {
        CarSettingsManager.get().unregisterListener(this.listener);
    }

    public boolean setRearViewMirrorCmd(ICarSettings.RearviewMirrorCmd rearviewMirrorCmd) {
        LogUtil.e("CarMirrorControl", "setRearViewMirrorCmd = " + rearviewMirrorCmd.value);
        return CarSettingsManager.get().setRearviewMirrorCmd(rearviewMirrorCmd);
    }
}
