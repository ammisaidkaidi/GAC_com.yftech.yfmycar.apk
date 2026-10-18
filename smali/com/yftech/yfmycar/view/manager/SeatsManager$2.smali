.class Lcom/yftech/yfmycar/view/manager/SeatsManager$2;
.super Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;
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
.field final synthetic this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/manager/SeatsManager;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarSeatManager$CarSeatListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeatLevelFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeatLevelFLChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 412
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setLevel(I)V

    .line 413
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 414
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 415
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onHeatLevelFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeatLevelFRChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 422
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setLevel(I)V

    .line 423
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 424
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 425
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onHeatLevelRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeatLevelRLChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 432
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setLevel(I)V

    .line 433
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 434
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 435
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onHeatLevelRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeatLevelRRChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 442
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setLevel(I)V

    .line 443
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 444
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 445
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onHeatVentAutoModeFLStateChanged(Z)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeatVentAutoModeFLStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 492
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 493
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 494
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onHeatVentAutoModeFRStateChanged(Z)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeatVentAutoModeFRStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 501
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 502
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 503
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onHeatVentAutoModeRLStateChanged(Z)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeatVentAutoModeRLStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 510
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 511
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 512
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onHeatVentAutoModeRRStateChanged(Z)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHeatVentAutoModeRRStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 519
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 520
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 521
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onVentLevelFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVentLevelFLChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 452
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setLevel(I)V

    .line 453
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 454
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 455
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onVentLevelFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVentLevelFRChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setLevel(I)V

    .line 462
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 463
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 464
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 465
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onVentLevelRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVentLevelRLChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 472
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setLevel(I)V

    .line 473
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 474
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 475
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onVentLevelRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVentLevelRRChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setAutoEnable(Z)V

    .line 482
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object v0

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setLevel(I)V

    .line 483
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setSeatType(I)V

    .line 484
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->setVentHeatAuto(I)V

    .line 485
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/SeatsManager$2;->this$0:Lcom/yftech/yfmycar/view/manager/SeatsManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->access$000(Lcom/yftech/yfmycar/view/manager/SeatsManager;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method
