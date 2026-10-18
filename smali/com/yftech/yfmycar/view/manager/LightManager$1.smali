.class Lcom/yftech/yfmycar/view/manager/LightManager$1;
.super Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;
.source "LightManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/manager/LightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/manager/LightManager;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/manager/LightManager;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/LightManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/LightManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAtmosphereLampBrightnessChanged(I)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtmosphereLampBrightnessChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/LightManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/LightManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/LightManager;->access$000(Lcom/yftech/yfmycar/view/manager/LightManager;)Lcom/yftech/yfmycar/view/bean/CarLightEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtmosphereLampColorChanged(I)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtmosphereLampColorChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/LightManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/LightManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/LightManager;->access$000(Lcom/yftech/yfmycar/view/manager/LightManager;)Lcom/yftech/yfmycar/view/bean/CarLightEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtmosphereLampMusicModeEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtmosphereLampMusicModeSwitchStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/LightManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/LightManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/LightManager;->access$000(Lcom/yftech/yfmycar/view/manager/LightManager;)Lcom/yftech/yfmycar/view/bean/CarLightEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtmosphereLampWorkModeChanged(Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;)V
    .locals 3

    const-string v0, "SeatsManager"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAtmosphereLampWorkModeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/LightManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/LightManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/LightManager;->access$000(Lcom/yftech/yfmycar/view/manager/LightManager;)Lcom/yftech/yfmycar/view/bean/CarLightEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onBrakeLampStateChanged(Z)V
    .locals 3

    .line 189
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;->onBrakeLampStateChanged(Z)V

    const-string v0, "SeatsManager"

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBrakeLampStateChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/LightManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/LightManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/LightManager;->access$000(Lcom/yftech/yfmycar/view/manager/LightManager;)Lcom/yftech/yfmycar/view/bean/CarLightEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarLightEvent;->setEnable(Z)V

    .line 192
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/LightManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/LightManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/LightManager;->access$000(Lcom/yftech/yfmycar/view/manager/LightManager;)Lcom/yftech/yfmycar/view/bean/CarLightEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onHeadLightDelayEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 2

    .line 209
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;->onHeadLightDelayEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    const-string p0, "SeatsManager"

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHeadLightDelayEnableStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onIHBCEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V
    .locals 2

    .line 203
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;->onIHBCEnableStateChanged(Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;)V

    const-string p0, "SeatsManager"

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIHBCEnableStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onILBCStateChanged(Z)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;->onILBCStateChanged(Z)V

    const-string p0, "SeatsManager"

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onILBCStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLowLightStateChanged(Z)V
    .locals 2

    .line 215
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;->onLowLightStateChanged(Z)V

    const-string p0, "SeatsManager"

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLowLightStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTopLightStateChanged(Z)V
    .locals 2

    .line 221
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;->onTopLightStateChanged(Z)V

    const-string p0, "SeatsManager"

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTopLightStateChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
