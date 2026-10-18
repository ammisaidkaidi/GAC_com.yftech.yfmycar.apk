package com.yftech.yfmycar.view.manager;

import android.content.Context;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;
import com.yftech.yfmycar.view.utils.LogUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class ManagerUtil {
    static final String TAG = "ManagerUtil";

    public static void initAllManager(GlobalCarViewModel globalCarViewModel) {
        LogUtil.i(TAG, "initAllManager start");
        SeatsManager.getInstance().init();
        CarDoorControl.getInstance().init();
        CarMirrorControl.getInstance().init();
        CarInfoControl.getInstance().init(globalCarViewModel);
        MyCarWindowManager.getInstance().registerListener();
        LightManager.getInstance().init();
        LogUtil.i(TAG, "initAllManager end");
    }

    public static void unInitAllManager(Context context) {
        SeatsManager.getInstance().uninit();
        CarDoorControl.getInstance().unInit();
        CarMirrorControl.getInstance().unInit();
        CarInfoControl.getInstance().unInit();
        MyCarWindowManager.getInstance().unregisterListener();
        LightManager.getInstance().uninit();
    }
}
