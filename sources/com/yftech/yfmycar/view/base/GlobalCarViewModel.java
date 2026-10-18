package com.yftech.yfmycar.view.base;

import androidx.lifecycle.ViewModel;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.vehicle.internal.adapter.ICarWindow;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.manager.CarConfigControl;
import com.yftech.yfmycar.view.manager.MyCarWindowManager;
import com.yftech.yfmycar.view.utils.LogUtil;
import com.yftech.yfmycar.view.vm.NonNullLiveData;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public class GlobalCarViewModel extends ViewModel {
    private final String TAG = "GlobalCarViewModel";
    public NonNullLiveData<Integer> topIndex = new NonNullLiveData<>(-1);
    public NonNullLiveData<Integer> openCloseControlIndex = new NonNullLiveData<>(0);
    public NonNullLiveData<Integer> cockpitIndex = new NonNullLiveData<>(6);
    public NonNullLiveData<Integer> lampIndex = new NonNullLiveData<>(1);
    public final NonNullLiveData<ICarInfo.PowerMode> powerMode = new NonNullLiveData<>(ICarInfo.PowerMode.OFF);
    public final NonNullLiveData<ICarInfo.GearPosition> vehicleGear = new NonNullLiveData<>(ICarInfo.GearPosition.__UNKNOWN__);
    public final NonNullLiveData<Integer> vehicleSpeed = new NonNullLiveData<>(0);
    int defaultIndex = -1;

    public boolean isArLanguage() {
        return Locale.getDefault().getLanguage().endsWith("ar");
    }

    public void setTopIndex(int i) {
        LogUtil.i("GlobalCarViewModel", "setTopIndex : " + i);
        this.topIndex.setValue(Integer.valueOf(i));
    }

    public void setOpenCloseControlIndex(int i) {
        LogUtil.i("GlobalCarViewModel", "setOpenCloseControlIndex : " + i);
        this.openCloseControlIndex.setValue(Integer.valueOf(i));
    }

    public void setCockpitIndex(int i) {
        LogUtil.i("GlobalCarViewModel", "setCockpitIndex : " + i);
        this.cockpitIndex.setValue(Integer.valueOf(i));
    }

    public void setLampIndex(int i) {
        LogUtil.i("GlobalCarViewModel", "setLampIndex : " + i);
        this.lampIndex.setValue(Integer.valueOf(i));
    }

    public void initCurrentIndex() {
        int[] iArr;
        int[] iArr2;
        int i = 0;
        if (CarConfigControl.isOpenCloseControlConfigShow()) {
            if (CarConfigControl.isLeftHandDriveVehicles()) {
                iArr2 = new int[]{0, 2, 3, 10};
            } else {
                iArr2 = new int[]{0, 3, 2, 10};
            }
            int length = iArr2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                int i3 = iArr2[i2];
                if (CarConfigControl.getFragmentIndexConfig(i3)) {
                    this.openCloseControlIndex.setValue(Integer.valueOf(i3));
                    this.defaultIndex = i3;
                    this.topIndex.setValue(0);
                    LogUtil.i("GlobalCarViewModel", "isOpenCloseControlConfigShow initCurrentIndex = " + this.defaultIndex);
                    break;
                }
                i2++;
            }
        }
        if (CarConfigControl.isCockpitConfigShow()) {
            if (CarConfigControl.isLeftHandDriveVehicles()) {
                iArr = new int[]{6, 7, 8};
            } else {
                iArr = new int[]{7, 6, 9};
            }
            int length2 = iArr.length;
            while (true) {
                if (i >= length2) {
                    break;
                }
                int i4 = iArr[i];
                if (CarConfigControl.getFragmentIndexConfig(i4)) {
                    this.cockpitIndex.setValue(Integer.valueOf(i4));
                    if (this.defaultIndex < 0) {
                        this.defaultIndex = i4;
                        this.topIndex.setValue(1);
                        LogUtil.i("GlobalCarViewModel", "isCockpitConfigShow initCurrentIndex = " + this.defaultIndex);
                    }
                } else {
                    i++;
                }
            }
        }
        if (CarConfigControl.getFragmentIndexConfig(1)) {
            this.lampIndex.setValue(1);
            if (this.defaultIndex < 0) {
                this.topIndex.setValue(2);
                this.defaultIndex = 1;
                LogUtil.i("GlobalCarViewModel", " initCurrentIndex = ATMOSPHERE_LAMP " + this.defaultIndex);
            }
        }
    }

    public void setCurrentIndex(int i) {
        switch (i) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
                this.openCloseControlIndex.setValue(Integer.valueOf(i));
                this.topIndex.setValue(0);
                return;
            case 1:
                this.lampIndex.setValue(Integer.valueOf(i));
                this.topIndex.setValue(2);
                return;
            case 6:
            case 7:
            case 8:
            case 9:
                this.cockpitIndex.setValue(Integer.valueOf(i));
                this.topIndex.setValue(1);
                return;
            default:
                return;
        }
    }

    public int getCarModelImg() {
        return CarConfigControl.isRoofControlPresent() ? R.mipmap.mycar_pic_model_car03 : R.mipmap.mycar_pic_model_car03_;
    }

    public int getCarCockpitlImg() {
        return CarConfigControl.isLeftHandDriveVehicles() ? CarConfigControl.isGACLogoPresent() ? R.mipmap.vecl_pic_model_car : R.mipmap.vecl_pic_model_car_no_logo : R.mipmap.vecl_pic_model_car_right;
    }

    public int getCarLampImg() {
        return CarConfigControl.isLeftHandDriveVehicles() ? CarConfigControl.isGACLogoPresent() ? R.mipmap.light_car : R.mipmap.light_car_no_logo : R.mipmap.light_car_right;
    }

    public void controlCarWindowAll(boolean z) {
        MyCarWindowManager.getInstance().controlCarWindowAll(z ? ICarWindow.WindowOpenPercent.FULLY_OPEN : ICarWindow.WindowOpenPercent.FULLY_CLOSE);
    }
}
