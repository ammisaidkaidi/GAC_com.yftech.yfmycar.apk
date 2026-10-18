package com.yftech.yfmycar.view.manager;

import android.util.Log;
import org.greenrobot.eventbus.EventBus;

/* loaded from: /home/user/work/dex/classes.dex */
public class EventBusCompat {
    public static void register(Object obj) {
        if (EventBus.getDefault().isRegistered(obj)) {
            return;
        }
        EventBus.getDefault().register(obj);
    }

    public static void unregister(Object obj) {
        if (EventBus.getDefault().isRegistered(obj)) {
            EventBus.getDefault().unregister(obj);
        }
    }

    public static void post(Object obj) {
        Log.i("Event::Post======", obj.getClass().getSimpleName());
        EventBus.getDefault().post(obj);
    }

    public static void postSticky(Object obj) {
        EventBus.getDefault().postSticky(obj);
    }

    public static void removeStickyEvent(Object obj) {
        EventBus.getDefault().removeStickyEvent(obj);
    }

    public static <T> T removeStickyEvent(Class<T> cls) {
        return (T) EventBus.getDefault().removeStickyEvent((Class) cls);
    }
}
