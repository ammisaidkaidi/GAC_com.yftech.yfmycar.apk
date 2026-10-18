.class public Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;
.super Lcom/yftech/yfmycar/view/base/BaseFragment;
.source "FrontSeatFragment.java"


# instance fields
.field private fontSeatPositionView:Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

.field private isLeft:Z

.field private mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

.field private whichSeat:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->fontSeatPositionView:Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    return-object p0
.end method

.method public static newInstance(Z)Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;
    .locals 3

    .line 49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    new-instance v1, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    invoke-direct {v1}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;-><init>()V

    const-string v2, "isLeft"

    .line 51
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 52
    invoke-virtual {v1, v0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method


# virtual methods
.method public onAirSeatEventMainThread(Lcom/yftech/yfmycar/view/bean/AirSeatEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 140
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->onAirSeatEvent(I)V

    :cond_0
    return-void
.end method

.method public onBindView(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "isLeft"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    .line 73
    :cond_0
    iget-boolean p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    xor-int/2addr p1, v0

    iput p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->whichSeat:I

    const p1, 0x7f0700bb

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioGroup;

    const v1, 0x7f0700c2

    .line 76
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 78
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    xor-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getVentilationHeatConfig(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 81
    new-instance v3, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    .line 82
    iget-object v3, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-boolean v4, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    xor-int/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->init(I)V

    .line 83
    iget-object v3, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 85
    :cond_1
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_2

    .line 86
    iget-boolean v5, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    if-nez v5, :cond_3

    :cond_2
    if-nez v3, :cond_9

    iget-boolean v3, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    if-nez v3, :cond_9

    .line 88
    :cond_3
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isSeatControlPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    new-instance v5, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    iget-boolean v7, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    invoke-direct {v5, v6, v7}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->fontSeatPositionView:Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    .line 92
    iget-object v5, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->fontSeatPositionView:Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_4
    if-lez v2, :cond_8

    if-eqz v3, :cond_8

    const/4 v1, 0x0

    .line 95
    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 96
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    const v1, 0x7f0700de

    .line 97
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    if-ne v2, v0, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne v2, v0, :cond_6

    .line 101
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    if-ne v2, v0, :cond_7

    .line 103
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_7
    :goto_0
    new-instance p2, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const p0, 0x7f0700d8

    .line 123
    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 125
    :cond_8
    invoke-virtual {p1, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_1

    .line 128
    :cond_9
    invoke-virtual {p1, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 135
    invoke-super {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onPowerEvent(Lcom/yftech/yfmycar/view/bean/PowerEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 147
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getPowerModel()Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    move-result-object p1

    .line 148
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->ACC:Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    if-ne p1, v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->onAirSeat(I)V

    goto :goto_0

    .line 152
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->ON:Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    if-ne p1, v0, :cond_1

    .line 153
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    if-eqz p1, :cond_1

    .line 154
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->mSeatVentilationHeatingView:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->onAirSeatEvent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFragmentIndex()I
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->isLeft:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    :goto_0
    return p0
.end method

.method public setLayout()Ljava/lang/Object;
    .locals 0

    const p0, 0x7f090022

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
