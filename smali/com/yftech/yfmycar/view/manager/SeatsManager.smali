.class public Lcom/yftech/yfmycar/view/manager/SeatsManager;
.super Ljava/lang/Object;
.source "SeatsManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SwitchIntDef"
    }
.end annotation


# static fields
.field public static final TYPE_AUTO:I = 0x2

.field public static final TYPE_CLOSE:I = -0x1

.field public static final TYPE_HEAT:I = 0x1

.field public static final TYPE_VENT:I

.field private static volatile sInstance:Lcom/yftech/yfmycar/view/manager/SeatsManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private carDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

.field private final event:Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

.field private final listener:Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SeatsManager"

    .line 20
    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->TAG:Ljava/lang/String;

    .line 42
    new-instance v0, Lcom/yftech/yfmycar/view/manager/SeatsManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager$1;-><init>(Lcom/yftech/yfmycar/view/manager/SeatsManager;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->carDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

    .line 402
    new-instance v0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->event:Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    .line 407
    new-instance v0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;-><init>(Lcom/yftech/yfmycar/view/manager/SeatsManager;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->listener:Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->event:Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;
    .locals 2

    .line 24
    sget-object v0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->sInstance:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/yftech/yfmycar/view/manager/SeatsManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/yfmycar/view/manager/SeatsManager;->sInstance:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-direct {v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;-><init>()V

    sput-object v1, Lcom/yftech/yfmycar/view/manager/SeatsManager;->sInstance:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->sInstance:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    return-object v0
.end method


# virtual methods
.method public controlSeatAction(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)V
    .locals 2

    const-string p0, "SeatsManager"

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlSeatAction \u5ea7\u6905\u8c03\u8282  setSeatSteeringWheel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSeatSteeringWheel(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)Z

    return-void
.end method

.method public getHeatLevel(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 173
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    goto :goto_0

    .line 170
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getHeatLevelRR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    move-result-object p0

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getHeatLevelRL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    move-result-object p0

    goto :goto_0

    .line 164
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getHeatLevelFR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    move-result-object p0

    goto :goto_0

    .line 161
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getHeatLevelFL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    move-result-object p0

    :goto_0
    const-string p1, "SeatsManager"

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHeatLevel\u52a0\u70ed\u7b49\u7ea7 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVehicleType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;
    .locals 0

    .line 94
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object p0

    return-object p0
.end method

.method public getVentLevel(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    .line 199
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    goto :goto_0

    .line 196
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getVentLevelRR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    move-result-object p0

    goto :goto_0

    .line 193
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getVentLevelRL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    move-result-object p0

    goto :goto_0

    .line 190
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getVentLevelFR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    move-result-object p0

    goto :goto_0

    .line 187
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getVentLevelFL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    move-result-object p0

    :goto_0
    const-string p1, "SeatsManager"

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVentLevel\u901a\u98ce\u7b49\u7ea7 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVentilationHeatConfig(I)I
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 136
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getHeatingAndVentilationRr()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRr;

    move-result-object p0

    const-string p1, "SeatsManager"

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVentilationHeatConfig\u83b7\u53d6\u540e\u53f3\u5ea7\u6905\u914d\u7f6e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRr;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRr;->value:I

    goto :goto_0

    .line 131
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getHeatingAndVentilationRl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRl;

    move-result-object p0

    const-string p1, "SeatsManager"

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVentilationHeatConfig\u83b7\u53d6\u540e\u5de6\u5ea7\u6905\u914d\u7f6e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRl;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRl;->value:I

    goto :goto_0

    .line 126
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getHeatingAndVentilationFr()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;

    move-result-object p0

    const-string p1, "SeatsManager"

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVentilationHeatConfig\u83b7\u53d6\u526f\u9a7e\u5ea7\u6905\u914d\u7f6e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;->value:I

    goto :goto_0

    .line 121
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getHeatingAndVentilationFl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    move-result-object p0

    const-string p1, "SeatsManager"

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVentilationHeatConfig\u83b7\u53d6\u4e3b\u9a7e\u5ea7\u6905\u914d\u7f6e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->value:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVentilationHeatConfigShow()Z
    .locals 3

    .line 100
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getHeatingAndVentilationFl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    move-result-object p0

    .line 101
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getHeatingAndVentilationFr()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isRearviewMirrorAdjustmentPresent()Z

    move-result v1

    .line 104
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    if-ne p0, v2, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;

    if-ne v0, p0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "SeatsManager"

    const-string v0, "getVentilationHeatConfigShow\uff1afalse \u4e0d\u663e\u793a\u5ea7\u8231"

    .line 110
    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string p0, "SeatsManager"

    const-string v0, "getVentilationHeatConfigShow\uff1atrue \u663e\u793a\u5ea7\u8231"

    .line 107
    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public init()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->listener:Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->registerListener(Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;)V

    .line 39
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->carDriveListener:Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarDriveManager;->registerListener(Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;)V

    return-void
.end method

.method public isA88()Z
    .locals 1

    .line 67
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object p0

    .line 68
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->A88:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeatLevelEnable(I)Z
    .locals 0

    .line 218
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isHeatLevelError(I)Z
    .locals 0

    .line 235
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeatVentAutoModeEnabled(I)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 259
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->isHeatVentAutoModeRREnabled()Z

    move-result p0

    goto :goto_0

    .line 255
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->isHeatVentAutoModeRLEnabled()Z

    move-result p0

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->isHeatVentAutoModeFREnabled()Z

    move-result p0

    goto :goto_0

    .line 247
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->isHeatVentAutoModeFLEnabled()Z

    move-result p0

    :goto_0
    const-string v0, "SeatsManager"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhichCarSeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ">>isHeatVentAutoModeEnabled:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isInvalidValue(I)Z
    .locals 1

    .line 148
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getHeatLevel(I)I

    move-result v0

    .line 149
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getVentLevel(I)I

    move-result p0

    .line 150
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    if-eq v0, p1, :cond_1

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSeatControlPresent()Z
    .locals 3

    .line 88
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSeatControlPresent()Z

    move-result p0

    const-string v0, "SeatsManager"

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSeatControlPresent \u4e3b\u9a7e\u5ea7\u6905\u63a7\u5236\u662f\u5426\u914d\u7f6e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isVentLevelEnable(I)Z
    .locals 0

    .line 209
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isVentLevelError(I)Z
    .locals 0

    .line 228
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setHeatLevel(ILcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 289
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatLevelRR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z

    move-result p0

    goto :goto_0

    .line 285
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatLevelRL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z

    move-result p0

    goto :goto_0

    .line 281
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatLevelFR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z

    move-result p0

    goto :goto_0

    .line 277
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatLevelFL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z

    move-result p0

    :goto_0
    const-string v0, "SeatsManager"

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhichCarSeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",setHeatLevel:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " >>  HeatLevel = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHeatVentAutoModeEnabled(IZ)Z
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 357
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatVentAutoModeRREnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 354
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatVentAutoModeRLEnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 351
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatVentAutoModeFREnabled(Z)Z

    move-result p0

    goto :goto_0

    .line 348
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatVentAutoModeFLEnabled(Z)Z

    move-result p0

    :goto_0
    const-string p2, "SeatsManager"

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhichCarSeat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",setHeatVentAutoModeEnabled:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHeatVentMode(ILcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 385
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatVentModeRR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z

    move-result p0

    goto :goto_0

    .line 381
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatVentModeRL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z

    move-result p0

    goto :goto_0

    .line 377
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatVentModeFR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z

    move-result p0

    goto :goto_0

    .line 373
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setHeatVentModeFL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z

    move-result p0

    :goto_0
    const-string v0, "SeatsManager"

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhichCarSeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",setHeatVentLevel Mode succeed :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " >> mode = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->value:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHeatVentOff(I)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhichCarSeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",setHeatVentOff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    invoke-virtual {p0, p1, v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setHeatLevel(ILcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z

    .line 336
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    invoke-virtual {p0, p1, v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setVentLevel(ILcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z

    .line 337
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    invoke-virtual {p0, p1, v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setHeatVentMode(ILcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z

    return-void
.end method

.method public setVentLevel(ILcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z
    .locals 3

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 320
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setVentLevelRR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z

    move-result p0

    goto :goto_0

    .line 316
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setVentLevelRL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z

    move-result p0

    goto :goto_0

    .line 312
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setVentLevelFR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z

    move-result p0

    goto :goto_0

    .line 308
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setVentLevelFL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z

    move-result p0

    :goto_0
    const-string v0, "SeatsManager"

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhichCarSeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",setVentLevel:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " >>  HeatLevel = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public uninit()V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->listener:Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;

    if-eqz v0, :cond_0

    .line 397
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSeatManager;->get()Lcom/yftech/vehicle/sdk/CarSeatManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager;->listener:Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;)V

    :cond_0
    return-void
.end method
