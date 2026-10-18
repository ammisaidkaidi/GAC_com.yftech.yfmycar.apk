package com.yftech.yfmycar.view.bean;

/* loaded from: /home/user/work/dex/classes.dex */
public class WindowErrorEvent {
    boolean isError;

    @FragmentsIndex
    int whichFragment;

    public WindowErrorEvent() {
    }

    public WindowErrorEvent(@FragmentsIndex int i, boolean z) {
        this.whichFragment = i;
        this.isError = z;
    }

    @FragmentsIndex
    public int getWhichFragment() {
        return this.whichFragment;
    }

    public void setWhichFragment(@FragmentsIndex int i) {
        this.whichFragment = i;
    }

    public boolean isError() {
        return this.isError;
    }

    public void setError(boolean z) {
        this.isError = z;
    }
}
