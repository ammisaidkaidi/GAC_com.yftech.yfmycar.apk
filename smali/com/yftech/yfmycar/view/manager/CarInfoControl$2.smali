.class Lcom/yftech/yfmycar/view/manager/CarInfoControl$2;
.super Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;
.source "CarInfoControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/manager/CarInfoControl;->init(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private powerEvent:Lcom/yftech/yfmycar/view/bean/PowerEvent;

.field final synthetic this$0:Lcom/yftech/yfmycar/view/manager/CarInfoControl;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/manager/CarInfoControl;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$2;->this$0:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;->onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V

    const-string v0, "CarInfoControl"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarPowerManager.CarPowerListener >> onPowerModeChanged ICarInfo.PowerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$2;->powerEvent:Lcom/yftech/yfmycar/view/bean/PowerEvent;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/yftech/yfmycar/view/bean/PowerEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/PowerEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$2;->powerEvent:Lcom/yftech/yfmycar/view/bean/PowerEvent;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$2;->powerEvent:Lcom/yftech/yfmycar/view/bean/PowerEvent;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/PowerEvent;->setPowerMode(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V

    .line 109
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$2;->powerEvent:Lcom/yftech/yfmycar/view/bean/PowerEvent;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    .line 110
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$2;->this$0:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarInfoControl;)Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->powerMode:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;->value:I

    invoke-static {p1}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;->onPowerStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerState;)V

    return-void
.end method
