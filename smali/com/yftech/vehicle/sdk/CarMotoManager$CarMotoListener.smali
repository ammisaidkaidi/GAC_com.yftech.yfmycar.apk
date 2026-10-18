.class public abstract Lcom/yftech/vehicle/sdk/CarMotoManager$CarMotoListener;
.super Ljava/lang/Object;
.source "CarMotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/CarMotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CarMotoListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearsLevelStatusChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x280
    .end annotation

    return-void
.end method

.method public onGearsStatusChanged(Lcom/yftech/vehicle/internal/adapter/CarMoto$Gears;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x275
    .end annotation

    return-void
.end method

.method public onHandlebarKeyHeatChanged(Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x274
    .end annotation

    return-void
.end method

.method public onIgnitionStatusChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x281
    .end annotation

    return-void
.end method

.method public onKnobLeftRightKeyChanged(Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x279
    .end annotation

    return-void
.end method

.method public onKnobStepNumKeyChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x27e
    .end annotation

    return-void
.end method

.method public onKnobUpDownKeyChanged(Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobUpDownKey;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x278
    .end annotation

    return-void
.end method

.method public onMOTOEngineSpeedChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x27c
    .end annotation

    return-void
.end method

.method public onMOTOFullLightChanged(Z)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x27d
    .end annotation

    return-void
.end method

.method public onMOTOIGNKeyStatusChanged(Lcom/yftech/vehicle/internal/adapter/CarMoto$MOTOIGNStatus;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x27a
    .end annotation

    return-void
.end method

.method public onMOTOSpeedChanged(I)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x27b
    .end annotation

    return-void
.end method

.method public onPreviewModeKeyChanged(Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x277
    .end annotation

    return-void
.end method

.method public onRightModeKeyChanged(Lcom/yftech/vehicle/internal/adapter/CarMoto$RightModeKey;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x276
    .end annotation

    return-void
.end method

.method public onTurnLightInfoChanged(Lcom/yftech/vehicle/internal/adapter/CarMoto$TurnLightInfo;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x273
    .end annotation

    return-void
.end method
