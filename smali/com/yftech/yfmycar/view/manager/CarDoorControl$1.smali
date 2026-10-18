.class Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;
.super Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;
.source "CarDoorControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/manager/CarDoorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final carTailgateEvent:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

.field final event:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

.field final synthetic this$0:Lcom/yftech/yfmycar/view/manager/CarDoorControl;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/manager/CarDoorControl;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;-><init>()V

    .line 241
    new-instance p1, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->carTailgateEvent:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    .line 242
    new-instance p1, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->event:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    return-void
.end method


# virtual methods
.method public onAutoUnlockChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)V
    .locals 2

    .line 214
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onAutoUnlockChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;)V

    const-string p0, "CarDoorControl"

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAutoUnlockChanged ICarDoor.AutoUnlockState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$AutoUnlockState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDriverDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onDriverDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V

    const-string p0, "CarDoorControl"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDriverDoorStateChanged ICarDoor.DoorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHoodDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 2

    .line 153
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onHoodDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V

    const-string p0, "CarDoorControl"

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHoodDoorStateChanged ICarDoor.DoorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPEPSAutoTrunkOpenChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)V
    .locals 2

    .line 221
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onPEPSAutoTrunkOpenChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;)V

    const-string p0, "CarDoorControl"

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPEPSAutoTrunkOpenChanged ICarDoor.PEPSAutoTrunkOpenState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$PEPSAutoTrunkOpenState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPSDDoorSpeedLChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V
    .locals 0

    .line 228
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onPSDDoorSpeedLChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V

    return-void
.end method

.method public onPSDDoorSpeedRChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V
    .locals 0

    .line 233
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onPSDDoorSpeedRChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$PSDDoorSpeed;)V

    return-void
.end method

.method public onPassengerDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 2

    .line 165
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onPassengerDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V

    const-string p0, "CarDoorControl"

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPassengerDoorStateChanged ICarDoor.DoorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRearLeftDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 2

    .line 171
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onRearLeftDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V

    const-string p0, "CarDoorControl"

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearLeftDoorStateChanged ICarDoor.DoorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRearRightDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onRearRightDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V

    const-string p0, "CarDoorControl"

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearRightDoorStateChanged ICarDoor.DoorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRemoteUnlockModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)V
    .locals 2

    .line 208
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onRemoteUnlockModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;)V

    const-string p0, "CarDoorControl"

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRemoteUnlockModeChanged ICarDoor.RemoteUnlockMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$RemoteUnlockMode;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSlidingDoorModeAutoStateChanged(Z)V
    .locals 0

    .line 238
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onSlidingDoorModeAutoStateChanged(Z)V

    return-void
.end method

.method public onSlidingDoorStateLChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;)V
    .locals 3

    .line 184
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onSlidingDoorStateLChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;)V

    const-string v0, "CarDoorControl"

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlidingDoorStateLChanged ICarDoor.SlidingDoorState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarDoorControl;)Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->setDoorState(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;)V

    .line 187
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarDoorControl;)Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->setWhichCarWindow(I)V

    .line 188
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarDoorControl;)Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSlidingDoorStateRChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;)V
    .locals 3

    .line 193
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onSlidingDoorStateRChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;)V

    const-string v0, "CarDoorControl"

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSlidingDoorStateRChanged ICarDoor.SlidingDoorState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarDoorControl;)Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->setDoorState(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;)V

    .line 196
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarDoorControl;)Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;->setWhichCarWindow(I)V

    .line 197
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->access$000(Lcom/yftech/yfmycar/view/manager/CarDoorControl;)Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onTailDoorModeStateChanged(Z)V
    .locals 0

    .line 255
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onTailDoorModeStateChanged(Z)V

    return-void
.end method

.method public onTailDoorPercentChanged(I)V
    .locals 3

    .line 246
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onTailDoorPercentChanged(I)V

    const-string v0, "CarDoorControl"

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTailDoorPercentChanged memoryPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->event:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->setMemoryPercent(I)V

    .line 249
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->event:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->setChangeType(I)V

    .line 250
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->event:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onTailDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V
    .locals 3

    .line 269
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onTailDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V

    const-string v0, "CarDoorControl"

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTailDoorStateChanged ICarDoor.TailDoorState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->carTailgateEvent:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->setChangeType(I)V

    .line 273
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->carTailgateEvent:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->setState(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V

    .line 274
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->carTailgateEvent:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onTailDoorTravelPercentChanged(I)V
    .locals 3

    .line 260
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onTailDoorTravelPercentChanged(I)V

    const-string v0, "CarDoorControl"

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTailDoorTravelPercentChanged percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->carTailgateEvent:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->setPercent(I)V

    .line 263
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->carTailgateEvent:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->setChangeType(I)V

    .line 264
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;->carTailgateEvent:Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onTrunkDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V
    .locals 2

    .line 202
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;->onTrunkDoorStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;)V

    const-string p0, "CarDoorControl"

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrunkDoorStateChanged ICarDoor.DoorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
