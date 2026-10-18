.class public Lcom/yftech/yfmycar/view/manager/CarMirrorControl;
.super Ljava/lang/Object;
.source "CarMirrorControl.java"


# static fields
.field public static volatile instance:Lcom/yftech/yfmycar/view/manager/CarMirrorControl;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private listener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarMirrorControl"

    .line 12
    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->TAG:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/yftech/yfmycar/view/manager/CarMirrorControl$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl$1;-><init>(Lcom/yftech/yfmycar/view/manager/CarMirrorControl;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->listener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

    return-void
.end method

.method public static getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;
    .locals 2

    .line 16
    sget-object v0, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->instance:Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    if-nez v0, :cond_1

    .line 17
    const-class v0, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    monitor-enter v0

    .line 18
    :try_start_0
    sget-object v1, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->instance:Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    if-nez v1, :cond_0

    .line 19
    new-instance v1, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    invoke-direct {v1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;-><init>()V

    sput-object v1, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->instance:Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    .line 21
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 23
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->instance:Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 1

    .line 29
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->listener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->registerListener(Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;)V

    return-void
.end method

.method public setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z
    .locals 2

    const-string p0, "CarMirrorControl"

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRearViewMirrorCmd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->setRearviewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .locals 1

    .line 33
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->get()Lcom/yftech/vehicle/sdk/CarSettingsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->listener:Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;)V

    return-void
.end method
