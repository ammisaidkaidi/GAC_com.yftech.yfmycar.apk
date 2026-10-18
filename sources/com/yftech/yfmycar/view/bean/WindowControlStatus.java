package com.yftech.yfmycar.view.bean;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
/* loaded from: /home/user/work/dex/classes.dex */
public @interface WindowControlStatus {
    public static final int WINDOW_CHANGE_CLOSE = 14;
    public static final int WINDOW_CHANGE_OPEN = 13;
    public static final int WINDOW_STATUS_CLOSE = 3;
    public static final int WINDOW_STATUS_OPEN = 2;
    public static final int WINDOW_STATUS_STOP = 1;
    public static final int WINDOW_STATUS_UNKNOWN = -1;
}
