.class public Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "GlobalCarViewModel.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field public cockpitIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/yfmycar/view/vm/NonNullLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field defaultIndex:I

.field public lampIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/yfmycar/view/vm/NonNullLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public openCloseControlIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/yfmycar/view/vm/NonNullLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final powerMode:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/yfmycar/view/vm/NonNullLiveData<",
            "Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;",
            ">;"
        }
    .end annotation
.end field

.field public topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/yfmycar/view/vm/NonNullLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final vehicleGear:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/yfmycar/view/vm/NonNullLiveData<",
            "Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;",
            ">;"
        }
    .end annotation
.end field

.field public final vehicleSpeed:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/yfmycar/view/vm/NonNullLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 34
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    const-string v0, "GlobalCarViewModel"

    .line 22
    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->TAG:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    .line 24
    new-instance v0, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->openCloseControlIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    .line 25
    new-instance v0, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->cockpitIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    .line 26
    new-instance v0, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->lampIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    .line 28
    new-instance v0, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    invoke-direct {v0, v3}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->powerMode:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    .line 30
    new-instance v0, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    invoke-direct {v0, v3}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->vehicleGear:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    .line 32
    new-instance v0, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->vehicleSpeed:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    .line 63
    iput v1, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->defaultIndex:I

    return-void
.end method


# virtual methods
.method public controlCarWindowAll(Z)V
    .locals 0

    .line 167
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowAll(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)V

    return-void
.end method

.method public getCarCockpitlImg()I
    .locals 0

    .line 146
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 147
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isGACLogoPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0a00af

    return p0

    :cond_0
    const p0, 0x7f0a00b1

    return p0

    :cond_1
    const p0, 0x7f0a00b2

    return p0
.end method

.method public getCarLampImg()I
    .locals 0

    .line 156
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 157
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isGACLogoPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0a0026

    return p0

    :cond_0
    const p0, 0x7f0a0027

    return p0

    :cond_1
    const p0, 0x7f0a0028

    return p0
.end method

.method public getCarModelImg()I
    .locals 0

    .line 142
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isRoofControlPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0a004b

    goto :goto_0

    :cond_0
    const p0, 0x7f0a004c

    :goto_0
    return p0
.end method

.method public initCurrentIndex()V
    .locals 6

    .line 66
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isOpenCloseControlConfigShow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    .line 70
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    goto :goto_0

    .line 73
    :cond_0
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    .line 75
    :goto_0
    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 76
    invoke-static {v4}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 77
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->openCloseControlIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 78
    iput v4, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->defaultIndex:I

    .line 79
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    const-string v0, "GlobalCarViewModel"

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpenCloseControlConfigShow initCurrentIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->defaultIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 85
    :cond_2
    :goto_2
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isCockpitConfigShow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 87
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    .line 89
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    goto :goto_3

    .line 92
    :cond_3
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    .line 94
    :goto_3
    array-length v3, v0

    :goto_4
    if-ge v1, v3, :cond_5

    aget v4, v0, v1

    .line 95
    invoke-static {v4}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 96
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->cockpitIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 97
    iget v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->defaultIndex:I

    if-gez v0, :cond_5

    .line 98
    iput v4, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->defaultIndex:I

    .line 99
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    const-string v0, "GlobalCarViewModel"

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCockpitConfigShow initCurrentIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->defaultIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 106
    :cond_5
    :goto_5
    invoke-static {v2}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->lampIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 108
    iget v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->defaultIndex:I

    if-gez v0, :cond_6

    .line 109
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 110
    iput v2, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->defaultIndex:I

    const-string v0, "GlobalCarViewModel"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " initCurrentIndex = ATMOSPHERE_LAMP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->defaultIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2
        0x3
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3
        0x2
        0xa
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x7
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x6
        0x9
    .end array-data
.end method

.method public isArLanguage()Z
    .locals 1

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ar"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setCockpitIndex(I)V
    .locals 3

    const-string v0, "GlobalCarViewModel"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCockpitIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->cockpitIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->cockpitIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 132
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->lampIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 136
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->openCloseControlIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    .line 125
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLampIndex(I)V
    .locals 3

    const-string v0, "GlobalCarViewModel"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLampIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->lampIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setOpenCloseControlIndex(I)V
    .locals 3

    const-string v0, "GlobalCarViewModel"

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOpenCloseControlIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->openCloseControlIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setTopIndex(I)V
    .locals 3

    const-string v0, "GlobalCarViewModel"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTopIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
