package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface CarDMS extends IBaseApi {
    public static final int DMS_DISTR_WARN_SATUS = 616;
    public static final int DMS_FATIG_WARN_SATUS = 615;
    public static final int DMS_MODE_SATUS = 614;
    public static final int DMS_MODE_SETTING = 613;
    public static final int DMS_SWITCH_SATUS = 612;
    public static final int DMS_SWITCH_SETTING = 611;
    public static final int DMS_SYS_WORK_SATUS = 610;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum DMSSysErrStatus {
        UNAVAILABLE(0),
        DRIVER_MONITOR_CAMERA_BLOCKED_BY_STEERINGWHEEL(1),
        DRIVER_MONITOR_CAMERA_BLOCKED(2),
        DMS_SYS_ERRO(3),
        FF_LOSE_TEMPLATES(4),
        IR_PROOF_SUNGLASS_DETECTED(5),
        __UNKNOWN__(-1);

        public final int value;

        DMSSysErrStatus(int i) {
            this.value = i;
        }

        public static DMSSysErrStatus valueOf(int i) {
            return i == UNAVAILABLE.value ? UNAVAILABLE : i == DRIVER_MONITOR_CAMERA_BLOCKED_BY_STEERINGWHEEL.value ? DRIVER_MONITOR_CAMERA_BLOCKED_BY_STEERINGWHEEL : i == DRIVER_MONITOR_CAMERA_BLOCKED.value ? DRIVER_MONITOR_CAMERA_BLOCKED : i == DMS_SYS_ERRO.value ? DMS_SYS_ERRO : i == FF_LOSE_TEMPLATES.value ? FF_LOSE_TEMPLATES : i == IR_PROOF_SUNGLASS_DETECTED.value ? IR_PROOF_SUNGLASS_DETECTED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum DMSSwitch {
        OFF(0),
        PASSIVE(1),
        ACTIVE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        DMSSwitch(int i) {
            this.value = i;
        }

        public static DMSSwitch valueOf(int i) {
            return i == OFF.value ? OFF : i == PASSIVE.value ? PASSIVE : i == ACTIVE.value ? ACTIVE : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum DMSMode {
        NO_COMMAND(-1, 0),
        FATIGUE(0, 1),
        DISTRACTION(1, 2),
        FATIGUE_AND_DISTRACTION(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        DMSMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static DMSMode valueOf(int i) {
            return i == NO_COMMAND.rx ? NO_COMMAND : i == FATIGUE.rx ? FATIGUE : i == DISTRACTION.rx ? DISTRACTION : i == FATIGUE_AND_DISTRACTION.rx ? FATIGUE_AND_DISTRACTION : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum DMSFatigWarn {
        UNAVAILABLE(0),
        UNKNOWN(1),
        ATTENTIVE(2),
        CAUTIONARY(3),
        SEVERE(4),
        MICROSLEEP(5),
        __UNKNOWN__(-1);

        public final int value;

        DMSFatigWarn(int i) {
            this.value = i;
        }

        public static DMSFatigWarn valueOf(int i) {
            return i == UNAVAILABLE.value ? UNAVAILABLE : i == UNKNOWN.value ? UNKNOWN : i == ATTENTIVE.value ? ATTENTIVE : i == CAUTIONARY.value ? CAUTIONARY : i == SEVERE.value ? SEVERE : i == MICROSLEEP.value ? MICROSLEEP : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum DMSDistrWarn {
        UNAVAILABLE(0),
        UNKNOWN(1),
        DISTRACTIVE(2),
        NO_DISTRACTIVE(3),
        SUSPECTED_DISTRACTIVE(4),
        __UNKNOWN__(-1);

        public final int value;

        DMSDistrWarn(int i) {
            this.value = i;
        }

        public static DMSDistrWarn valueOf(int i) {
            return i == UNAVAILABLE.value ? UNAVAILABLE : i == UNKNOWN.value ? UNKNOWN : i == DISTRACTIVE.value ? DISTRACTIVE : i == NO_DISTRACTIVE.value ? NO_DISTRACTIVE : i == SUSPECTED_DISTRACTIVE.value ? SUSPECTED_DISTRACTIVE : __UNKNOWN__;
        }
    }
}
