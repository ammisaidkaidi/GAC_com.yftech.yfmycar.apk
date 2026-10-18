.class Lcom/yftech/yfmycar/view/manager/SeatsManager$1;
.super Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;
.source "SeatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/manager/SeatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private driveModeEvent:Lcom/yftech/yfmycar/view/bean/DriveModeEvent;

.field final synthetic this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/manager/SeatsManager;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarDriveManager$CarDriveListener;-><init>()V

    .line 43
    new-instance p1, Lcom/yftech/yfmycar/view/bean/DriveModeEvent;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/bean/DriveModeEvent;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$1;->driveModeEvent:Lcom/yftech/yfmycar/view/bean/DriveModeEvent;

    return-void
.end method


# virtual methods
.method public onDriveModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriveModeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$1;->driveModeEvent:Lcom/yftech/yfmycar/view/bean/DriveModeEvent;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/DriveModeEvent;->setMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V

    .line 49
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$1;->driveModeEvent:Lcom/yftech/yfmycar/view/bean/DriveModeEvent;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onEspStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$EspState;)V
    .locals 2

    const-string p0, "SeatsManager"

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEspStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHdcStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDrive$HdcState;)V
    .locals 2

    const-string p0, "SeatsManager"

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHdcStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
