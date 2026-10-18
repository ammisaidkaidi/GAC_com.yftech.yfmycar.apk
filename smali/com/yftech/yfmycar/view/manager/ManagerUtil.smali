.class public Lcom/yftech/yfmycar/view/manager/ManagerUtil;
.super Ljava/lang/Object;
.source "ManagerUtil.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ManagerUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initAllManager(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V
    .locals 2

    const-string v0, "ManagerUtil"

    const-string v1, "initAllManager start"

    .line 15
    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->init()V

    .line 17
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->init()V

    .line 18
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->init()V

    .line 19
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->init(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V

    .line 20
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->registerListener()V

    .line 21
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/LightManager;->init()V

    const-string p0, "ManagerUtil"

    const-string v0, "initAllManager end"

    .line 22
    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unInitAllManager(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->uninit()V

    .line 27
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->unInit()V

    .line 28
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->unInit()V

    .line 29
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->unInit()V

    .line 30
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->unregisterListener()V

    .line 31
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/LightManager;->uninit()V

    return-void
.end method
