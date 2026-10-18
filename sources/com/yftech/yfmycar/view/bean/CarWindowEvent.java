package com.yftech.yfmycar.view.bean;

import com.yftech.vehicle.internal.adapter.ICarWindow;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarWindowEvent {
    private ICarWindow.WindowOperationState carWindowOperationStateFL = ICarWindow.WindowOperationState.__UNKNOWN__;
    private ICarWindow.WindowOperationState carWindowOperationStateFR = ICarWindow.WindowOperationState.__UNKNOWN__;
    private ICarWindow.WindowOperationState carWindowOperationStateRL = ICarWindow.WindowOperationState.__UNKNOWN__;
    private ICarWindow.WindowOperationState carWindowOperationStateRR = ICarWindow.WindowOperationState.__UNKNOWN__;
    private int percent;
    private int whichCarWindow;

    public ICarWindow.WindowOperationState getCarWindowOperationStateFL() {
        return this.carWindowOperationStateFL;
    }

    public void setCarWindowOperationStateFL(ICarWindow.WindowOperationState windowOperationState) {
        this.carWindowOperationStateFL = windowOperationState;
    }

    public ICarWindow.WindowOperationState getCarWindowOperationStateFR() {
        return this.carWindowOperationStateFR;
    }

    public void setCarWindowOperationStateFR(ICarWindow.WindowOperationState windowOperationState) {
        this.carWindowOperationStateFR = windowOperationState;
    }

    public ICarWindow.WindowOperationState getCarWindowOperationStateRL() {
        return this.carWindowOperationStateRL;
    }

    public void setCarWindowOperationStateRL(ICarWindow.WindowOperationState windowOperationState) {
        this.carWindowOperationStateRL = windowOperationState;
    }

    public ICarWindow.WindowOperationState getCarWindowOperationStateRR() {
        return this.carWindowOperationStateRR;
    }

    public void setCarWindowOperationStateRR(ICarWindow.WindowOperationState windowOperationState) {
        this.carWindowOperationStateRR = windowOperationState;
    }

    public int getWhichCarWindow() {
        return this.whichCarWindow;
    }

    public void setWhichCarWindow(int i) {
        this.whichCarWindow = i;
    }

    public int getPercent() {
        return this.percent;
    }

    public void setPercent(int i) {
        this.percent = i;
    }

    public String toString() {
        return "CarWindowEvent{whichCarWindow=" + this.whichCarWindow + ", percent=" + this.percent + ", carWindowOperationStateFL=" + this.carWindowOperationStateFL + ", carWindowOperationStateFR=" + this.carWindowOperationStateFR + ", carWindowOperationStateRL=" + this.carWindowOperationStateRL + ", carWindowOperationStateRR=" + this.carWindowOperationStateRR + '}';
    }
}
