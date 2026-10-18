package com.yftech.yfmycar.view.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.internal.adapter.ICarSeat;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.manager.SeatsManager;
import com.yftech.yfmycar.view.utils.LogUtil;
import com.yftech.yfmycar.view.widgets.AngleLeftTouchRelativeLayout;

/* loaded from: /home/user/work/dex/classes.dex */
public class SeatVentilationHeatingView extends FrameLayout implements View.OnClickListener {
    public static final int COOL_HOT_LEVEL_CLOSE = -1;
    public static final int COOL_HOT_LEVEL_HIGH = 3;
    public static final int COOL_HOT_LEVEL_LOW = 1;
    public static final int COOL_HOT_LEVEL_MIDDLE = 2;
    private final int[] COOL_LEVEL_ANIM;
    private final int[] COOL_LEVEL_IMAGE;
    private final int[] COOL_LEVEL_ROUND;
    private final int[] HOT_LEVEL_ANIM;
    private final int[] HOT_LEVEL_IMAGE;
    private final int MESSAGE_BACK_UI;
    private final String TAG;
    private final int TYPE_AUTO;
    private final int TYPE_HEAT;
    private final int TYPE_OFF;
    private final int TYPE_VENT;
    private AngleLeftTouchRelativeLayout angleLeftTouchRelativeLayout;
    private final Handler handler;
    private AppCompatImageView imgCoolHot;
    private AppCompatImageView imgCoolHotLevel;
    private AppCompatImageView imgCoolHotLevelSeat;
    private AppCompatImageView imgCoolHotRound;
    private int mSeatSelectType;
    private int mSeatType;
    private int norLevelHeat;
    private int norLevelVent;
    private int norSeatImageResource;
    private int norSeatImageResourceCool;
    private int norSeatImageResourceHot;
    private RadioGroup radioGroupHeat;

    public String valueOfSeatName(int i) {
        switch (i) {
            case 0:
                return " | CAR_SEAT_FONT_LEFT | ";
            case 1:
                return " | CAR_SEAT_FONT_RIGHT | ";
            case 2:
                return " | CAR_SEAT_REAR_LEFT | ";
            case 3:
                return " | CAR_SEAT_REAR_RIGHT | ";
            case 4:
                return " | CAR_SEAT_ALL | ";
            default:
                return " | CAR_SEAT_UNKNOWN |";
        }
    }

    public void setSeatType(int i) {
        this.mSeatType = i;
    }

    public SeatVentilationHeatingView(@NonNull Context context) {
        super(context);
        this.TAG = "SeatVentilationHeatingView";
        this.mSeatSelectType = 0;
        this.TYPE_OFF = 0;
        this.TYPE_VENT = 1;
        this.TYPE_HEAT = 2;
        this.TYPE_AUTO = 3;
        this.MESSAGE_BACK_UI = 9;
        this.handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.widgets.SeatVentilationHeatingView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what != 9) {
                    return false;
                }
                SeatVentilationHeatingView.this.initSeatStatus();
                return false;
            }
        });
        this.norLevelVent = 3;
        this.norLevelHeat = 3;
        this.COOL_LEVEL_ROUND = new int[]{R.mipmap.ac_seat_pic_air_01, R.mipmap.ac_seat_pic_air_02left, R.mipmap.ac_seat_pic_air_03};
        this.COOL_LEVEL_IMAGE = new int[]{R.mipmap.ac_seat_pic_light_l_air01, R.mipmap.ac_seat_pic_light_l_air02, R.mipmap.ac_seat_pic_light_l_air03};
        this.COOL_LEVEL_ANIM = new int[]{R.anim.air_seat_cool_slow_anim, R.anim.air_seat_cool_normal_anim, R.anim.air_seat_cool_speed_anim};
        this.HOT_LEVEL_ANIM = new int[]{R.drawable.air_seat_heat01_anim, R.drawable.air_seat_heat02_anim, R.drawable.air_seat_heat03_anim};
        this.HOT_LEVEL_IMAGE = new int[]{R.mipmap.ac_seat_pic_light_l_hot01, R.mipmap.ac_seat_pic_light_l_hot02, R.mipmap.ac_seat_pic_light_l_hot03};
    }

    public void init(int i) {
        this.mSeatType = i;
        this.norSeatImageResource = R.mipmap.seat_small;
        this.norSeatImageResourceHot = R.mipmap.seat_warm;
        this.norSeatImageResourceCool = R.mipmap.seat_cold;
        LayoutInflater.from(getContext()).inflate(R.layout.layout_front_seat_heating, this);
        initUI();
    }

    public SeatVentilationHeatingView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.TAG = "SeatVentilationHeatingView";
        this.mSeatSelectType = 0;
        this.TYPE_OFF = 0;
        this.TYPE_VENT = 1;
        this.TYPE_HEAT = 2;
        this.TYPE_AUTO = 3;
        this.MESSAGE_BACK_UI = 9;
        this.handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.widgets.SeatVentilationHeatingView.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                if (message.what != 9) {
                    return false;
                }
                SeatVentilationHeatingView.this.initSeatStatus();
                return false;
            }
        });
        this.norLevelVent = 3;
        this.norLevelHeat = 3;
        this.COOL_LEVEL_ROUND = new int[]{R.mipmap.ac_seat_pic_air_01, R.mipmap.ac_seat_pic_air_02left, R.mipmap.ac_seat_pic_air_03};
        this.COOL_LEVEL_IMAGE = new int[]{R.mipmap.ac_seat_pic_light_l_air01, R.mipmap.ac_seat_pic_light_l_air02, R.mipmap.ac_seat_pic_light_l_air03};
        this.COOL_LEVEL_ANIM = new int[]{R.anim.air_seat_cool_slow_anim, R.anim.air_seat_cool_normal_anim, R.anim.air_seat_cool_speed_anim};
        this.HOT_LEVEL_ANIM = new int[]{R.drawable.air_seat_heat01_anim, R.drawable.air_seat_heat02_anim, R.drawable.air_seat_heat03_anim};
        this.HOT_LEVEL_IMAGE = new int[]{R.mipmap.ac_seat_pic_light_l_hot01, R.mipmap.ac_seat_pic_light_l_hot02, R.mipmap.ac_seat_pic_light_l_hot03};
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SeatVentilationHeatingView);
            this.mSeatType = obtainStyledAttributes.getInt(1, 0);
            this.norSeatImageResource = R.mipmap.seat_small;
            this.norSeatImageResourceHot = R.mipmap.seat_warm;
            this.norSeatImageResourceCool = R.mipmap.seat_cold;
            LayoutInflater.from(getContext()).inflate(R.layout.layout_front_seat_heating, this);
            initUI();
            obtainStyledAttributes.recycle();
        }
    }

    @SuppressLint({"NonConstantResourceId"})
    private void initUI() {
        this.angleLeftTouchRelativeLayout = (AngleLeftTouchRelativeLayout) findViewById(R.id.relative_touch);
        this.imgCoolHot = (AppCompatImageView) findViewById(R.id.cool_hot_img);
        this.imgCoolHotRound = (AppCompatImageView) findViewById(R.id.cool_hot_round);
        this.imgCoolHotLevel = (AppCompatImageView) findViewById(R.id.cool_hot_level);
        this.imgCoolHotLevelSeat = (AppCompatImageView) findViewById(R.id.cool_hot_level_seat);
        this.imgCoolHotLevelSeat.setBackgroundResource(this.norSeatImageResource);
        this.radioGroupHeat = (RadioGroup) findViewById(R.id.radio_group_heating);
        findViewById(R.id.cb_seat_ventilation_heating_close).setOnClickListener(this);
        RadioButton radioButton = (RadioButton) findViewById(R.id.cb_seat_ventilation);
        radioButton.setOnClickListener(this);
        RadioButton radioButton2 = (RadioButton) findViewById(R.id.cb_seat_heating);
        radioButton2.setOnClickListener(this);
        RadioButton radioButton3 = (RadioButton) findViewById(R.id.cb_seat_ventilation_heating_intelligence);
        radioButton3.setOnClickListener(this);
        int ventilationHeatConfig = SeatsManager.getInstance().getVentilationHeatConfig(this.mSeatType);
        this.radioGroupHeat.setVisibility(0);
        radioButton.setVisibility((ventilationHeatConfig == 1 || ventilationHeatConfig == 2) ? 0 : 8);
        radioButton2.setVisibility((ventilationHeatConfig == 1 || ventilationHeatConfig == 3) ? 0 : 8);
        radioButton3.setVisibility(CarConfig.getAirConditionType() != ICarConfig.AirConditionType.AUTO ? 8 : 0);
        this.radioGroupHeat.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.yftech.yfmycar.view.widgets.SeatVentilationHeatingView.2
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public void onCheckedChanged(RadioGroup radioGroup, int i) {
                switch (i) {
                    case R.id.cb_seat_heating /* 2131165223 */:
                        LogUtil.e("SeatVentilationHeatingView", "onCheckedChanged:heat加热" + SeatVentilationHeatingView.this.valueOfSeatName(SeatVentilationHeatingView.this.mSeatType));
                        SeatVentilationHeatingView.this.setCoolHotLevelUI(false, SeatVentilationHeatingView.this.norLevelHeat);
                        return;
                    case R.id.cb_seat_position_point /* 2131165224 */:
                    default:
                        return;
                    case R.id.cb_seat_ventilation /* 2131165225 */:
                        LogUtil.e("SeatVentilationHeatingView", "onCheckedChanged:vent通风" + SeatVentilationHeatingView.this.valueOfSeatName(SeatVentilationHeatingView.this.mSeatType));
                        SeatVentilationHeatingView.this.setCoolHotLevelUI(true, SeatVentilationHeatingView.this.norLevelVent);
                        return;
                    case R.id.cb_seat_ventilation_heating_close /* 2131165226 */:
                        LogUtil.e("SeatVentilationHeatingView", "onCheckedChanged:close关闭通风加热" + SeatVentilationHeatingView.this.valueOfSeatName(SeatVentilationHeatingView.this.mSeatType));
                        SeatVentilationHeatingView.this.setCoolHotLevelUI(false, -1);
                        return;
                    case R.id.cb_seat_ventilation_heating_intelligence /* 2131165227 */:
                        LogUtil.e("SeatVentilationHeatingView", "onCheckedChanged:auto智能" + SeatVentilationHeatingView.this.valueOfSeatName(SeatVentilationHeatingView.this.mSeatType));
                        return;
                }
            }
        });
        this.angleLeftTouchRelativeLayout.setOnClickListener(this);
        this.angleLeftTouchRelativeLayout.setOnSpecialTypeClickListener(new AngleLeftTouchRelativeLayout.OnSpecialTypeClickListener() { // from class: com.yftech.yfmycar.view.widgets.SeatVentilationHeatingView.3
            @Override // com.yftech.yfmycar.view.widgets.AngleLeftTouchRelativeLayout.OnSpecialTypeClickListener
            public void onSpecialTypeClick(int i) {
                int i2 = i + 1;
                LogUtil.e("SeatVentilationHeatingView", "点击风速度 level= " + i2 + SeatVentilationHeatingView.this.valueOfSeatName(SeatVentilationHeatingView.this.mSeatType));
                int checkedRadioButtonId = SeatVentilationHeatingView.this.radioGroupHeat.getCheckedRadioButtonId();
                if (checkedRadioButtonId == 2131165223) {
                    SeatVentilationHeatingView.this.norLevelHeat = i2;
                    SeatVentilationHeatingView.this.radioGroupHeat.check(R.id.cb_seat_heating);
                    SeatVentilationHeatingView.this.setHeatLevel(SeatVentilationHeatingView.this.norLevelHeat);
                    return;
                }
                if (checkedRadioButtonId == 2131165225) {
                    SeatVentilationHeatingView.this.norLevelVent = i2;
                    SeatVentilationHeatingView.this.radioGroupHeat.check(R.id.cb_seat_ventilation);
                    SeatVentilationHeatingView.this.setVentLevel(SeatVentilationHeatingView.this.norLevelVent);
                } else {
                    if (checkedRadioButtonId != 2131165227) {
                        return;
                    }
                    if (SeatVentilationHeatingView.this.imgCoolHotRound.getVisibility() == 0) {
                        SeatVentilationHeatingView.this.norLevelVent = i2;
                        SeatVentilationHeatingView.this.radioGroupHeat.check(R.id.cb_seat_ventilation);
                        SeatVentilationHeatingView.this.setVentLevel(SeatVentilationHeatingView.this.norLevelVent);
                    } else {
                        SeatVentilationHeatingView.this.norLevelHeat = i2;
                        SeatVentilationHeatingView.this.radioGroupHeat.check(R.id.cb_seat_heating);
                        SeatVentilationHeatingView.this.setHeatLevel(SeatVentilationHeatingView.this.norLevelHeat);
                    }
                }
            }
        });
        initSeatStatus();
    }

    @Override // android.view.View.OnClickListener
    @SuppressLint({"NonConstantResourceId"})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.cb_seat_heating /* 2131165223 */:
                if (this.mSeatSelectType == 2) {
                    return;
                }
                this.handler.removeMessages(9);
                this.norLevelVent = 3;
                this.mSeatSelectType = 2;
                setHeatLevel(this.norLevelHeat);
                this.handler.sendEmptyMessageDelayed(9, 3000L);
                return;
            case R.id.cb_seat_position_point /* 2131165224 */:
            default:
                return;
            case R.id.cb_seat_ventilation /* 2131165225 */:
                if (this.mSeatSelectType == 1) {
                    return;
                }
                this.handler.removeMessages(9);
                this.norLevelHeat = 3;
                this.mSeatSelectType = 1;
                setVentLevel(this.norLevelVent);
                this.handler.sendEmptyMessageDelayed(9, 3000L);
                return;
            case R.id.cb_seat_ventilation_heating_close /* 2131165226 */:
                if (this.mSeatSelectType == 0) {
                    return;
                }
                this.handler.removeMessages(9);
                this.norLevelHeat = 3;
                this.norLevelVent = 3;
                this.mSeatSelectType = 0;
                setHeatVentOff();
                this.handler.sendEmptyMessageDelayed(9, 3000L);
                return;
            case R.id.cb_seat_ventilation_heating_intelligence /* 2131165227 */:
                if (this.mSeatSelectType == 3) {
                    Log.e("SeatVentilationHeatingView", "click auto ,and mSeatSelectType  = TYPE_AUTO");
                    return;
                }
                setCoolHotLevelUI(false, -1);
                this.handler.removeMessages(9);
                this.norLevelHeat = 3;
                this.norLevelVent = 3;
                this.mSeatSelectType = 3;
                Log.e("SeatVentilationHeatingView", "click auto,设置智能 >> whichSeat = " + valueOfSeatName(this.mSeatType));
                SeatsManager.getInstance().setHeatVentAutoModeEnabled(this.mSeatType, true);
                this.handler.sendEmptyMessageDelayed(9, 3000L);
                int ventilationHeatConfig = SeatsManager.getInstance().getVentilationHeatConfig(this.mSeatType);
                String string = getContext().getString(R.string.ventilate_heat_vent_smart_tip);
                switch (ventilationHeatConfig) {
                    case 1:
                        string = getContext().getString(R.string.ventilate_heat_vent_smart_tip);
                        break;
                    case 2:
                        string = getContext().getString(R.string.ventilate_vent_smart_tip);
                        break;
                    case 3:
                        string = getContext().getString(R.string.ventilate_heat_smart_tip);
                        break;
                }
                Toast.makeText(getContext(), string, 0).show();
                return;
        }
    }

    public void setCoolHotLevelUI(boolean z, int i) {
        int i2 = i - 1;
        if (i > 0) {
            this.imgCoolHotLevel.setImageResource(z ? this.COOL_LEVEL_IMAGE[i2] : this.HOT_LEVEL_IMAGE[i2]);
        }
        if (i == -1) {
            this.angleLeftTouchRelativeLayout.setVisibility(4);
            this.imgCoolHotLevelSeat.setImageResource(this.norSeatImageResource);
            return;
        }
        this.angleLeftTouchRelativeLayout.setVisibility(0);
        if (z) {
            this.imgCoolHotLevelSeat.setImageResource(this.norSeatImageResourceCool);
            this.imgCoolHotRound.setVisibility(0);
            this.imgCoolHotRound.setImageResource(this.COOL_LEVEL_ROUND[i2]);
            this.imgCoolHot.setVisibility(0);
            this.imgCoolHot.setBackgroundResource(R.mipmap.ac_seat_pic_air_00);
            Animation loadAnimation = AnimationUtils.loadAnimation(getContext(), this.COOL_LEVEL_ANIM[i2]);
            loadAnimation.setInterpolator(new LinearInterpolator());
            this.imgCoolHot.startAnimation(loadAnimation);
            return;
        }
        this.imgCoolHotLevelSeat.setImageResource(this.norSeatImageResourceHot);
        this.imgCoolHotRound.setVisibility(4);
        this.imgCoolHot.setAnimation(null);
        if (i == -1) {
            this.imgCoolHot.setVisibility(4);
            return;
        }
        this.imgCoolHot.setVisibility(0);
        this.imgCoolHot.setBackgroundResource(this.HOT_LEVEL_ANIM[i2]);
        ((AnimationDrawable) this.imgCoolHot.getBackground()).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setVentLevel(int i) {
        LogUtil.e("SeatVentilationHeatingView", "setVentLevel通风：" + i + valueOfSeatName(this.mSeatType));
        SeatsManager.getInstance().setHeatVentMode(this.mSeatType, ICarSeat.HeatVentMode.VENT_MODE);
        SeatsManager.getInstance().setVentLevel(this.mSeatType, getVentLevelByValue(i));
        this.imgCoolHotLevel.setImageResource(this.COOL_LEVEL_IMAGE[i + (-1)]);
        this.angleLeftTouchRelativeLayout.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setHeatLevel(int i) {
        LogUtil.e("SeatVentilationHeatingView", "setHeatLevel加热:" + i + valueOfSeatName(this.mSeatType));
        SeatsManager.getInstance().setHeatVentMode(this.mSeatType, ICarSeat.HeatVentMode.HEAT_MODE);
        SeatsManager.getInstance().setHeatLevel(this.mSeatType, getHeatLevelByValue(i));
        this.imgCoolHotLevel.setImageResource(this.HOT_LEVEL_IMAGE[i + (-1)]);
        this.angleLeftTouchRelativeLayout.setVisibility(0);
    }

    private void setHeatVentOff() {
        LogUtil.e("SeatVentilationHeatingView", "setHeatVentOff" + valueOfSeatName(this.mSeatType));
        this.angleLeftTouchRelativeLayout.setVisibility(4);
        if (SeatsManager.getInstance().isHeatVentAutoModeEnabled(this.mSeatType)) {
            SeatsManager.getInstance().setHeatVentAutoModeEnabled(this.mSeatType, false);
        } else {
            SeatsManager.getInstance().setHeatVentOff(this.mSeatType);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initSeatStatus() {
        LogUtil.e("SeatVentilationHeatingView", "initSeatStatus start !! whichSeat =  " + valueOfSeatName(this.mSeatType));
        int heatLevel = SeatsManager.getInstance().getHeatLevel(this.mSeatType);
        int ventLevel = SeatsManager.getInstance().getVentLevel(this.mSeatType);
        if (heatLevel == ICarSeat.HeatLevel.__UNKNOWN__.value || ventLevel == ICarSeat.VentLevel.__UNKNOWN__.value) {
            return;
        }
        boolean z = heatLevel == ICarSeat.HeatLevel.ERROR.value;
        boolean z2 = ventLevel == ICarSeat.VentLevel.ERROR.value;
        if (this.radioGroupHeat.getCheckedRadioButtonId() == 2131165223 && z) {
            return;
        }
        if (this.radioGroupHeat.getCheckedRadioButtonId() == 2131165225 && z2) {
            return;
        }
        this.radioGroupHeat.clearCheck();
        if (SeatsManager.getInstance().isHeatVentAutoModeEnabled(this.mSeatType)) {
            this.mSeatSelectType = 3;
            LogUtil.e("SeatVentilationHeatingView", "initSeatStatus: TYPE_AUTO 智能模式 ");
            this.radioGroupHeat.check(R.id.cb_seat_ventilation_heating_intelligence);
            if (SeatsManager.getInstance().isHeatLevelEnable(heatLevel)) {
                setCoolHotLevelUI(false, heatLevel);
            } else if (SeatsManager.getInstance().isVentLevelEnable(ventLevel)) {
                setCoolHotLevelUI(true, ventLevel);
            } else {
                setCoolHotLevelUI(false, -1);
            }
        } else if (SeatsManager.getInstance().isHeatLevelEnable(heatLevel)) {
            this.mSeatSelectType = 2;
            this.norLevelHeat = heatLevel;
            LogUtil.e("SeatVentilationHeatingView", "initSeatStatus: TYPE_HEAT 加热模式 heatLevel = " + heatLevel);
            this.radioGroupHeat.check(R.id.cb_seat_heating);
        } else if (SeatsManager.getInstance().isVentLevelEnable(ventLevel)) {
            this.mSeatSelectType = 1;
            this.norLevelVent = ventLevel;
            LogUtil.e("SeatVentilationHeatingView", "initSeatStatus: TYPE_VENT 通风模式 ventLevel = " + ventLevel);
            this.radioGroupHeat.check(R.id.cb_seat_ventilation);
        } else {
            LogUtil.e("SeatVentilationHeatingView", "initSeatStatus: TYPE_OFF 关闭加热通风");
            this.mSeatSelectType = 0;
            this.radioGroupHeat.check(R.id.cb_seat_ventilation_heating_close);
        }
        LogUtil.e("SeatVentilationHeatingView", "initSeatStatus end !!! whichSeat =  " + valueOfSeatName(this.mSeatType));
    }

    public void onAirSeatEvent(int i) {
        if (this.mSeatType == i) {
            this.handler.removeMessages(9);
            LogUtil.e("SeatVentilationHeatingView", "onAirSeatEvent ，WhichCarSeat = " + valueOfSeatName(i));
            initSeatStatus();
        }
    }

    public void onAirSeat(int i) {
        if (this.mSeatType == i) {
            LogUtil.e("SeatVentilationHeatingView", "收到电源变化，通风加热 变成OFF状态 ，WhichCarSeat = " + valueOfSeatName(i));
            this.mSeatSelectType = 0;
            this.handler.removeMessages(9);
            this.radioGroupHeat.clearCheck();
            this.radioGroupHeat.check(R.id.cb_seat_ventilation_heating_close);
        }
    }

    private ICarSeat.HeatLevel getHeatLevelByValue(int i) {
        if (i == ICarSeat.HeatLevel.LEVEL_1.value) {
            return ICarSeat.HeatLevel.LEVEL_1;
        }
        if (i == ICarSeat.HeatLevel.LEVEL_2.value) {
            return ICarSeat.HeatLevel.LEVEL_2;
        }
        if (i == ICarSeat.HeatLevel.LEVEL_3.value) {
            return ICarSeat.HeatLevel.LEVEL_3;
        }
        return ICarSeat.HeatLevel.LEVEL_1;
    }

    private ICarSeat.VentLevel getVentLevelByValue(int i) {
        if (i == ICarSeat.VentLevel.LEVEL_1.value) {
            return ICarSeat.VentLevel.LEVEL_1;
        }
        if (i == ICarSeat.VentLevel.LEVEL_2.value) {
            return ICarSeat.VentLevel.LEVEL_2;
        }
        if (i == ICarSeat.VentLevel.LEVEL_3.value) {
            return ICarSeat.VentLevel.LEVEL_3;
        }
        return ICarSeat.VentLevel.LEVEL_1;
    }
}
