.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;
.super Ljava/lang/Enum;
.source "Ihu23IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum ANDROID_AUTO:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum AUX:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum BT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum CARLIFE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum CARPLAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum CAR_MODE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum CELLULAR_NETWORK:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum ENGINEERING_MODE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum ETHERNET_NET:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum FACE_ID:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum HVAC_DISPLAY_TIME:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum INTERFACE_SOUND:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum IPHONE_DEFAULT_CONNECTING:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum IPOD:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum KEYTONE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum LANGUAGE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum MEDIA_VOLUME_DELAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum NUMBER_OF_SCREEN:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum PICTURE_APP:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum RADAR_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum RADAR_VOLUME_ADJUSTMENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum RADIO_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum RADIO_DAB_RDS_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum RADIO_FREQUENCY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum REMINDING_MAINTENANCE_CYCLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum REMINDING_RESET_CYCLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum REPEAT_SETTING:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum SCREENSAVER:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum SCREEN_SWITCH_DELAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum SDVC_CURVE_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum USB:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum USER_MANUAL:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum VIDE_APP:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum WIFI:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;


# instance fields
.field public final bitSize:B

.field public final byteIndex:B

.field public final startBit:B


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 14
    new-instance v6, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "LANGUAGE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->LANGUAGE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 16
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v8, "NUMBER_OF_SCREEN"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->NUMBER_OF_SCREEN:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 18
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v2, "CAR_MODE"

    const/4 v3, 0x2

    const/4 v5, 0x6

    const/4 v6, 0x7

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CAR_MODE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 20
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "CARPLAY"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CARPLAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 22
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "CARLIFE"

    const/4 v5, 0x4

    invoke-direct {v0, v1, v5, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CARLIFE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 24
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "IPHONE_DEFAULT_CONNECTING"

    const/4 v6, 0x5

    invoke-direct {v0, v1, v6, v4, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->IPHONE_DEFAULT_CONNECTING:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 26
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "ANDROID_AUTO"

    const/4 v7, 0x6

    invoke-direct {v0, v1, v7, v4, v6}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->ANDROID_AUTO:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 28
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v9, "WIFI"

    const/4 v10, 0x7

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->WIFI:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 30
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "BT"

    const/16 v8, 0x8

    const/4 v9, 0x2

    invoke-direct {v0, v1, v8, v9, v9}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->BT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 32
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "CELLULAR_NETWORK"

    const/16 v10, 0x9

    invoke-direct {v0, v1, v10, v9, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CELLULAR_NETWORK:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 34
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "AUX"

    const/16 v11, 0xa

    invoke-direct {v0, v1, v11, v9, v5}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->AUX:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 36
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "IPOD"

    const/16 v12, 0xb

    invoke-direct {v0, v1, v12, v9, v6}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->IPOD:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 38
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v14, "USB"

    const/16 v15, 0xc

    const/16 v16, 0x2

    const/16 v17, 0x6

    const/16 v18, 0x7

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->USB:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 40
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "ETHERNET_NET"

    const/16 v13, 0xd

    invoke-direct {v0, v1, v13, v3, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->ETHERNET_NET:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 42
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v15, "RADIO_CONFIGURATION"

    const/16 v16, 0xe

    const/16 v17, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x3

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADIO_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 44
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v21, "RADAR_VOLUME_ADJUSTMENT"

    const/16 v22, 0xf

    const/16 v23, 0x3

    const/16 v24, 0x6

    const/16 v25, 0x7

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADAR_VOLUME_ADJUSTMENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 46
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v15, "RADIO_DAB_RDS_CONFIGURATION"

    const/16 v16, 0x10

    const/16 v18, 0x4

    const/16 v19, 0x5

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADIO_DAB_RDS_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 48
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "SDVC_CURVE_CONFIGURATION"

    const/16 v14, 0x11

    invoke-direct {v0, v1, v14, v5, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->SDVC_CURVE_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 50
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v16, "HVAC_DISPLAY_TIME"

    const/16 v17, 0x12

    const/16 v19, 0x1

    const/16 v20, 0x3

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->HVAC_DISPLAY_TIME:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 52
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v22, "RADIO_FREQUENCY"

    const/16 v23, 0x13

    const/16 v24, 0x4

    const/16 v25, 0x4

    const/16 v26, 0x7

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADIO_FREQUENCY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 54
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v16, "MEDIA_VOLUME_DELAY"

    const/16 v17, 0x14

    const/16 v18, 0x5

    const/16 v19, 0x0

    const/16 v20, 0x2

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->MEDIA_VOLUME_DELAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 56
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v22, "SCREEN_SWITCH_DELAY"

    const/16 v23, 0x15

    const/16 v24, 0x5

    const/16 v25, 0x3

    const/16 v26, 0x5

    move-object/from16 v21, v0

    invoke-direct/range {v21 .. v26}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->SCREEN_SWITCH_DELAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 58
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "RADAR_SWITCH"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v6, v7}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADAR_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 60
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v17, "KEYTONE"

    const/16 v18, 0x17

    const/16 v19, 0x7

    const/16 v20, 0x4

    const/16 v21, 0x5

    move-object/from16 v16, v0

    invoke-direct/range {v16 .. v21}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->KEYTONE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 62
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v23, "INTERFACE_SOUND"

    const/16 v24, 0x18

    const/16 v25, 0x7

    const/16 v26, 0x6

    const/16 v27, 0x7

    move-object/from16 v22, v0

    invoke-direct/range {v22 .. v27}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->INTERFACE_SOUND:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 64
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "FACE_ID"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v8, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->FACE_ID:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 66
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "SCREENSAVER"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v8, v7}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->SCREENSAVER:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 68
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "USER_MANUAL"

    const/16 v15, 0x1b

    const/4 v14, 0x7

    invoke-direct {v0, v1, v15, v8, v14}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->USER_MANUAL:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 70
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "ENGINEERING_MODE"

    const/16 v14, 0x1c

    invoke-direct {v0, v1, v14, v10, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->ENGINEERING_MODE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 72
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "REMINDING_MAINTENANCE_CYCLE"

    const/16 v14, 0x1d

    invoke-direct {v0, v1, v14, v10, v4}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->REMINDING_MAINTENANCE_CYCLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 74
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "REMINDING_RESET_CYCLE"

    const/16 v14, 0x1e

    invoke-direct {v0, v1, v14, v10, v9}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->REMINDING_RESET_CYCLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 76
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "REPEAT_SETTING"

    const/16 v14, 0x1f

    invoke-direct {v0, v1, v14, v10, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->REPEAT_SETTING:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 78
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "VIDE_APP"

    const/16 v14, 0x20

    invoke-direct {v0, v1, v14, v10, v5}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->VIDE_APP:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 80
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "PICTURE_APP"

    const/16 v14, 0x21

    invoke-direct {v0, v1, v14, v10, v6}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->PICTURE_APP:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    .line 81
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const-string v1, "__UNKNOWN__"

    const/16 v14, 0x22

    const/4 v15, -0x1

    const/4 v13, -0x1

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v0, 0x23

    .line 12
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->LANGUAGE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->NUMBER_OF_SCREEN:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CAR_MODE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CARPLAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CARLIFE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->IPHONE_DEFAULT_CONNECTING:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->ANDROID_AUTO:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->WIFI:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->BT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->CELLULAR_NETWORK:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->AUX:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->IPOD:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->USB:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->ETHERNET_NET:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADIO_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADAR_VOLUME_ADJUSTMENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADIO_DAB_RDS_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->SDVC_CURVE_CONFIGURATION:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->HVAC_DISPLAY_TIME:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADIO_FREQUENCY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->MEDIA_VOLUME_DELAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->SCREEN_SWITCH_DELAY:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->RADAR_SWITCH:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->KEYTONE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->INTERFACE_SOUND:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->FACE_ID:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->SCREENSAVER:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->USER_MANUAL:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->ENGINEERING_MODE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->REMINDING_MAINTENANCE_CYCLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->REMINDING_RESET_CYCLE:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->REPEAT_SETTING:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->VIDE_APP:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->PICTURE_APP:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    .line 93
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->byteIndex:B

    int-to-byte p1, p4

    .line 94
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->startBit:B

    const/4 p1, 0x1

    .line 95
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->bitSize:B

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-byte p1, p3

    .line 87
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->byteIndex:B

    int-to-byte p1, p4

    .line 88
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->startBit:B

    sub-int/2addr p5, p4

    add-int/lit8 p5, p5, 0x1

    int-to-byte p1, p5

    .line 89
    iput-byte p1, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->bitSize:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;
    .locals 1

    .line 12
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;
    .locals 1

    .line 12
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$Config;

    return-object v0
.end method
