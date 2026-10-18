package com.yftech.yfmycar.view.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.manager.CarConfigControl;

/* loaded from: /home/user/work/dex/classes.dex */
public class ColorfulBitmap extends View {
    int bitmapColor;
    private Bitmap bitmapLightBg;
    private Bitmap bitmapWithColor;
    private final int[] colorList;
    Context context;
    private Bitmap inputBitmap;
    private Paint paint;

    public ColorfulBitmap(Context context) {
        super(context);
        this.colorList = new int[]{R.color.light_color_01, R.color.light_color_02, R.color.light_color_03, R.color.light_color_04, R.color.light_color_05, R.color.light_color_06, R.color.light_color_07, R.color.light_color_08, R.color.light_color_09, R.color.light_color_10, R.color.light_color_11, R.color.light_color_12, R.color.light_color_13, R.color.light_color_14, R.color.light_color_15, R.color.light_color_16, R.color.light_color_17, R.color.light_color_18, R.color.light_color_19, R.color.light_color_20, R.color.light_color_21, R.color.light_color_22, R.color.light_color_23, R.color.light_color_24, R.color.light_color_25, R.color.light_color_26, R.color.light_color_27, R.color.light_color_28, R.color.light_color_29, R.color.light_color_30, R.color.light_color_31, R.color.light_color_32};
        this.context = context;
        init();
    }

    public ColorfulBitmap(Context context, int i) {
        super(context);
        this.colorList = new int[]{R.color.light_color_01, R.color.light_color_02, R.color.light_color_03, R.color.light_color_04, R.color.light_color_05, R.color.light_color_06, R.color.light_color_07, R.color.light_color_08, R.color.light_color_09, R.color.light_color_10, R.color.light_color_11, R.color.light_color_12, R.color.light_color_13, R.color.light_color_14, R.color.light_color_15, R.color.light_color_16, R.color.light_color_17, R.color.light_color_18, R.color.light_color_19, R.color.light_color_20, R.color.light_color_21, R.color.light_color_22, R.color.light_color_23, R.color.light_color_24, R.color.light_color_25, R.color.light_color_26, R.color.light_color_27, R.color.light_color_28, R.color.light_color_29, R.color.light_color_30, R.color.light_color_31, R.color.light_color_32};
        this.context = context;
        init(i);
    }

    public ColorfulBitmap(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.colorList = new int[]{R.color.light_color_01, R.color.light_color_02, R.color.light_color_03, R.color.light_color_04, R.color.light_color_05, R.color.light_color_06, R.color.light_color_07, R.color.light_color_08, R.color.light_color_09, R.color.light_color_10, R.color.light_color_11, R.color.light_color_12, R.color.light_color_13, R.color.light_color_14, R.color.light_color_15, R.color.light_color_16, R.color.light_color_17, R.color.light_color_18, R.color.light_color_19, R.color.light_color_20, R.color.light_color_21, R.color.light_color_22, R.color.light_color_23, R.color.light_color_24, R.color.light_color_25, R.color.light_color_26, R.color.light_color_27, R.color.light_color_28, R.color.light_color_29, R.color.light_color_30, R.color.light_color_31, R.color.light_color_32};
        this.context = context;
        init();
    }

    public ColorfulBitmap(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.colorList = new int[]{R.color.light_color_01, R.color.light_color_02, R.color.light_color_03, R.color.light_color_04, R.color.light_color_05, R.color.light_color_06, R.color.light_color_07, R.color.light_color_08, R.color.light_color_09, R.color.light_color_10, R.color.light_color_11, R.color.light_color_12, R.color.light_color_13, R.color.light_color_14, R.color.light_color_15, R.color.light_color_16, R.color.light_color_17, R.color.light_color_18, R.color.light_color_19, R.color.light_color_20, R.color.light_color_21, R.color.light_color_22, R.color.light_color_23, R.color.light_color_24, R.color.light_color_25, R.color.light_color_26, R.color.light_color_27, R.color.light_color_28, R.color.light_color_29, R.color.light_color_30, R.color.light_color_31, R.color.light_color_32};
        this.context = context;
    }

    public void init() {
        this.bitmapColor = 0;
        this.paint = new Paint();
        this.inputBitmap = BitmapFactory.decodeResource(this.context.getResources(), getCarLampImg());
        this.bitmapLightBg = BitmapFactory.decodeResource(this.context.getResources(), R.mipmap.light_bg);
        this.bitmapWithColor = Bitmap.createBitmap(this.inputBitmap.getWidth(), this.inputBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    }

    public void init(int i) {
        this.bitmapColor = 0;
        this.paint = new Paint();
        this.inputBitmap = BitmapFactory.decodeResource(this.context.getResources(), getCarLampImg());
        this.bitmapWithColor = Bitmap.createBitmap(this.inputBitmap.getWidth(), this.inputBitmap.getHeight(), Bitmap.Config.ARGB_8888);
        invalidate();
    }

    public int getCarLampImg() {
        return CarConfigControl.isLeftHandDriveVehicles() ? CarConfigControl.isGACLogoPresent() ? R.mipmap.light : R.mipmap.light_no_logo : R.mipmap.light_right;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.bitmapWithColor.eraseColor(this.bitmapColor);
        int saveLayer = canvas.saveLayer(null, null, 31);
        canvas.drawBitmap(this.bitmapWithColor, 0.0f, 0.0f, this.paint);
        this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
        canvas.drawBitmap(this.bitmapLightBg, 0.0f, 0.0f, this.paint);
        this.paint.setXfermode(null);
        canvas.restoreToCount(saveLayer);
        int saveLayer2 = canvas.saveLayer(null, null, 31);
        canvas.drawBitmap(this.bitmapWithColor, 0.0f, 0.0f, this.paint);
        this.paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));
        canvas.drawBitmap(this.inputBitmap, 0.0f, 0.0f, this.paint);
        this.paint.setXfermode(null);
        canvas.restoreToCount(saveLayer2);
    }

    public void makeTintBitmap(int i) {
        if (i < 0 || i >= this.colorList.length) {
            i = 0;
        }
        this.bitmapColor = ContextCompat.getColor(getContext(), this.colorList[i]);
        if (this.inputBitmap == null) {
            return;
        }
        invalidate();
    }
}
