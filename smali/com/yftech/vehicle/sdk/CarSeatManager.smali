.class public Lcom/yftech/vehicle/sdk/CarSeatManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarSeatManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarSeat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarSeatManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarSeatManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarSeatManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarSeatManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarSeatManager;->sMe:Lcom/yftech/vehicle/sdk/CarSeatManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarSeatManager;->sMe:Lcom/yftech/vehicle/sdk/CarSeatManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarSeatManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarSeatManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarSeatManager;->sMe:Lcom/yftech/vehicle/sdk/CarSeatManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getChildLockRL()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x15b

    .line 366
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getChildLockRR()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x15d

    .line 381
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getCurrPepsPuid()Lcom/yftech/vehicle/internal/adapter/ICarSeat$CurrPepsPuid;
    .locals 1

    const/16 v0, 0x1f5

    .line 396
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$CurrPepsPuid;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$CurrPepsPuid;

    move-result-object p0

    return-object p0
.end method

.method public getHeatLevelFL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;
    .locals 1

    const/16 v0, 0x57

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    move-result-object p0

    return-object p0
.end method

.method public getHeatLevelFR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;
    .locals 1

    const/16 v0, 0x58

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    move-result-object p0

    return-object p0
.end method

.method public getHeatLevelRL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;
    .locals 1

    const/16 v0, 0x59

    .line 66
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    move-result-object p0

    return-object p0
.end method

.method public getHeatLevelRR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;
    .locals 1

    const/16 v0, 0x5a

    .line 82
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    move-result-object p0

    return-object p0
.end method

.method public getMemSysOperationReqCmd()Lcom/yftech/vehicle/internal/adapter/ICarSeat$MemSysOperationReqCmd;
    .locals 1

    const/16 v0, 0x1fa

    .line 436
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$MemSysOperationReqCmd;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$MemSysOperationReqCmd;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageLevelFL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;
    .locals 1

    const/16 v0, 0x2ae

    .line 514
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageLevelFR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;
    .locals 1

    const/16 v0, 0x2b4

    .line 568
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageLevelRL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;
    .locals 1

    const/16 v0, 0x128

    .line 296
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageLevelRR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;
    .locals 1

    const/16 v0, 0x12e

    .line 350
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageModeFL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;
    .locals 1

    const/16 v0, 0x2ac

    .line 498
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageModeFR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;
    .locals 1

    const/16 v0, 0x2b2

    .line 552
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageModeRL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;
    .locals 1

    const/16 v0, 0x126

    .line 280
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageModeRR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;
    .locals 1

    const/16 v0, 0x12c

    .line 334
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageOnOffFL()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x2aa

    .line 476
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageOnOffFR()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x2b0

    .line 530
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageOnOffRL()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x124

    .line 258
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getSeatMassageOnOffRR()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x12a

    .line 312
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getSeatOperationState()Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatOperationState;
    .locals 1

    const/16 v0, 0x1f9

    .line 428
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatOperationState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatOperationState;

    move-result-object p0

    return-object p0
.end method

.method public getVentLevelFL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;
    .locals 1

    const/16 v0, 0x5b

    .line 98
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    move-result-object p0

    return-object p0
.end method

.method public getVentLevelFR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;
    .locals 1

    const/16 v0, 0x5c

    .line 114
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    move-result-object p0

    return-object p0
.end method

.method public getVentLevelRL()Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;
    .locals 1

    const/16 v0, 0x5d

    .line 130
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    move-result-object p0

    return-object p0
.end method

.method public getVentLevelRR()Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;
    .locals 1

    const/16 v0, 0x5e

    .line 146
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    move-result-object p0

    return-object p0
.end method

.method public isHeatVentAutoModeFLEnabled()Z
    .locals 1

    const/16 v0, 0x5f

    .line 193
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeatVentAutoModeFREnabled()Z
    .locals 1

    const/16 v0, 0x60

    .line 207
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeatVentAutoModeRLEnabled()Z
    .locals 1

    const/16 v0, 0x61

    .line 221
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHeatVentAutoModeRREnabled()Z
    .locals 1

    const/16 v0, 0x62

    .line 235
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarSeatManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;)V
    .locals 0

    .line 583
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setAccountDelete(Lcom/yftech/vehicle/internal/adapter/ICarSeat$AccountDelete;)Z
    .locals 1

    .line 412
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$AccountDelete;->value:I

    const/16 v0, 0x1f7

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setChildLockRLEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x15c

    .line 373
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setChildLockRREnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x15e

    .line 388
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setCurrAccountCfg(Lcom/yftech/vehicle/internal/adapter/ICarSeat$CurrAccountCfg;)Z
    .locals 1

    .line 404
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$CurrAccountCfg;->value:I

    const/16 v0, 0x1f6

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setCurrAccountSeatPosition(Lcom/yftech/vehicle/internal/adapter/ICarSeat$CurrAccountSeat;)Z
    .locals 1

    .line 452
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$CurrAccountSeat;->value:I

    const/16 v0, 0x29b

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDriverSeatPostionCmd(Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;)Z
    .locals 1

    .line 420
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$DriverSeatPostionCmd;->value:I

    const/16 v0, 0x1f8

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHeatLevelFL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z
    .locals 1

    .line 42
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHeatLevelFR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z
    .locals 1

    .line 58
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHeatLevelRL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z
    .locals 1

    .line 74
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHeatLevelRR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z
    .locals 1

    .line 90
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHeatVentAutoModeFLEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1b

    .line 200
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setHeatVentAutoModeFREnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1c

    .line 214
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setHeatVentAutoModeRLEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1d

    .line 228
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setHeatVentAutoModeRREnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1e

    .line 242
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setHeatVentModeFL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z
    .locals 1

    .line 162
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->value:I

    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHeatVentModeFR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z
    .locals 1

    .line 170
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->value:I

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHeatVentModeRL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z
    .locals 1

    .line 178
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->value:I

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHeatVentModeRR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z
    .locals 1

    .line 186
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->value:I

    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageLevelFL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;)Z
    .locals 1

    .line 522
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;->value:I

    const/16 v0, 0x2af

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageLevelFR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;)Z
    .locals 1

    .line 576
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;->value:I

    const/16 v0, 0x2b5

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageLevelRL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;)Z
    .locals 1

    .line 304
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;->value:I

    const/16 v0, 0x129

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageLevelRR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;)Z
    .locals 1

    .line 358
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageLevel;->value:I

    const/16 v0, 0x12f

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageModeFL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;)Z
    .locals 1

    .line 506
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;->value:I

    const/16 v0, 0x2ad

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageModeFR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;)Z
    .locals 1

    .line 560
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;->value:I

    const/16 v0, 0x2b3

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageModeRL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;)Z
    .locals 1

    .line 288
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;->value:I

    const/16 v0, 0x127

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageModeRR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;)Z
    .locals 1

    .line 342
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatMassageMode;->value:I

    const/16 v0, 0x12d

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageOnOffFLEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x2ab

    .line 483
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageOnOffFLSwitch(Z)Z
    .locals 1

    const/16 v0, 0x2b8

    .line 490
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageOnOffFREnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x2b1

    .line 537
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageOnOffFRSwitch(Z)Z
    .locals 1

    const/16 v0, 0x2b7

    .line 544
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageOnOffRLEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x125

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageOnOffRLSwitch(Z)Z
    .locals 1

    const/16 v0, 0x29c

    .line 272
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageOnOffRREnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x12b

    .line 319
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSeatMassageOnOffRRSwitch(Z)Z
    .locals 1

    const/16 v0, 0x29d

    .line 326
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setSeatSteeringWheel(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)Z
    .locals 1

    .line 250
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->value:I

    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatSteeringWheelFR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;)Z
    .locals 1

    .line 444
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    const/16 v0, 0x299

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatSteeringWheelRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;)Z
    .locals 1

    .line 460
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    const/16 v0, 0x29e

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setSeatSteeringWheelRearRight(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;)Z
    .locals 1

    .line 468
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    const/16 v0, 0x29f

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setVentLevelFL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z
    .locals 1

    .line 106
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    const/16 v0, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setVentLevelFR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z
    .locals 1

    .line 122
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setVentLevelRL(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z
    .locals 1

    .line 138
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    const/16 v0, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setVentLevelRR(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z
    .locals 1

    .line 154
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    const/16 v0, 0x16

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;)V
    .locals 0

    .line 590
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSeatManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
