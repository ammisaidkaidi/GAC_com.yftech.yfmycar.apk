package com.yftech.yfmycar.view.bean;

import com.yftech.vehicle.internal.adapter.ICarDoor;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarTailgateEvent {
    int changeType;
    int memoryPercent;
    int percent;
    private ICarDoor.TailDoorState state;

    public int getChangeType() {
        return this.changeType;
    }

    public void setChangeType(int i) {
        this.changeType = i;
    }

    public ICarDoor.TailDoorState getState() {
        return this.state;
    }

    public void setState(ICarDoor.TailDoorState tailDoorState) {
        this.state = tailDoorState;
    }

    public int getPercent() {
        return this.percent;
    }

    public void setPercent(int i) {
        this.percent = i;
    }

    public int getMemoryPercent() {
        return this.memoryPercent;
    }

    public void setMemoryPercent(int i) {
        this.memoryPercent = i;
    }

    public String toString() {
        return "CarTailgateEvent{state=" + this.state + ", percent=" + this.percent + ", memoryPercent=" + this.memoryPercent + ", changeType=" + this.changeType + '}';
    }
}
