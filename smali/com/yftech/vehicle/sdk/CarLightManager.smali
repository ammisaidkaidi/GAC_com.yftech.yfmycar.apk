.class public Lcom/yftech/vehicle/sdk/CarLightManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarLightManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarLight;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarLightManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarLightManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarLightManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarLightManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarLightManager;->sMe:Lcom/yftech/vehicle/sdk/CarLightManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarLightManager;->sMe:Lcom/yftech/vehicle/sdk/CarLightManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarLightManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarLightManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarLightManager;->sMe:Lcom/yftech/vehicle/sdk/CarLightManager;
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
.method public getADBEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x229

    .line 295
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getAtmosphereDriveModeLampColor()I
    .locals 1

    const/16 v0, 0x28b

    .line 331
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getAtmosphereLampBrightness()I
    .locals 1

    const/16 v0, 0x113

    .line 119
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getAtmosphereLampColor()I
    .locals 1

    const/16 v0, 0x115

    .line 133
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getAtmosphereLampDriveMode()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x26b

    .line 171
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getAtmosphereLampMusicModeEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x119

    .line 187
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getAtmosphereLampWorkMode()Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;
    .locals 1

    const/16 v0, 0x117

    .line 148
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    move-result-object p0

    return-object p0
.end method

.method public getAutoHoldLightEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x1ef

    .line 210
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getAutoWelLightEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x261

    .line 324
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getDRLLightEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x2bb

    .line 346
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getDRLLightValidState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x2bd

    .line 361
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getDriverModeMusicModeCfg()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x291

    .line 369
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getHeadLightDelayEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0xb2

    .line 70
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getIHBCEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0xb1

    .line 55
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getLightShowMainLampSwitchSt()Lcom/yftech/vehicle/internal/adapter/ICarLight$MainLampSwitchSt;
    .locals 1

    const/16 v0, 0x1ff

    .line 256
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarLight$MainLampSwitchSt;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarLight$MainLampSwitchSt;

    move-result-object p0

    return-object p0
.end method

.method public getLightShowMode()Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;
    .locals 1

    const/16 v0, 0x1fc

    .line 272
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;

    move-result-object p0

    return-object p0
.end method

.method public getTechGlassLightChoose()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x293

    .line 385
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getWelLightEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;
    .locals 1

    const/16 v0, 0x1f1

    .line 225
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    return-object p0
.end method

.method public getWelLightMode()Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;
    .locals 1

    const/16 v0, 0x1f3

    .line 240
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;

    move-result-object p0

    return-object p0
.end method

.method public isBrakeLampEnabled()Z
    .locals 1

    const/16 v0, 0xc6

    .line 33
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isILBCEnabled()Z
    .locals 1

    const/16 v0, 0xc7

    .line 40
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isLowLightEnabled()Z
    .locals 1

    const/16 v0, 0xd1

    .line 84
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isSmallLightEnabled()Z
    .locals 1

    const/16 v0, 0x106

    .line 91
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public isTopLightEnabled()Z
    .locals 1

    const/16 v0, 0xdc

    .line 98
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getSignalValue(I)Ljava/lang/Number;

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

.method public registerListener(Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;)V
    .locals 0

    .line 408
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setADBEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x22a

    .line 302
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereDriveModeLampColor(I)Z
    .locals 1

    const/16 v0, 0x28c

    .line 338
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampBrightness(I)Z
    .locals 1

    const/16 v0, 0x114

    .line 126
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampColor(I)Z
    .locals 1

    const/16 v0, 0x116

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampDriveMode(Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampDriveMode;)Z
    .locals 1

    .line 179
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampDriveMode;->value:I

    const/16 v0, 0x26f

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampDriveModeEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x118

    .line 163
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampMusicMode(Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;)Z
    .locals 1

    .line 202
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->value:I

    const/16 v0, 0x295

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampMusicModeEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x11a

    .line 194
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampStateEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x112

    .line 112
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampWorkMode(Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;)Z
    .locals 1

    .line 156
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->value:I

    const/16 v0, 0x15f

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setAutoHoldLightFunCfgEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1f0

    .line 217
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setAutoWelLightEnableStateEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x260

    .line 316
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setDRLLightFunCfgEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x2bc

    .line 353
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setDriverModeMusicModeCfg(Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;)Z
    .locals 1

    .line 377
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->value:I

    const/16 v0, 0x292

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setHeadLightDelayEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x46

    .line 77
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setHeadLightVirtualSwitch(Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;)Z
    .locals 1

    .line 401
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->value:I

    const/16 v0, 0x2ce

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setIHBCEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x45

    .line 62
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setILBCEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0xc8

    .line 47
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setLightShowFunCmd(Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;)Z
    .locals 1

    .line 264
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowFunCmd;->value:I

    const/16 v0, 0x1fb

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setLightShowMode(Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;)Z
    .locals 1

    .line 280
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarLight$LightShowMode;->value:I

    const/16 v0, 0x1fd

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setLightShowTime(I)Z
    .locals 1

    const/16 v0, 0x1fe

    .line 287
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setTechGlassLightChoose(Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;)Z
    .locals 1

    .line 393
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->value:I

    const/16 v0, 0x294

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setTopLightAllCtrlEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x23f

    .line 309
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setTopLightEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0xdd

    .line 105
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setWelLightFunCfgEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x1f2

    .line 232
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public setWelLightMode(Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;)Z
    .locals 1

    .line 248
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarLight$WelLightMode;->value:I

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;)V
    .locals 0

    .line 415
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
