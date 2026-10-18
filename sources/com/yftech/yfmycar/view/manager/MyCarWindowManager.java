package com.yftech.yfmycar.view.manager;

import android.util.Log;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarWindow;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.vehicle.sdk.CarWindowManager;
import com.yftech.yfmycar.view.bean.CarWindowEvent;
import com.yftech.yfmycar.view.bean.SkyLightEvent;
import com.yftech.yfmycar.view.bean.WindowErrorEvent;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class MyCarWindowManager {
    public static final int skyWindow = 0;
    public static final int sunBlindWindow = 1;
    public static volatile MyCarWindowManager windowManager;
    private final String TAG = "MyCarWindowManager";
    private final CarWindowEvent eventFL = new CarWindowEvent();
    private final CarWindowEvent eventFR = new CarWindowEvent();
    private final CarWindowEvent eventRL = new CarWindowEvent();
    private final CarWindowEvent eventRR = new CarWindowEvent();
    private final SkyLightEvent skyLightEvent = new SkyLightEvent();
    private final CarWindowManager.CarWindowListener carWindowListener = new CarWindowManager.CarWindowListener() { // from class: com.yftech.yfmycar.view.manager.MyCarWindowManager.1
        private final WindowErrorEvent windowErrorEventFl = new WindowErrorEvent();
        private final WindowErrorEvent windowErrorEventFr = new WindowErrorEvent();
        private final WindowErrorEvent windowErrorEventRl = new WindowErrorEvent();
        private final WindowErrorEvent windowErrorEventRr = new WindowErrorEvent();

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOpenPrecisePercentFLChanged(float f) {
            super.onWindowOpenPrecisePercentFLChanged(f);
            LogUtil.e("MyCarWindowManager", "onWindowOpenPrecisePercentFLChanged  percent = " + f);
            MyCarWindowManager.this.eventFL.setWhichCarWindow(0);
            EventBusCompat.post(MyCarWindowManager.this.eventFL);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOpenPrecisePercentFRChanged(float f) {
            super.onWindowOpenPrecisePercentFRChanged(f);
            LogUtil.e("MyCarWindowManager", "onWindowOpenPrecisePercentFRChanged  percent = " + f);
            MyCarWindowManager.this.eventFR.setWhichCarWindow(1);
            EventBusCompat.post(MyCarWindowManager.this.eventFR);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOpenPrecisePercentRLChanged(float f) {
            super.onWindowOpenPrecisePercentRLChanged(f);
            LogUtil.e("MyCarWindowManager", "onWindowOpenPrecisePercentRLChanged  percent = " + f);
            MyCarWindowManager.this.eventRL.setWhichCarWindow(2);
            EventBusCompat.post(MyCarWindowManager.this.eventRL);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOpenPrecisePercentRRChanged(float f) {
            super.onWindowOpenPrecisePercentRRChanged(f);
            LogUtil.e("MyCarWindowManager", "onWindowOpenPrecisePercentRRChanged  percent = " + f);
            MyCarWindowManager.this.eventRR.setWhichCarWindow(3);
            EventBusCompat.post(MyCarWindowManager.this.eventRR);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowStateFLChanged(ICarWindow.WindowState windowState) {
            super.onWindowStateFLChanged(windowState);
            LogUtil.e("MyCarWindowManager", "onWindowStateFLChanged  WindowState = " + windowState.name());
            this.windowErrorEventFl.setError(windowState == ICarWindow.WindowState.UNDEFINED_POSITION);
            this.windowErrorEventFl.setWhichFragment(2);
            EventBusCompat.post(this.windowErrorEventFl);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOpenPercentFLChanged(int i) {
            super.onWindowOpenPercentFLChanged(i);
            LogUtil.e("MyCarWindowManager", "onWindowOpenPercentFLChanged  percent = " + i);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOperationStateFLChanged(ICarWindow.WindowOperationState windowOperationState) {
            super.onWindowOperationStateFLChanged(windowOperationState);
            LogUtil.e("MyCarWindowManager", "onWindowOperationStateFLChanged  WindowOperationState = " + windowOperationState.name());
            MyCarWindowManager.this.eventFL.setCarWindowOperationStateFL(windowOperationState);
            MyCarWindowManager.this.eventFL.setWhichCarWindow(0);
            EventBusCompat.post(MyCarWindowManager.this.eventFL);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOverheatStateFLChanged(boolean z) {
            super.onWindowOverheatStateFLChanged(z);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowStateFRChanged(ICarWindow.WindowState windowState) {
            super.onWindowStateFRChanged(windowState);
            LogUtil.e("MyCarWindowManager", "onWindowStateFRChanged  WindowState = " + windowState.name());
            this.windowErrorEventFr.setError(windowState == ICarWindow.WindowState.UNDEFINED_POSITION);
            this.windowErrorEventFr.setWhichFragment(3);
            EventBusCompat.post(this.windowErrorEventFr);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOpenPercentFRChanged(int i) {
            super.onWindowOpenPercentFRChanged(i);
            LogUtil.e("MyCarWindowManager", "onWindowOpenPercentFRChanged  percent = " + i);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOperationStateFRChanged(ICarWindow.WindowOperationState windowOperationState) {
            super.onWindowOperationStateFRChanged(windowOperationState);
            LogUtil.e("MyCarWindowManager", "onWindowOperationStateFRChanged  WindowOperationState = " + windowOperationState.name());
            MyCarWindowManager.this.eventFR.setCarWindowOperationStateFR(windowOperationState);
            MyCarWindowManager.this.eventFR.setWhichCarWindow(1);
            EventBusCompat.post(MyCarWindowManager.this.eventFR);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOverheatStateFRChanged(boolean z) {
            super.onWindowOverheatStateFRChanged(z);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowStateRLChanged(ICarWindow.WindowState windowState) {
            super.onWindowStateRLChanged(windowState);
            LogUtil.e("MyCarWindowManager", "onWindowStateRLChanged  WindowState = " + windowState.name());
            this.windowErrorEventRl.setError(windowState == ICarWindow.WindowState.UNDEFINED_POSITION);
            this.windowErrorEventRl.setWhichFragment(4);
            EventBusCompat.post(this.windowErrorEventRl);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOpenPercentRLChanged(int i) {
            super.onWindowOpenPercentRLChanged(i);
            LogUtil.e("MyCarWindowManager", "onWindowOpenPercentRLChanged  percent = " + i);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOperationStateRLChanged(ICarWindow.WindowOperationState windowOperationState) {
            super.onWindowOperationStateRLChanged(windowOperationState);
            LogUtil.e("MyCarWindowManager", "onWindowOperationStateRLChanged  WindowOperationState = " + windowOperationState.name());
            MyCarWindowManager.this.eventRL.setCarWindowOperationStateRL(windowOperationState);
            MyCarWindowManager.this.eventRL.setWhichCarWindow(2);
            EventBusCompat.post(MyCarWindowManager.this.eventRL);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOverheatStateRLChanged(boolean z) {
            super.onWindowOverheatStateRLChanged(z);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowStateRRChanged(ICarWindow.WindowState windowState) {
            super.onWindowStateRRChanged(windowState);
            LogUtil.e("MyCarWindowManager", "onWindowStateRRChanged  WindowState = " + windowState.name());
            this.windowErrorEventRr.setError(windowState == ICarWindow.WindowState.UNDEFINED_POSITION);
            this.windowErrorEventRr.setWhichFragment(5);
            EventBusCompat.post(this.windowErrorEventRr);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOpenPercentRRChanged(int i) {
            super.onWindowOpenPercentRRChanged(i);
            LogUtil.e("MyCarWindowManager", "onWindowOpenPercentRRChanged  percent = " + i);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOperationStateRRChanged(ICarWindow.WindowOperationState windowOperationState) {
            super.onWindowOperationStateRRChanged(windowOperationState);
            LogUtil.e("MyCarWindowManager", "onWindowOperationStateRRChanged  WindowOperationState = " + windowOperationState.name());
            MyCarWindowManager.this.eventRR.setCarWindowOperationStateRR(windowOperationState);
            MyCarWindowManager.this.eventRR.setWhichCarWindow(3);
            EventBusCompat.post(MyCarWindowManager.this.eventRR);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowOverheatStateRRChanged(boolean z) {
            super.onWindowOverheatStateRRChanged(z);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowRoofOpenPercentChanged(int i) {
            super.onWindowRoofOpenPercentChanged(i);
            LogUtil.e("MyCarWindowManager", "onWindowRoofOpenPercentChanged  percent = " + i);
            MyCarWindowManager.this.skyLightEvent.setWhichWindow(0);
            MyCarWindowManager.this.skyLightEvent.setPercentSky(i);
            EventBusCompat.post(MyCarWindowManager.this.skyLightEvent);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowRoofOpenOpertionChanged(ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion) {
            super.onWindowRoofOpenOpertionChanged(windowRoofOpenOpertion);
            LogUtil.e("MyCarWindowManager", "onWindowRoofOpenOpertionChanged  WindowRoofOpenOpertion = " + windowRoofOpenOpertion.name());
            MyCarWindowManager.this.skyLightEvent.setWhichWindow(0);
            MyCarWindowManager.this.skyLightEvent.setTiltUp(windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.TILT_UP);
            MyCarWindowManager.this.skyLightEvent.setOpenOpertionSky(windowRoofOpenOpertion);
            EventBusCompat.post(MyCarWindowManager.this.skyLightEvent);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowRoofShadeOpenPercentChanged(int i) {
            super.onWindowRoofShadeOpenPercentChanged(i);
            LogUtil.e("MyCarWindowManager", "onWindowRoofShadeOpenPercentChanged  percent = " + i);
        }

        @Override // com.yftech.vehicle.sdk.CarWindowManager.CarWindowListener
        public void onWindowRoofShadeOpenOpertionChanged(ICarWindow.WindowRoofShadeOpenOpertion windowRoofShadeOpenOpertion) {
            super.onWindowRoofShadeOpenOpertionChanged(windowRoofShadeOpenOpertion);
            LogUtil.e("MyCarWindowManager", "onWindowRoofShadeOpenOpertionChanged  WindowRoofShadeOpenOpertion = " + windowRoofShadeOpenOpertion.name());
            MyCarWindowManager.this.skyLightEvent.setWhichWindow(1);
            EventBusCompat.post(MyCarWindowManager.this.skyLightEvent);
        }
    };

    public static MyCarWindowManager getInstance() {
        if (windowManager == null) {
            synchronized (MyCarWindowManager.class) {
                if (windowManager == null) {
                    windowManager = new MyCarWindowManager();
                }
            }
        }
        return windowManager;
    }

    public void registerListener() {
        CarWindowManager.get().registerListener(this.carWindowListener);
    }

    public void unregisterListener() {
        CarWindowManager.get().unregisterListener(this.carWindowListener);
    }

    public ICarConfig.WindowControl getWindowConfig() {
        ICarConfig.WindowControl windowControl = CarConfig.getWindowControl();
        LogUtil.e("MyCarWindowManager", "车窗配置getWindowConfig：" + windowControl.name() + windowControl.value);
        return windowControl;
    }

    public void controlCarWindowAll(ICarWindow.WindowOpenPercent windowOpenPercent) {
        LogUtil.e("MyCarWindowManager", "controlCarWindowAll  windowStatus : " + windowOpenPercent.name());
        CarWindowManager.get().setWindowOpenPercentFL(windowOpenPercent);
        if (getWindowConfig() == ICarConfig.WindowControl.LEFT_AND_RIGHT_FRONT_WINDOW) {
            CarWindowManager.get().setWindowOpenPercentFR(windowOpenPercent);
        } else if (getWindowConfig() == ICarConfig.WindowControl.FOUR_DOOR_WINDOWS) {
            CarWindowManager.get().setWindowOpenPercentFR(windowOpenPercent);
            CarWindowManager.get().setWindowOpenPercentRL(windowOpenPercent);
            CarWindowManager.get().setWindowOpenPercentRR(windowOpenPercent);
        }
        if (CarConfig.isRoofControlPresent() && windowOpenPercent == ICarWindow.WindowOpenPercent.FULLY_CLOSE) {
            CarWindowManager.get().setWindowRoofShadeOpenPercent(0);
        }
    }

    public float getWindowOpenPrecisePercent(int i) {
        switch (i) {
            case 0:
                float windowOpenPrecisePercentFL = CarWindowManager.get().getWindowOpenPrecisePercentFL();
                LogUtil.e("MyCarWindowManager", "initWindowPercent : getWindowOpenPercentFL = " + windowOpenPrecisePercentFL + "%");
                return windowOpenPrecisePercentFL;
            case 1:
                float windowOpenPrecisePercentFR = CarWindowManager.get().getWindowOpenPrecisePercentFR();
                LogUtil.e("MyCarWindowManager", "initWindowPercent : getWindowOpenPercentFR = " + windowOpenPrecisePercentFR + "%");
                return windowOpenPrecisePercentFR;
            case 2:
                float windowOpenPrecisePercentRL = CarWindowManager.get().getWindowOpenPrecisePercentRL();
                LogUtil.e("MyCarWindowManager", "initWindowPercent : getWindowOpenPercentRL = " + windowOpenPrecisePercentRL + "%");
                return windowOpenPrecisePercentRL;
            case 3:
                float windowOpenPrecisePercentRR = CarWindowManager.get().getWindowOpenPrecisePercentRR();
                LogUtil.e("MyCarWindowManager", "initWindowPercent : getWindowOpenPercentRR = " + windowOpenPrecisePercentRR + "%");
                return windowOpenPrecisePercentRR;
            default:
                return 0.0f;
        }
    }

    public ICarWindow.WindowOperationState getWindowOperationState(int i) {
        ICarWindow.WindowOperationState windowOperationState = ICarWindow.WindowOperationState.__UNKNOWN__;
        switch (i) {
            case 0:
                return CarWindowManager.get().getWindowOperationStateFL();
            case 1:
                return CarWindowManager.get().getWindowOperationStateFR();
            case 2:
                return CarWindowManager.get().getWindowOperationStateRL();
            case 3:
                return CarWindowManager.get().getWindowOperationStateRR();
            default:
                return windowOperationState;
        }
    }

    public ICarWindow.WindowState getWindowState(int i) {
        ICarWindow.WindowState windowState = ICarWindow.WindowState.__UNKNOWN__;
        switch (i) {
            case 0:
                return CarWindowManager.get().getWindowStateFL();
            case 1:
                return CarWindowManager.get().getWindowStateFR();
            case 2:
                return CarWindowManager.get().getWindowStateRL();
            case 3:
                return CarWindowManager.get().getWindowStateRR();
            default:
                return windowState;
        }
    }

    public boolean controlCarWindow(int i, ICarWindow.WindowOpenPercent windowOpenPercent) {
        switch (i) {
            case 0:
                LogUtil.e("MyCarWindowManager", "MotionEvent.ACTION_UP  controlCarWindowFrontLeft = " + windowOpenPercent.name());
                return getInstance().controlCarWindowFrontLeft(windowOpenPercent);
            case 1:
                LogUtil.e("MyCarWindowManager", "MotionEvent.ACTION_UP  controlCarWindowFrontRight = " + windowOpenPercent.name());
                return getInstance().controlCarWindowFrontRight(windowOpenPercent);
            case 2:
                LogUtil.e("MyCarWindowManager", "MotionEvent.ACTION_UP  controlCarWindowRearLeft = " + windowOpenPercent.name());
                return getInstance().controlCarWindowRearLeft(windowOpenPercent);
            case 3:
                LogUtil.e("MyCarWindowManager", "MotionEvent.ACTION_UP  controlCarWindowRearRight = " + windowOpenPercent.name());
                return getInstance().controlCarWindowRearRight(windowOpenPercent);
            default:
                return true;
        }
    }

    public void setWindowOpenPercentEnableState(int i) {
        Log.e("MyCarWindowManager", "setWindowOpenPercentFLVdSwitch设置窗户电动控制有效:true");
        switch (i) {
            case 0:
                CarWindowManager.get().setWindowOpenPercentFLVdSwitch(true);
                return;
            case 1:
                CarWindowManager.get().setWindowOpenPercentFRVdSwitch(true);
                return;
            case 2:
                CarWindowManager.get().setWindowOpenPercentRLVdSwitch(true);
                return;
            case 3:
                CarWindowManager.get().setWindowOpenPercentRRVdSwitch(true);
                return;
            default:
                return;
        }
    }

    public boolean getWindowStateError(int i) {
        ICarWindow.WindowState windowState = ICarWindow.WindowState.__UNKNOWN__;
        switch (i) {
            case 0:
                windowState = CarWindowManager.get().getWindowStateFL();
                break;
            case 1:
                windowState = CarWindowManager.get().getWindowStateFR();
                break;
            case 2:
                windowState = CarWindowManager.get().getWindowStateRL();
                break;
            case 3:
                windowState = CarWindowManager.get().getWindowStateRR();
                break;
        }
        Log.i("MyCarWindowManager", "getWindowStateError windowState = " + windowState.name());
        return windowState == ICarWindow.WindowState.UNDEFINED_POSITION;
    }

    public boolean controlCarWindowFrontLeft(ICarWindow.WindowOpenPercent windowOpenPercent) {
        if (windowOpenPercent == ICarWindow.WindowOpenPercent.CHANGE_OPEN || windowOpenPercent == ICarWindow.WindowOpenPercent.CHANGE_CLOSE) {
            setWindowOpenPercentEnableState(0);
        }
        LogUtil.e("MyCarWindowManager", "controlCarWindowFrontLeft  windowStatus : " + windowOpenPercent.name());
        return CarWindowManager.get().setWindowOpenPercentFL(windowOpenPercent);
    }

    public boolean controlCarWindowFrontRight(ICarWindow.WindowOpenPercent windowOpenPercent) {
        setWindowOpenPercentEnableState(1);
        LogUtil.e("MyCarWindowManager", "controlCarWindowFrontRight  windowStatus : " + windowOpenPercent.name());
        return CarWindowManager.get().setWindowOpenPercentFR(windowOpenPercent);
    }

    public boolean controlCarWindowRearLeft(ICarWindow.WindowOpenPercent windowOpenPercent) {
        setWindowOpenPercentEnableState(2);
        LogUtil.e("MyCarWindowManager", "controlCarWindowRearLeft  windowStatus : " + windowOpenPercent.name());
        return CarWindowManager.get().setWindowOpenPercentRL(windowOpenPercent);
    }

    public boolean controlCarWindowRearRight(ICarWindow.WindowOpenPercent windowOpenPercent) {
        setWindowOpenPercentEnableState(3);
        LogUtil.e("MyCarWindowManager", "controlCarWindowRearRight  windowStatus : " + windowOpenPercent.name());
        return CarWindowManager.get().setWindowOpenPercentRR(windowOpenPercent);
    }

    public boolean controlSkyLightPercent(int i) {
        LogUtil.e("MyCarWindowManager", "controlSkyLightPercent  percent : " + i + "%");
        return CarWindowManager.get().setWindowRoofShadeOpenPercent(i);
    }

    public ICarWindow.WindowRoofOpenOpertion getWindowRoofOpenOpertion() {
        ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion = CarWindowManager.get().getWindowRoofOpenOpertion();
        LogUtil.e("MyCarWindowManager", "getWindowRoofOpenOpertion获取天窗当前操作状态 = " + windowRoofOpenOpertion.name());
        return windowRoofOpenOpertion;
    }

    public ICarWindow.WindowRoofShadeOpenOpertion getWindowRoofShadeOpenState() {
        ICarWindow.WindowRoofShadeOpenOpertion windowRoofShadeOpenOpertion = CarWindowManager.get().getWindowRoofShadeOpenOpertion();
        LogUtil.e("MyCarWindowManager", "遮阳帘操作状态 = " + windowRoofShadeOpenOpertion.name());
        return windowRoofShadeOpenOpertion;
    }

    public void setWindowRoofShadeOpenState(ICarWindow.WindowRoofShadeOpenState windowRoofShadeOpenState) {
        LogUtil.i("MyCarWindowManager", "setWindowRoofShadeOpenState : " + windowRoofShadeOpenState.name());
        CarWindowManager.get().setWindowRoofShadeOpenState(windowRoofShadeOpenState);
    }

    public int getWindowRoofOpenPercent() {
        int windowRoofOpenPercent = CarWindowManager.get().getWindowRoofOpenPercent();
        LogUtil.e("MyCarWindowManager", "getWindowRoofOpenPercent获取天窗当前百分比 = " + windowRoofOpenPercent);
        return windowRoofOpenPercent;
    }

    public boolean controlSkyLightOpenClose(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("controlSkyLightOpenClose  : ");
        sb.append(z ? "open" : "close");
        LogUtil.e("MyCarWindowManager", sb.toString());
        return CarWindowManager.get().setWindowRoofShadeOpenState(z ? ICarWindow.WindowRoofShadeOpenState.ROOF_FULLY_OPEN : ICarWindow.WindowRoofShadeOpenState.ROOF_FULLY_CLOSE);
    }

    public void controlSunshade(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("controlSunshade  : ");
        sb.append(z ? "close" : "open");
        LogUtil.e("MyCarWindowManager", sb.toString());
        setWindowRoofShadeOpenState(z ? ICarWindow.WindowRoofShadeOpenState.SHADE_CLOSE : ICarWindow.WindowRoofShadeOpenState.SHADE_OPEN);
    }

    public void controlTiltUp(boolean z) {
        if (z) {
            LogUtil.e("MyCarWindowManager", "controlTiltUp   TiltUp");
            setWindowRoofShadeOpenState(ICarWindow.WindowRoofShadeOpenState.ROOF_TILT_UP);
        } else {
            LogUtil.e("MyCarWindowManager", "controlTiltUp   close");
            setWindowRoofShadeOpenState(ICarWindow.WindowRoofShadeOpenState.ROOF_FULLY_CLOSE);
        }
    }
}
