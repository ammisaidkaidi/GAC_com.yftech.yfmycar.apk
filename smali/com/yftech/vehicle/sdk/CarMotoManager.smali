.class public Lcom/yftech/vehicle/sdk/CarMotoManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarMotoManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/CarMoto;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarMotoManager$CarMotoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarMotoManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarMotoManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarMotoManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarMotoManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarMotoManager;->sMe:Lcom/yftech/vehicle/sdk/CarMotoManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarMotoManager;->sMe:Lcom/yftech/vehicle/sdk/CarMotoManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarMotoManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarMotoManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarMotoManager;->sMe:Lcom/yftech/vehicle/sdk/CarMotoManager;
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
.method public getGearsLevelStatus()I
    .locals 1

    const/16 v0, 0x280

    .line 125
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getGearsStatus()Lcom/yftech/vehicle/internal/adapter/CarMoto$Gears;
    .locals 1

    const/16 v0, 0x275

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarMoto$Gears;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$Gears;

    move-result-object p0

    return-object p0
.end method

.method public getHandlebarKeyHeat()Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;
    .locals 1

    const/16 v0, 0x274

    .line 42
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    move-result-object p0

    return-object p0
.end method

.method public getIgnitionStatus()I
    .locals 1

    const/16 v0, 0x281

    .line 132
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getKnobLeftRightKey()Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;
    .locals 1

    const/16 v0, 0x279

    .line 82
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    move-result-object p0

    return-object p0
.end method

.method public getKnobStepNumKey()I
    .locals 1

    const/16 v0, 0x27e

    .line 89
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getKnobUpDownKey()Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobUpDownKey;
    .locals 1

    const/16 v0, 0x278

    .line 74
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobUpDownKey;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobUpDownKey;

    move-result-object p0

    return-object p0
.end method

.method public getMOTOEngineSpeed()I
    .locals 1

    const/16 v0, 0x27c

    .line 111
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getMOTOFullLight()Z
    .locals 1

    const/16 v0, 0x27d

    .line 118
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMOTOIGNKeyStatus()Lcom/yftech/vehicle/internal/adapter/CarMoto$MOTOIGNStatus;
    .locals 1

    const/16 v0, 0x27a

    .line 97
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarMoto$MOTOIGNStatus;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$MOTOIGNStatus;

    move-result-object p0

    return-object p0
.end method

.method public getMOTOSpeed()I
    .locals 1

    const/16 v0, 0x27b

    .line 104
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getPreviewModeKey()Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;
    .locals 1

    const/16 v0, 0x277

    .line 66
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    move-result-object p0

    return-object p0
.end method

.method public getRightModeKey()Lcom/yftech/vehicle/internal/adapter/CarMoto$RightModeKey;
    .locals 1

    const/16 v0, 0x276

    .line 58
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarMoto$RightModeKey;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$RightModeKey;

    move-result-object p0

    return-object p0
.end method

.method public getTurnLightInfo()Lcom/yftech/vehicle/internal/adapter/CarMoto$TurnLightInfo;
    .locals 1

    const/16 v0, 0x273

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarMotoManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarMoto$TurnLightInfo;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$TurnLightInfo;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarMotoManager$CarMotoListener;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarMotoManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarMotoManager$CarMotoListener;)V
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarMotoManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
