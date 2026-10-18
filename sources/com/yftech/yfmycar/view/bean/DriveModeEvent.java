package com.yftech.yfmycar.view.bean;

import com.yftech.vehicle.internal.adapter.ICarDrive;

/* loaded from: /home/user/work/dex/classes.dex */
public class DriveModeEvent {
    private ICarDrive.DriveMode mode;

    public DriveModeEvent() {
    }

    public DriveModeEvent(ICarDrive.DriveMode driveMode) {
        this.mode = driveMode;
    }

    public ICarDrive.DriveMode getMode() {
        return this.mode;
    }

    public void setMode(ICarDrive.DriveMode driveMode) {
        this.mode = driveMode;
    }
}
