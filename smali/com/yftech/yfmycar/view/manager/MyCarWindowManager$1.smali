.class Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;
.super Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;
.source "MyCarWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

.field private final windowErrorEventFl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

.field private final windowErrorEventFr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

.field private final windowErrorEventRl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

.field private final windowErrorEventRr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;-><init>()V

    .line 320
    new-instance p1, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventFl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    .line 321
    new-instance p1, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventFr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    .line 322
    new-instance p1, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventRl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    .line 323
    new-instance p1, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventRr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    return-void
.end method


# virtual methods
.method public onWindowOpenPercentFLChanged(I)V
    .locals 2

    .line 369
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOpenPercentFLChanged(I)V

    const-string p0, "MyCarWindowManager"

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowOpenPercentFLChanged  percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowOpenPercentFRChanged(I)V
    .locals 2

    .line 406
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOpenPercentFRChanged(I)V

    const-string p0, "MyCarWindowManager"

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowOpenPercentFRChanged  percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowOpenPercentRLChanged(I)V
    .locals 2

    .line 440
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOpenPercentRLChanged(I)V

    const-string p0, "MyCarWindowManager"

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowOpenPercentRLChanged  percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowOpenPercentRRChanged(I)V
    .locals 2

    .line 474
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOpenPercentRRChanged(I)V

    const-string p0, "MyCarWindowManager"

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowOpenPercentRRChanged  percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowOpenPrecisePercentFLChanged(F)V
    .locals 3

    .line 327
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOpenPrecisePercentFLChanged(F)V

    const-string v0, "MyCarWindowManager"

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowOpenPrecisePercentFLChanged  percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$000(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setWhichCarWindow(I)V

    .line 330
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$000(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowOpenPrecisePercentFRChanged(F)V
    .locals 3

    .line 335
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOpenPrecisePercentFRChanged(F)V

    const-string v0, "MyCarWindowManager"

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowOpenPrecisePercentFRChanged  percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$100(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setWhichCarWindow(I)V

    .line 338
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$100(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowOpenPrecisePercentRLChanged(F)V
    .locals 3

    .line 343
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOpenPrecisePercentRLChanged(F)V

    const-string v0, "MyCarWindowManager"

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowOpenPrecisePercentRLChanged  percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$200(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setWhichCarWindow(I)V

    .line 346
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$200(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowOpenPrecisePercentRRChanged(F)V
    .locals 3

    .line 351
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOpenPrecisePercentRRChanged(F)V

    const-string v0, "MyCarWindowManager"

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowOpenPrecisePercentRRChanged  percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$300(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setWhichCarWindow(I)V

    .line 354
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$300(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowOperationStateFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 3

    .line 376
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOperationStateFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V

    const-string v0, "MyCarWindowManager"

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowOperationStateFLChanged  WindowOperationState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$000(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setCarWindowOperationStateFL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V

    .line 383
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$000(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setWhichCarWindow(I)V

    .line 384
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$000(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowOperationStateFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 3

    .line 413
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOperationStateFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V

    const-string v0, "MyCarWindowManager"

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowOperationStateFRChanged  WindowOperationState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$100(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setCarWindowOperationStateFR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V

    .line 418
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$100(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setWhichCarWindow(I)V

    .line 419
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$100(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowOperationStateRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 3

    .line 447
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOperationStateRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V

    const-string v0, "MyCarWindowManager"

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowOperationStateRLChanged  WindowOperationState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$200(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setCarWindowOperationStateRL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V

    .line 452
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$200(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setWhichCarWindow(I)V

    .line 453
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$200(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowOperationStateRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V
    .locals 3

    .line 482
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOperationStateRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V

    const-string v0, "MyCarWindowManager"

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowOperationStateRRChanged  WindowOperationState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$300(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setCarWindowOperationStateRR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;)V

    .line 485
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$300(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->setWhichCarWindow(I)V

    .line 486
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$300(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowOverheatStateFLChanged(Z)V
    .locals 0

    .line 390
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOverheatStateFLChanged(Z)V

    return-void
.end method

.method public onWindowOverheatStateFRChanged(Z)V
    .locals 0

    .line 424
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOverheatStateFRChanged(Z)V

    return-void
.end method

.method public onWindowOverheatStateRLChanged(Z)V
    .locals 0

    .line 458
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOverheatStateRLChanged(Z)V

    return-void
.end method

.method public onWindowOverheatStateRRChanged(Z)V
    .locals 0

    .line 494
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowOverheatStateRRChanged(Z)V

    return-void
.end method

.method public onWindowRoofOpenOpertionChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;)V
    .locals 3

    .line 510
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowRoofOpenOpertionChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;)V

    const-string v0, "MyCarWindowManager"

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowRoofOpenOpertionChanged  WindowRoofOpenOpertion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->setWhichWindow(I)V

    .line 514
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    move-result-object v0

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->setTiltUp(Z)V

    .line 515
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->setOpenOpertionSky(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;)V

    .line 516
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowRoofOpenPercentChanged(I)V
    .locals 3

    .line 500
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowRoofOpenPercentChanged(I)V

    const-string v0, "MyCarWindowManager"

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowRoofOpenPercentChanged  percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->setWhichWindow(I)V

    .line 504
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->setPercentSky(I)V

    .line 505
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowRoofShadeOpenOpertionChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;)V
    .locals 3

    .line 527
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowRoofShadeOpenOpertionChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;)V

    const-string v0, "MyCarWindowManager"

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowRoofShadeOpenOpertionChanged  WindowRoofShadeOpenOpertion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->setWhichWindow(I)V

    .line 531
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->this$0:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowRoofShadeOpenPercentChanged(I)V
    .locals 2

    .line 520
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowRoofShadeOpenPercentChanged(I)V

    const-string p0, "MyCarWindowManager"

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowRoofShadeOpenPercentChanged  percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowStateFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V
    .locals 3

    .line 359
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowStateFLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V

    const-string v0, "MyCarWindowManager"

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowStateFLChanged  WindowState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventFl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->setError(Z)V

    .line 363
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventFl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->setWhichFragment(I)V

    .line 364
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventFl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowStateFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V
    .locals 3

    .line 396
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowStateFRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V

    const-string v0, "MyCarWindowManager"

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowStateFRChanged  WindowState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventFr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->setError(Z)V

    .line 400
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventFr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->setWhichFragment(I)V

    .line 401
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventFr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowStateRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V
    .locals 3

    .line 430
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowStateRLChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V

    const-string v0, "MyCarWindowManager"

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowStateRLChanged  WindowState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventRl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->setError(Z)V

    .line 434
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventRl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->setWhichFragment(I)V

    .line 435
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventRl:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowStateRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V
    .locals 3

    .line 464
    invoke-super {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;->onWindowStateRRChanged(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;)V

    const-string v0, "MyCarWindowManager"

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowStateRRChanged  WindowState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventRr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->setError(Z)V

    .line 468
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventRr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->setWhichFragment(I)V

    .line 469
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;->windowErrorEventRr:Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->post(Ljava/lang/Object;)V

    return-void
.end method
