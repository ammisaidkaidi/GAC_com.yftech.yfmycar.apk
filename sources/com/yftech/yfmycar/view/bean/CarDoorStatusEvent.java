package com.yftech.yfmycar.view.bean;

import com.yftech.vehicle.internal.adapter.ICarDoor;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarDoorStatusEvent {
    private ICarDoor.SlidingDoorState doorState;
    private int whichCarWindow;

    public int getWhichCarWindow() {
        return this.whichCarWindow;
    }

    public void setWhichCarWindow(int i) {
        this.whichCarWindow = i;
    }

    public ICarDoor.SlidingDoorState getDoorState() {
        return this.doorState;
    }

    public void setDoorState(ICarDoor.SlidingDoorState slidingDoorState) {
        this.doorState = slidingDoorState;
    }

    public String toString() {
        return "CarDoorStatusEvent{whichCarWindow=" + this.whichCarWindow + ", doorState=" + this.doorState + '}';
    }
}
