package com.yftech.yfmycar.view.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.RelativeLayout;
import androidx.core.view.GravityCompat;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarWindow;
import com.yftech.vehicle.sdk.CarWindowManager;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.callback.WindowAnimCallBack;
import com.yftech.yfmycar.view.manager.CarConfigControl;
import com.yftech.yfmycar.view.manager.MyCarWindowManager;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class HorizontalAnimWindowTouch extends RelativeLayout {
    private final int MESSAGE_BACK;
    private final String TAG;
    private boolean clickable;
    private Drawable drawable;
    private final Handler handler;
    private int intrinsicHeight;
    private int intrinsicWidth;
    public boolean isAddPercent;
    private RelativeLayout.LayoutParams layoutParams;
    private RelativeLayout.LayoutParams layoutParamsTouch;
    private int measuredHeight;
    private int measuredWidth;
    private Drawable touchDrawable;
    public WindowAnimCallBack windowAnimCallBack;
    private int windowMoveMax;
    private int windowMoveTwentyPercent;
    private int windowMoveTwentyPercentCenter;
    private View windowView;
    private View windowViewTouch;

    public HorizontalAnimWindowTouch(Context context) {
        super(context);
        this.TAG = "HorizontalAnimWindow";
        this.MESSAGE_BACK = 7;
        this.handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.widgets.HorizontalAnimWindowTouch.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == 7) {
                    HorizontalAnimWindowTouch.this.resetMargins(HorizontalAnimWindowTouch.this.windowView.getLeft());
                    HorizontalAnimWindowTouch.this.windowViewTouch.setSelected(false);
                }
                return false;
            }
        });
        initUI(context);
    }

    public HorizontalAnimWindowTouch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "HorizontalAnimWindow";
        this.MESSAGE_BACK = 7;
        this.handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.widgets.HorizontalAnimWindowTouch.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == 7) {
                    HorizontalAnimWindowTouch.this.resetMargins(HorizontalAnimWindowTouch.this.windowView.getLeft());
                    HorizontalAnimWindowTouch.this.windowViewTouch.setSelected(false);
                }
                return false;
            }
        });
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.HorizontalAnimWindowTouch);
            this.clickable = obtainStyledAttributes.getBoolean(0, false);
            this.drawable = obtainStyledAttributes.getDrawable(1);
            this.windowMoveMax = obtainStyledAttributes.getInt(3, ICarDoor.LOCK_UNLOCK_SOUND_STATE);
            if (this.clickable) {
                this.touchDrawable = obtainStyledAttributes.getDrawable(2);
            }
            this.intrinsicHeight = this.drawable.getIntrinsicHeight();
            this.intrinsicWidth = this.drawable.getIntrinsicWidth();
            obtainStyledAttributes.recycle();
        }
        this.windowMoveTwentyPercent = this.windowMoveMax / 5;
        LogUtil.e("HorizontalAnimWindow", "windowMoveMax = " + this.windowMoveMax + " and  windowMoveTwentyPercent = " + this.windowMoveTwentyPercent);
        this.windowMoveTwentyPercentCenter = this.windowMoveTwentyPercent / 2;
        initUI(context);
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
    }

    private void initUI(Context context) {
        init();
        this.windowView = new View(context);
        this.layoutParams = new RelativeLayout.LayoutParams(this.intrinsicWidth, this.intrinsicHeight);
        this.windowView.setLayoutParams(this.layoutParams);
        this.windowView.setBackground(this.drawable);
        addView(this.windowView);
        if (this.clickable) {
            this.windowViewTouch = new View(context);
            this.windowViewTouch.setClickable(this.clickable);
            this.layoutParamsTouch = new RelativeLayout.LayoutParams(this.intrinsicWidth, this.intrinsicHeight);
            this.windowViewTouch.setLayoutParams(this.layoutParamsTouch);
            this.windowViewTouch.setBackground(this.touchDrawable);
            addView(this.windowViewTouch);
            this.windowViewTouch.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.yfmycar.view.widgets.HorizontalAnimWindowTouch.2
                private int lastX;
                public int moveValue;

                @Override // android.view.View.OnTouchListener
                @SuppressLint({"ClickableViewAccessibility"})
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion;
                    int i;
                    if (!HorizontalAnimWindowTouch.this.clickable || (windowRoofOpenOpertion = MyCarWindowManager.getInstance().getWindowRoofOpenOpertion()) == ICarWindow.WindowRoofOpenOpertion.CLOSING || windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.OPENING) {
                        return true;
                    }
                    switch (motionEvent.getAction()) {
                        case 0:
                            this.lastX = (int) motionEvent.getRawX();
                            HorizontalAnimWindowTouch.this.windowViewTouch.setSelected(true);
                            HorizontalAnimWindowTouch.this.handler.removeMessages(7);
                            break;
                        case 1:
                            LogUtil.e("HorizontalAnimWindow", "MotionEvent.ACTION_UP  moveValue = " + this.moveValue);
                            int i2 = this.moveValue % HorizontalAnimWindowTouch.this.windowMoveTwentyPercent;
                            LogUtil.e("HorizontalAnimWindow", "MotionEvent.ACTION_UP  value = " + i2);
                            if (i2 >= HorizontalAnimWindowTouch.this.windowMoveTwentyPercentCenter) {
                                i = (this.moveValue - i2) + HorizontalAnimWindowTouch.this.windowMoveTwentyPercent;
                            } else {
                                i = this.moveValue - i2;
                            }
                            LogUtil.e("HorizontalAnimWindow", "MotionEvent.ACTION_UP  endValue = " + i);
                            HorizontalAnimWindowTouch.this.resetMargins(i);
                            MyCarWindowManager.getInstance().controlSkyLightPercent((i * 100) / HorizontalAnimWindowTouch.this.windowMoveMax);
                            HorizontalAnimWindowTouch.this.handler.sendEmptyMessageDelayed(7, 3000L);
                            if (HorizontalAnimWindowTouch.this.layoutParams.leftMargin == i) {
                                HorizontalAnimWindowTouch.this.windowViewTouch.setSelected(false);
                                break;
                            }
                            break;
                        case 2:
                            HorizontalAnimWindowTouch.this.windowViewTouch.setSelected(true);
                            this.moveValue = HorizontalAnimWindowTouch.this.windowViewTouch.getLeft() + (((int) motionEvent.getRawX()) - this.lastX);
                            this.moveValue = this.moveValue < 0 ? 0 : Math.min(HorizontalAnimWindowTouch.this.windowMoveMax, this.moveValue);
                            HorizontalAnimWindowTouch.this.resetMargins(this.moveValue);
                            this.lastX = (int) motionEvent.getRawX();
                            break;
                    }
                    return false;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetMargins(int i) {
        if (CarConfigControl.isArLanguage()) {
            int i2 = -i;
            this.layoutParamsTouch.setMargins(i2, 0, i, 0);
            this.layoutParamsTouch.setMarginStart(i2);
            this.layoutParamsTouch.setMarginEnd(i);
        } else {
            int i3 = -i;
            this.layoutParamsTouch.setMargins(i, 0, i3, 0);
            this.layoutParamsTouch.setMarginStart(i);
            this.layoutParamsTouch.setMarginEnd(i3);
        }
        this.windowViewTouch.setLayoutParams(this.layoutParamsTouch);
    }

    public void setPercent(int i) {
        this.handler.removeMessages(7);
        LogUtil.e("HorizontalAnimWindow", "setPercent:" + i);
        int i2 = (this.windowMoveMax * i) / 100;
        resetViewMargin(i2);
        ICarWindow.WindowRoofOpenOpertion windowRoofOpenOpertion = MyCarWindowManager.getInstance().getWindowRoofOpenOpertion();
        if (this.windowViewTouch != null) {
            if ((windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.CLOSING && this.layoutParamsTouch.getMarginStart() > this.layoutParams.getMarginStart()) || (windowRoofOpenOpertion == ICarWindow.WindowRoofOpenOpertion.OPENING && this.layoutParamsTouch.getMarginStart() < this.layoutParams.getMarginStart())) {
                this.windowViewTouch.setSelected(this.windowViewTouch.isPressed());
                resetMargins(i2);
            }
            if (windowRoofOpenOpertion != ICarWindow.WindowRoofOpenOpertion.CLOSING && windowRoofOpenOpertion != ICarWindow.WindowRoofOpenOpertion.OPENING) {
                this.windowViewTouch.setSelected(this.windowViewTouch.isPressed());
                resetMargins(i2);
            }
        }
        if (this.windowAnimCallBack != null) {
            this.windowAnimCallBack.doDownUpVisible(i == 100 ? 4 : 0, i == 0 ? 4 : 0);
        }
    }

    private void resetViewMargin(int i) {
        if (CarConfigControl.isArLanguage()) {
            int i2 = -i;
            this.layoutParams.setMargins(i2, 0, i, 0);
            this.layoutParams.setMarginStart(i2);
            this.layoutParams.setMarginEnd(i);
        } else {
            int i3 = -i;
            this.layoutParams.setMargins(i, 0, i3, 0);
            this.layoutParams.setMarginStart(i);
            this.layoutParams.setMarginEnd(i3);
        }
        this.windowView.setLayoutParams(this.layoutParams);
    }

    public void moveTwentyPercent(boolean z) {
        int max;
        this.isAddPercent = z;
        int windowRoofOpenPercent = CarWindowManager.get().getWindowRoofOpenPercent();
        int i = windowRoofOpenPercent % 20;
        int i2 = windowRoofOpenPercent - i;
        if (z) {
            max = Math.min(100, i > 10 ? i2 + 40 : i2 + 20);
        } else {
            if (i < 10) {
                i2 -= 20;
            }
            max = Math.max(0, i2);
        }
        LogUtil.e("HorizontalAnimWindow", "当前百分比：" + windowRoofOpenPercent + ">>moveTwentyPercent =  " + max);
        MyCarWindowManager.getInstance().controlSkyLightPercent(max);
    }

    public void setWindowAnimCallBack(WindowAnimCallBack windowAnimCallBack) {
        this.windowAnimCallBack = windowAnimCallBack;
    }

    public void initSkyLightPercent() {
        int windowRoofOpenPercent = CarWindowManager.get().getWindowRoofOpenPercent();
        LogUtil.e("HorizontalAnimWindow", "initSkyLightPercent  windowRoofShadeOpenPercent = " + windowRoofOpenPercent);
        if (windowRoofOpenPercent == 101) {
            setPercent(0);
            if (this.windowAnimCallBack != null) {
                this.windowAnimCallBack.doAnimationStartEnd(0, 1);
                return;
            }
            return;
        }
        if (windowRoofOpenPercent != 104) {
            if (windowRoofOpenPercent <= 100) {
                setPercent(windowRoofOpenPercent);
            }
        } else {
            setPercent(100);
            if (this.windowAnimCallBack != null) {
                this.windowAnimCallBack.doAnimationStartEnd(100, 1);
            }
        }
    }

    public void initSunBlind() {
        int windowRoofShadeOpenPercent = CarWindowManager.get().getWindowRoofShadeOpenPercent();
        LogUtil.e("HorizontalAnimWindow", "initSunBlind  windowRoofShadeOpenPercent = " + windowRoofShadeOpenPercent);
        if (windowRoofShadeOpenPercent == 105) {
            setPercent(0);
        } else if (windowRoofShadeOpenPercent == 106) {
            setPercent(100);
        } else {
            setPercent(Math.min(windowRoofShadeOpenPercent, 100));
        }
    }

    private void init() {
        if (CarConfigControl.isArLanguage()) {
            setGravity(GravityCompat.END);
        }
        setOutlineProvider(new RoundViewOutlineProvider((int) getResources().getDimension(R.dimen.dp_30)));
        setClipToOutline(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class RoundViewOutlineProvider extends ViewOutlineProvider {
        private final int roundSize;

        public RoundViewOutlineProvider(int i) {
            this.roundSize = i;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.roundSize);
        }
    }
}
