.class Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment$1;
.super Ljava/lang/Object;
.source "LeftRearviewMirrorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 128
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    .line 129
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
