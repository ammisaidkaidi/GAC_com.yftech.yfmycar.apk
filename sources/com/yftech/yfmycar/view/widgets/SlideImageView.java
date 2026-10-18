package com.yftech.yfmycar.view.widgets;

import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.yftech.vehicle.internal.adapter.ICarSeat;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class SlideImageView extends AppCompatImageView implements View.OnTouchListener {
    private String TAG;
    private ValueAnimator doorAnimator;
    boolean isLeftNor;
    private boolean isMoreThanCenter;
    long lastClickTime;
    private int lastX;
    private RelativeLayout.LayoutParams layoutParams;
    private int maxMoveWidth;
    private OnDoorStatusChangeListener onDoorStatusChangeListener;
    private int parentWidth;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnDoorStatusChangeListener {
        void onDoorFromRightToLeft(boolean z);
    }

    public SlideImageView(Context context) {
        super(context);
        this.parentWidth = ICarSeat.CHILD_LOCK_RL_SETTING;
        this.maxMoveWidth = 256;
        this.lastClickTime = 0L;
        this.TAG = "SlideImageView";
    }

    public SlideImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.parentWidth = ICarSeat.CHILD_LOCK_RL_SETTING;
        this.maxMoveWidth = 256;
        this.lastClickTime = 0L;
        this.TAG = "SlideImageView";
        initAnim();
        setOnTouchListener(this);
    }

    public void setOnDoorStatusChangeListener(OnDoorStatusChangeListener onDoorStatusChangeListener) {
        this.onDoorStatusChangeListener = onDoorStatusChangeListener;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!isClickable()) {
            return true;
        }
        switch (motionEvent.getAction()) {
            case 0:
                if (System.currentTimeMillis() - this.lastClickTime < 500) {
                    return true;
                }
                this.lastX = (int) motionEvent.getRawX();
                LogUtil.e(this.TAG, "MotionEvent.ACTION_DOWN");
                initAnim();
                this.isLeftNor = getLeft() == 0;
                return true;
            case 1:
                LogUtil.e(this.TAG, "MotionEvent.ACTION_UP");
                if ((this.isLeftNor && getLeft() == 0) || (!this.isLeftNor && getRight() == this.parentWidth)) {
                    LogUtil.e(this.TAG, "keep position");
                } else {
                    int width = (this.parentWidth / 2) - (getWidth() / 2);
                    LogUtil.e(this.TAG, "centerX = " + width);
                    if (this.isLeftNor) {
                        this.isMoreThanCenter = getLeft() >= width;
                        ValueAnimator valueAnimator = this.doorAnimator;
                        float[] fArr = new float[2];
                        fArr[0] = getLeft();
                        fArr[1] = this.isMoreThanCenter ? this.parentWidth - getWidth() : 0.0f;
                        valueAnimator.setFloatValues(fArr);
                        String str = this.TAG;
                        StringBuilder sb = new StringBuilder();
                        sb.append("原本在左边 setFloatValues =  ");
                        sb.append(getLeft());
                        sb.append(">>>");
                        sb.append(this.isMoreThanCenter ? this.parentWidth - getWidth() : 0);
                        LogUtil.e(str, sb.toString());
                        this.doorAnimator.setDuration(this.isMoreThanCenter ? (this.parentWidth - getWidth()) - getLeft() : getLeft());
                    } else {
                        this.isMoreThanCenter = getLeft() <= width;
                        ValueAnimator valueAnimator2 = this.doorAnimator;
                        float[] fArr2 = new float[2];
                        fArr2[0] = getLeft();
                        fArr2[1] = this.isMoreThanCenter ? 0.0f : this.parentWidth - getWidth();
                        valueAnimator2.setFloatValues(fArr2);
                        String str2 = this.TAG;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("原本在右边 setFloatValues =  ");
                        sb2.append(getLeft());
                        sb2.append(">>>");
                        sb2.append(this.isMoreThanCenter ? 0 : this.parentWidth - getWidth());
                        LogUtil.e(str2, sb2.toString());
                        this.doorAnimator.setDuration(this.isMoreThanCenter ? getLeft() : (this.parentWidth - getWidth()) - getLeft());
                    }
                    this.doorAnimator.start();
                }
                return true;
            case 2:
                this.lastClickTime = System.currentTimeMillis();
                int rawX = ((int) motionEvent.getRawX()) - this.lastX;
                int left = getLeft() + rawX;
                int min = left < 0 ? 0 : Math.min(this.maxMoveWidth, left);
                LogUtil.e(this.TAG, "dx = " + rawX + "  ,   geLeft() = " + getLeft());
                if (this.layoutParams != null) {
                    this.layoutParams.setMargins(min, 0, 0, 0);
                    this.layoutParams.setMarginStart(min);
                    setLayoutParams(this.layoutParams);
                }
                this.lastX = (int) motionEvent.getRawX();
                return true;
            default:
                return true;
        }
    }

    private void initAnim() {
        if (getParent() instanceof RelativeLayout) {
            this.parentWidth = ((RelativeLayout) getParent()).getWidth();
            this.layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            this.maxMoveWidth = this.parentWidth - getWidth();
        }
        if (this.doorAnimator == null) {
            this.doorAnimator = new ValueAnimator();
            this.doorAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.yftech.yfmycar.view.widgets.SlideImageView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    if (SlideImageView.this.layoutParams != null) {
                        int i = (int) floatValue;
                        SlideImageView.this.layoutParams.setMargins(i, 0, 0, 0);
                        SlideImageView.this.layoutParams.setMarginStart(i);
                        SlideImageView.this.setLayoutParams(SlideImageView.this.layoutParams);
                    }
                    if ((floatValue == 0.0f || floatValue == SlideImageView.this.parentWidth - SlideImageView.this.getWidth()) && SlideImageView.this.isMoreThanCenter && SlideImageView.this.onDoorStatusChangeListener != null) {
                        SlideImageView.this.onDoorStatusChangeListener.onDoorFromRightToLeft(!SlideImageView.this.isLeftNor);
                    }
                }
            });
        } else {
            this.doorAnimator.cancel();
        }
    }

    public void startAnim(boolean z) {
        if (this.doorAnimator.isRunning()) {
            return;
        }
        this.isMoreThanCenter = false;
        initAnim();
        ValueAnimator valueAnimator = this.doorAnimator;
        float[] fArr = new float[2];
        fArr[0] = getLeft();
        fArr[1] = z ? this.parentWidth - getWidth() : 0.0f;
        valueAnimator.setFloatValues(fArr);
        this.doorAnimator.setDuration(this.parentWidth - getWidth());
        this.doorAnimator.start();
    }
}
