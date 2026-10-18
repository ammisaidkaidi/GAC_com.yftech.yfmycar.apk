.class public Lcom/yftech/yfmycar/view/bean/CarWindowEvent;
.super Ljava/lang/Object;
.source "CarWindowEvent.java"


# instance fields
.field private carWindowOperationStateFL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

.field private carWindowOperationStateFR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

.field private carWindowOperationStateRL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

.field private carWindowOperationStateRR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

.field private percent:I

.field private whichCarWindow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateFL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    .line 20
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateFR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    .line 21
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateRL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    .line 22
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateRR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    return-void
.end method


# virtual methods
.method public getCarWindowOperationStateFL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateFL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    return-object p0
.end method

.method public getCarWindowOperationStateFR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateFR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    return-object p0
.end method

.method public getCarWindowOperationStateRL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateRL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    return-object p0
.end method

.method public getCarWindowOperationStateRR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateRR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    return-object p0
.end method

.method public getPercent()I
    .locals 0

    .line 68
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->percent:I

    return p0
.end method

.method public getWhichCarWindow()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->whichCarWindow:I

    return p0
.end method

.method public setCarWindowOperationStateFL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateFL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    return-void
.end method

.method public setCarWindowOperationStateFR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateFR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    return-void
.end method

.method public setCarWindowOperationStateRL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateRL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    return-void
.end method

.method public setCarWindowOperationStateRR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateRR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    return-void
.end method

.method public setPercent(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->percent:I

    return-void
.end method

.method public setWhichCarWindow(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->whichCarWindow:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarWindowEvent{whichCarWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->whichCarWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->percent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", carWindowOperationStateFL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateFL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carWindowOperationStateFR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateFR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carWindowOperationStateRL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateRL:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carWindowOperationStateRR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->carWindowOperationStateRR:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
