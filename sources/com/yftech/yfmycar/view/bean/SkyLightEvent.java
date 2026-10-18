package com.yftech.yfmycar.view.bean;

import com.yftech.vehicle.internal.adapter.ICarWindow;

/* loaded from: /home/user/work/dex/classes.dex */
public class SkyLightEvent {
    private boolean isTiltUp;
    private ICarWindow.WindowRoofOpenOpertion openOpertionSky;
    private int percentSky;
    private int whichWindow;

    public int getPercentSky() {
        return this.percentSky;
    }

    public void setPercentSky(int i) {
        this.percentSky = i;
    }

    public ICarWindow.WindowRoofOpenOpertion getOpenOpertionSky() {
        return this.openOpertionSky;
    }

    public void setOpenOpertionSky(ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion) {
        this.openOpertionSky = windowRoofOpenOpertion;
    }

    public boolean isTiltUp() {
        return this.isTiltUp;
    }

    public void setTiltUp(boolean z) {
        this.isTiltUp = z;
    }

    public int getWhichWindow() {
        return this.whichWindow;
    }

    public void setWhichWindow(int i) {
        this.whichWindow = i;
    }
}
