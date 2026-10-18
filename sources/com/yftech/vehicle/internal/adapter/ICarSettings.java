package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ICarSettings extends IBaseApi {
    public static final int AC_SMART_SETTING = 417;
    public static final int AC_SMART_STATE = 416;
    public static final int ADASELK_SETTING = 527;
    public static final int ADASELK_STATE = 526;
    public static final int ADAS_RAEB_SETTING = 617;
    public static final int ADAS_RAEB_STATUS = 618;
    public static final int ADAS_WARN_TYPE = 108;
    public static final int ADAS_WARN_TYPE_SETTING = 41;
    public static final int AEB_FAULT_STATE = 650;
    public static final int AEB_OFF_SETTING = 36;
    public static final int AEB_OFF_STATE = 103;
    public static final int AUTO_WIPER_SETTING = 45;
    public static final int AUTO_WIPER_STATE = 112;
    public static final int AVAS_SETTING = 42;
    public static final int AVAS_STATE = 109;
    public static final int BSDMDOWCTL_SETTING = 455;
    public static final int BSDMDOWSTATE_STATE = 454;
    public static final int BSDMLCACTL_SETTING = 453;
    public static final int BSDMLCA_STATE = 452;
    public static final int BSDMRCTA_ASSIST_TYPE_SETTING = 459;
    public static final int BSDMRCTA_ASSIST_TYPE_STATE = 458;
    public static final int BSDMRCTA_CTL_SETTING = 457;
    public static final int BSDMRCTA_STATE = 456;
    public static final int BSDMRCWCTL_SETTING = 461;
    public static final int BSDMRCWSTATE_STATE = 460;
    public static final int COMFORT_PARK_SETTING = 418;
    public static final int COMFORT_PARK_STATE = 414;
    public static final int CRUISE_ASSIST_MODE = 271;
    public static final int CRUISE_ASSIST_MODE_SETTING = 272;
    public static final int DOOR_HANDLE_ELECTRIC_HIDE_SETTING = 424;
    public static final int DOOR_HANDLE_ELECTRIC_HIDE_STATE = 423;
    public static final int DRAG_MODE_SETTING = 333;
    public static final int DRAG_MODE_STATE = 332;
    public static final int DRIVER_EASY_ENTRY_EXIT_SETTING = 447;
    public static final int DRIVER_EASY_ENTRY_EXIT_STATE = 446;
    public static final int ENG_WAVE_SWITCH_SETTING = 529;
    public static final int ENG_WAVE_SWITCH_STATE = 528;
    public static final int EPB_SYSTEM_MSG_STATE = 334;
    public static final int EPB_SYSTEM_SET_STATE_SETTING = 331;
    public static final int EPB_SYSTEM_STATE = 330;
    public static final int ETC_SETTING = 43;
    public static final int ETC_STATE = 110;
    public static final int EXHIBITION_HALL_MODE_ENABLE = 725;
    public static final int EXHIBITION_HALL_MODE_SETTING = 723;
    public static final int EXHIBITION_HALL_MODE_STATUS = 724;
    public static final int FCTA_CONFIG_SETTING = 599;
    public static final int FCTA_CONFIG_STATUS = 598;
    public static final int FCTA_SWITCH_SETTING = 597;
    public static final int FCTA_SWITCH_STATUS = 596;
    public static final int FCW_FAULT_STATE = 649;
    public static final int FCW_OFF_SETTING = 34;
    public static final int FCW_OFF_STATE = 101;
    public static final int FCW_SWITCH_ENABLE_STATE = 706;
    public static final int FCW_WARNING_DISTANCE = 102;
    public static final int FCW_WARNING_DISTANCE_SETTING = 35;
    public static final int FRONT_CAR_DISTANCE_DISPLAY = 267;
    public static final int FRONT_CAR_DISTANCE_DISPLAY_SETTING = 268;
    public static final int FRONT_WIPER_AUTO_CONFIG_SETTING = 716;
    public static final int FRONT_WIPER_AUTO_CONFIG_STATUS = 717;
    public static final int FRONT_WIPER_INT_CONFIG_SETTING = 714;
    public static final int FRONT_WIPER_INT_CONFIG_STATUS = 715;
    public static final int FRONT_WIPER_MODE_SETTING = 580;
    public static final int FRONT_WIPER_MODE_STATE = 581;
    public static final int FRONT_WIPER_SERVICE_POSITION_SETTING = 44;
    public static final int FRONT_WIPER_SERVICE_POSITION_STATE = 111;
    public static final int FRONT_WIPER_WASHER_SETTING = 584;
    public static final int FRONT_WIPER_WASHER_STATE = 585;
    public static final int HUDBRIGHTNESSST_SETTING = 465;
    public static final int HUDBRIGHTNESSST_STATE = 464;
    public static final int HUDHEIGHTST_SETTING = 467;
    public static final int HUDHEIGHTST_STATE = 466;
    public static final int HUDOFF_SETTING = 463;
    public static final int HUDOFF_STATE = 462;
    public static final int HUD_ADAS_CRUISE_DIS_SHOW_SETTING = 600;
    public static final int HUD_ADAS_CRUISE_DIS_SHOW_STATUS = 601;
    public static final int HUD_ADAS_TSR_DIS_SHOW_SETTING = 602;
    public static final int HUD_ADAS_TSR_DIS_SHOW_STATUS = 603;
    public static final int HUD_ANGLEST_SETTING = 469;
    public static final int HUD_ANGLEST_STATE = 468;
    public static final int HUD_MODE_SETTING = 471;
    public static final int HUD_MODE_STATE = 470;
    public static final int HUD_NAV_DIS_SHOW_SETTING = 604;
    public static final int HUD_NAV__DIS_SHOW_STATUS = 605;
    public static final int IACC_SETTING = 39;
    public static final int IACC_STATE = 106;
    public static final int ILC_HWA_SWITCH_SETTING = 595;
    public static final int ILC_HWA_SWITCH_STATUS = 594;
    public static final int IMRCTRL_ERRO_STATUS = 622;
    public static final int IMRCTRL_SETTING = 621;
    public static final int IMRCTRL_SETTING_A60 = 625;
    public static final int IMRCTRL_STATUS = 620;
    public static final int INTELLIGENT_AVOID = 269;
    public static final int INTELLIGENT_AVOID_SETTING = 270;
    public static final int KEY_NOT_FORGET_WARNING = 362;
    public static final int KEY_NOT_FORGET_WARNING_SETTING = 363;
    public static final int LDW_LKA_SETTING = 32;
    public static final int LKS_MODE = 100;
    public static final int LKS_MODE_SETTING = 33;
    public static final int LKS_STATE = 99;
    public static final int OSRMR_ANGLE_HORIZONTAL_FL = 429;
    public static final int OSRMR_ANGLE_HORIZONTAL_FR = 431;
    public static final int OSRMR_ANGLE_VERTICAL_FL = 428;
    public static final int OSRMR_ANGLE_VERTICAL_FR = 430;
    public static final int OSRM_ANGLE_CMD_SETTING = 426;
    public static final int OSRM_ANGLE_CMD_STATE = 425;
    public static final int OSRM_ANGLE_SAVE_CMD_SETTING = 427;
    public static final int OSRM_AUTO_FOLD_SETTING = 40;
    public static final int OSRM_AUTO_FOLD_STATE = 107;
    public static final int PARK_AUTO_UNLOCK_SETTING = 337;
    public static final int PARK_AUTO_UNLOCK_STATE = 336;
    public static final int PEPS_WARN_FORCE_POWER_OFF_STATUS = 639;
    public static final int POWER_KEEP_REMIND_CONF = 375;
    public static final int POWER_KEEP_REMIND_CONF_SETTING = 376;
    public static final int POWER_KEEP_REMIND_STATE = 374;
    public static final int POWER_KEEP_REQVD_SETTING = 373;
    public static final int POWER_KEEP_REQVD_STATE = 372;
    public static final int POWER_KEEP_SETTING = 371;
    public static final int POWER_KEEP_STATE = 370;
    public static final int POWER_OFF_REQ_SETTING = 379;
    public static final int POWER_OFF_REQ_VD_SETTING = 378;
    public static final int POWER_OFF_REQ_VD_STATE = 377;
    public static final int RAINSTORM_MODE = 113;
    public static final int RAINSTORM_MODE_SETTING = 46;
    public static final int REARVIEW_MIRROR_CMD = 251;
    public static final int REARVIEW_MIRROR_CMD_REVERSE_SETTING = 311;
    public static final int REARVIEW_MIRROR_CMD_REVERSE_STATE = 310;
    public static final int REARVIEW_MIRROR_CMD_VD = 309;
    public static final int REARVIEW_MIRROR_SETTING_CMD_SETTING = 312;
    public static final int REARVIEW_MIRROR_STATE_L = 252;
    public static final int REARVIEW_MIRROR_STATE_R = 253;
    public static final int REAR_WIPER_MODE_SETTING = 582;
    public static final int REAR_WIPER_MODE_STATE = 583;
    public static final int REAR_WIPER_WASHER_SETTING = 586;
    public static final int REAR_WIPER_WASHER_STATE = 587;
    public static final int RLSEATWELCOME = 540;
    public static final int RLSEATWELCOME_SETTING = 541;
    public static final int RL_SPA_BUTTON_STATE = 559;
    public static final int RRSEATWELCOME = 538;
    public static final int RRSEATWELCOME_SETTING = 539;
    public static final int RR_SPA_BUTTON_STATE = 560;
    public static final int SCM_NAP_MODE_SEAT_STATE = 576;
    public static final int SCM_NAP_SETTING = 561;
    public static final int SCM_NAP_SETTING_SAVE = 562;
    public static final int SCM_NAP_SETTING_SAVE_STATE = 563;
    public static final int SCM_REAR_NAP_SETTING = 579;
    public static final int SCM_RL_SPA_MODE_SEAT_STATE = 577;
    public static final int SCM_RR_SPA_MODE_SEAT_STATE = 578;
    public static final int SEAT_NAP_POS_SAVE_REQ_STATE = 681;
    public static final int STP_ONBRK_TO_REL_PARKBRK_INDON_STATE = 335;
    public static final int TSR_AUDIO_WARNING_SETTING = 38;
    public static final int TSR_AUDIO_WARNING_STATE = 105;
    public static final int TSR_SETTING = 37;
    public static final int TSR_STATE = 104;
    public static final int WCLCM_WORK_MODE_CTL_SETTING = 451;
    public static final int WCLCM_WORK_MODE_STATE = 450;
    public static final int WCM_CTL_CHARGING_STATE_STATE = 515;
    public static final int WCM_CTL_ERROR_STATE = 520;
    public static final int WCM_CTL_FAILURE_STATE_STATE = 516;
    public static final int WCM_CTL_PROMPT_STATE = 519;
    public static final int WCM_CTL_RESULT_STATE = 448;
    public static final int WCM_CTL_SETTING = 449;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum LksState {
        LKS_OFF(0),
        LKS_STANDBY(1),
        LKS_ACTIVE(2),
        LKS_FAILURE(3),
        CAMERA_BLOCKED(4),
        __UNKNOWN__(-1);

        public final int value;

        LksState(int i) {
            this.value = i;
        }

        public static LksState valueOf(int i) {
            return i == LKS_OFF.value ? LKS_OFF : i == LKS_STANDBY.value ? LKS_STANDBY : i == LKS_ACTIVE.value ? LKS_ACTIVE : i == LKS_FAILURE.value ? LKS_FAILURE : i == CAMERA_BLOCKED.value ? CAMERA_BLOCKED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum LksMode {
        NOT_SELECTED(0),
        STEERING(1),
        WARNING(2),
        STEERING_AND_WARNING(3),
        __UNKNOWN__(-1);

        public final int value;

        LksMode(int i) {
            this.value = i;
        }

        public static LksMode valueOf(int i) {
            return i == NOT_SELECTED.value ? NOT_SELECTED : i == STEERING.value ? STEERING : i == WARNING.value ? WARNING : i == STEERING_AND_WARNING.value ? STEERING_AND_WARNING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum FCWWarningDistance {
        NORMAL(0, 1),
        CLOSE(1, 2),
        FAR(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        FCWWarningDistance(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static FCWWarningDistance valueOf(int i) {
            return i == NORMAL.rx ? NORMAL : i == CLOSE.rx ? CLOSE : i == FAR.rx ? FAR : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ADASWarnType {
        SOUND(0, 1),
        SEAT_VIBRATION(1, 2),
        BOTH(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        ADASWarnType(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static ADASWarnType valueOf(int i) {
            return i == SOUND.rx ? SOUND : i == SEAT_VIBRATION.rx ? SEAT_VIBRATION : i == BOTH.rx ? BOTH : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum RainstormMode {
        ENTER_REMIND(1),
        AUTO_QUIT(2),
        __UNKNOWN__(-1);

        public final int value;

        RainstormMode(int i) {
            this.value = i;
        }

        public static RainstormMode valueOf(int i) {
            return i == ENTER_REMIND.value ? ENTER_REMIND : i == AUTO_QUIT.value ? AUTO_QUIT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ShortcutMode {
        QUIT(1),
        RAINSTORM_MODE(2),
        NAP_MODE(3),
        WAKE_UP_MODE(4),
        PARTY_MODE(5),
        LH_SPA_MODE(6),
        RH_SPA_MODE(7),
        BOTH_SPA_MODE(8),
        __UNKNOWN__(-1);

        public final int value;

        ShortcutMode(int i) {
            this.value = i;
        }

        public static ShortcutMode valueOf(int i) {
            return i == QUIT.value ? QUIT : i == RAINSTORM_MODE.value ? RAINSTORM_MODE : i == NAP_MODE.value ? NAP_MODE : i == WAKE_UP_MODE.value ? WAKE_UP_MODE : i == PARTY_MODE.value ? PARTY_MODE : i == LH_SPA_MODE.value ? LH_SPA_MODE : i == RH_SPA_MODE.value ? RH_SPA_MODE : i == BOTH_SPA_MODE.value ? BOTH_SPA_MODE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum AutoWiperMode {
        INTERMITTENT(0, 1),
        AUTO(1, 2),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        AutoWiperMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static AutoWiperMode valueOf(int i) {
            return i == INTERMITTENT.rx ? INTERMITTENT : i == AUTO.rx ? AUTO : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum RearviewMirrorCmd {
        STOP(0),
        FL_MIRROR_UP(1),
        FL_MIRROR_DOWN(2),
        FL_MIRROR_LEFT(3),
        FL_MIRROR_RIGHT(4),
        FR_MIRROR_UP(5),
        FR_MIRROR_DOWN(6),
        FR_MIRROR_LEFT(7),
        FR_MIRROR_RIGHT(8),
        FOLD(9),
        UNFOLD(10),
        __UNKNOWN__(-1);

        public final int value;

        RearviewMirrorCmd(int i) {
            this.value = i;
        }

        public static RearviewMirrorCmd valueOf(int i) {
            return i == STOP.value ? STOP : i == FL_MIRROR_UP.value ? FL_MIRROR_UP : i == FL_MIRROR_DOWN.value ? FL_MIRROR_DOWN : i == FL_MIRROR_LEFT.value ? FL_MIRROR_LEFT : i == FL_MIRROR_RIGHT.value ? FL_MIRROR_RIGHT : i == FR_MIRROR_UP.value ? FR_MIRROR_UP : i == FR_MIRROR_DOWN.value ? FR_MIRROR_DOWN : i == FR_MIRROR_LEFT.value ? FR_MIRROR_LEFT : i == FR_MIRROR_RIGHT.value ? FR_MIRROR_RIGHT : i == FOLD.value ? FOLD : i == UNFOLD.value ? UNFOLD : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum RearviewMirrorState {
        FOLD(1),
        UNFOLD(2),
        __UNKNOWN__(-1);

        public final int value;

        RearviewMirrorState(int i) {
            this.value = i;
        }

        public static RearviewMirrorState valueOf(int i) {
            return i == FOLD.value ? FOLD : i == UNFOLD.value ? UNFOLD : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum CruiseAssistMode {
        ACC_MODE(1),
        TJA_ICA_MODE(2),
        __UNKNOWN__(-1);

        public final int value;

        CruiseAssistMode(int i) {
            this.value = i;
        }

        public static CruiseAssistMode valueOf(int i) {
            return i == ACC_MODE.value ? ACC_MODE : i == TJA_ICA_MODE.value ? TJA_ICA_MODE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum RearviewMirrorCmdForReverse {
        OFF(0, 1),
        LEFT_DOWN(1, 2),
        RIGHT_DOWN(2, 3),
        BOTH_DOWN(3, 4),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        RearviewMirrorCmdForReverse(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static RearviewMirrorCmdForReverse valueOf(int i) {
            return i == OFF.rx ? OFF : i == LEFT_DOWN.rx ? LEFT_DOWN : i == RIGHT_DOWN.rx ? RIGHT_DOWN : i == BOTH_DOWN.rx ? BOTH_DOWN : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum RearviewMirrorSettingCmd {
        START(1),
        SAVE(2),
        CANCEL(3),
        __UNKNOWN__(-1);

        public final int value;

        RearviewMirrorSettingCmd(int i) {
            this.value = i;
        }

        public static RearviewMirrorSettingCmd valueOf(int i) {
            return i == START.value ? START : i == SAVE.value ? SAVE : i == CANCEL.value ? CANCEL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum EPBSystemSetState {
        RELEASE(1),
        APPLY(2),
        UNUSABLE(3),
        __UNKNOWN__(-1);

        public final int value;

        EPBSystemSetState(int i) {
            this.value = i;
        }

        public static EPBSystemSetState valueOf(int i) {
            return i == RELEASE.value ? RELEASE : i == APPLY.value ? APPLY : i == UNUSABLE.value ? UNUSABLE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum EPBSystemState {
        RELEASE(0),
        APPLY(1),
        RELEASING(2),
        APPLYING(3),
        DISENGAGED(4),
        FAULT(7),
        __UNKNOWN__(-1);

        public final int value;

        EPBSystemState(int i) {
            this.value = i;
        }

        public static EPBSystemState valueOf(int i) {
            return i == RELEASE.value ? RELEASE : i == APPLY.value ? APPLY : i == RELEASING.value ? RELEASING : i == APPLYING.value ? APPLYING : i == DISENGAGED.value ? DISENGAGED : i == FAULT.value ? FAULT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum DragMode {
        OFF(0),
        OPEN(1),
        DEEPPUSHBRKPEDAL_TO_N(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        DragMode(int i) {
            this.value = i;
        }

        public static DragMode valueOf(int i) {
            return i == OFF.value ? OFF : i == OPEN.value ? OPEN : i == DEEPPUSHBRKPEDAL_TO_N.value ? DEEPPUSHBRKPEDAL_TO_N : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum EPBSystemMsg {
        OFF(0),
        FASTEN_SEATBELT(1),
        RELEASE_PARK_BRAKE(2),
        CHECK_PARK_BRAKE_LOW_GRADIENT(3),
        PARK_BRAKE_SET(4),
        PARK_BRAKE_RELEASED(5),
        PARK_BRAKE_TESTING(6),
        CLAMPFORCE_NOT_ENOUGH(7),
        NON_P_TO_RELEASE_PARK_BRAKE(8),
        __UNKNOWN__(-1);

        public final int value;

        EPBSystemMsg(int i) {
            this.value = i;
        }

        public static EPBSystemMsg valueOf(int i) {
            return i == OFF.value ? OFF : i == FASTEN_SEATBELT.value ? FASTEN_SEATBELT : i == RELEASE_PARK_BRAKE.value ? RELEASE_PARK_BRAKE : i == CHECK_PARK_BRAKE_LOW_GRADIENT.value ? CHECK_PARK_BRAKE_LOW_GRADIENT : i == PARK_BRAKE_SET.value ? PARK_BRAKE_SET : i == PARK_BRAKE_RELEASED.value ? PARK_BRAKE_RELEASED : i == PARK_BRAKE_TESTING.value ? PARK_BRAKE_TESTING : i == CLAMPFORCE_NOT_ENOUGH.value ? CLAMPFORCE_NOT_ENOUGH : i == NON_P_TO_RELEASE_PARK_BRAKE.value ? NON_P_TO_RELEASE_PARK_BRAKE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum StpOnBrkToRelParkBrkIndOnState {
        OFF(0),
        ON(1),
        DEEP_PUSH_BRK_PEDAL(2),
        __UNKNOWN__(-1);

        public final int value;

        StpOnBrkToRelParkBrkIndOnState(int i) {
            this.value = i;
        }

        public static StpOnBrkToRelParkBrkIndOnState valueOf(int i) {
            return i == OFF.value ? OFF : i == ON.value ? ON : i == DEEP_PUSH_BRK_PEDAL.value ? DEEP_PUSH_BRK_PEDAL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ParkAutoUnlockState {
        NOT_ACTIVE(0, 1),
        ACTIVE(1, 2),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        ParkAutoUnlockState(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static ParkAutoUnlockState valueOf(int i) {
            return i == NOT_ACTIVE.rx ? NOT_ACTIVE : i == ACTIVE.rx ? ACTIVE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ComfortParkState {
        CST_DISABLED(0),
        CST_STANDBY(1),
        CST_ACTIVE(2),
        CST_FAILURE(3),
        CST_LEVEL_4(4),
        __UNKNOWN__(-1);

        public final int value;

        ComfortParkState(int i) {
            this.value = i;
        }

        public static ComfortParkState valueOf(int i) {
            return i == CST_DISABLED.value ? CST_DISABLED : i == CST_STANDBY.value ? CST_STANDBY : i == CST_ACTIVE.value ? CST_ACTIVE : i == CST_FAILURE.value ? CST_FAILURE : i == CST_LEVEL_4.value ? CST_LEVEL_4 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum OSRMRAngleCmd {
        OFF(0, 1),
        LEFT_MIRROR_DIP(1, 2),
        RIGHT_MIRROR_DIP(2, 3),
        BOTH_MIRROR_DIP(3, 4),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        OSRMRAngleCmd(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static OSRMRAngleCmd valueOf(int i) {
            return i == OFF.rx ? OFF : i == LEFT_MIRROR_DIP.rx ? LEFT_MIRROR_DIP : i == RIGHT_MIRROR_DIP.rx ? RIGHT_MIRROR_DIP : i == BOTH_MIRROR_DIP.rx ? BOTH_MIRROR_DIP : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum OSRMRAngleSaveCmd {
        NONE(0),
        START(1),
        SAVE(2),
        CANCEL(3),
        __UNKNOWN__(-1);

        public final int value;

        OSRMRAngleSaveCmd(int i) {
            this.value = i;
        }

        public static OSRMRAngleSaveCmd valueOf(int i) {
            return i == NONE.value ? NONE : i == START.value ? START : i == SAVE.value ? SAVE : i == CANCEL.value ? CANCEL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum WCMCtlResult {
        ENABLED(0),
        DISABLED_BY_PEPS(1),
        SHUTDOWN_BY_SWITCH_CAN(2),
        __UNKNOWN__(-1);

        public final int value;

        WCMCtlResult(int i) {
            this.value = i;
        }

        public static WCMCtlResult valueOf(int i) {
            return i == ENABLED.value ? ENABLED : i == DISABLED_BY_PEPS.value ? DISABLED_BY_PEPS : i == SHUTDOWN_BY_SWITCH_CAN.value ? SHUTDOWN_BY_SWITCH_CAN : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum WCMCtl {
        NOT_ACTIVE(1),
        ACTIVE(2),
        __UNKNOWN__(-1);

        public final int value;

        WCMCtl(int i) {
            this.value = i;
        }

        public static WCMCtl valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == ACTIVE.value ? ACTIVE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum WCLCMWorkMode {
        AUTO(0),
        MANUAL(1),
        __UNKNOWN__(-1);

        public final int value;

        WCLCMWorkMode(int i) {
            this.value = i;
        }

        public static WCLCMWorkMode valueOf(int i) {
            return i == AUTO.value ? AUTO : i == MANUAL.value ? MANUAL : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum WCLCMWorkModeCtl {
        NOT_ACTIVE(1),
        ACTIVE(2),
        __UNKNOWN__(-1);

        public final int value;

        WCLCMWorkModeCtl(int i) {
            this.value = i;
        }

        public static WCLCMWorkModeCtl valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == ACTIVE.value ? ACTIVE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BSDMLcaState {
        OFF(0),
        PASSIVE(1),
        ACTIVE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        BSDMLcaState(int i) {
            this.value = i;
        }

        public static BSDMLcaState valueOf(int i) {
            return i == OFF.value ? OFF : i == PASSIVE.value ? PASSIVE : i == ACTIVE.value ? ACTIVE : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BSDMLcaCtl {
        ON(1),
        OFF(2),
        __UNKNOWN__(-1);

        public final int value;

        BSDMLcaCtl(int i) {
            this.value = i;
        }

        public static BSDMLcaCtl valueOf(int i) {
            return i == ON.value ? ON : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BSDMDowState {
        OFF(0),
        PASSIVE(1),
        ACTIVE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        BSDMDowState(int i) {
            this.value = i;
        }

        public static BSDMDowState valueOf(int i) {
            return i == OFF.value ? OFF : i == PASSIVE.value ? PASSIVE : i == ACTIVE.value ? ACTIVE : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BSDMDowCtl {
        ON(1),
        OFF(2),
        __UNKNOWN__(-1);

        public final int value;

        BSDMDowCtl(int i) {
            this.value = i;
        }

        public static BSDMDowCtl valueOf(int i) {
            return i == ON.value ? ON : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BSDMRctaState {
        OFF(0),
        PASSIVE(1),
        ACTIVE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        BSDMRctaState(int i) {
            this.value = i;
        }

        public static BSDMRctaState valueOf(int i) {
            return i == OFF.value ? OFF : i == PASSIVE.value ? PASSIVE : i == ACTIVE.value ? ACTIVE : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BSDMRctaCtl {
        ON(1),
        OFF(2),
        __UNKNOWN__(-1);

        public final int value;

        BSDMRctaCtl(int i) {
            this.value = i;
        }

        public static BSDMRctaCtl valueOf(int i) {
            return i == ON.value ? ON : i == OFF.value ? OFF : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BSDMRctaAssistType {
        NO_SELECTED(0),
        BRAKE(1),
        WARNING(2),
        BRAKE_AND_WARNING(3),
        __UNKNOWN__(-1);

        public final int value;

        BSDMRctaAssistType(int i) {
            this.value = i;
        }

        public static BSDMRctaAssistType valueOf(int i) {
            return i == NO_SELECTED.value ? NO_SELECTED : i == BRAKE.value ? BRAKE : i == WARNING.value ? WARNING : i == BRAKE_AND_WARNING.value ? BRAKE_AND_WARNING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BSDMRcwState {
        OFF(0),
        PASSIVE(1),
        ACTIVE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        BSDMRcwState(int i) {
            this.value = i;
        }

        public static BSDMRcwState valueOf(int i) {
            return i == OFF.value ? OFF : i == PASSIVE.value ? PASSIVE : i == ACTIVE.value ? ACTIVE : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BSDMRcwCtl {
        NOT_ACTIVE(1),
        ACTIVE(2),
        __UNKNOWN__(-1);

        public final int value;

        BSDMRcwCtl(int i) {
            this.value = i;
        }

        public static BSDMRcwCtl valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == ACTIVE.value ? ACTIVE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum HudOffState {
        NOT_ACTIVE(1),
        ACTIVE(2),
        __UNKNOWN__(-1);

        public final int value;

        HudOffState(int i) {
            this.value = i;
        }

        public static HudOffState valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == ACTIVE.value ? ACTIVE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum HudMode {
        STANDARD(1),
        SNOW(2),
        __UNKNOWN__(-1);

        public final int value;

        HudMode(int i) {
            this.value = i;
        }

        public static HudMode valueOf(int i) {
            return i == STANDARD.value ? STANDARD : i == SNOW.value ? SNOW : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum WCMCtlChargingState {
        STANDBY(0),
        CHARGING(1),
        COMPLETED(2),
        NOT_STANDBY(3),
        __UNKNOWN__(-1);

        public final int value;

        WCMCtlChargingState(int i) {
            this.value = i;
        }

        public static WCMCtlChargingState valueOf(int i) {
            return i == STANDBY.value ? STANDBY : i == CHARGING.value ? CHARGING : i == COMPLETED.value ? COMPLETED : i == NOT_STANDBY.value ? NOT_STANDBY : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum WCMCtlFailureState {
        NO_FAILURE(0),
        OVER_TEMPERATURE(1),
        RFOD(2),
        VOLTAGE_PROTECTED(3),
        OVER_POWER_PROTECTED(4),
        INTERNAL_FAILURE(5),
        SMARTPHONE_NO_RESPONSE(6),
        OFOD(7),
        NFC_CARD_DETECTED(8),
        __UNKNOWN__(-1);

        public final int value;

        WCMCtlFailureState(int i) {
            this.value = i;
        }

        public static WCMCtlFailureState valueOf(int i) {
            return i == NO_FAILURE.value ? NO_FAILURE : i == OVER_TEMPERATURE.value ? OVER_TEMPERATURE : i == RFOD.value ? RFOD : i == VOLTAGE_PROTECTED.value ? VOLTAGE_PROTECTED : i == OVER_POWER_PROTECTED.value ? OVER_POWER_PROTECTED : i == INTERNAL_FAILURE.value ? INTERNAL_FAILURE : i == SMARTPHONE_NO_RESPONSE.value ? SMARTPHONE_NO_RESPONSE : i == OFOD.value ? OFOD : i == NFC_CARD_DETECTED.value ? NFC_CARD_DETECTED : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ADASELKStatus {
        OFF(0),
        PASSIVE(1),
        ACTIVE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        ADASELKStatus(int i) {
            this.value = i;
        }

        public static ADASELKStatus valueOf(int i) {
            return i == OFF.value ? OFF : i == PASSIVE.value ? PASSIVE : i == ACTIVE.value ? ACTIVE : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum EMSEngWaveStatus {
        INVALID(0),
        OFF(1),
        ON(2),
        EAV_BLOCK_ERROR(3),
        __UNKNOWN__(-1);

        public final int value;

        EMSEngWaveStatus(int i) {
            this.value = i;
        }

        public static EMSEngWaveStatus valueOf(int i) {
            return i == INVALID.value ? INVALID : i == OFF.value ? OFF : i == ON.value ? ON : i == EAV_BLOCK_ERROR.value ? EAV_BLOCK_ERROR : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum NapSettingSave {
        NO_COMMAND(0),
        CANCEL(1),
        SAVE(2),
        START(3),
        __UNKNOWN__(-1);

        public final int value;

        NapSettingSave(int i) {
            this.value = i;
        }

        public static NapSettingSave valueOf(int i) {
            return i == NO_COMMAND.value ? NO_COMMAND : i == CANCEL.value ? CANCEL : i == SAVE.value ? SAVE : i == START.value ? START : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum SeatNapModeState {
        NO_IN_SNAPMODE(0),
        SNAP_SETTING_MODE(1),
        SNAP_MODE(2),
        __UNKNOWN__(-1);

        public final int value;

        SeatNapModeState(int i) {
            this.value = i;
        }

        public static SeatNapModeState valueOf(int i) {
            return i == NO_IN_SNAPMODE.value ? NO_IN_SNAPMODE : i == SNAP_SETTING_MODE.value ? SNAP_SETTING_MODE : i == SNAP_MODE.value ? SNAP_MODE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum SeatSpaModeState {
        NO_IN_SPAMODE(0),
        SPA_SETTING_MODE(1),
        SPA_MODE(2),
        __UNKNOWN__(-1);

        public final int value;

        SeatSpaModeState(int i) {
            this.value = i;
        }

        public static SeatSpaModeState valueOf(int i) {
            return i == NO_IN_SPAMODE.value ? NO_IN_SPAMODE : i == SPA_SETTING_MODE.value ? SPA_SETTING_MODE : i == SPA_MODE.value ? SPA_MODE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum RearSeatShortcutmode {
        NO_COMMAND(0),
        QUIT(1),
        LH_MEMORY_MODE(2),
        RH_MEMORY_MODE(3),
        LH_POSITION_RECOVERY_MODE(4),
        RH_POSITION_RECOVERY_MODE(5),
        __UNKNOWN__(-1);

        public final int value;

        RearSeatShortcutmode(int i) {
            this.value = i;
        }

        public static RearSeatShortcutmode valueOf(int i) {
            return i == NO_COMMAND.value ? NO_COMMAND : i == QUIT.value ? QUIT : i == LH_MEMORY_MODE.value ? LH_MEMORY_MODE : i == RH_MEMORY_MODE.value ? RH_MEMORY_MODE : i == LH_POSITION_RECOVERY_MODE.value ? LH_POSITION_RECOVERY_MODE : i == RH_POSITION_RECOVERY_MODE.value ? RH_POSITION_RECOVERY_MODE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum FrontWiperMode {
        NO_COMMAND(-1, 0),
        OFF(0, 1),
        CONTINUOUS_SLOW(2, 2),
        CONTINUOUS_FAST(3, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        FrontWiperMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static FrontWiperMode valueOf(int i) {
            return i == NO_COMMAND.rx ? NO_COMMAND : i == OFF.rx ? OFF : i == CONTINUOUS_SLOW.rx ? CONTINUOUS_SLOW : i == CONTINUOUS_FAST.rx ? CONTINUOUS_FAST : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum FCTASwitchStatus {
        OFF(0),
        PASSIVE_ON_INACTIVE(1),
        ACTIVE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        FCTASwitchStatus(int i) {
            this.value = i;
        }

        public static FCTASwitchStatus valueOf(int i) {
            return i == OFF.value ? OFF : i == PASSIVE_ON_INACTIVE.value ? PASSIVE_ON_INACTIVE : i == ACTIVE.value ? ACTIVE : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum FCTAConfig {
        NO_SELECTED(0),
        BRAKE(1),
        WARNING(2),
        BRAKE_AND_WARNING(3),
        __UNKNOWN__(-1);

        public final int value;

        FCTAConfig(int i) {
            this.value = i;
        }

        public static FCTAConfig valueOf(int i) {
            return i == NO_SELECTED.value ? NO_SELECTED : i == BRAKE.value ? BRAKE : i == WARNING.value ? WARNING : i == BRAKE_AND_WARNING.value ? BRAKE_AND_WARNING : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ADASRAEBStatus {
        OFF(0),
        ENABLE(1),
        ACTIVE(2),
        FAILURE(3),
        __UNKNOWN__(-1);

        public final int value;

        ADASRAEBStatus(int i) {
            this.value = i;
        }

        public static ADASRAEBStatus valueOf(int i) {
            return i == OFF.value ? OFF : i == ENABLE.value ? ENABLE : i == ACTIVE.value ? ACTIVE : i == FAILURE.value ? FAILURE : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum IMRCtrlStatus {
        NO_COMMAND(3, 0),
        OFF(2, 1),
        STANDBY(1, -1),
        ON(0, 2),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        IMRCtrlStatus(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static IMRCtrlStatus valueOf(int i) {
            return i == NO_COMMAND.rx ? NO_COMMAND : i == OFF.rx ? OFF : i == STANDBY.rx ? STANDBY : i == ON.rx ? ON : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum IMRCtrlErrorStatus {
        SYSTEM_NO_ERROR(0),
        SYSTEM_ERROR(1),
        __UNKNOWN__(-1);

        public final int value;

        IMRCtrlErrorStatus(int i) {
            this.value = i;
        }

        public static IMRCtrlErrorStatus valueOf(int i) {
            return i == SYSTEM_NO_ERROR.value ? SYSTEM_NO_ERROR : i == SYSTEM_ERROR.value ? SYSTEM_ERROR : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum FaultStatus {
        NOT_FAULT(0),
        FAULT(1),
        __UNKNOWN__(-1);

        public final int value;

        FaultStatus(int i) {
            this.value = i;
        }

        public static FaultStatus valueOf(int i) {
            return i == NOT_FAULT.value ? NOT_FAULT : i == FAULT.value ? FAULT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum SeatNapPosSaveReq {
        NO_COMMAND(0),
        ACTIVE_POP_UP_WINDOW(1),
        __UNKNOWN__(-1);

        public final int value;

        SeatNapPosSaveReq(int i) {
            this.value = i;
        }

        public static SeatNapPosSaveReq valueOf(int i) {
            return i == NO_COMMAND.value ? NO_COMMAND : i == ACTIVE_POP_UP_WINDOW.value ? ACTIVE_POP_UP_WINDOW : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum FCWSwitchEnableState {
        NO_LOCK(0),
        LOCK(1),
        __UNKNOWN__(-1);

        public final int value;

        FCWSwitchEnableState(int i) {
            this.value = i;
        }

        public static FCWSwitchEnableState valueOf(int i) {
            return i == NO_LOCK.value ? NO_LOCK : i == LOCK.value ? LOCK : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum FrontWiperLevel {
        NOT_ACTIVE(0),
        LEVEL_1(1),
        LEVEL_2(2),
        LEVEL_3(3),
        LEVEL_4(4),
        LEVEL_5(5),
        LEVEL_6(6),
        LEVEL_7(7),
        __UNKNOWN__(-1);

        public final int value;

        FrontWiperLevel(int i) {
            this.value = i;
        }

        public static FrontWiperLevel valueOf(int i) {
            return i == NOT_ACTIVE.value ? NOT_ACTIVE : i == LEVEL_1.value ? LEVEL_1 : i == LEVEL_2.value ? LEVEL_2 : i == LEVEL_3.value ? LEVEL_3 : i == LEVEL_4.value ? LEVEL_4 : i == LEVEL_5.value ? LEVEL_5 : i == LEVEL_6.value ? LEVEL_6 : i == LEVEL_7.value ? LEVEL_7 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ExhibitionHallMode {
        DEFAULT(0),
        NORMAL_MODE(1),
        TRANSPORT_MODE(2),
        SHOWROOM_MODE(3),
        __UNKNOWN__(-1);

        public final int value;

        ExhibitionHallMode(int i) {
            this.value = i;
        }

        public static ExhibitionHallMode valueOf(int i) {
            return i == DEFAULT.value ? DEFAULT : i == NORMAL_MODE.value ? NORMAL_MODE : i == TRANSPORT_MODE.value ? TRANSPORT_MODE : i == SHOWROOM_MODE.value ? SHOWROOM_MODE : __UNKNOWN__;
        }
    }
}
