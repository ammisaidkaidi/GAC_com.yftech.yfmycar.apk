package com.yftech.vehicle.internal.adapter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface ICarIcm extends IBaseApi {
    public static final int ACU_CURRENTSOURCE_SETTING = 626;
    public static final int BACK_LIGHT_LEVEL = 114;
    public static final int BACK_LIGHT_LEVEL_SETTING = 219;
    public static final int FM_FREQ_SYMBOL_SETTING = 533;
    public static final int FUEL_ECONOMY_AND_DISTANCE_UNIT = 119;
    public static final int FUEL_ECONOMY_AND_DISTANCE_UNIT_SETTING = 51;
    public static final int ICM_AVAIBLE_DRIVE_DISTANCE = 713;
    public static final int ICM_FUEL_LEVEL = 711;
    public static final int ICM_FUEL_LEVEL_LOW = 712;
    public static final int KEEP_MUTE_WARNING = 120;
    public static final int KEYBOARD_BACKLIGHT = 226;
    public static final int LANGUAGE = 118;
    public static final int LANGUAGE_SETTING = 50;
    public static final int METER_CURRENT_SHOW_PAGE = 655;
    public static final int METER_SHOW_PAGE_SETTING = 656;
    public static final int METER_VOLUME_MODE = 258;
    public static final int METER_VOLUME_MODE_SETTING = 259;
    public static final int PRESSURE_UNIT = 116;
    public static final int PRESSURE_UNIT_SETTING = 48;
    public static final int REAR_SEAT_BELT_WARN_SETTING = 607;
    public static final int REAR_SEAT_BELT_WARN_STATUS = 606;
    public static final int REAR_SEAT_BELT_WARN_SWITCH_SETTING = 663;
    public static final int SPEED_WARNING = 117;
    public static final int SPEED_WARNING_SETTING = 49;
    public static final int TEMPERATURE_UNIT = 115;
    public static final int TEMPERATURE_UNIT_SETTING = 47;

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum BackLightLevel {
        LEVEL_1(0, 1),
        LEVEL_2(1, 2),
        LEVEL_3(2, 3),
        LEVEL_4(3, 4),
        LEVEL_5(4, 5),
        LEVEL_6(5, 6),
        LEVEL_7(6, 7),
        LEVEL_8(7, 8),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        BackLightLevel(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static BackLightLevel valueOf(int i) {
            return i == LEVEL_1.rx ? LEVEL_1 : i == LEVEL_2.rx ? LEVEL_2 : i == LEVEL_3.rx ? LEVEL_3 : i == LEVEL_4.rx ? LEVEL_4 : i == LEVEL_5.rx ? LEVEL_5 : i == LEVEL_6.rx ? LEVEL_6 : i == LEVEL_7.rx ? LEVEL_7 : i == LEVEL_8.rx ? LEVEL_8 : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum TemperatureUnit {
        CELSIUS(0, 1),
        FAHRENHEIT(1, 2),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        TemperatureUnit(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static TemperatureUnit valueOf(int i) {
            return i == CELSIUS.rx ? CELSIUS : i == FAHRENHEIT.rx ? FAHRENHEIT : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum PressureUnit {
        K_PA(0, 1),
        BAR(1, 2),
        PSI(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        PressureUnit(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static PressureUnit valueOf(int i) {
            return i == K_PA.rx ? K_PA : i == BAR.rx ? BAR : i == PSI.rx ? PSI : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum Language {
        CHINESE(1, 1),
        ENGLISH(2, 2),
        RUSSIAN(3, 3),
        ARABIC(4, 4),
        SPANISH(5, 5),
        PORTUGUESE(6, 6),
        INDONESIAN(7, 7),
        CHINESE_TRADITIONAL(8, 8),
        VIETNAMENSE(9, 9),
        THAI(10, 10),
        MALAY(11, 11),
        FRENCH(12, 12),
        ITALY(13, 13),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        Language(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static Language valueOf(int i) {
            return i == CHINESE.rx ? CHINESE : i == ENGLISH.rx ? ENGLISH : i == RUSSIAN.rx ? RUSSIAN : i == ARABIC.rx ? ARABIC : i == SPANISH.rx ? SPANISH : i == PORTUGUESE.rx ? PORTUGUESE : i == INDONESIAN.rx ? INDONESIAN : i == CHINESE_TRADITIONAL.rx ? CHINESE_TRADITIONAL : i == VIETNAMENSE.rx ? VIETNAMENSE : i == THAI.rx ? THAI : i == MALAY.rx ? MALAY : i == FRENCH.rx ? FRENCH : i == ITALY.rx ? ITALY : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum FuelEconomyAndDistanceUnit {
        L_PER_100KM_AND_KM(0, 1),
        MPG_GB_AND_M(1, 2),
        MPG_US_AND_M(2, 3),
        KM_L_AND_KM(3, 4),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        FuelEconomyAndDistanceUnit(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static FuelEconomyAndDistanceUnit valueOf(int i) {
            return i == L_PER_100KM_AND_KM.rx ? L_PER_100KM_AND_KM : i == MPG_GB_AND_M.rx ? MPG_GB_AND_M : i == MPG_US_AND_M.rx ? MPG_US_AND_M : i == KM_L_AND_KM.rx ? KM_L_AND_KM : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum MeterVolumeMode {
        LOW(0, 1),
        MIDDLE(1, 2),
        HIGH(2, 3),
        __UNKNOWN__(-1, -1);

        private final int rx;
        private final int tx;
        public final int value;

        MeterVolumeMode(int i, int i2) {
            this.rx = i;
            this.tx = i2;
            this.value = this.tx;
        }

        public static MeterVolumeMode valueOf(int i) {
            return i == LOW.rx ? LOW : i == MIDDLE.rx ? MIDDLE : i == HIGH.rx ? HIGH : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum CurrentSource {
        OFF(0),
        USB_MUSIC(2),
        BT_MUSIC(6),
        CARPLAY_MUSIC(21),
        __UNKNOWN__(-1);

        public final int value;

        CurrentSource(int i) {
            this.value = i;
        }

        public static CurrentSource valueOf(int i) {
            return i == OFF.value ? OFF : i == USB_MUSIC.value ? USB_MUSIC : i == BT_MUSIC.value ? BT_MUSIC : i == CARPLAY_MUSIC.value ? CARPLAY_MUSIC : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ICMShowPageSetting {
        NO_COMMAND(0),
        STOPWATCH_START(1),
        STOPWATCH_STOP(2),
        POWER_START(3),
        POWER_STOP(4),
        NAV_START(5),
        NAV_STOP(6),
        MEDIA_START(7),
        MEDIA_STOP(8),
        __UNKNOWN__(-1);

        public final int value;

        ICMShowPageSetting(int i) {
            this.value = i;
        }

        public static ICMShowPageSetting valueOf(int i) {
            return i == NO_COMMAND.value ? NO_COMMAND : i == STOPWATCH_START.value ? STOPWATCH_START : i == STOPWATCH_STOP.value ? STOPWATCH_STOP : i == POWER_START.value ? POWER_START : i == POWER_STOP.value ? POWER_STOP : i == NAV_START.value ? NAV_START : i == NAV_STOP.value ? NAV_STOP : i == MEDIA_START.value ? MEDIA_START : i == MEDIA_STOP.value ? MEDIA_STOP : __UNKNOWN__;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public enum ICMCurrentShowPage {
        NO_LVDS(0),
        MAINDISPLAYZONE_ON(1),
        SLAVEDISPLAYZONE_ON(2),
        ALLDISPLAYZONE_ON(3),
        STOPWATCH_DISPLAY(4),
        POWER_DISPLAY(5),
        NAVI_DISPLAY(6),
        MEDIA_DISPLAY(7),
        FACE_ID_DISPLAY(8),
        __UNKNOWN__(-1);

        public final int value;

        ICMCurrentShowPage(int i) {
            this.value = i;
        }

        public static ICMCurrentShowPage valueOf(int i) {
            return i == NO_LVDS.value ? NO_LVDS : i == MAINDISPLAYZONE_ON.value ? MAINDISPLAYZONE_ON : i == SLAVEDISPLAYZONE_ON.value ? SLAVEDISPLAYZONE_ON : i == ALLDISPLAYZONE_ON.value ? ALLDISPLAYZONE_ON : i == STOPWATCH_DISPLAY.value ? STOPWATCH_DISPLAY : i == POWER_DISPLAY.value ? POWER_DISPLAY : i == NAVI_DISPLAY.value ? NAVI_DISPLAY : i == MEDIA_DISPLAY.value ? MEDIA_DISPLAY : i == FACE_ID_DISPLAY.value ? FACE_ID_DISPLAY : __UNKNOWN__;
        }
    }
}
