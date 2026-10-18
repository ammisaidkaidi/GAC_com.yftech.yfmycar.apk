package com.yftech.yfmycar.view.utils;

import android.os.Handler;
import android.os.Looper;

/* loaded from: /home/user/work/dex/classes.dex */
public class UiHandler {
    private final Handler handler;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class SingletonHolder {
        private static final UiHandler instance = new UiHandler();

        private SingletonHolder() {
        }
    }

    private static UiHandler getInstance() {
        return SingletonHolder.instance;
    }

    private UiHandler() {
        this.handler = new Handler(Looper.getMainLooper());
    }

    public static Handler getUiHandler() {
        return getInstance().handler;
    }

    public static boolean isUIThread() {
        return Looper.myLooper() == Looper.getMainLooper();
    }

    public static void runOnUiThread(Runnable runnable) {
        if (isUIThread()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    public static void post(Runnable runnable) {
        getInstance().handler.post(runnable);
    }

    public static void postDelayed(Runnable runnable, long j) {
        getInstance().handler.postDelayed(runnable, j);
    }

    public static void removeCallbacks(Runnable runnable) {
        getInstance().handler.removeCallbacks(runnable);
    }
}
