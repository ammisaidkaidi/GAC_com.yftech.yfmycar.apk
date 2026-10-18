.class Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$1;
.super Ljava/lang/Object;
.source "SkyLightFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;
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

    .line 50
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->isAdded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 54
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    move-result-object p1

    .line 55
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    :cond_1
    return v1
.end method
