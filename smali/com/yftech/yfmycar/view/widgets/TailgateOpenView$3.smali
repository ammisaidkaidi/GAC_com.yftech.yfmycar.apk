.class Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;
.super Ljava/lang/Object;
.source "TailgateOpenView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 285
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    .line 286
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateTravelPercent()I

    move-result p1

    .line 287
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object v0, v0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object v0, v0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->onFinish(I)V

    .line 289
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object v0, v0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    invoke-interface {v0, v1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->isMoving(Z)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget v2, v2, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    mul-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x64

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget v2, v2, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    add-int/2addr p1, v2

    iput p1, v0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 292
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->invalidate()V

    goto :goto_0

    .line 293
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xb

    if-ne p1, v0, :cond_3

    .line 294
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz p1, :cond_2

    .line 295
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    invoke-interface {p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->onUiBack()V

    .line 297
    :cond_2
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->updateMemory()V

    :cond_3
    :goto_0
    return v1
.end method
