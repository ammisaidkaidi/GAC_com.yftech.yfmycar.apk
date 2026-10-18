package com.yftech.yfmycar.view.manager;

import com.yftech.vehicle.internal.adapter.IBaseApi;
import com.yftech.vehicle.internal.adapter.ICarLight;
import com.yftech.vehicle.sdk.CarLightManager;
import com.yftech.yfmycar.view.bean.CarLightEvent;
import com.yftech.yfmycar.view.utils.LogUtil;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public class LightManager {
    private static volatile LightManager sInstance;
    private final String TAG = "SeatsManager";
    private CarLightEvent event = new CarLightEvent();
    private CarLightManager.CarLightListener listener = new CarLightManager.CarLightListener() { // from class: com.yftech.yfmycar.view.manager.LightManager.1
        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onAtmosphereLampBrightnessChanged(int i) {
            LogUtil.e("SeatsManager", "onAtmosphereLampBrightnessChanged:" + i);
            EventBusCompat.post(LightManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onAtmosphereLampColorChanged(int i) {
            LogUtil.e("SeatsManager", "onAtmosphereLampColorChanged:" + i);
            EventBusCompat.post(LightManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onAtmosphereLampMusicModeEnableStateChanged(IBaseApi.EnableState enableState) {
            LogUtil.e("SeatsManager", "onAtmosphereLampMusicModeSwitchStateChanged:" + enableState.name());
            EventBusCompat.post(LightManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onAtmosphereLampWorkModeChanged(ICarLight.AtmosphereLampWorkMode atmosphereLampWorkMode) {
            LogUtil.e("SeatsManager", "onAtmosphereLampWorkModeChanged:" + atmosphereLampWorkMode.name());
            EventBusCompat.post(LightManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onBrakeLampStateChanged(boolean z) {
            super.onBrakeLampStateChanged(z);
            LogUtil.e("SeatsManager", "onBrakeLampStateChanged:" + z);
            LightManager.this.event.setEnable(z);
            EventBusCompat.post(LightManager.this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onILBCStateChanged(boolean z) {
            super.onILBCStateChanged(z);
            LogUtil.i("SeatsManager", "onILBCStateChanged:" + z);
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onIHBCEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onIHBCEnableStateChanged(enableState);
            LogUtil.i("SeatsManager", "onIHBCEnableStateChanged:" + enableState.name());
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onHeadLightDelayEnableStateChanged(IBaseApi.EnableState enableState) {
            super.onHeadLightDelayEnableStateChanged(enableState);
            LogUtil.i("SeatsManager", "onHeadLightDelayEnableStateChanged:" + enableState.name());
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onLowLightStateChanged(boolean z) {
            super.onLowLightStateChanged(z);
            LogUtil.i("SeatsManager", "onLowLightStateChanged:" + z);
        }

        @Override // com.yftech.vehicle.sdk.CarLightManager.CarLightListener
        public void onTopLightStateChanged(boolean z) {
            super.onTopLightStateChanged(z);
            LogUtil.i("SeatsManager", "onTopLightStateChanged:" + z);
        }
    };

    public static LightManager getInstance() {
        if (sInstance == null) {
            synchronized (SeatsManager.class) {
                if (sInstance == null) {
                    sInstance = new LightManager();
                }
            }
        }
        return sInstance;
    }

    public boolean isArLanguage() {
        return Locale.getDefault().getLanguage().endsWith("ar");
    }

    private LightManager() {
    }

    public void init() {
        CarLightManager.get().registerListener(this.listener);
    }

    public void uninit() {
        if (this.listener != null) {
            CarLightManager.get().unregisterListener(this.listener);
        }
    }

    public boolean setAtmosphereLampStateEnabled(boolean z) {
        return CarLightManager.get().setAtmosphereLampStateEnabled(z);
    }

    public int getAtmosphereLampBrightness() {
        int atmosphereLampBrightness = CarLightManager.get().getAtmosphereLampBrightness();
        LogUtil.e("SeatsManager", "getAtmosphereLampBrightness获取氛围灯亮度状态 :" + atmosphereLampBrightness);
        return atmosphereLampBrightness;
    }

    public boolean setAtmosphereLampBrightness(int i) {
        return CarLightManager.get().setAtmosphereLampBrightness(i);
    }

    public int getAtmosphereLampColor() {
        int atmosphereLampColor = CarLightManager.get().getAtmosphereLampColor();
        LogUtil.e("SeatsManager", "getAtmosphereLampColor获取氛围灯自定义颜色状态值 :" + atmosphereLampColor);
        return atmosphereLampColor - 1;
    }

    public boolean setAtmosphereLampColor(int i) {
        LogUtil.e("SeatsManager", "setAtmosphereLampColor设置氛围灯自定义颜色状态值 :" + i);
        return CarLightManager.get().setAtmosphereLampColor(i);
    }

    public boolean getAtmosphereLampMusicModeEnableState() {
        IBaseApi.EnableState atmosphereLampMusicModeEnableState = CarLightManager.get().getAtmosphereLampMusicModeEnableState();
        LogUtil.e("SeatsManager", "getAtmosphereLampMusicModeEnableState氛围灯:音乐律动模式开关状态  :" + atmosphereLampMusicModeEnableState.name());
        return atmosphereLampMusicModeEnableState == IBaseApi.EnableState.ENABLED;
    }

    public boolean setAtmosphereLampMusicModeEnabled(boolean z) {
        LogUtil.e("SeatsManager", "setAtmosphereLampMusicModeEnabled氛围灯:设置音乐律动模式开关  :" + z);
        return CarLightManager.get().setAtmosphereLampMusicModeEnabled(z);
    }

    public ICarLight.AtmosphereLampWorkMode getAtmosphereLampWorkMode() {
        ICarLight.AtmosphereLampWorkMode atmosphereLampWorkMode = CarLightManager.get().getAtmosphereLampWorkMode();
        LogUtil.e("SeatsManager", "getAtmosphereLampWorkMode获取氛围灯:工作模式[跟随驾驶模式开关状态] :" + atmosphereLampWorkMode.name());
        return atmosphereLampWorkMode;
    }

    public boolean setAtmosphereLampDriveModeEnabled(boolean z) {
        LogUtil.e("SeatsManager", "setAtmosphereLampDriveModeEnabled,设置跟随驾驶模式开关:" + z);
        return CarLightManager.get().setAtmosphereLampWorkMode(z ? ICarLight.AtmosphereLampWorkMode.DRIVER_MODE : ICarLight.AtmosphereLampWorkMode.COLOR_CHOOSE_MODE);
    }

    public boolean setAtmosphereLampMode(ICarLight.AtmosphereLampWorkMode atmosphereLampWorkMode) {
        LogUtil.e("SeatsManager", "setAtmosphereLampMode,设置氛围灯模式:" + atmosphereLampWorkMode);
        return CarLightManager.get().setAtmosphereLampWorkMode(atmosphereLampWorkMode);
    }

    public boolean getHeadLightDelayEnableState() {
        return CarLightManager.get().getHeadLightDelayEnableState() == IBaseApi.EnableState.ENABLED;
    }

    public boolean getIHBCEnableState() {
        return CarLightManager.get().getIHBCEnableState() == IBaseApi.EnableState.ENABLED;
    }

    public boolean isBrakeLampEnabled() {
        return CarLightManager.get().isBrakeLampEnabled();
    }

    public boolean isILBCEnabled() {
        return CarLightManager.get().isILBCEnabled();
    }

    public boolean isLowLightEnabled() {
        return CarLightManager.get().isLowLightEnabled();
    }

    public boolean isSmallLightEnabled() {
        return CarLightManager.get().isSmallLightEnabled();
    }

    public boolean isTopLightEnabled() {
        return CarLightManager.get().isTopLightEnabled();
    }
}
