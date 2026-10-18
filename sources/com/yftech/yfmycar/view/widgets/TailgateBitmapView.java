package com.yftech.yfmycar.view.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class TailgateBitmapView extends View {
    private final String TAG;
    private Bitmap bitmap;
    private int mCx;
    private int mCy;
    public int maxOpenAngle;
    public int moveAngle;
    private Paint paintBitmap;

    public TailgateBitmapView(Context context) {
        super(context);
        this.TAG = "TailgateBitmapView";
        this.maxOpenAngle = 65;
    }

    public TailgateBitmapView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "TailgateBitmapView";
        this.maxOpenAngle = 65;
        this.bitmap = BitmapFactory.decodeResource(context.getResources(), R.mipmap.mycay_vecl_trunk);
        initPaint();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int abs = Math.abs(i - i2);
        this.mCy = i2 / 2;
        this.mCx = this.mCy + abs;
    }

    private void initPaint() {
        this.paintBitmap = new Paint();
        this.paintBitmap.setAntiAlias(true);
        this.paintBitmap.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        canvas.rotate(this.moveAngle - 14, this.mCx, this.mCy);
        canvas.drawBitmap(this.bitmap, this.mCx - this.bitmap.getWidth(), this.mCy - 10, this.paintBitmap);
    }

    public void setMoveAngle(int i) {
        LogUtil.i("TailgateBitmapView", "invalidate bitmap setMoveAngle = " + i + " %");
        this.moveAngle = (i * this.maxOpenAngle) / 100;
        invalidate();
    }
}
