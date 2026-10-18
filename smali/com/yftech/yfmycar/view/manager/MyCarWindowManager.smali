.class public Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;
.super Ljava/lang/Object;
.source "MyCarWindowManager.java"


# static fields
.field public static final skyWindow:I = 0x0

.field public static final sunBlindWindow:I = 0x1

.field public static volatile windowManager:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final carWindowListener:Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;

.field private final eventFL:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

.field private final eventFR:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

.field private final eventRL:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

.field private final eventRR:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

.field private final skyLightEvent:Lcom/yftech/yfmycar/view/bean/SkyLightEvent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MyCarWindowManager"

    .line 33
    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->TAG:Ljava/lang/String;

    .line 313
    new-instance v0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->eventFL:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    .line 314
    new-instance v0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->eventFR:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    .line 315
    new-instance v0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->eventRL:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    .line 316
    new-instance v0, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->eventRR:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    .line 317
    new-instance v0, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->skyLightEvent:Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    .line 318
    new-instance v0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager$1;-><init>(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->carWindowListener:Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->eventFL:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->eventFR:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->eventRL:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/CarWindowEvent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->eventRR:Lcom/yftech/yfmycar/view/bean/CarWindowEvent;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;)Lcom/yftech/yfmycar/view/bean/SkyLightEvent;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->skyLightEvent:Lcom/yftech/yfmycar/view/bean/SkyLightEvent;

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;
    .locals 2

    .line 42
    sget-object v0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->windowManager:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    if-nez v0, :cond_1

    .line 43
    const-class v0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->windowManager:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    invoke-direct {v1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;-><init>()V

    sput-object v1, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->windowManager:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    .line 47
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 49
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->windowManager:Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    return-object v0
.end method


# virtual methods
.method public controlCarWindow(ILcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "MyCarWindowManager"

    .line 168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MotionEvent.ACTION_UP  controlCarWindowRearRight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearRight(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    move-result p0

    goto :goto_0

    :pswitch_1
    const-string p0, "MyCarWindowManager"

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MotionEvent.ACTION_UP  controlCarWindowRearLeft = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    move-result p0

    goto :goto_0

    :pswitch_2
    const-string p0, "MyCarWindowManager"

    .line 160
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MotionEvent.ACTION_UP  controlCarWindowFrontRight = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowFrontRight(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    move-result p0

    goto :goto_0

    :pswitch_3
    const-string p0, "MyCarWindowManager"

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MotionEvent.ACTION_UP  controlCarWindowFrontLeft = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowFrontLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public controlCarWindowAll(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)V
    .locals 3

    const-string v0, "MyCarWindowManager"

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlCarWindowAll  windowStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentFL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    .line 71
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowConfig()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    move-result-object v0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_AND_RIGHT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-ne v0, v1, :cond_0

    .line 73
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentFR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowConfig()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-ne p0, v0, :cond_1

    .line 76
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentFR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    .line 77
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentRL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    .line 78
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentRR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    .line 82
    :cond_1
    :goto_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isRoofControlPresent()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    if-ne p1, p0, :cond_2

    .line 83
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowRoofShadeOpenPercent(I)Z

    :cond_2
    return-void
.end method

.method public controlCarWindowFrontLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z
    .locals 2

    .line 218
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->setWindowOpenPercentEnableState(I)V

    :cond_1
    const-string p0, "MyCarWindowManager"

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlCarWindowFrontLeft  windowStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentFL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    move-result p0

    return p0
.end method

.method public controlCarWindowFrontRight(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z
    .locals 2

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->setWindowOpenPercentEnableState(I)V

    const-string p0, "MyCarWindowManager"

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlCarWindowFrontRight  windowStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentFR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    move-result p0

    return p0
.end method

.method public controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z
    .locals 2

    const/4 v0, 0x2

    .line 237
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->setWindowOpenPercentEnableState(I)V

    const-string p0, "MyCarWindowManager"

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlCarWindowRearLeft  windowStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentRL(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    move-result p0

    return p0
.end method

.method public controlCarWindowRearRight(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z
    .locals 2

    const/4 v0, 0x3

    .line 245
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->setWindowOpenPercentEnableState(I)V

    const-string p0, "MyCarWindowManager"

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlCarWindowRearRight  windowStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentRR(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    move-result p0

    return p0
.end method

.method public controlSkyLightOpenClose(Z)Z
    .locals 2

    const-string p0, "MyCarWindowManager"

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlSkyLightOpenClose  : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "open"

    goto :goto_0

    :cond_0
    const-string v1, "close"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowRoofShadeOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;)Z

    move-result p0

    return p0
.end method

.method public controlSkyLightPercent(I)Z
    .locals 2

    const-string p0, "MyCarWindowManager"

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlSkyLightPercent  percent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowRoofShadeOpenPercent(I)Z

    move-result p0

    return p0
.end method

.method public controlSunshade(Z)V
    .locals 3

    const-string v0, "MyCarWindowManager"

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlSunshade  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "close"

    goto :goto_0

    :cond_0
    const-string v2, "open"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 298
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->SHADE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->setWindowRoofShadeOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;)V

    return-void
.end method

.method public controlTiltUp(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "MyCarWindowManager"

    const-string v0, "controlTiltUp   TiltUp"

    .line 304
    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->setWindowRoofShadeOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;)V

    goto :goto_0

    :cond_0
    const-string p1, "MyCarWindowManager"

    const-string v0, "controlTiltUp   close"

    .line 307
    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->ROOF_FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->setWindowRoofShadeOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;)V

    :goto_0
    return-void
.end method

.method public getWindowConfig()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;
    .locals 3

    .line 62
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getWindowControl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    move-result-object p0

    const-string v0, "MyCarWindowManager"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f66\u7a97\u914d\u7f6egetWindowConfig\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getWindowOpenPrecisePercent(I)F
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 105
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowOpenPrecisePercentRR()F

    move-result p0

    const-string p1, "MyCarWindowManager"

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initWindowPercent : getWindowOpenPercentRR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowOpenPrecisePercentRL()F

    move-result p0

    const-string p1, "MyCarWindowManager"

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initWindowPercent : getWindowOpenPercentRL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowOpenPrecisePercentFR()F

    move-result p0

    const-string p1, "MyCarWindowManager"

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initWindowPercent : getWindowOpenPercentFR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowOpenPrecisePercentFL()F

    move-result p0

    const-string p1, "MyCarWindowManager"

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initWindowPercent : getWindowOpenPercentFL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWindowOperationState(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;
    .locals 0

    .line 113
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 125
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowOperationStateRR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowOperationStateRL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    goto :goto_0

    .line 119
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowOperationStateFR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    goto :goto_0

    .line 116
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowOperationStateFL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;
    .locals 3

    .line 263
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    move-result-object p0

    const-string v0, "MyCarWindowManager"

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowRoofOpenOpertion\u83b7\u53d6\u5929\u7a97\u5f53\u524d\u64cd\u4f5c\u72b6\u6001 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getWindowRoofOpenPercent()I
    .locals 3

    .line 283
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowRoofOpenPercent()I

    move-result p0

    const-string v0, "MyCarWindowManager"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWindowRoofOpenPercent\u83b7\u53d6\u5929\u7a97\u5f53\u524d\u767e\u5206\u6bd4 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getWindowRoofShadeOpenState()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;
    .locals 3

    .line 270
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowRoofShadeOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;

    move-result-object p0

    const-string v0, "MyCarWindowManager"

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u906e\u9633\u5e18\u64cd\u4f5c\u72b6\u6001 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getWindowState(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;
    .locals 0

    .line 133
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 145
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowStateRR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowStateRL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    goto :goto_0

    .line 139
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowStateFR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    goto :goto_0

    .line 136
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowStateFL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWindowStateError(I)Z
    .locals 2

    .line 198
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 210
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowStateRR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    goto :goto_0

    .line 207
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowStateRL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowStateFR()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    goto :goto_0

    .line 201
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowStateFL()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object p0

    :goto_0
    const-string p1, "MyCarWindowManager"

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWindowStateError windowState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->UNDEFINED_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerListener()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->carWindowListener:Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->registerListener(Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;)V

    return-void
.end method

.method public setWindowOpenPercentEnableState(I)V
    .locals 1

    const-string p0, "MyCarWindowManager"

    const-string v0, "setWindowOpenPercentFLVdSwitch\u8bbe\u7f6e\u7a97\u6237\u7535\u52a8\u63a7\u5236\u6709\u6548:true"

    .line 178
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 191
    :pswitch_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentRRVdSwitch(Z)Z

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentRLVdSwitch(Z)Z

    goto :goto_0

    .line 185
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentFRVdSwitch(Z)Z

    goto :goto_0

    .line 182
    :pswitch_3
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowOpenPercentFLVdSwitch(Z)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setWindowRoofShadeOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;)V
    .locals 2

    const-string p0, "MyCarWindowManager"

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWindowRoofShadeOpenState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarWindowManager;->setWindowRoofShadeOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;)Z

    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->carWindowListener:Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarWindowManager$CarWindowListener;)V

    return-void
.end method
