.class Lcom/yftech/yfmycar/view/manager/CarMirrorControl$1;
.super Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;
.source "CarMirrorControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/manager/CarMirrorControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/manager/CarMirrorControl;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/manager/CarMirrorControl;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarMirrorControl$1;->this$0:Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRearviewMirrorStateLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onRearviewMirrorStateLChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;)V

    const-string p0, "CarMirrorControl"

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearviewMirrorStateLChanged   ICarSettings.RearviewMirrorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRearviewMirrorStateRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarSettingsManager$CarSettingsListener;->onRearviewMirrorStateRChanged(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;)V

    const-string p0, "CarMirrorControl"

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRearviewMirrorStateRChanged   ICarSettings.RearviewMirrorState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorState;->value:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
