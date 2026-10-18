.class Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;
.super Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;
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
.field private gearPositionEvent:Lcom/yftech/yfmycar/view/bean/GearPositionEvent;

.field private powerEvent:Lcom/yftech/yfmycar/view/bean/PowerEvent;

.field private speedEvent:Lcom/yftech/yfmycar/view/bean/SpeedEvent;

.field final synthetic this$0:Lcom/yftech/yfmycar/view/manager/CarInfoControl;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/manager/CarInfoControl;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onGearPositionChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V

    const-string v0, "CarInfoControl"

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGearPositionChanged ICarInfo.GearPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->gearPositionEvent:Lcom/yftech/yfmycar/view/bean/GearPositionEvent;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/yftech/yfmycar/view/bean/GearPositionEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/GearPositionEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->gearPositionEvent:Lcom/yftech/yfmycar/view/bean/GearPositionEvent;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->gearPositionEvent:Lcom/yftech/yfmycar/view/bean/GearPositionEvent;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/GearPositionEvent;->setGearPosition(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V

    .line 86
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->gearPositionEvent:Lcom/yftech/yfmycar/view/bean/GearPositionEvent;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    .line 87
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarInfoControl;)Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->vehicleGear:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onPowerModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;)V

    const-string v0, "CarInfoControl"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarInfoManager.CarInfoListener >> onPowerModeChanged ICarInfo.PowerMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->powerEvent:Lcom/yftech/yfmycar/view/bean/PowerEvent;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcom/yftech/yfmycar/view/bean/PowerEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/PowerEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->powerEvent:Lcom/yftech/yfmycar/view/bean/PowerEvent;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->powerEvent:Lcom/yftech/yfmycar/view/bean/PowerEvent;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    .line 62
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarInfoControl;)Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->powerMode:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onVehicleSpeedChanged(I)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;->onVehicleSpeedChanged(I)V

    const-string v0, "CarInfoControl"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVehicleSpeedChanged speed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->speedEvent:Lcom/yftech/yfmycar/view/bean/SpeedEvent;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/yftech/yfmycar/view/bean/SpeedEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/SpeedEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->speedEvent:Lcom/yftech/yfmycar/view/bean/SpeedEvent;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->speedEvent:Lcom/yftech/yfmycar/view/bean/SpeedEvent;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/SpeedEvent;->setSpeed(I)V

    .line 73
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->speedEvent:Lcom/yftech/yfmycar/view/bean/SpeedEvent;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    .line 74
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarInfoControl;)Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    move-result-object p0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->vehicleSpeed:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
