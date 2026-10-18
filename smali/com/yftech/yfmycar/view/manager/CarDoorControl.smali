.class public Lcom/yftech/yfmycar/view/manager/CarDoorControl;
.super Ljava/lang/Object;
.source "CarDoorControl.java"


# static fields
.field public static volatile instance:Lcom/yftech/yfmycar/view/manager/CarDoorControl;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final doorStatusEvent:Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

.field private final listener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarDoorControl"

    .line 16
    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->TAG:Ljava/lang/String;

    .line 149
    new-instance v0, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->doorStatusEvent:Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

    .line 150
    new-instance v0, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl$1;-><init>(Lcom/yftech/yfmycar/view/manager/CarDoorControl;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->listener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/manager/CarDoorControl;)Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->doorStatusEvent:Lcom/yftech/yfmycar/view/bean/CarDoorStatusEvent;

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;
    .locals 2

    .line 23
    sget-object v0, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->instance:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    if-nez v0, :cond_1

    .line 24
    const-class v0, Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->instance:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    invoke-direct {v1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;-><init>()V

    sput-object v1, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->instance:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->instance:Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    return-object v0
.end method


# virtual methods
.method public clearTailDoorMemory()Z
    .locals 1

    const-string p0, "CarDoorControl"

    const-string v0, "clearTailDoorMemory performTailDoorPositionMemoryClearButtonClick"

    .line 71
    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->performTailDoorPositionMemoryClearButtonClick()Z

    move-result p0

    return p0
.end method

.method public controlSlidingDoorLeft(Z)Z
    .locals 2

    const-string p0, "CarDoorControl"

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlSlidingDoorLeft  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "open "

    goto :goto_0

    :cond_0
    const-string v1, "close "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSlidingDoorCmdL(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;)Z

    move-result p0

    return p0
.end method

.method public controlSlidingDoorRight(Z)Z
    .locals 2

    const-string p0, "CarDoorControl"

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlSlidingDoorRight  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "open "

    goto :goto_0

    :cond_0
    const-string v1, "close "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;->CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setSlidingDoorCmdR(Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorCmd;)Z

    move-result p0

    return p0
.end method

.method public controlTailgatePercent(I)Z
    .locals 2

    const-string p0, "CarDoorControl"

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "controlTailgatePercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 87
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    move-result p0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p1, -0x14

    .line 88
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_1

    .line 89
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_TWENTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    move-result p0

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p1, -0x28

    .line 90
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v0, :cond_2

    .line 91
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_FORTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    move-result p0

    goto :goto_0

    :cond_2
    add-int/lit8 p0, p1, -0x3c

    .line 92
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v0, :cond_3

    .line 93
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_SIXTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    move-result p0

    goto :goto_0

    :cond_3
    add-int/lit8 p0, p1, -0x50

    .line 94
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v0, :cond_4

    .line 95
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->OPEN_EIGHTY_PERCENT:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    move-result p0

    goto :goto_0

    :cond_4
    add-int/lit8 p1, p1, -0x64

    .line 96
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v0, :cond_5

    .line 97
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    move-result p0

    goto :goto_0

    .line 99
    :cond_5
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSlidingDoorOperationL()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;
    .locals 0

    .line 131
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSlidingDoorOperationL()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;

    move-result-object p0

    return-object p0
.end method

.method public getSlidingDoorOperationR()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;
    .locals 0

    .line 136
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSlidingDoorOperationR()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorOperation;

    move-result-object p0

    return-object p0
.end method

.method public getSlidingDoorStateL()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;
    .locals 0

    .line 141
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSlidingDoorStateL()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    move-result-object p0

    return-object p0
.end method

.method public getSlidingDoorStateR()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;
    .locals 0

    .line 146
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getSlidingDoorStateR()Lcom/yftech/vehicle/internal/adapter/ICarDoor$SlidingDoorState;

    move-result-object p0

    return-object p0
.end method

.method public getTailDoorPercent()I
    .locals 3

    .line 53
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getTailDoorPercent()I

    move-result p0

    const-string v0, "CarDoorControl"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u540e\u80cc\u95e8\u8bb0\u5fc6\u4f4d\u7f6e getTailDoorPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "% "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getTailgateStatus()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;
    .locals 3

    .line 78
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getTailDoorState()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object p0

    const-string v0, "CarDoorControl"

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICarDoor.TailDoorState getTailgateStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getTailgateTravelPercent()I
    .locals 3

    .line 44
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->getTailDoorTravelPercent()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const-string v0, "CarDoorControl"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getTailgateTravelPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public init()V
    .locals 1

    .line 35
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->listener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->registerListener(Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;)V

    return-void
.end method

.method public isSlidingDoorModeAutoEnabled()Z
    .locals 0

    .line 109
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->isSlidingDoorModeAutoEnabled()Z

    move-result p0

    return p0
.end method

.method public saveTailDoorPercent()Z
    .locals 1

    const-string p0, "CarDoorControl"

    const-string v0, "saveTailDoorPercent performTailDoorMaxPositionMemoryButtonClick"

    .line 63
    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->performTailDoorMaxPositionMemoryButtonClick()Z

    move-result p0

    return p0
.end method

.method public unInit()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->listener:Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarDoorManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarDoorManager$CarDoorListener;)V

    return-void
.end method
