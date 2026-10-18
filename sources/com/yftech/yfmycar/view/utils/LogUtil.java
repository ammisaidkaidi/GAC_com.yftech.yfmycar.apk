package com.yftech.yfmycar.view.utils;

import android.util.Log;

/* loaded from: /home/user/work/dex/classes.dex */
public class LogUtil {
    public static String TAG = "YF_MyCar";

    public static void setTag(String str) {
        TAG = str;
    }

    public static void i(String str, String str2) {
        Log.i(TAG + "_" + str, str2);
    }

    public static void d(String str, String str2) {
        Log.d(TAG + "_" + str, str2);
    }

    public static void w(String str, String str2) {
        Log.w(TAG + "_" + str, str2);
    }

    public static void e(String str, String str2) {
        Log.i(TAG + "_" + str, str2);
    }

    public static void v(String str, String str2) {
        Log.v(TAG + "_" + str, str2);
    }
}
