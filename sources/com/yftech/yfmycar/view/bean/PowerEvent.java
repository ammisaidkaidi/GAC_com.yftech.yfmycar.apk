package com.yftech.yfmycar.view.bean;

import com.yftech.vehicle.internal.adapter.ICarPower;

/* loaded from: /home/user/work/dex/classes.dex */
public class PowerEvent {
    private ICarPower.PowerMode powerMode;

    public ICarPower.PowerMode getPowerMode() {
        return this.powerMode;
    }

    public void setPowerMode(ICarPower.PowerMode powerMode) {
        this.powerMode = powerMode;
    }
}
