.class Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView$1;
.super Ljava/lang/Object;
.source "FontSeatPositionView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->access$000(Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    if-eq v0, v1, :cond_0

    .line 136
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->access$000(Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->controlSeatAction(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)V

    .line 137
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->access$100(Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
