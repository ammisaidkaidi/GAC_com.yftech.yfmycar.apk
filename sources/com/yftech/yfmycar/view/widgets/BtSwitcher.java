package com.yftech.yfmycar.view.widgets;

import android.content.Context;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class BtSwitcher extends Switcher {
    private static final String TAG = "BtSwitcher";
    private boolean isInterceptEvent;
    private long mLastTimeClick;
    private long mSpaceTimeClick;

    public BtSwitcher(Context context) {
        super(context);
        this.isInterceptEvent = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 1000L;
    }

    public BtSwitcher(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isInterceptEvent = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 1000L;
    }

    public BtSwitcher(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isInterceptEvent = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 1000L;
    }

    public BtSwitcher(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.isInterceptEvent = false;
        this.mLastTimeClick = 0L;
        this.mSpaceTimeClick = 1000L;
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        LogUtil.d(TAG, "dispatchTouchEvent: " + motionEvent);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long abs = Math.abs(elapsedRealtime - this.mLastTimeClick);
        switch (motionEvent.getAction()) {
            case 0:
                LogUtil.d(TAG, "dispatchTouchEvent spaceTime:" + abs);
                if (abs < this.mSpaceTimeClick) {
                    LogUtil.d(TAG, "dispatchTouchEvent quickly");
                    this.isInterceptEvent = true;
                    return true;
                }
                break;
            case 1:
            case 3:
                if (this.isInterceptEvent) {
                    this.isInterceptEvent = false;
                    return true;
                }
                this.isInterceptEvent = false;
                this.mLastTimeClick = elapsedRealtime;
                break;
            case 2:
                if (this.isInterceptEvent) {
                    return true;
                }
                break;
        }
        return super.dispatchTouchEvent(motionEvent);
    }
}
