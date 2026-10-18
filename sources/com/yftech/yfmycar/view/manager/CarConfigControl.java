package com.yftech.yfmycar.view.manager;

import android.util.Log;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.sdk.CarConfig;
import com.yftech.yfmycar.view.bean.FragmentsIndex;
import com.yftech.yfmycar.view.utils.LogUtil;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public class CarConfigControl {
    private static final String TAG = "CarConfigManager";

    private CarConfigControl() {
    }

    public static boolean isArLanguage() {
        return Locale.getDefault().getLanguage().endsWith("ar");
    }

    public static boolean isGACLogoPresent() {
        boolean isGACLogoPresent = CarConfig.isGACLogoPresent();
        LogUtil.i(TAG, "isGACLogoPresent = " + isGACLogoPresent);
        return isGACLogoPresent;
    }

    public static boolean isCockpitConfigShow() {
        for (int i : new int[]{6, 7, 8, 9}) {
            if (getFragmentIndexConfig(i)) {
                return true;
            }
        }
        LogUtil.e(TAG, "isCockpitConfigShow : false");
        return false;
    }

    public static boolean isAllWindowOpenShow() {
        ICarConfig.WindowControl windowConfig = getWindowConfig();
        return windowConfig == ICarConfig.WindowControl.LEFT_FRONT_WINDOW || windowConfig == ICarConfig.WindowControl.LEFT_AND_RIGHT_FRONT_WINDOW || windowConfig == ICarConfig.WindowControl.FOUR_DOOR_WINDOWS;
    }

    public static boolean isAllWindowCloseShow() {
        return isAllWindowOpenShow() || CarConfig.isRoofControlPresent();
    }

    public static boolean isRoofControlPresent() {
        boolean isRoofControlPresent = CarConfig.isRoofControlPresent();
        LogUtil.e(TAG, "isRoofControlPresent ：" + isRoofControlPresent);
        return isRoofControlPresent;
    }

    public static boolean isPlgmfunccfgPresent() {
        boolean isPlgmfunccfgPresent = CarConfig.isPlgmfunccfgPresent();
        Log.i(TAG, "isPlgmfunccfgPresent : " + isPlgmfunccfgPresent);
        return isPlgmfunccfgPresent;
    }

    public static ICarConfig.WindowControl getWindowConfig() {
        ICarConfig.WindowControl windowControl = CarConfig.getWindowControl();
        LogUtil.e(TAG, "getWindowControl：" + windowControl.name() + windowControl.value);
        return windowControl;
    }

    public static boolean getWindowConfig(int i) {
        ICarConfig.WindowControl windowControl = CarConfig.getWindowControl();
        LogUtil.e(TAG, "getWindowControl：" + windowControl.name() + windowControl.value);
        return i == 0 ? isLeftHandDriveVehicles() ? windowControl != ICarConfig.WindowControl.NOT_PRESENT : windowControl == ICarConfig.WindowControl.FOUR_DOOR_WINDOWS || windowControl == ICarConfig.WindowControl.LEFT_AND_RIGHT_FRONT_WINDOW : i == 1 ? isLeftHandDriveVehicles() ? windowControl == ICarConfig.WindowControl.FOUR_DOOR_WINDOWS || windowControl == ICarConfig.WindowControl.LEFT_AND_RIGHT_FRONT_WINDOW : windowControl != ICarConfig.WindowControl.NOT_PRESENT : windowControl == ICarConfig.WindowControl.FOUR_DOOR_WINDOWS;
    }

    public static boolean isIalPresent() {
        boolean isIalPresent = CarConfig.isIalPresent();
        LogUtil.e(TAG, "isIalPresent：" + isIalPresent);
        return isIalPresent;
    }

    public static boolean isRearviewMirrorAdjustmentPresent() {
        boolean isRearviewMirrorAdjustmentPresent = CarConfig.isRearviewMirrorAdjustmentPresent();
        LogUtil.e(TAG, "isRearviewMirrorAdjustmentPresent：" + isRearviewMirrorAdjustmentPresent);
        return isRearviewMirrorAdjustmentPresent;
    }

    public static boolean isSeatVisible(int i) {
        if (i == 0) {
            return isLeftHandDriveVehicles() ? SeatsManager.getInstance().isSeatControlPresent() || SeatsManager.getInstance().getVentilationHeatConfig(0) > 0 : SeatsManager.getInstance().getVentilationHeatConfig(0) > 0;
        }
        if (i == 1) {
            return isLeftHandDriveVehicles() ? SeatsManager.getInstance().getVentilationHeatConfig(1) > 0 : SeatsManager.getInstance().isSeatControlPresent() || SeatsManager.getInstance().getVentilationHeatConfig(1) > 0;
        }
        return false;
    }

    public static boolean getLightShowConfig() {
        boolean isLightShowPresent = CarConfig.isLightShowPresent();
        LogUtil.e(TAG, "isLightShowPresent：" + isLightShowPresent);
        return isLightShowPresent;
    }

    public static boolean getAtmosphereLampConfig() {
        return getFragmentIndexConfig(1);
    }

    public static boolean isLeftHandDriveVehicles() {
        return CarConfig.getLeftRightHandDriveVehicles() == ICarConfig.LeftRightHandDriveVehicles.LEFT;
    }

    public static boolean isRightLeftSeatNameNeedReverse() {
        String language = Locale.getDefault().getLanguage();
        Log.i(TAG, "isRightLeftSeatNameNeedReverse: language:" + language);
        if ("en".equals(language)) {
            return true;
        }
        return isLeftHandDriveVehicles();
    }

    public static boolean isOpenCloseControlConfigShow() {
        boolean z = getFragmentIndexConfig(0) || getFragmentIndexConfig(2) || getFragmentIndexConfig(3) || getFragmentIndexConfig(10);
        LogUtil.e(TAG, "isOpenCloseControlConfigShow：" + z);
        return z;
    }

    public static boolean getFragmentIndexConfig(@FragmentsIndex int i) {
        switch (i) {
            case 0:
                return isRoofControlPresent();
            case 1:
                return isIalPresent();
            case 2:
                return getWindowConfig(0);
            case 3:
                return getWindowConfig(1);
            case 4:
                return getWindowConfig(2);
            case 5:
                return getWindowConfig(3);
            case 6:
                return isSeatVisible(0);
            case 7:
                return isSeatVisible(1);
            case 8:
            case 9:
                return isRearviewMirrorAdjustmentPresent();
            case 10:
                return isPlgmfunccfgPresent();
            default:
                return true;
        }
    }

    public static int getFragmentConfigVisible(@FragmentsIndex int i) {
        return getFragmentIndexConfig(i) ? 0 : 4;
    }
}
