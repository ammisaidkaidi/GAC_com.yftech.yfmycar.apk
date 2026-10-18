.class public Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;
.super Ljava/lang/Object;
.source "CarDoorStatusEvent.java"


# instance fields
.field private doorState:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

.field private whichCarWindow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->doorState:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-object p0
.end method

.method public getWhichCarWindow()I
    .locals 0

    .line 16
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->whichCarWindow:I

    return p0
.end method

.method public setDoorState(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->doorState:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    return-void
.end method

.method public setWhichCarWindow(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->whichCarWindow:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarDoorStatusEvent{whichCarWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->whichCarWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", doorState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->doorState:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
