package com.yftech.yfmycar.view.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.yftech.vehicle.internal.adapter.ICarSeat;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.manager.SeatsManager;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class FontSeatPositionView extends FrameLayout implements View.OnClickListener, View.OnTouchListener {
    private final String TAG;
    private final Handler handler;
    private boolean isLeft;
    private final Context mContext;
    private final Runnable runnable;
    private AppCompatImageView seatWhole;
    private ICarSeat.SSWOperation sswOperation;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    public FontSeatPositionView(@NonNull Context context, boolean z) {
        super(context);
        this.TAG = "FontSeatPositionView";
        this.sswOperation = ICarSeat.SSWOperation.__UNKNOWN__;
        this.handler = new Handler();
        this.runnable = new Runnable() { // from class: com.yftech.yfmycar.view.widgets.FontSeatPositionView.1
            @Override // java.lang.Runnable
            public void run() {
                if (FontSeatPositionView.this.sswOperation != ICarSeat.SSWOperation.__UNKNOWN__) {
                    SeatsManager.getInstance().controlSeatAction(FontSeatPositionView.this.sswOperation);
                    FontSeatPositionView.this.handler.postDelayed(this, 40L);
                }
            }
        };
        this.isLeft = z;
        this.mContext = context;
        LayoutInflater.from(this.mContext).inflate(R.layout.font_seat_position_view, this);
        initSeatFront();
    }

    public FontSeatPositionView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "FontSeatPositionView";
        this.sswOperation = ICarSeat.SSWOperation.__UNKNOWN__;
        this.handler = new Handler();
        this.runnable = new Runnable() { // from class: com.yftech.yfmycar.view.widgets.FontSeatPositionView.1
            @Override // java.lang.Runnable
            public void run() {
                if (FontSeatPositionView.this.sswOperation != ICarSeat.SSWOperation.__UNKNOWN__) {
                    SeatsManager.getInstance().controlSeatAction(FontSeatPositionView.this.sswOperation);
                    FontSeatPositionView.this.handler.postDelayed(this, 40L);
                }
            }
        };
        this.mContext = context;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void initSeatFront() {
        this.seatWhole = (AppCompatImageView) findViewById(R.id.seat_adjust_bg_whole);
        AppCompatImageView appCompatImageView = (AppCompatImageView) findViewById(R.id.backrest_oblique_up);
        AppCompatImageView appCompatImageView2 = (AppCompatImageView) findViewById(R.id.backrest_oblique_down);
        appCompatImageView.setOnTouchListener(this);
        appCompatImageView2.setOnTouchListener(this);
        appCompatImageView.setOnClickListener(this);
        appCompatImageView2.setOnClickListener(this);
        AppCompatImageView appCompatImageView3 = (AppCompatImageView) findViewById(R.id.seat_position_move_up);
        AppCompatImageView appCompatImageView4 = (AppCompatImageView) findViewById(R.id.seat_position_move_down);
        AppCompatImageView appCompatImageView5 = (AppCompatImageView) findViewById(R.id.seat_position_move_left);
        AppCompatImageView appCompatImageView6 = (AppCompatImageView) findViewById(R.id.seat_position_move_right);
        appCompatImageView3.setOnTouchListener(this);
        appCompatImageView4.setOnTouchListener(this);
        appCompatImageView5.setOnTouchListener(this);
        appCompatImageView6.setOnTouchListener(this);
        appCompatImageView3.setOnClickListener(this);
        appCompatImageView4.setOnClickListener(this);
        appCompatImageView5.setOnClickListener(this);
        appCompatImageView6.setOnClickListener(this);
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"NonConstantResourceId", "ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.seatWhole.setImageResource(R.mipmap.vecl_pic_seat_nor_whole);
            LogUtil.i("FontSeatPositionView", "onTouch >> MotionEvent.ACTION_UP");
            this.handler.removeCallbacks(this.runnable);
            this.sswOperation = ICarSeat.SSWOperation.__UNKNOWN__;
            return false;
        }
        if (motionEvent.getAction() != 0) {
            return false;
        }
        int id = view.getId();
        switch (id) {
            case R.id.backrest_oblique_down /* 2131165215 */:
                this.seatWhole.setImageResource(R.mipmap.vecl_pic_seat_nor_whole_backrest_down);
                doControlSeatAction(ICarSeat.SSWOperation.BACKREST_BACKWARD);
                return false;
            case R.id.backrest_oblique_up /* 2131165216 */:
                this.seatWhole.setImageResource(R.mipmap.vecl_pic_seat_nor_whole_backrest_up);
                doControlSeatAction(ICarSeat.SSWOperation.BACKREST_FORWARD);
                return false;
            default:
                switch (id) {
                    case R.id.seat_position_move_down /* 2131165401 */:
                        this.seatWhole.setImageResource(R.mipmap.vecl_pic_seat_nor_whole_down);
                        doControlSeatAction(ICarSeat.SSWOperation.CUSHION_DOWN);
                        return false;
                    case R.id.seat_position_move_left /* 2131165402 */:
                        this.seatWhole.setImageResource(R.mipmap.vecl_pic_seat_nor_whole_font);
                        doControlSeatAction(ICarSeat.SSWOperation.SLIDE_FORWARD);
                        return false;
                    case R.id.seat_position_move_right /* 2131165403 */:
                        this.seatWhole.setImageResource(R.mipmap.vecl_pic_seat_nor_whole_back);
                        doControlSeatAction(ICarSeat.SSWOperation.SLIDE_BACKWARD);
                        return false;
                    case R.id.seat_position_move_up /* 2131165404 */:
                        this.seatWhole.setImageResource(R.mipmap.vecl_pic_seat_nor_whole_up);
                        doControlSeatAction(ICarSeat.SSWOperation.CUSHION_RISE);
                        return false;
                    default:
                        return false;
                }
        }
    }

    public void doControlSeatAction(ICarSeat.SSWOperation sSWOperation) {
        this.sswOperation = sSWOperation;
        this.handler.post(this.runnable);
    }
}
