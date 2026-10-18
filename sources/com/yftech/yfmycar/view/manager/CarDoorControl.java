package com.yftech.yfmycar.view.manager;

import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.sdk.CarDoorManager;
import com.yftech.yfmycar.view.bean.CarDoorStatusEvent;
import com.yftech.yfmycar.view.bean.CarTailgateEvent;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarDoorControl {
    public static volatile CarDoorControl instance;
    private final String TAG = "CarDoorControl";
    private final CarDoorStatusEvent doorStatusEvent = new CarDoorStatusEvent();
    private final CarDoorManager.CarDoorListener listener = new CarDoorManager.CarDoorListener() { // from class: com.yftech.yfmycar.view.manager.CarDoorControl.1
        final CarTailgateEvent carTailgateEvent = new CarTailgateEvent();
        final CarTailgateEvent event = new CarTailgateEvent();

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onHoodDoorStateChanged(ICarDoor.DoorState doorState) {
            super.onHoodDoorStateChanged(doorState);
            LogUtil.e("CarDoorControl", "onHoodDoorStateChanged ICarDoor.DoorState = " + doorState.value);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onDriverDoorStateChanged(ICarDoor.DoorState doorState) {
            super.onDriverDoorStateChanged(doorState);
            LogUtil.e("CarDoorControl", "onDriverDoorStateChanged ICarDoor.DoorState = " + doorState.value);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onPassengerDoorStateChanged(ICarDoor.DoorState doorState) {
            super.onPassengerDoorStateChanged(doorState);
            LogUtil.e("CarDoorControl", "onPassengerDoorStateChanged ICarDoor.DoorState = " + doorState.value);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onRearLeftDoorStateChanged(ICarDoor.DoorState doorState) {
            super.onRearLeftDoorStateChanged(doorState);
            LogUtil.e("CarDoorControl", "onRearLeftDoorStateChanged ICarDoor.DoorState = " + doorState.value);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onRearRightDoorStateChanged(ICarDoor.DoorState doorState) {
            super.onRearRightDoorStateChanged(doorState);
            LogUtil.e("CarDoorControl", "onRearRightDoorStateChanged ICarDoor.DoorState = " + doorState.value);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onSlidingDoorStateLChanged(ICarDoor.SlidingDoorState slidingDoorState) {
            super.onSlidingDoorStateLChanged(slidingDoorState);
            LogUtil.e("CarDoorControl", "onSlidingDoorStateLChanged ICarDoor.SlidingDoorState = " + slidingDoorState.value);
            CarDoorControl.this.doorStatusEvent.setDoorState(slidingDoorState);
            CarDoorControl.this.doorStatusEvent.setWhichCarWindow(2);
            EventBusCompat.post(CarDoorControl.this.doorStatusEvent);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onSlidingDoorStateRChanged(ICarDoor.SlidingDoorState slidingDoorState) {
            super.onSlidingDoorStateRChanged(slidingDoorState);
            LogUtil.e("CarDoorControl", "onSlidingDoorStateRChanged ICarDoor.SlidingDoorState = " + slidingDoorState.value);
            CarDoorControl.this.doorStatusEvent.setDoorState(slidingDoorState);
            CarDoorControl.this.doorStatusEvent.setWhichCarWindow(3);
            EventBusCompat.post(CarDoorControl.this.doorStatusEvent);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onTrunkDoorStateChanged(ICarDoor.DoorState doorState) {
            super.onTrunkDoorStateChanged(doorState);
            LogUtil.e("CarDoorControl", "onTrunkDoorStateChanged ICarDoor.DoorState = " + doorState.value);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onRemoteUnlockModeChanged(ICarDoor.RemoteUnlockMode remoteUnlockMode) {
            super.onRemoteUnlockModeChanged(remoteUnlockMode);
            LogUtil.e("CarDoorControl", "onRemoteUnlockModeChanged ICarDoor.RemoteUnlockMode = " + remoteUnlockMode.value);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onAutoUnlockChanged(ICarDoor.AutoUnlockState autoUnlockState) {
            super.onAutoUnlockChanged(autoUnlockState);
            LogUtil.e("CarDoorControl", "onAutoUnlockChanged ICarDoor.AutoUnlockState = " + autoUnlockState.value);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onPEPSAutoTrunkOpenChanged(ICarDoor.PEPSAutoTrunkOpenState pEPSAutoTrunkOpenState) {
            super.onPEPSAutoTrunkOpenChanged(pEPSAutoTrunkOpenState);
            LogUtil.e("CarDoorControl", "onPEPSAutoTrunkOpenChanged ICarDoor.PEPSAutoTrunkOpenState = " + pEPSAutoTrunkOpenState.value);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onPSDDoorSpeedLChanged(ICarDoor.PSDDoorSpeed pSDDoorSpeed) {
            super.onPSDDoorSpeedLChanged(pSDDoorSpeed);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onPSDDoorSpeedRChanged(ICarDoor.PSDDoorSpeed pSDDoorSpeed) {
            super.onPSDDoorSpeedRChanged(pSDDoorSpeed);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onSlidingDoorModeAutoStateChanged(boolean z) {
            super.onSlidingDoorModeAutoStateChanged(z);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onTailDoorPercentChanged(int i) {
            super.onTailDoorPercentChanged(i);
            LogUtil.e("CarDoorControl", "onTailDoorPercentChanged memoryPercent = " + i);
            this.event.setMemoryPercent(i);
            this.event.setChangeType(1);
            EventBusCompat.post(this.event);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onTailDoorModeStateChanged(boolean z) {
            super.onTailDoorModeStateChanged(z);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onTailDoorTravelPercentChanged(int i) {
            super.onTailDoorTravelPercentChanged(i);
            LogUtil.e("CarDoorControl", "onTailDoorTravelPercentChanged percent = " + i);
            this.carTailgateEvent.setPercent(i);
            this.carTailgateEvent.setChangeType(0);
            EventBusCompat.post(this.carTailgateEvent);
        }

        @Override // com.yftech.vehicle.sdk.CarDoorManager.CarDoorListener
        public void onTailDoorStateChanged(ICarDoor.TailDoorState tailDoorState) {
            super.onTailDoorStateChanged(tailDoorState);
            LogUtil.e("CarDoorControl", "onTailDoorStateChanged ICarDoor.TailDoorState = " + tailDoorState.name());
            this.carTailgateEvent.setChangeType(2);
            this.carTailgateEvent.setState(tailDoorState);
            EventBusCompat.post(this.carTailgateEvent);
        }
    };

    public static CarDoorControl getInstance() {
        if (instance == null) {
            synchronized (CarDoorControl.class) {
                if (instance == null) {
                    instance = new CarDoorControl();
                }
            }
        }
        return instance;
    }

    public void init() {
        CarDoorManager.get().registerListener(this.listener);
    }

    public void unInit() {
        CarDoorManager.get().unregisterListener(this.listener);
    }

    public int getTailgateTravelPercent() {
        int max = Math.max(0, CarDoorManager.get().getTailDoorTravelPercent());
        LogUtil.i("CarDoorControl", " getTailgateTravelPercent = " + max + "%");
        return max;
    }

    public int getTailDoorPercent() {
        int tailDoorPercent = CarDoorManager.get().getTailDoorPercent();
        LogUtil.i("CarDoorControl", "获取后背门记忆位置 getTailDoorPercent = " + tailDoorPercent + "% ");
        return tailDoorPercent;
    }

    public boolean saveTailDoorPercent() {
        LogUtil.e("CarDoorControl", "saveTailDoorPercent performTailDoorMaxPositionMemoryButtonClick");
        return CarDoorManager.get().performTailDoorMaxPositionMemoryButtonClick();
    }

    public boolean clearTailDoorMemory() {
        LogUtil.e("CarDoorControl", "clearTailDoorMemory performTailDoorPositionMemoryClearButtonClick");
        return CarDoorManager.get().performTailDoorPositionMemoryClearButtonClick();
    }

    public ICarDoor.TailDoorState getTailgateStatus() {
        ICarDoor.TailDoorState tailDoorState = CarDoorManager.get().getTailDoorState();
        LogUtil.i("CarDoorControl", "ICarDoor.TailDoorState getTailgateStatus = " + tailDoorState.name());
        return tailDoorState;
    }

    public boolean controlTailgatePercent(int i) {
        LogUtil.e("CarDoorControl", "controlTailgatePercent = " + i + " %");
        if (i == 0) {
            return CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.FULLY_CLOSE);
        }
        if (Math.abs(i - 20) < 3) {
            return CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.OPEN_TWENTY_PERCENT);
        }
        if (Math.abs(i - 40) < 3) {
            return CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.OPEN_FORTY_PERCENT);
        }
        if (Math.abs(i - 60) < 3) {
            return CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.OPEN_SIXTY_PERCENT);
        }
        if (Math.abs(i - 80) < 3) {
            return CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.OPEN_EIGHTY_PERCENT);
        }
        if (Math.abs(i - 100) < 3) {
            return CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.FULLY_OPEN);
        }
        CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.STOP);
        return false;
    }

    public boolean isSlidingDoorModeAutoEnabled() {
        return CarDoorManager.get().isSlidingDoorModeAutoEnabled();
    }

    public boolean controlSlidingDoorLeft(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("controlSlidingDoorLeft  = ");
        sb.append(z ? "open " : "close ");
        LogUtil.e("CarDoorControl", sb.toString());
        return CarDoorManager.get().setSlidingDoorCmdL(z ? ICarDoor.SlidingDoorCmd.OPEN : ICarDoor.SlidingDoorCmd.CLOSE);
    }

    public boolean controlSlidingDoorRight(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append("controlSlidingDoorRight  = ");
        sb.append(z ? "open " : "close ");
        LogUtil.e("CarDoorControl", sb.toString());
        return CarDoorManager.get().setSlidingDoorCmdR(z ? ICarDoor.SlidingDoorCmd.OPEN : ICarDoor.SlidingDoorCmd.CLOSE);
    }

    public ICarDoor.SlidingDoorOperation getSlidingDoorOperationL() {
        return CarDoorManager.get().getSlidingDoorOperationL();
    }

    public ICarDoor.SlidingDoorOperation getSlidingDoorOperationR() {
        return CarDoorManager.get().getSlidingDoorOperationR();
    }

    public ICarDoor.SlidingDoorState getSlidingDoorStateL() {
        return CarDoorManager.get().getSlidingDoorStateL();
    }

    public ICarDoor.SlidingDoorState getSlidingDoorStateR() {
        return CarDoorManager.get().getSlidingDoorStateR();
    }
}
