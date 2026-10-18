package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.CarMoto;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarMotoManager extends BaseApiManager implements CarMoto {
    private static final String TAG = "CarMotoManager";
    private static CarMotoManager sMe;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarMotoListener {
        @SignalReceiver(signalId = CarMoto.MOTO_GEARS_LEVEL_INFO)
        public void onGearsLevelStatusChanged(int i) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_GEARS_SATUS)
        public void onGearsStatusChanged(CarMoto.Gears gears) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_HANDLEBAR_KEY_HEAT_INFO)
        public void onHandlebarKeyHeatChanged(CarMoto.HandlebarKeyHeat handlebarKeyHeat) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_IGNITION_STATUS)
        public void onIgnitionStatusChanged(int i) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_KNOB_LEFT_RIGH_KEY_INFO)
        public void onKnobLeftRightKeyChanged(CarMoto.KnobLeftRightKey knobLeftRightKey) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_KNOB_LSTEP_NUM_KEY_INFO)
        public void onKnobStepNumKeyChanged(int i) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_KNOB_UP_DOWN_KEY_INFO)
        public void onKnobUpDownKeyChanged(CarMoto.KnobUpDownKey knobUpDownKey) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_Engine_SPEED_INFO)
        public void onMOTOEngineSpeedChanged(int i) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_FULLLIGHT_INFO)
        public void onMOTOFullLightChanged(boolean z) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_IGN_KEY_STATUS_INFO)
        public void onMOTOIGNKeyStatusChanged(CarMoto.MOTOIGNStatus mOTOIGNStatus) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_SPEED_INFO)
        public void onMOTOSpeedChanged(int i) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_PREVIEW_MODE_KEY_INFO)
        public void onPreviewModeKeyChanged(CarMoto.PreviewModeKey previewModeKey) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_RIGHT_MODE_KEY_INFO)
        public void onRightModeKeyChanged(CarMoto.RightModeKey rightModeKey) {
        }

        @SignalReceiver(signalId = CarMoto.MOTO_TURN_LIGHT_INFO)
        public void onTurnLightInfoChanged(CarMoto.TurnLightInfo turnLightInfo) {
        }
    }

    private CarMotoManager() {
    }

    public static synchronized CarMotoManager get() {
        CarMotoManager carMotoManager;
        synchronized (CarMotoManager.class) {
            if (sMe != null) {
                carMotoManager = sMe;
            } else {
                carMotoManager = new CarMotoManager();
                sMe = carMotoManager;
            }
        }
        return carMotoManager;
    }

    public CarMoto.TurnLightInfo getTurnLightInfo() {
        return CarMoto.TurnLightInfo.valueOf(getSignalValue(CarMoto.MOTO_TURN_LIGHT_INFO).intValue());
    }

    public CarMoto.HandlebarKeyHeat getHandlebarKeyHeat() {
        return CarMoto.HandlebarKeyHeat.valueOf(getSignalValue(CarMoto.MOTO_HANDLEBAR_KEY_HEAT_INFO).intValue());
    }

    public CarMoto.Gears getGearsStatus() {
        return CarMoto.Gears.valueOf(getSignalValue(CarMoto.MOTO_GEARS_SATUS).intValue());
    }

    public CarMoto.RightModeKey getRightModeKey() {
        return CarMoto.RightModeKey.valueOf(getSignalValue(CarMoto.MOTO_RIGHT_MODE_KEY_INFO).intValue());
    }

    public CarMoto.PreviewModeKey getPreviewModeKey() {
        return CarMoto.PreviewModeKey.valueOf(getSignalValue(CarMoto.MOTO_PREVIEW_MODE_KEY_INFO).intValue());
    }

    public CarMoto.KnobUpDownKey getKnobUpDownKey() {
        return CarMoto.KnobUpDownKey.valueOf(getSignalValue(CarMoto.MOTO_KNOB_UP_DOWN_KEY_INFO).intValue());
    }

    public CarMoto.KnobLeftRightKey getKnobLeftRightKey() {
        return CarMoto.KnobLeftRightKey.valueOf(getSignalValue(CarMoto.MOTO_KNOB_LEFT_RIGH_KEY_INFO).intValue());
    }

    public int getKnobStepNumKey() {
        return getSignalValue(CarMoto.MOTO_KNOB_LSTEP_NUM_KEY_INFO).intValue();
    }

    public CarMoto.MOTOIGNStatus getMOTOIGNKeyStatus() {
        return CarMoto.MOTOIGNStatus.valueOf(getSignalValue(CarMoto.MOTO_IGN_KEY_STATUS_INFO).intValue());
    }

    public int getMOTOSpeed() {
        return getSignalValue(CarMoto.MOTO_SPEED_INFO).intValue();
    }

    public int getMOTOEngineSpeed() {
        return getSignalValue(CarMoto.MOTO_Engine_SPEED_INFO).intValue();
    }

    public boolean getMOTOFullLight() {
        return getSignalValue(CarMoto.MOTO_FULLLIGHT_INFO).byteValue() != 0;
    }

    public int getGearsLevelStatus() {
        return getSignalValue(CarMoto.MOTO_GEARS_LEVEL_INFO).intValue();
    }

    public int getIgnitionStatus() {
        return getSignalValue(CarMoto.MOTO_IGNITION_STATUS).intValue();
    }

    public void registerListener(CarMotoListener carMotoListener) {
        registerReceiver(carMotoListener);
    }

    public void unregisterListener(CarMotoListener carMotoListener) {
        unregisterReceiver(carMotoListener);
    }
}
