.class Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$3;
.super Ljava/lang/Object;
.source "SkyLightFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->onBindView(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$3;->this$0:Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$3;->this$0:Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->access$300(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$3;->this$0:Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlTiltUp(Z)V

    .line 140
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$3;->this$0:Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->access$300(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
