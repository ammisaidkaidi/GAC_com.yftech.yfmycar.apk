.class Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment$1;
.super Ljava/lang/Object;
.source "RightRearviewMirrorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    if-eq v0, v1, :cond_0

    .line 124
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    .line 125
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->access$200(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
