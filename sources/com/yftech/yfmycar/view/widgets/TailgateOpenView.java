package com.yftech.yfmycar.view.widgets;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Toast;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.yftech.vehicle.internal.adapter.ICarDoor;
import com.yftech.vehicle.internal.adapter.ICarDrive;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarParking;
import com.yftech.vehicle.sdk.CarDoorManager;
import com.yftech.vehicle.sdk.CarInfoManager;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.manager.CarDoorControl;
import com.yftech.yfmycar.view.manager.CarInfoControl;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class TailgateOpenView extends View implements View.OnClickListener {
    private final int MESSAGE_BACK_BUTTON;
    private final int MESSAGE_BACK_TAILGATE;
    private final String TAG;
    private ValueAnimator animator;
    public int bgSmallRadius;
    private Bitmap bitmap;
    private int compareLen;
    private Context context;
    public int endAngle;
    private final Handler handler;
    private int height;
    private boolean isMoved;
    private boolean isPressed;
    private int mCx;
    private int mCy;
    private Bitmap mLocationBitmap;
    private int mRadius;
    private Bitmap mThumbBitmap;
    private int mThumbBitmapWidth;
    private int mThumbRadius;
    private int margin;
    public int maxOpenAngle;
    public int memoryOpenAngle;
    private Paint memoryPaint;
    private int memoryPercent;
    public String memoryString;
    public int moveAngle;
    OnTailGateStatusChangeListener onTailGateStatusChangeListener;
    private Paint paint;
    private Paint paintBg;
    private Paint paintBitmap;
    private Paint paintStroke;
    private double pointX;
    private double pointY;
    public int startAngle;
    private double startX;
    public int tenPercentAngle;
    public int twentyPercentAngle;
    private int width;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface OnTailGateStatusChangeListener {
        void isMoving(boolean z);

        void onFinish(int i);

        void onMemoryChange(int i);

        void onTip(boolean z);

        void onUiBack();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    public TailgateOpenView(Context context) {
        super(context);
        this.TAG = "TailgateOpenView";
        this.startAngle = ICarParking.PAS_ERROR_FLAG_OF_EEPROM;
        this.endAngle = ICarDoor.HOOD_DOOR_STATE;
        this.maxOpenAngle = 65;
        this.bgSmallRadius = 80;
        this.memoryString = getResources().getString(R.string.memory_location);
        this.MESSAGE_BACK_TAILGATE = 10;
        this.MESSAGE_BACK_BUTTON = 11;
        this.handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.widgets.TailgateOpenView.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == 10) {
                    int tailgateTravelPercent = CarDoorControl.getInstance().getTailgateTravelPercent();
                    if (TailgateOpenView.this.onTailGateStatusChangeListener != null) {
                        TailgateOpenView.this.onTailGateStatusChangeListener.onFinish(tailgateTravelPercent);
                        TailgateOpenView.this.onTailGateStatusChangeListener.isMoving(false);
                    }
                    TailgateOpenView.this.moveAngle = ((tailgateTravelPercent * TailgateOpenView.this.maxOpenAngle) / 100) + TailgateOpenView.this.startAngle;
                    TailgateOpenView.this.invalidate();
                } else if (message.what == 11) {
                    if (TailgateOpenView.this.onTailGateStatusChangeListener != null) {
                        TailgateOpenView.this.onTailGateStatusChangeListener.onUiBack();
                    }
                    TailgateOpenView.this.updateMemory();
                }
                return false;
            }
        });
        this.isPressed = false;
        this.isMoved = false;
    }

    public TailgateOpenView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "TailgateOpenView";
        this.startAngle = ICarParking.PAS_ERROR_FLAG_OF_EEPROM;
        this.endAngle = ICarDoor.HOOD_DOOR_STATE;
        this.maxOpenAngle = 65;
        this.bgSmallRadius = 80;
        this.memoryString = getResources().getString(R.string.memory_location);
        this.MESSAGE_BACK_TAILGATE = 10;
        this.MESSAGE_BACK_BUTTON = 11;
        this.handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.widgets.TailgateOpenView.3
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what == 10) {
                    int tailgateTravelPercent = CarDoorControl.getInstance().getTailgateTravelPercent();
                    if (TailgateOpenView.this.onTailGateStatusChangeListener != null) {
                        TailgateOpenView.this.onTailGateStatusChangeListener.onFinish(tailgateTravelPercent);
                        TailgateOpenView.this.onTailGateStatusChangeListener.isMoving(false);
                    }
                    TailgateOpenView.this.moveAngle = ((tailgateTravelPercent * TailgateOpenView.this.maxOpenAngle) / 100) + TailgateOpenView.this.startAngle;
                    TailgateOpenView.this.invalidate();
                } else if (message.what == 11) {
                    if (TailgateOpenView.this.onTailGateStatusChangeListener != null) {
                        TailgateOpenView.this.onTailGateStatusChangeListener.onUiBack();
                    }
                    TailgateOpenView.this.updateMemory();
                }
                return false;
            }
        });
        this.isPressed = false;
        this.isMoved = false;
        this.context = context;
        setClickable(true);
        this.bitmap = BitmapFactory.decodeResource(context.getResources(), R.mipmap.mycay_vecl_trunk);
        this.mThumbBitmap = BitmapFactory.decodeResource(context.getResources(), R.mipmap.mycay_vecl_trunk_btn_nor);
        this.mLocationBitmap = BitmapFactory.decodeResource(context.getResources(), R.mipmap.vecl_trunk_line_location);
        this.mThumbBitmapWidth = this.mThumbBitmap.getWidth();
        this.moveAngle = this.startAngle;
        initMemoryOpenAngle();
        initAnim();
        initPaint();
    }

    private void initMemoryOpenAngle() {
        this.memoryPercent = CarDoorControl.getInstance().getTailDoorPercent();
        this.memoryOpenAngle = (this.memoryPercent * this.maxOpenAngle) / 100;
        LogUtil.i("TailgateOpenView", "initMemoryOpenAngle  memoryOpenAngle = " + this.memoryOpenAngle + ", memoryPercent = " + this.memoryPercent);
        if (this.onTailGateStatusChangeListener != null) {
            this.onTailGateStatusChangeListener.onMemoryChange(this.memoryPercent);
        }
    }

    private void initAnim() {
        if (this.animator == null) {
            this.animator = new ValueAnimator();
            this.animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.yftech.yfmycar.view.widgets.TailgateOpenView.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    TailgateOpenView.this.moveAngle = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    TailgateOpenView.this.postInvalidate();
                }
            });
            this.animator.addListener(new Animator.AnimatorListener() { // from class: com.yftech.yfmycar.view.widgets.TailgateOpenView.2
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    LogUtil.e("TailgateOpenView", "onAnimationStart");
                    if (TailgateOpenView.this.onTailGateStatusChangeListener != null) {
                        TailgateOpenView.this.onTailGateStatusChangeListener.isMoving(true);
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    LogUtil.e("TailgateOpenView", "onAnimationEnd");
                    TailgateOpenView.this.setClickable(true);
                    if (TailgateOpenView.this.onTailGateStatusChangeListener != null) {
                        TailgateOpenView.this.onTailGateStatusChangeListener.onFinish(((TailgateOpenView.this.moveAngle - TailgateOpenView.this.startAngle) * 100) / TailgateOpenView.this.maxOpenAngle);
                    }
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator, boolean z) {
                    onAnimationStart(animator);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator, boolean z) {
                    onAnimationEnd(animator);
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    LogUtil.e("TailgateOpenView", "onAnimationCancel");
                }
            });
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.width = i;
        this.height = i2;
        this.mRadius = (this.height - (this.mThumbBitmapWidth / 2)) / 2;
        this.mThumbRadius = this.mThumbBitmapWidth / 2;
        this.margin = (this.mThumbRadius / 2) + 20;
        this.compareLen = Math.abs(this.width - this.height);
        this.mCy = this.height / 2;
        this.mCx = this.mCy + this.compareLen;
        this.startX = this.mCx + (this.mRadius * Math.cos(Math.toRadians(this.startAngle))) + this.mThumbRadius;
    }

    private void initPaint() {
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setStyle(Paint.Style.FILL);
        this.paintBg = new Paint();
        this.paintBg.setAntiAlias(true);
        this.paintBg.setStyle(Paint.Style.FILL);
        this.paintBg.setStrokeWidth(4.0f);
        this.paintStroke = new Paint();
        this.paintStroke.setAntiAlias(true);
        this.paintStroke.setStyle(Paint.Style.STROKE);
        this.paintStroke.setStrokeWidth(2.0f);
        this.paintStroke.setColor(this.context.getResources().getColor(R.color.color_BE8C18_100));
        this.paintBitmap = new Paint();
        this.paintBitmap.setAntiAlias(true);
        this.paintBitmap.setStyle(Paint.Style.FILL);
        this.memoryPaint = new Paint();
        this.memoryPaint.setTextSize(getResources().getDimension(R.dimen.sp_24));
        this.memoryPaint.setColor(ContextCompat.getColor(this.context, R.color.white_transparent90));
        this.twentyPercentAngle = this.maxOpenAngle / 5;
        this.tenPercentAngle = this.maxOpenAngle / 10;
    }

    @Override // android.view.View
    @SuppressLint({"DrawAllocation"})
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
        RectF rectF = new RectF(this.margin + this.compareLen, this.margin, this.width - this.margin, this.height - this.margin);
        RectF rectF2 = new RectF(this.bgSmallRadius + this.compareLen, this.bgSmallRadius, this.width - this.bgSmallRadius, this.height - this.bgSmallRadius);
        this.paintBg.setColor(this.context.getResources().getColor(R.color.color_ccddff_12));
        canvas.drawArc(rectF, this.startAngle, this.maxOpenAngle, true, this.paintBg);
        this.paintBg.setColor(this.context.getResources().getColor(R.color.color_ccddff_6));
        canvas.drawArc(rectF2, this.startAngle, this.maxOpenAngle, true, this.paintBg);
        if (this.memoryPercent >= 50 && this.memoryPercent < 100) {
            canvas.rotate((this.memoryOpenAngle - 180) + this.startAngle, this.mCx, this.mCy);
            canvas.drawBitmap(this.mLocationBitmap, this.mCx - this.mLocationBitmap.getWidth(), this.mCy - (this.mLocationBitmap.getHeight() / 2), this.paintBitmap);
            canvas.rotate(-r1, this.mCx, this.mCy);
        }
        this.paint.setColor(this.context.getResources().getColor(R.color.color_BE8C18_50));
        canvas.drawArc(rectF, this.startAngle, this.moveAngle - this.startAngle, true, this.paint);
        this.pointX = this.mCx + (this.mRadius * Math.cos(Math.toRadians(this.moveAngle)));
        this.pointY = this.mCy + (this.mRadius * Math.sin(Math.toRadians(this.moveAngle)));
        if (this.moveAngle - this.startAngle > 0) {
            canvas.drawArc(rectF, this.startAngle, this.moveAngle - this.startAngle, true, this.paintStroke);
        } else {
            if (!isPressed()) {
                this.paintBg.setColor(this.context.getResources().getColor(R.color.white_80));
            } else {
                this.paintBg.setColor(this.context.getResources().getColor(R.color.color_BE8C18_100));
            }
            this.paintBg.setStrokeWidth(2.0f);
            canvas.drawLine(this.mCx, this.mCy, (float) this.pointX, (float) this.pointY, this.paintBg);
        }
        canvas.drawBitmap(this.mThumbBitmap, (float) (this.pointX - (this.mThumbBitmapWidth / 2)), (float) (this.pointY - (this.mThumbBitmapWidth / 2)), this.paintBitmap);
    }

    public void updateMemory() {
        initMemoryOpenAngle();
        invalidate();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (isClickable()) {
            if (motionEvent.getAction() == 0) {
                int vehicleSpeed = CarInfoManager.get().getVehicleSpeed();
                LogUtil.i("TailgateOpenView", "获取车速信息  vehicleSpeed= " + vehicleSpeed);
                if (vehicleSpeed > 0) {
                    if (this.onTailGateStatusChangeListener != null) {
                        this.onTailGateStatusChangeListener.onTip(true);
                    }
                    return true;
                }
                ICarDoor.TailDoorState tailgateStatus = CarDoorControl.getInstance().getTailgateStatus();
                if (tailgateStatus == ICarDoor.TailDoorState.OPENING || tailgateStatus == ICarDoor.TailDoorState.CLOSING) {
                    LogUtil.i("TailgateOpenView", "OPENING or CLOSING, click TailDoor setTailDoorCmd(ICarDoor.TailDoorCmd.STOP) ");
                    CarDoorManager.get().setTailDoorCmd(ICarDoor.TailDoorCmd.STOP);
                    return true;
                }
            }
            switch (motionEvent.getAction()) {
                case 0:
                    LogUtil.e("TailgateOpenView", "MotionEvent.ACTION_DOWN");
                    this.handler.removeMessages(10);
                    this.mThumbBitmap = BitmapFactory.decodeResource(this.context.getResources(), R.mipmap.mycay_vecl_trunk_btn_pre);
                    this.mThumbBitmapWidth = this.mThumbBitmap.getWidth();
                    if (this.onTailGateStatusChangeListener != null) {
                        this.onTailGateStatusChangeListener.isMoving(true);
                    }
                    if (isClickPoint(motionEvent)) {
                        this.isPressed = true;
                        invalidate();
                        break;
                    }
                    break;
                case 1:
                    LogUtil.e("TailgateOpenView", "MotionEvent.ACTION_UP isPressed = " + this.isPressed);
                    if (this.isPressed) {
                        this.mThumbBitmap = BitmapFactory.decodeResource(this.context.getResources(), R.mipmap.mycay_vecl_trunk_btn_nor);
                        this.mThumbBitmapWidth = this.mThumbBitmap.getWidth();
                        initMemoryOpenAngle();
                        float f = this.moveAngle - this.startAngle;
                        LogUtil.e("TailgateOpenView", "openAngle = " + f);
                        if (f == 0.0f) {
                            int tailgateTravelPercent = CarDoorControl.getInstance().getTailgateTravelPercent();
                            if (tailgateTravelPercent > 20) {
                                this.moveAngle = this.startAngle;
                            } else {
                                this.moveAngle = this.startAngle + tailgateTravelPercent;
                                Toast.makeText(this.context, getResources().getString(R.string.open_position_small), 0).show();
                                this.isPressed = false;
                                this.isMoved = false;
                                invalidate();
                                break;
                            }
                        } else if (f < this.twentyPercentAngle) {
                            this.moveAngle = this.twentyPercentAngle + this.startAngle;
                        } else if (f >= this.memoryOpenAngle) {
                            this.moveAngle = this.memoryOpenAngle + this.startAngle;
                            int tailgateTravelPercent2 = CarDoorControl.getInstance().getTailgateTravelPercent();
                            if (this.isMoved && this.memoryPercent != 100 && Math.abs(tailgateTravelPercent2 - this.memoryPercent) < 2) {
                                Toast.makeText(this.context, getResources().getString(R.string.has_open_to_memory_position_keep_tip), 0).show();
                            }
                        } else {
                            int i = ((int) f) % this.twentyPercentAngle;
                            LogUtil.e("TailgateOpenView", "reminderAngle = " + i);
                            if (i < this.tenPercentAngle) {
                                this.moveAngle = Math.max(this.moveAngle - i, this.startAngle);
                            } else {
                                this.moveAngle = Math.min((this.moveAngle - i) + this.twentyPercentAngle, this.endAngle);
                            }
                        }
                        int i2 = ((this.moveAngle - this.startAngle) * 100) / this.maxOpenAngle;
                        if (i2 >= 50 && this.moveAngle >= this.memoryOpenAngle + this.startAngle) {
                            this.moveAngle = this.memoryOpenAngle + this.startAngle;
                            i2 = 100;
                        }
                        LogUtil.e("TailgateOpenView", "moveAngle = " + this.moveAngle + ">>>> percent = " + i2);
                        invalidate();
                        CarDoorControl.getInstance().controlTailgatePercent(i2);
                        this.handler.sendEmptyMessageDelayed(10, 3000L);
                    }
                    this.isPressed = false;
                    this.isMoved = false;
                    break;
                case 2:
                    if (this.isPressed) {
                        this.isMoved = true;
                        LogUtil.i("TailgateOpenView", "MotionEvent.ACTION_MOVE");
                        float x = motionEvent.getX();
                        float y = motionEvent.getY();
                        double d = x - this.pointX;
                        double d2 = y - this.pointY;
                        if (this.mThumbRadius * this.mThumbRadius > (d * d) + (d2 * d2)) {
                            if (y - this.mCy < 0.0f) {
                                this.moveAngle = (int) (((Math.atan2(this.mCx - x, y - this.mCy) * 180.0d) / 3.141592653589793d) + 90.0d);
                                if (this.memoryPercent > 50) {
                                    this.moveAngle = Math.min(this.moveAngle, this.startAngle + this.memoryOpenAngle);
                                } else {
                                    this.moveAngle = Math.min(this.moveAngle, this.endAngle);
                                }
                            } else if (y - this.mCy > 0.0f) {
                                this.moveAngle = (int) (((Math.atan2(this.mCy - y, this.mCx - x) * 180.0d) / 3.141592653589793d) + 180.0d);
                            } else {
                                this.moveAngle = ICarDrive.EPS_STYLE;
                            }
                            if (this.moveAngle < this.startAngle) {
                                this.moveAngle = this.startAngle;
                            }
                            if (this.moveAngle > this.endAngle) {
                                this.moveAngle = this.endAngle;
                            }
                            invalidate();
                            break;
                        }
                    }
                    break;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    private boolean isClickPoint(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        double d = x - this.pointX;
        double d2 = y - this.pointY;
        LogUtil.i("TailgateOpenView", "downX = " + x + " >> downY = " + y);
        return ((double) (this.mThumbRadius * this.mThumbRadius)) > (d * d) + (d2 * d2);
    }

    public void startAnim(boolean z) {
        ICarInfo.GearPosition gear = CarInfoControl.getInstance().getGear();
        LogUtil.e("TailgateOpenView", "startAnim ICarInfo.GearPosition = " + gear.name());
        if (gear != ICarInfo.GearPosition.PARKING) {
            if (this.onTailGateStatusChangeListener != null) {
                this.onTailGateStatusChangeListener.onTip(true);
                return;
            }
            return;
        }
        setClickable(false);
        initAnim();
        if (z) {
            this.animator.setFloatValues(this.moveAngle, this.endAngle);
        } else {
            this.animator.setFloatValues(this.moveAngle, this.startAngle);
        }
        this.animator.setDuration(900L);
        this.animator.start();
    }

    public void setMoveAngle(int i) {
        LogUtil.i("TailgateOpenView", "invalidate  setMoveAngle = " + i + " %");
        this.moveAngle = ((this.maxOpenAngle * i) / 100) + this.startAngle;
        if (this.onTailGateStatusChangeListener != null) {
            this.onTailGateStatusChangeListener.onFinish(i);
        }
        invalidate();
    }

    public boolean isNeedMove(ICarDoor.TailDoorState tailDoorState, int i) {
        LogUtil.i("TailgateOpenView", "isNeedMove start");
        if (this.onTailGateStatusChangeListener != null) {
            this.onTailGateStatusChangeListener.isMoving(tailDoorState == ICarDoor.TailDoorState.CLOSING || tailDoorState == ICarDoor.TailDoorState.OPENING);
        }
        if (this.handler.hasMessages(10)) {
            this.handler.removeMessages(10);
        }
        float f = ((i * this.maxOpenAngle) / 100.0f) + this.startAngle;
        if (tailDoorState == ICarDoor.TailDoorState.OPENING && f > this.moveAngle) {
            setMoveAngle(i);
            return true;
        }
        if (tailDoorState == ICarDoor.TailDoorState.CLOSING && f < this.moveAngle) {
            setMoveAngle(i);
            return true;
        }
        if (tailDoorState != ICarDoor.TailDoorState.CLOSING && tailDoorState != ICarDoor.TailDoorState.OPENING) {
            LogUtil.i("TailgateOpenView", "TailDoorState != CLOSING && != OPENING  ， TailDoor init 后背门停止运动后,tailgateTravelPercent = " + i);
            setMoveAngle(i);
        }
        LogUtil.i("TailgateOpenView", "isNeedMove end");
        return false;
    }

    public void startMoveAnim(boolean z, float f) {
        float max;
        ICarInfo.GearPosition gear = CarInfoControl.getInstance().getGear();
        LogUtil.e("TailgateOpenView", "startMoveAnim ICarInfo.GearPosition = " + gear.name());
        if (gear != ICarInfo.GearPosition.PARKING) {
            if (this.onTailGateStatusChangeListener != null) {
                this.onTailGateStatusChangeListener.onTip(true);
                return;
            }
            return;
        }
        setClickable(false);
        initAnim();
        if (z) {
            max = Math.min(this.moveAngle + f, this.endAngle);
        } else {
            max = Math.max(this.moveAngle - f, this.startAngle);
        }
        this.animator.setFloatValues(this.moveAngle, max);
        this.animator.setDuration(((int) Math.abs(this.moveAngle - max)) * 10);
        this.animator.start();
    }

    public void onUiBackMessageDelayed(boolean z) {
        if (this.handler == null) {
            return;
        }
        if (z) {
            this.handler.sendEmptyMessageDelayed(11, 3000L);
        } else {
            this.handler.removeMessages(11);
        }
    }

    public void setOnTailGateStatusChangeListener(OnTailGateStatusChangeListener onTailGateStatusChangeListener) {
        this.onTailGateStatusChangeListener = onTailGateStatusChangeListener;
    }
}
