package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface CarMoto extends IBaseApi {
    public static final int MOTO_Engine_SPEED_INFO = 636;
    public static final int MOTO_FULLLIGHT_INFO = 637;
    public static final int MOTO_GEARS_LEVEL_INFO = 640;
    public static final int MOTO_GEARS_SATUS = 629;
    public static final int MOTO_HANDLEBAR_KEY_HEAT_INFO = 628;
    public static final int MOTO_IGNITION_STATUS = 641;
    public static final int MOTO_IGN_KEY_STATUS_INFO = 634;
    public static final int MOTO_KNOB_LEFT_RIGH_KEY_INFO = 633;
    public static final int MOTO_KNOB_LSTEP_NUM_KEY_INFO = 638;
    public static final int MOTO_KNOB_UP_DOWN_KEY_INFO = 632;
    public static final int MOTO_PREVIEW_MODE_KEY_INFO = 631;
    public static final int MOTO_RIGHT_MODE_KEY_INFO = 630;
    public static final int MOTO_SPEED_INFO = 635;
    public static final int MOTO_TURN_LIGHT_INFO = 627;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum Gears {
        N_GEAR(2),
        LEVEL_1(1),
        LEVEL_2(4),
        LEVEL_3(7),
        LEVEL_4(8),
        LEVEL_5(11),
        LEVEL_6(13),
        LEVEL_ERRO(15),
        __UNKNOWN__(-1);

        public final int value;

        Gears(int i) {
            this.value = i;
        }

        public static Gears valueOf(int i) {
            return i == N_GEAR.value ? N_GEAR : i == LEVEL_1.value ? LEVEL_1 : i == LEVEL_2.value ? LEVEL_2 : i == LEVEL_3.value ? LEVEL_3 : i == LEVEL_4.value ? LEVEL_4 : i == LEVEL_5.value ? LEVEL_5 : i == LEVEL_6.value ? LEVEL_6 : i == LEVEL_ERRO.value ? LEVEL_ERRO : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum TurnLightInfo {
        OFF(0),
        BLINK(3),
        LEFT_LIGHT(1),
        RIGHT_LIGHT(2),
        __UNKNOWN__(-1);

        public final int value;

        TurnLightInfo(int i) {
            this.value = i;
        }

        public static TurnLightInfo valueOf(int i) {
            return i == OFF.value ? OFF : i == BLINK.value ? BLINK : i == LEFT_LIGHT.value ? LEFT_LIGHT : i == RIGHT_LIGHT.value ? RIGHT_LIGHT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum RightModeKey {
        MODE1(1),
        MODE2(2),
        MODE3(3),
        __UNKNOWN__(-1);

        public final int value;

        RightModeKey(int i) {
            this.value = i;
        }

        public static RightModeKey valueOf(int i) {
            return i == MODE1.value ? MODE1 : i == MODE2.value ? MODE2 : i == MODE3.value ? MODE3 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum HandlebarKeyHeat {
        OFF(0),
        LEVEL_1(1),
        LEVEL_2(2),
        LEVEL_3(3),
        __UNKNOWN__(-1);

        public final int value;

        HandlebarKeyHeat(int i) {
            this.value = i;
        }

        public static HandlebarKeyHeat valueOf(int i) {
            return i == OFF.value ? OFF : i == LEVEL_1.value ? LEVEL_1 : i == LEVEL_2.value ? LEVEL_2 : i == LEVEL_3.value ? LEVEL_3 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum MOTOIGNStatus {
        OFF(1),
        ON(2),
        __UNKNOWN__(-1);

        public final int value;

        MOTOIGNStatus(int i) {
            this.value = i;
        }

        public static MOTOIGNStatus valueOf(int i) {
            return i == OFF.value ? OFF : i == ON.value ? ON : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum PreviewModeKey {
        ENTER(0),
        MODE1(1),
        MODE2(2),
        MODE3(3),
        __UNKNOWN__(-1);

        public final int value;

        PreviewModeKey(int i) {
            this.value = i;
        }

        public static PreviewModeKey valueOf(int i) {
            return i == ENTER.value ? ENTER : i == MODE1.value ? MODE1 : i == MODE2.value ? MODE2 : i == MODE3.value ? MODE3 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum KnobUpDownKey {
        RELEASE(0),
        GOUP_PRESS(1),
        GODOWN_PRESS(2),
        __UNKNOWN__(-1);

        public final int value;

        KnobUpDownKey(int i) {
            this.value = i;
        }

        public static KnobUpDownKey valueOf(int i) {
            return i == RELEASE.value ? RELEASE : i == GOUP_PRESS.value ? GOUP_PRESS : i == GODOWN_PRESS.value ? GODOWN_PRESS : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum KnobLeftRightKey {
        RELEASE(0),
        RIGHT_PRESS(1),
        LEFT_PRESS(2),
        __UNKNOWN__(-1);

        public final int value;

        KnobLeftRightKey(int i) {
            this.value = i;
        }

        public static KnobLeftRightKey valueOf(int i) {
            return i == RELEASE.value ? RELEASE : i == RIGHT_PRESS.value ? RIGHT_PRESS : i == LEFT_PRESS.value ? LEFT_PRESS : __UNKNOWN__;
        }
    }
}
