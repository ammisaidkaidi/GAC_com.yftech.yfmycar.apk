package com.yftech.vehicle.sdk;

import com.yftech.vehicle.internal.BaseApiManager;
import com.yftech.vehicle.internal.SignalReceiver;
import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarLight;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarLightManager extends BaseApiManager implements ICarLight {
    private static final String TAG = "CarLightManager";
    private static CarLightManager sMe;

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class CarLightListener {
        @SignalReceiver(signalId = ICarLight.ADB_SATE)
        public void onADBEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.ATMOSPHERE_LAMP_DRIVE_MODE_COLOR_STATUS)
        public void onAtmosphereDriveModeLampColorChanged(int i) {
        }

        @SignalReceiver(signalId = ICarLight.ATMOSPHERE_LAMP_BRIGHTNESS)
        public void onAtmosphereLampBrightnessChanged(int i) {
        }

        @SignalReceiver(signalId = ICarLight.ATMOSPHERE_LAMP_COLOR)
        public void onAtmosphereLampColorChanged(int i) {
        }

        @SignalReceiver(signalId = ICarLight.ATMOSPHERE_LAMP_DRIVE_MODE_STATUS)
        public void onAtmosphereLampDriveModeChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.ATMOSPHERE_LAMP_MUSIC_MODE)
        public void onAtmosphereLampMusicModeEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.ATMOSPHERE_LAMP_WORK_MODE)
        public void onAtmosphereLampWorkModeChanged(ICarLight.AtmosphereLampWorkMode atmosphereLampWorkMode) {
        }

        @SignalReceiver(signalId = ICarLight.AUTO_HOLD_LIGHT_ENABLE_STATE)
        public void onAutoHoldLightEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.AUTO_WEL_LIGHT_ENABLE_STATE)
        public void onAutoWelLightEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.BRAKE_LAMP_STATE, valueToEnabledState = true)
        public void onBrakeLampStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarLight.DRL_LIGHT_ENABLE_STATE)
        public void onDRLLightEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.DRL_LIGHT_VALID_STATE)
        public void onDRLLightValidStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.DRIVER_MODE_MUSIC_MODE_STATE)
        public void onDriverModeMusicModeCfgChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.HEAD_LIGHT_DELAY_STATE)
        public void onHeadLightDelayEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.IHBC_STATE)
        public void onIHBCEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.ILBC_STATE, valueToEnabledState = true)
        public void onILBCStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = 511)
        public void onLightShowMainLampSwitchStChanged(ICarLight.MainLampSwitchSt mainLampSwitchSt) {
        }

        @SignalReceiver(signalId = ICarLight.LIGHT_SHOW_MODE_STATE)
        public void onLightShowModeChanged(ICarLight.LightShowMode lightShowMode) {
        }

        @SignalReceiver(signalId = ICarLight.LOW_LIGHT_STATE, valueToEnabledState = true)
        public void onLowLightStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarLight.SMALL_LIGHT_STATE, valueToEnabledState = true)
        public void onSmallLightStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarLight.TECH_GLASS_LIGHT_CHOOSE_STATE)
        public void onTechGlassLightChooseChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.TOPLIGHT_STATE, valueToEnabledState = true)
        public void onTopLightStateChanged(boolean z) {
        }

        @SignalReceiver(signalId = ICarLight.WEL_LIGHT_ENABLE_STATE)
        public void onWelLightEnableStateChanged(IBaseApi.EnableState enableState) {
        }

        @SignalReceiver(signalId = ICarLight.WEL_LIGHT_MODE)
        public void onWelLightModeChanged(ICarLight.WelLightMode welLightMode) {
        }
    }

    private CarLightManager() {
    }

    public static synchronized CarLightManager get() {
        CarLightManager carLightManager;
        synchronized (CarLightManager.class) {
            if (sMe != null) {
                carLightManager = sMe;
            } else {
                carLightManager = new CarLightManager();
                sMe = carLightManager;
            }
        }
        return carLightManager;
    }

    public boolean isBrakeLampEnabled() {
        return getSignalValue(ICarLight.BRAKE_LAMP_STATE).byteValue() == 1;
    }

    public boolean isILBCEnabled() {
        return getSignalValue(ICarLight.ILBC_STATE).byteValue() == 1;
    }

    public boolean setILBCEnabled(boolean z) {
        return setSignalValue(ICarLight.ILBC_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getIHBCEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.IHBC_STATE).intValue());
    }

    public boolean setIHBCEnabled(boolean z) {
        return setSignalValue(69, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getHeadLightDelayEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.HEAD_LIGHT_DELAY_STATE).intValue());
    }

    public boolean setHeadLightDelayEnabled(boolean z) {
        return setSignalValue(70, z ? (byte) 2 : (byte) 1);
    }

    public boolean isLowLightEnabled() {
        return getSignalValue(ICarLight.LOW_LIGHT_STATE).byteValue() == 1;
    }

    public boolean isSmallLightEnabled() {
        return getSignalValue(ICarLight.SMALL_LIGHT_STATE).byteValue() == 1;
    }

    public boolean isTopLightEnabled() {
        return getSignalValue(ICarLight.TOPLIGHT_STATE).byteValue() == 1;
    }

    public boolean setTopLightEnabled(boolean z) {
        return setSignalValue(ICarLight.TOPLIGHT_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public boolean setAtmosphereLampStateEnabled(boolean z) {
        return setSignalValue(ICarLight.ATMOSPHERE_LAMP_SETTING, z ? (byte) 1 : (byte) 2);
    }

    public int getAtmosphereLampBrightness() {
        return getSignalValue(ICarLight.ATMOSPHERE_LAMP_BRIGHTNESS).intValue();
    }

    public boolean setAtmosphereLampBrightness(int i) {
        return setSignalValue(ICarLight.ATMOSPHERE_LAMP_BRIGHTNESS_SETTING, i);
    }

    public int getAtmosphereLampColor() {
        return getSignalValue(ICarLight.ATMOSPHERE_LAMP_COLOR).intValue();
    }

    public boolean setAtmosphereLampColor(int i) {
        return setSignalValue(ICarLight.ATMOSPHERE_LAMP_COLOR_SETTING, i);
    }

    public ICarLight.AtmosphereLampWorkMode getAtmosphereLampWorkMode() {
        return ICarLight.AtmosphereLampWorkMode.valueOf(getSignalValue(ICarLight.ATMOSPHERE_LAMP_WORK_MODE).intValue());
    }

    public boolean setAtmosphereLampWorkMode(ICarLight.AtmosphereLampWorkMode atmosphereLampWorkMode) {
        return setSignalValue(ICarLight.ATMOSPHERE_LAMP_WORK_MODE_SETTING, atmosphereLampWorkMode.value);
    }

    public boolean setAtmosphereLampDriveModeEnabled(boolean z) {
        return setSignalValue(ICarLight.ATMOSPHERE_LAMP_DRIVE_MODE_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getAtmosphereLampDriveMode() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.ATMOSPHERE_LAMP_DRIVE_MODE_STATUS).intValue());
    }

    public boolean setAtmosphereLampDriveMode(ICarLight.AtmosphereLampDriveMode atmosphereLampDriveMode) {
        return setSignalValue(ICarLight.ATMOSPHERE_LAMP_DRIVE_MODE_SWITCH_SETTING, atmosphereLampDriveMode.value);
    }

    public IBaseApi.EnableState getAtmosphereLampMusicModeEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.ATMOSPHERE_LAMP_MUSIC_MODE).intValue());
    }

    public boolean setAtmosphereLampMusicModeEnabled(boolean z) {
        return setSignalValue(ICarLight.ATMOSPHERE_LAMP_MUSIC_MODE_SETTING, z ? (byte) 1 : (byte) 2);
    }

    public boolean setAtmosphereLampMusicMode(IBaseApi.SwitchStateOp switchStateOp) {
        return setSignalValue(ICarLight.ATMOSPHERE_LAMP_MUSIC_MODE_SETTINGOP, switchStateOp.value);
    }

    public IBaseApi.EnableState getAutoHoldLightEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.AUTO_HOLD_LIGHT_ENABLE_STATE).intValue());
    }

    public boolean setAutoHoldLightFunCfgEnabled(boolean z) {
        return setSignalValue(ICarLight.AUTO_HOLD_LIGHT_ENABLE_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getWelLightEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.WEL_LIGHT_ENABLE_STATE).intValue());
    }

    public boolean setWelLightFunCfgEnabled(boolean z) {
        return setSignalValue(ICarLight.WEL_LIGHT_ENABLE_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public ICarLight.WelLightMode getWelLightMode() {
        return ICarLight.WelLightMode.valueOf(getSignalValue(ICarLight.WEL_LIGHT_MODE).intValue());
    }

    public boolean setWelLightMode(ICarLight.WelLightMode welLightMode) {
        return setSignalValue(ICarLight.WEL_LIGHT_MODE_SETTING, welLightMode.value);
    }

    public ICarLight.MainLampSwitchSt getLightShowMainLampSwitchSt() {
        return ICarLight.MainLampSwitchSt.valueOf(getSignalValue(511).intValue());
    }

    public boolean setLightShowFunCmd(ICarLight.LightShowFunCmd lightShowFunCmd) {
        return setSignalValue(ICarLight.LIGHT_SHOW_FUN_CMD_SETTING, lightShowFunCmd.value);
    }

    public ICarLight.LightShowMode getLightShowMode() {
        return ICarLight.LightShowMode.valueOf(getSignalValue(ICarLight.LIGHT_SHOW_MODE_STATE).intValue());
    }

    public boolean setLightShowMode(ICarLight.LightShowMode lightShowMode) {
        return setSignalValue(ICarLight.LIGHT_SHOW_MODE_SETTING, lightShowMode.value);
    }

    public boolean setLightShowTime(int i) {
        return setSignalValue(ICarLight.LIGHT_SHOW_TIME_FLAG_SETTING, i);
    }

    public IBaseApi.EnableState getADBEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.ADB_SATE).intValue());
    }

    public boolean setADBEnabled(boolean z) {
        return setSignalValue(ICarLight.ADB_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public boolean setTopLightAllCtrlEnabled(boolean z) {
        return setSignalValue(ICarLight.TOPLIGHT_All_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public boolean setAutoWelLightEnableStateEnabled(boolean z) {
        return setSignalValue(ICarLight.AUTO_WEL_LIGHT_ENABLE_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getAutoWelLightEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.AUTO_WEL_LIGHT_ENABLE_STATE).intValue());
    }

    public int getAtmosphereDriveModeLampColor() {
        return getSignalValue(ICarLight.ATMOSPHERE_LAMP_DRIVE_MODE_COLOR_STATUS).intValue();
    }

    public boolean setAtmosphereDriveModeLampColor(int i) {
        return setSignalValue(ICarLight.ATMOSPHERE_LAMP_DRIVE_MODE_COLOR_STETTING, i);
    }

    public IBaseApi.EnableState getDRLLightEnableState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.DRL_LIGHT_ENABLE_STATE).intValue());
    }

    public boolean setDRLLightFunCfgEnabled(boolean z) {
        return setSignalValue(ICarLight.DRL_LIGHT_ENABLE_SETTING, z ? (byte) 2 : (byte) 1);
    }

    public IBaseApi.EnableState getDRLLightValidState() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.DRL_LIGHT_VALID_STATE).intValue());
    }

    public IBaseApi.EnableState getDriverModeMusicModeCfg() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.DRIVER_MODE_MUSIC_MODE_STATE).intValue());
    }

    public boolean setDriverModeMusicModeCfg(IBaseApi.SwitchStateOp switchStateOp) {
        return setSignalValue(ICarLight.DRIVER_MODE_MUSIC_MODE_SETTING, switchStateOp.value);
    }

    public IBaseApi.EnableState getTechGlassLightChoose() {
        return IBaseApi.EnableState.valueOf(getSignalValue(ICarLight.TECH_GLASS_LIGHT_CHOOSE_STATE).intValue());
    }

    public boolean setTechGlassLightChoose(IBaseApi.SwitchStateOp switchStateOp) {
        return setSignalValue(ICarLight.TECH_GLASS_LIGHT_CHOOSE_SETTING, switchStateOp.value);
    }

    public boolean setHeadLightVirtualSwitch(ICarLight.HeadLightVirtualSwitch headLightVirtualSwitch) {
        return setSignalValue(ICarLight.HEAD_LIGHT_VIRTUAL_SWITCH_SETTING, headLightVirtualSwitch.value);
    }

    public void registerListener(CarLightListener carLightListener) {
        registerReceiver(carLightListener);
    }

    public void unregisterListener(CarLightListener carLightListener) {
        unregisterReceiver(carLightListener);
    }
}
