package com.yftech.yfmycar.view.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.RelativeLayout;

/* loaded from: /home/user/work/dex/classes.dex */
public class AngleLeftTouchRelativeLayout extends RelativeLayout {
    private static final int PART_FOUR = 4;
    private static final int PART_ONE = 1;
    private static final int PART_THREE = 3;
    private static final int PART_TWO = 2;
    private float[] angles;
    private int height;
    private OnSpecialTypeClickListener mListener;
    private float r;
    private int width;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnSpecialTypeClickListener {
        void onSpecialTypeClick(int i);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    public AngleLeftTouchRelativeLayout(Context context) {
        super(context);
        this.angles = new float[]{44.0f, 44.0f, 44.0f};
    }

    public AngleLeftTouchRelativeLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.angles = new float[]{44.0f, 44.0f, 44.0f};
    }

    public AngleLeftTouchRelativeLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.angles = new float[]{44.0f, 44.0f, 44.0f};
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.width = i;
        this.height = i2;
        this.r = Math.min(this.width, this.height) / 2;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && this.angles != null && this.angles.length > 0) {
            doOnSpecialTypeClick(motionEvent);
        }
        return super.onTouchEvent(motionEvent);
    }

    private void doOnSpecialTypeClick(MotionEvent motionEvent) {
        double atan2;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (Math.pow(x - (this.width / 2), 2.0d) + Math.pow(y - (this.height / 2), 2.0d) < Math.pow(this.r, 2.0d)) {
            switch (touchOnWhichPart(motionEvent)) {
                case 1:
                    atan2 = ((Math.atan2(x - (this.width / 2), (this.height / 2) - y) * 180.0d) / 3.141592653589793d) + 115.0d;
                    break;
                case 2:
                    atan2 = ((Math.atan2(y - (this.height / 2), x - (this.width / 2)) * 180.0d) / 3.141592653589793d) + 205.0d;
                    break;
                case 3:
                    atan2 = ((Math.atan2((this.width / 2) - x, y - (this.height / 2)) * 180.0d) / 3.141592653589793d) - 65.0d;
                    break;
                case 4:
                    atan2 = ((Math.atan2((this.height / 2) - y, (this.width / 2) - x) * 180.0d) / 3.141592653589793d) + 25.0d;
                    break;
                default:
                    atan2 = 0.0d;
                    break;
            }
            double d = 0.0d;
            for (int i = 0; i < this.angles.length; i++) {
                d += this.angles[i];
                if (atan2 > 0.0d && atan2 < d) {
                    if (this.mListener != null) {
                        this.mListener.onSpecialTypeClick(i);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public void setOnSpecialTypeClickListener(OnSpecialTypeClickListener onSpecialTypeClickListener) {
        this.mListener = onSpecialTypeClickListener;
    }

    private int touchOnWhichPart(MotionEvent motionEvent) {
        return motionEvent.getX() > ((float) (this.width / 2)) ? motionEvent.getY() > ((float) (this.height / 2)) ? 2 : 1 : motionEvent.getY() > ((float) (this.height / 2)) ? 3 : 4;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
    }
}
