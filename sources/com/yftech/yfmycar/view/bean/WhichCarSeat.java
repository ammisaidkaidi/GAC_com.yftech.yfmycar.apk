package com.yftech.yfmycar.view.bean;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.SOURCE)
/* loaded from: /home/user/work/dex/classes.dex */
public @interface WhichCarSeat {
    public static final int CAR_SEAT_ALL = 4;
    public static final int CAR_SEAT_FONT_LEFT = 0;
    public static final int CAR_SEAT_FONT_RIGHT = 1;
    public static final int CAR_SEAT_REAR_LEFT = 2;
    public static final int CAR_SEAT_REAR_RIGHT = 3;
}
