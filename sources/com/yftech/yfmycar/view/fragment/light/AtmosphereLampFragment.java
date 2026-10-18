package com.yftech.yfmycar.view.fragment.light;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.SeekBar;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.core.content.ContextCompat;
import com.yftech.vehicle.internal.adapter.ICarLight;
import com.yftech.vehicle.sdk.CarDriveManager;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.BaseFragment;
import com.yftech.yfmycar.view.bean.CarLightEvent;
import com.yftech.yfmycar.view.bean.DriveModeEvent;
import com.yftech.yfmycar.view.manager.CarConfigControl;
import com.yftech.yfmycar.view.manager.LightManager;
import com.yftech.yfmycar.view.utils.LogUtil;
import com.yftech.yfmycar.view.widgets.ColorfulBitmap;
import java.util.Objects;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* loaded from: /home/user/work/dex/classes.dex */
public class AtmosphereLampFragment extends BaseFragment {
    private AudioManager audioManager;
    private ColorfulBitmap imgLightSeat;
    private ViewGroup.LayoutParams maskLp;
    private AppCompatSeekBar seekBarBright;
    private AppCompatSeekBar seekBarColor;
    private AppCompatCheckBox swOpenClose;
    private AppCompatCheckBox swOpenFollowCar;
    private View viewMask;
    private final String TAG = "AtmosphereLampFragment";
    private final int MESSAGE_BACK = 6;
    private final Handler handler = new Handler(new Handler.Callback() { // from class: com.yftech.yfmycar.view.fragment.light.-$$Lambda$AtmosphereLampFragment$s8UKjnFPMcwwma8HeVmTvKB0o4s
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            return AtmosphereLampFragment.lambda$new$5(AtmosphereLampFragment.this, message);
        }
    });

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$onBindView$2(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 1;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_atmosphere_lamp);
    }

    public int getCarLampImg() {
        return CarConfigControl.isLeftHandDriveVehicles() ? CarConfigControl.isGACLogoPresent() ? R.mipmap.light_car : R.mipmap.light_car_no_logo : R.mipmap.light_car_right;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    @SuppressLint({"ClickableViewAccessibility"})
    public void onBindView(@Nullable Bundle bundle, View view) {
        this.viewMask = view.findViewById(R.id.view_mask);
        this.maskLp = this.viewMask.getLayoutParams();
        this.swOpenClose = (AppCompatCheckBox) view.findViewById(R.id.switcher_atmosphere_open);
        this.swOpenFollowCar = (AppCompatCheckBox) view.findViewById(R.id.switcher_atmosphere_follow_car);
        this.imgLightSeat = (ColorfulBitmap) view.findViewById(R.id.light_seat);
        ((AppCompatImageView) view.findViewById(R.id.img_light)).setImageResource(getCarLampImg());
        this.swOpenClose.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.fragment.light.-$$Lambda$AtmosphereLampFragment$4LVxa7SI0cvzk44aGuzTMllR4Po
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AtmosphereLampFragment.lambda$onBindView$0(AtmosphereLampFragment.this, view2);
            }
        });
        this.swOpenClose.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.yfmycar.view.fragment.light.-$$Lambda$AtmosphereLampFragment$hhAf8bAVkSEAI9eRQhtUue_-IpE
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                AtmosphereLampFragment.lambda$onBindView$1(AtmosphereLampFragment.this, compoundButton, z);
            }
        });
        this.viewMask.setOnTouchListener(new View.OnTouchListener() { // from class: com.yftech.yfmycar.view.fragment.light.-$$Lambda$AtmosphereLampFragment$GecKcuQ2L60uqvgbuzq-jOQOElw
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return AtmosphereLampFragment.lambda$onBindView$2(view2, motionEvent);
            }
        });
        this.swOpenFollowCar.setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.fragment.light.-$$Lambda$AtmosphereLampFragment$qDFbKSs36Iu5YhW3DBIMYH8ZwFI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                AtmosphereLampFragment.lambda$onBindView$3(AtmosphereLampFragment.this, view2);
            }
        });
        this.swOpenFollowCar.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.yftech.yfmycar.view.fragment.light.-$$Lambda$AtmosphereLampFragment$Or6PdBZUp5qu3CWF8_e_6ReowP4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                AtmosphereLampFragment.lambda$onBindView$4(AtmosphereLampFragment.this, compoundButton, z);
            }
        });
        this.audioManager = (AudioManager) requireContext().getSystemService("audio");
        this.seekBarBright = (AppCompatSeekBar) view.findViewById(R.id.seekbar_light);
        this.seekBarColor = (AppCompatSeekBar) view.findViewById(R.id.seekbar_color);
        this.seekBarBright.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.yftech.yfmycar.view.fragment.light.AtmosphereLampFragment.1
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                if (z && AtmosphereLampFragment.this.swOpenClose.isChecked()) {
                    AtmosphereLampFragment.this.handler.removeMessages(6);
                    int i2 = i + 1;
                    LogUtil.e("AtmosphereLampFragment", "氛围灯亮度onProgressChanged：" + i2);
                    LightManager.getInstance().setAtmosphereLampBrightness(i2);
                    AtmosphereLampFragment.this.handler.sendEmptyMessageDelayed(6, 3000L);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                seekBar.setThumb(ContextCompat.getDrawable(AtmosphereLampFragment.this.requireContext(), R.mipmap.slider_btn_nor_big));
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                seekBar.setThumb(ContextCompat.getDrawable(AtmosphereLampFragment.this.requireContext(), R.mipmap.slider_btn_nor));
                if (Settings.System.getInt(((Context) Objects.requireNonNull(AtmosphereLampFragment.this.getContext())).getContentResolver(), "sound_effects_enabled", 0) == 1) {
                    AtmosphereLampFragment.this.audioManager.playSoundEffect(0);
                }
            }
        });
        this.seekBarColor.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: com.yftech.yfmycar.view.fragment.light.AtmosphereLampFragment.2
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
                int i2 = i + 1;
                AtmosphereLampFragment.this.imgLightSeat.makeTintBitmap(i);
                if (z && AtmosphereLampFragment.this.swOpenClose.isChecked() && !AtmosphereLampFragment.this.swOpenFollowCar.isChecked()) {
                    AtmosphereLampFragment.this.handler.removeMessages(6);
                    LogUtil.e("AtmosphereLampFragment", "氛围灯颜色onProgressChanged：" + i2);
                    LightManager.getInstance().setAtmosphereLampColor(i2);
                    AtmosphereLampFragment.this.handler.sendEmptyMessageDelayed(6, 3000L);
                }
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                if (AtmosphereLampFragment.this.swOpenClose.isChecked() && AtmosphereLampFragment.this.swOpenFollowCar.isChecked()) {
                    AtmosphereLampFragment.this.showShortToast(AtmosphereLampFragment.this.getResources().getString(R.string.vecl_light_atmosphere_follow_car_tip));
                    return;
                }
                LightManager.getInstance().setAtmosphereLampMode(ICarLight.AtmosphereLampWorkMode.COLOR_CHOOSE_MODE);
                if (Settings.System.getInt(AtmosphereLampFragment.this.requireContext().getContentResolver(), "sound_effects_enabled", 0) == 1) {
                    AtmosphereLampFragment.this.audioManager.playSoundEffect(0);
                }
            }
        });
        initUi();
    }

    public static /* synthetic */ void lambda$onBindView$0(AtmosphereLampFragment atmosphereLampFragment, View view) {
        atmosphereLampFragment.handler.removeMessages(6);
        LightManager.getInstance().setAtmosphereLampStateEnabled(atmosphereLampFragment.swOpenClose.isChecked());
        atmosphereLampFragment.handler.sendEmptyMessageDelayed(6, 3000L);
    }

    public static /* synthetic */ void lambda$onBindView$1(AtmosphereLampFragment atmosphereLampFragment, CompoundButton compoundButton, boolean z) {
        atmosphereLampFragment.imgLightSeat.setVisibility(z ? 0 : 4);
        if (z) {
            atmosphereLampFragment.maskLp.height = atmosphereLampFragment.swOpenFollowCar.isChecked() ? (int) atmosphereLampFragment.getResources().getDimension(R.dimen.dp_250) : 1;
            atmosphereLampFragment.followCarColor(atmosphereLampFragment.swOpenFollowCar.isChecked());
        } else {
            atmosphereLampFragment.maskLp.height = (int) atmosphereLampFragment.getResources().getDimension(R.dimen.dp_450);
        }
        atmosphereLampFragment.viewMask.setLayoutParams(atmosphereLampFragment.maskLp);
    }

    public static /* synthetic */ void lambda$onBindView$3(AtmosphereLampFragment atmosphereLampFragment, View view) {
        atmosphereLampFragment.handler.removeMessages(6);
        LightManager.getInstance().setAtmosphereLampDriveModeEnabled(atmosphereLampFragment.swOpenFollowCar.isChecked());
        atmosphereLampFragment.handler.sendEmptyMessageDelayed(6, 3000L);
    }

    public static /* synthetic */ void lambda$onBindView$4(AtmosphereLampFragment atmosphereLampFragment, CompoundButton compoundButton, boolean z) {
        atmosphereLampFragment.maskLp.height = atmosphereLampFragment.swOpenFollowCar.isChecked() ? (int) atmosphereLampFragment.getResources().getDimension(R.dimen.dp_250) : 1;
        atmosphereLampFragment.viewMask.setLayoutParams(atmosphereLampFragment.maskLp);
        atmosphereLampFragment.followCarColor(z);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        if (z) {
            return;
        }
        initUi();
    }

    private void followCarColor(boolean z) {
        if (z) {
            switch (CarDriveManager.get().getDriveMode()) {
                case ECO_PRO_MODE:
                    this.seekBarColor.setProgress(31);
                    return;
                case COMFORT_MODE:
                    this.seekBarColor.setProgress(0);
                    return;
                case SPORT_MODE:
                    this.seekBarColor.setProgress(15);
                    return;
                case SPORT_PLUS_MODE:
                    this.seekBarColor.setProgress(14);
                    return;
                case AI_MODE:
                    this.seekBarColor.setProgress(22);
                    return;
                case INDIVIDUAL_MODE:
                    this.seekBarColor.setProgress(20);
                    return;
                default:
                    return;
            }
        }
        int atmosphereLampColor = LightManager.getInstance().getAtmosphereLampColor();
        if (atmosphereLampColor == this.seekBarColor.getProgress()) {
            this.imgLightSeat.makeTintBitmap(atmosphereLampColor);
        } else {
            this.seekBarColor.setProgress(atmosphereLampColor);
        }
    }

    public void initUi() {
        LogUtil.e("AtmosphereLampFragment", "氛围灯界面初始化：initUi");
        int atmosphereLampBrightness = LightManager.getInstance().getAtmosphereLampBrightness();
        if (atmosphereLampBrightness <= 8 && atmosphereLampBrightness > 0) {
            int i = atmosphereLampBrightness - 1;
            LogUtil.e("AtmosphereLampFragment", "initUi set LightBright = " + i);
            this.seekBarBright.setProgress(i);
        }
        ICarLight.AtmosphereLampWorkMode atmosphereLampWorkMode = LightManager.getInstance().getAtmosphereLampWorkMode();
        if (atmosphereLampWorkMode == ICarLight.AtmosphereLampWorkMode.OFF || atmosphereLampWorkMode == ICarLight.AtmosphereLampWorkMode.__UNKNOWN__) {
            this.swOpenClose.setChecked(false);
            return;
        }
        this.swOpenFollowCar.setChecked(atmosphereLampWorkMode == ICarLight.AtmosphereLampWorkMode.DRIVER_MODE);
        followCarColor(atmosphereLampWorkMode == ICarLight.AtmosphereLampWorkMode.DRIVER_MODE);
        this.maskLp.height = this.swOpenFollowCar.isChecked() ? (int) getResources().getDimension(R.dimen.dp_250) : 1;
        this.viewMask.setLayoutParams(this.maskLp);
        this.swOpenClose.setChecked(true);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(CarLightEvent carLightEvent) {
        this.handler.removeMessages(6);
        initUi();
    }

    public static /* synthetic */ boolean lambda$new$5(AtmosphereLampFragment atmosphereLampFragment, Message message) {
        if (!atmosphereLampFragment.isAdded() || message.what != 6) {
            return false;
        }
        atmosphereLampFragment.initUi();
        return false;
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void driveModeEvent(DriveModeEvent driveModeEvent) {
        if (this.swOpenClose == null || !this.swOpenClose.isChecked() || this.swOpenFollowCar == null || !this.swOpenFollowCar.isChecked()) {
            return;
        }
        followCarColor(true);
    }
}
