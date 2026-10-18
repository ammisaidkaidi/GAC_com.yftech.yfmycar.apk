.class public Lcom/yftech/yfmycar/view/manager/CarInfoControl;
.super Ljava/lang/Object;
.source "CarInfoControl.java"


# static fields
.field public static volatile instance:Lcom/yftech/yfmycar/view/manager/CarInfoControl;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

.field private carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

.field private globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CarInfoControl"

    .line 23
    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/manager/CarInfoControl;)Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/yfmycar/view/manager/CarInfoControl;
    .locals 2

    .line 33
    sget-object v0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->instance:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->instance:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    invoke-direct {v1}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;-><init>()V

    sput-object v1, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->instance:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->instance:Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    return-object v0
.end method


# virtual methods
.method public getGear()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 3

    .line 141
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object p0

    const-string v0, "CarInfoControl"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u6321\u4f4d\u4fe1\u606fgetGearPosition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getPowerModel()Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;
    .locals 3

    .line 123
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    move-result-object p0

    const-string v0, "CarInfoControl"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u7535\u6e90\u72b6\u6001 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getVehicleSpeed()I
    .locals 3

    .line 132
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result p0

    const-string v0, "CarInfoControl"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVehicleSpeed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public init(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V
    .locals 1

    .line 46
    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    .line 47
    new-instance p1, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;

    invoke-direct {p1, p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl$1;-><init>(Lcom/yftech/yfmycar/view/manager/CarInfoControl;)V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    .line 90
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->registerListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    .line 91
    new-instance p1, Lcom/yftech/yfmycar/view/manager/CarInfoControl$2;

    invoke-direct {p1, p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl$2;-><init>(Lcom/yftech/yfmycar/view/manager/CarInfoControl;)V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    .line 113
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    invoke-virtual {p1, v0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->registerListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    .line 114
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->powerMode:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getPowerModel()Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 115
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->vehicleGear:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getGear()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 116
    iget-object p1, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->vehicleSpeed:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getVehicleSpeed()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public isPlgmfunccfgPresent()Z
    .locals 3

    .line 147
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isPlgmfunccfgPresent()Z

    move-result p0

    const-string v0, "CarInfoControl"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u540e\u80cc\u95e8\u914d\u7f6e\u662f\u5426\u53ef\u89c1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public unInit()V
    .locals 2

    .line 153
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->carInfoListener:Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarInfoManager$CarInfoListener;)V

    .line 154
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarPowerManager;->get()Lcom/yftech/vehicle/sdk/CarPowerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->carPowerListener:Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarPowerManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarPowerManager$CarPowerListener;)V

    return-void
.end method
