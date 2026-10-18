package com.yftech.yfmycar.view.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import com.yftech.vehicle.internal.adapter.ICarWindow;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.callback.WindowAnimCallBack;
import com.yftech.yfmycar.view.manager.MyCarWindowManager;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class VerticalAnimWindowTouchView extends RelativeLayout {
    private final int MESSAGE_BACK;
    private final String TAG;
    private Drawable backgroundDrawable;
    private boolean clickable;
    private final Handler handler;
    private int intrinsicHeight;
    private int intrinsicWidth;
    private RelativeLayout.LayoutParams layoutParams;
    private RelativeLayout.LayoutParams layoutParamsTouch;
    public int moveValue;
    private Drawable touchViewDrawable;
    private int whichSeat;
    public WindowAnimCallBack windowAnimCallBack;
    private int windowMoveMax;
    private int windowMoveMaxTwentyPercent;
    private final double windowMoveMaxTwentyPercentCenter;
    private View windowView;
    private View windowViewTouch;

    public VerticalAnimWindowTouchView(Context context, int i, int i2, Drawable drawable, Drawable drawable2, boolean z) {
        super(context);
        this.TAG = "VerticalAnimWindowTouchView";
        this.MESSAGE_BACK = 8;
        this.handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.widgets.VerticalAnimWindowTouchView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == 8) {
                    VerticalAnimWindowTouchView.this.windowViewTouch.setSelected(false);
                    VerticalAnimWindowTouchView.this.layoutParamsTouch.setMargins(0, VerticalAnimWindowTouchView.this.windowView.getTop(), 0, -VerticalAnimWindowTouchView.this.windowView.getTop());
                    VerticalAnimWindowTouchView.this.windowViewTouch.setLayoutParams(VerticalAnimWindowTouchView.this.layoutParamsTouch);
                }
                return false;
            }
        });
        this.whichSeat = i;
        this.windowMoveMax = i2;
        this.backgroundDrawable = drawable;
        this.touchViewDrawable = drawable2;
        this.clickable = z;
        this.windowMoveMaxTwentyPercent = this.windowMoveMax / 5;
        if (this.windowMoveMax % 5 > 0) {
            this.windowMoveMaxTwentyPercent++;
        }
        this.windowMoveMaxTwentyPercentCenter = this.windowMoveMaxTwentyPercent / 2.0f;
        initUI(context);
    }

    public VerticalAnimWindowTouchView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "VerticalAnimWindowTouchView";
        this.MESSAGE_BACK = 8;
        this.handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.widgets.VerticalAnimWindowTouchView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == 8) {
                    VerticalAnimWindowTouchView.this.windowViewTouch.setSelected(false);
                    VerticalAnimWindowTouchView.this.layoutParamsTouch.setMargins(0, VerticalAnimWindowTouchView.this.windowView.getTop(), 0, -VerticalAnimWindowTouchView.this.windowView.getTop());
                    VerticalAnimWindowTouchView.this.windowViewTouch.setLayoutParams(VerticalAnimWindowTouchView.this.layoutParamsTouch);
                }
                return false;
            }
        });
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.VerticalAnimWindowTouchView);
            this.whichSeat = obtainStyledAttributes.getInt(0, 0);
            this.windowMoveMax = obtainStyledAttributes.getInt(1, 5);
            this.backgroundDrawable = obtainStyledAttributes.getDrawable(2);
            this.clickable = obtainStyledAttributes.getBoolean(3, false);
            if (this.clickable) {
                this.touchViewDrawable = obtainStyledAttributes.getDrawable(4);
            }
            this.intrinsicHeight = this.backgroundDrawable.getIntrinsicHeight();
            this.intrinsicWidth = this.backgroundDrawable.getIntrinsicWidth();
            obtainStyledAttributes.recycle();
        }
        this.windowMoveMaxTwentyPercent = this.windowMoveMax / 5;
        if (this.windowMoveMax % 5 > 0) {
            this.windowMoveMaxTwentyPercent++;
        }
        this.windowMoveMaxTwentyPercentCenter = this.windowMoveMaxTwentyPercent / 2.0f;
        initUI(context);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    private void initUI(Context context) {
        this.windowView = new View(context);
        this.layoutParams = new RelativeLayout.LayoutParams(this.intrinsicWidth, this.intrinsicHeight);
        this.windowView.setLayoutParams(this.layoutParams);
        this.windowView.setBackground(this.backgroundDrawable);
        addView(this.windowView);
        if (this.clickable) {
            this.windowViewTouch = new View(context);
            this.windowViewTouch.setClickable(this.clickable);
            this.layoutParamsTouch = new RelativeLayout.LayoutParams(this.intrinsicWidth, this.intrinsicHeight);
            this.windowViewTouch.setLayoutParams(this.layoutParamsTouch);
            this.windowViewTouch.setBackground(this.touchViewDrawable);
            addView(this.windowViewTouch);
            this.windowViewTouch.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.yfmycar.view.widgets.VerticalAnimWindowTouchView.2
                private int lastY;

                @Override // android.view.View.OnTouchListener
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    ICarWindow.WindowOperationState windowOperationState;
                    int min;
                    if (!VerticalAnimWindowTouchView.this.clickable || (windowOperationState = MyCarWindowManager.getInstance().getWindowOperationState(VerticalAnimWindowTouchView.this.whichSeat)) == ICarWindow.WindowOperationState.CLOSING || windowOperationState == ICarWindow.WindowOperationState.OPENING) {
                        return true;
                    }
                    switch (motionEvent.getAction()) {
                        case 0:
                            VerticalAnimWindowTouchView.this.handler.removeMessages(8);
                            this.lastY = (int) motionEvent.getRawY();
                            VerticalAnimWindowTouchView.this.windowViewTouch.setSelected(true);
                            break;
                        case 1:
                            LogUtil.e("VerticalAnimWindowTouchView", "MotionEvent.ACTION_UP  moveValue = " + VerticalAnimWindowTouchView.this.moveValue);
                            if (VerticalAnimWindowTouchView.this.moveValue >= VerticalAnimWindowTouchView.this.windowMoveMax) {
                                min = VerticalAnimWindowTouchView.this.windowMoveMax;
                            } else {
                                int i = VerticalAnimWindowTouchView.this.moveValue % VerticalAnimWindowTouchView.this.windowMoveMaxTwentyPercent;
                                LogUtil.e("VerticalAnimWindowTouchView", "MotionEvent.ACTION_UP  value = " + i);
                                min = ((double) i) < VerticalAnimWindowTouchView.this.windowMoveMaxTwentyPercentCenter ? VerticalAnimWindowTouchView.this.moveValue - i : Math.min((VerticalAnimWindowTouchView.this.moveValue - i) + VerticalAnimWindowTouchView.this.windowMoveMaxTwentyPercent, VerticalAnimWindowTouchView.this.windowMoveMax);
                            }
                            VerticalAnimWindowTouchView.this.layoutParamsTouch.setMargins(0, min, 0, -min);
                            VerticalAnimWindowTouchView.this.windowViewTouch.setLayoutParams(VerticalAnimWindowTouchView.this.layoutParamsTouch);
                            LogUtil.e("VerticalAnimWindowTouchView", "MotionEvent.ACTION_UP  endValue = " + min);
                            int i2 = min / VerticalAnimWindowTouchView.this.windowMoveMaxTwentyPercent;
                            ICarWindow.WindowOpenPercent windowOpenPercent = ICarWindow.WindowOpenPercent.__UNKNOWN__;
                            switch (i2) {
                                case 0:
                                    windowOpenPercent = ICarWindow.WindowOpenPercent.FULLY_CLOSE;
                                    break;
                                case 1:
                                    windowOpenPercent = ICarWindow.WindowOpenPercent.TWENTY_PERCENT_OPEN;
                                    break;
                                case 2:
                                    windowOpenPercent = ICarWindow.WindowOpenPercent.FORTY_PERCENT_OPEN;
                                    break;
                                case 3:
                                    windowOpenPercent = ICarWindow.WindowOpenPercent.SIXTY_PERCENT_OPEN;
                                    break;
                                case 4:
                                    windowOpenPercent = ICarWindow.WindowOpenPercent.EIGHTY_PERCENT_OPEN;
                                    break;
                                case 5:
                                    windowOpenPercent = ICarWindow.WindowOpenPercent.FULLY_OPEN;
                                    break;
                            }
                            MyCarWindowManager.getInstance().controlCarWindow(VerticalAnimWindowTouchView.this.whichSeat, windowOpenPercent);
                            VerticalAnimWindowTouchView.this.handler.sendEmptyMessageDelayed(8, 3000L);
                            break;
                        case 2:
                            VerticalAnimWindowTouchView.this.windowViewTouch.setSelected(true);
                            VerticalAnimWindowTouchView.this.moveValue = VerticalAnimWindowTouchView.this.windowViewTouch.getTop() + (((int) motionEvent.getRawY()) - this.lastY);
                            VerticalAnimWindowTouchView.this.moveValue = VerticalAnimWindowTouchView.this.moveValue < 0 ? 0 : Math.min(VerticalAnimWindowTouchView.this.windowMoveMax, VerticalAnimWindowTouchView.this.moveValue);
                            VerticalAnimWindowTouchView.this.layoutParamsTouch.setMargins(0, VerticalAnimWindowTouchView.this.moveValue, 0, -VerticalAnimWindowTouchView.this.moveValue);
                            VerticalAnimWindowTouchView.this.windowViewTouch.setLayoutParams(VerticalAnimWindowTouchView.this.layoutParamsTouch);
                            this.lastY = (int) motionEvent.getRawY();
                            break;
                    }
                    return false;
                }
            });
        }
    }

    public void initWindowPercent() {
        int min;
        this.handler.removeMessages(8);
        float windowOpenPrecisePercent = MyCarWindowManager.getInstance().getWindowOpenPrecisePercent(this.whichSeat);
        if (windowOpenPrecisePercent == 101.0f) {
            min = 0;
        } else {
            min = windowOpenPrecisePercent == 104.0f ? 100 : (int) Math.min(100.0f, windowOpenPrecisePercent);
        }
        ICarWindow.WindowOperationState windowOperationState = MyCarWindowManager.getInstance().getWindowOperationState(this.whichSeat);
        this.moveValue = (this.windowMoveMax * min) / 100;
        LogUtil.e("VerticalAnimWindowTouchView", "setPercent:" + min + "  WhichCarSeat = " + this.whichSeat);
        this.layoutParams.setMargins(0, this.moveValue, 0, -this.moveValue);
        this.windowView.setLayoutParams(this.layoutParams);
        if (this.windowViewTouch != null && ((windowOperationState == ICarWindow.WindowOperationState.CLOSING && this.windowViewTouch.getTop() > this.windowView.getTop()) || ((windowOperationState == ICarWindow.WindowOperationState.OPENING && this.windowViewTouch.getTop() < this.windowView.getTop()) || windowOperationState == ICarWindow.WindowOperationState.STOPED))) {
            this.layoutParamsTouch.setMargins(0, this.moveValue, 0, -this.moveValue);
            this.windowViewTouch.setLayoutParams(this.layoutParamsTouch);
            this.windowViewTouch.setSelected(this.windowViewTouch.isPressed());
        }
        if (this.windowAnimCallBack != null) {
            ICarWindow.WindowState windowState = MyCarWindowManager.getInstance().getWindowState(this.whichSeat);
            float windowOpenPrecisePercent2 = MyCarWindowManager.getInstance().getWindowOpenPrecisePercent(this.whichSeat);
            boolean z = true;
            boolean z2 = windowState == ICarWindow.WindowState.FULLY_CLOSED || windowOpenPrecisePercent2 == 0.0f;
            if (windowState != ICarWindow.WindowState.FULLY_OPENED && windowOpenPrecisePercent2 != 100.0f) {
                z = false;
            }
            this.windowAnimCallBack.doDownUpVisible(z ? 4 : 0, z2 ? 4 : 0);
        }
    }

    public void setWindowAnimCallBack(WindowAnimCallBack windowAnimCallBack) {
        this.windowAnimCallBack = windowAnimCallBack;
    }
}
