.class public abstract Lcom/yftech/vehicle/sdk/CarDMSManager$CarDMSListener;
.super Ljava/lang/Object;
.source "CarDMSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarDMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarDMSListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDMSDistrWarnChanged(Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSDistrWarn;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x268
    .end annotation

    return-void
.end method

.method public onDMSFatigWarnChanged(Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x267
    .end annotation

    return-void
.end method

.method public onDMSModeChanged(Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x266
    .end annotation

    return-void
.end method

.method public onDMSSwitchChanged(Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSwitch;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x264
    .end annotation

    return-void
.end method

.method public onDMSSysErrStatusChanged(Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSysErrStatus;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x262
    .end annotation

    return-void
.end method
