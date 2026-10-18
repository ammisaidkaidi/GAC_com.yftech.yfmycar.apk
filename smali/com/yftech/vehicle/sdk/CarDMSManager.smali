.class public Lcom/yftech/vehicle/sdk/CarDMSManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "CarDMSManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/CarDMS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/CarDMSManager$CarDMSListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarDMSManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarDMSManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarDMSManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarDMSManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarDMSManager;->sMe:Lcom/yftech/vehicle/sdk/CarDMSManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarDMSManager;->sMe:Lcom/yftech/vehicle/sdk/CarDMSManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarDMSManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarDMSManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarDMSManager;->sMe:Lcom/yftech/vehicle/sdk/CarDMSManager;
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
.method public getDMSDistrWarn()Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSDistrWarn;
    .locals 1

    const/16 v0, 0x268

    .line 81
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDMSManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSDistrWarn;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSDistrWarn;

    move-result-object p0

    return-object p0
.end method

.method public getDMSFatigWarn()Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;
    .locals 1

    const/16 v0, 0x267

    .line 73
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDMSManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    move-result-object p0

    return-object p0
.end method

.method public getDMSMode()Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;
    .locals 1

    const/16 v0, 0x266

    .line 65
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDMSManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    move-result-object p0

    return-object p0
.end method

.method public getDMSSwitch()Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSwitch;
    .locals 1

    const/16 v0, 0x264

    .line 49
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDMSManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSwitch;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSwitch;

    move-result-object p0

    return-object p0
.end method

.method public getDMSSysErrStatus()Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSysErrStatus;
    .locals 1

    const/16 v0, 0x262

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDMSManager;->getSignalValue(I)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSysErrStatus;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSysErrStatus;

    move-result-object p0

    return-object p0
.end method

.method public registerListener(Lcom/yftech/vehicle/sdk/CarDMSManager$CarDMSListener;)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDMSManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public setDMSMode(Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;)Z
    .locals 1

    .line 57
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->value:I

    const/16 v0, 0x265

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDMSManager;->setSignalValue(II)Z

    move-result p0

    return p0
.end method

.method public setDMSSwitchEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    const/16 v0, 0x263

    .line 41
    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/CarDMSManager;->setSignalValue(IB)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/CarDMSManager$CarDMSListener;)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDMSManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
