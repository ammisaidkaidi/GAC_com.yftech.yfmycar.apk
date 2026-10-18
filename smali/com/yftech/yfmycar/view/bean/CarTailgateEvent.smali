.class public Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;
.super Ljava/lang/Object;
.source "CarTailgateEvent.java"


# instance fields
.field changeType:I

.field memoryPercent:I

.field percent:I

.field private state:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChangeType()I
    .locals 0

    .line 16
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->changeType:I

    return p0
.end method

.method public getMemoryPercent()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->memoryPercent:I

    return p0
.end method

.method public getPercent()I
    .locals 0

    .line 32
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->percent:I

    return p0
.end method

.method public getState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->state:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-object p0
.end method

.method public setChangeType(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->changeType:I

    return-void
.end method

.method public setMemoryPercent(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->memoryPercent:I

    return-void
.end method

.method public setPercent(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->percent:I

    return-void
.end method

.method public setState(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->state:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarTailgateEvent{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->state:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->percent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", memoryPercent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->memoryPercent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", changeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->changeType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
