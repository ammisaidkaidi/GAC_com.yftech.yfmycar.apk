.class public Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;
.super Lcom/yftech/yfmycar/view/base/BaseFragment;
.source "RearLeftSlidingDoorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

.field private verticalAnimWindow:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;-><init>()V

    const-string v0, "RearLeftSlidingDoorFragment"

    .line 36
    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic lambda$onBindView$0(Landroid/view/View;)Z
    .locals 1

    .line 58
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$onBindView$1(Landroid/view/View;)Z
    .locals 1

    .line 62
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public initWindowPercent()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->verticalAnimWindow:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    if-eqz v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->verticalAnimWindow:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->initWindowPercent()V

    :cond_0
    return-void
.end method

.method public onBindView(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const p1, 0x7f070098

    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070090

    .line 54
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    .line 55
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v0, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$RearLeftSlidingDoorFragment$1M5buCzqoVgGWyEtwiTg4GT_13I;->INSTANCE:Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$RearLeftSlidingDoorFragment$1M5buCzqoVgGWyEtwiTg4GT_13I;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 61
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v0, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$RearLeftSlidingDoorFragment$uBz2mkBb_oSO18OB4kBNMFavBlk;->INSTANCE:Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$RearLeftSlidingDoorFragment$uBz2mkBb_oSO18OB4kBNMFavBlk;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f070114

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->verticalAnimWindow:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    .line 66
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->verticalAnimWindow:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment$1;-><init>(Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->setWindowAnimCallBack(Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;)V

    const p1, 0x7f0700a9

    .line 82
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0700a5

    .line 83
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 84
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {p2, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->initWindowPercent()V

    return-void
.end method

.method public onCarWindowEvent(Lcom/yftech/yfmycar/view/bean/CarWindowEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 131
    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->getWhichCarWindow()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 132
    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->getWhichCarWindow()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "RearLeftSlidingDoorFragment"

    .line 133
    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/CarWindowEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;->verticalAnimWindow:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->initWindowPercent()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x7f070090

    const/4 v0, 0x2

    if-eq p0, p1, :cond_5

    const p1, 0x7f070098

    if-eq p0, p1, :cond_2

    const p1, 0x7f0700a5

    if-eq p0, p1, :cond_1

    const p1, 0x7f0700a9

    if-eq p0, p1, :cond_0

    goto :goto_2

    .line 119
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    goto :goto_2

    .line 122
    :cond_1
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    goto :goto_2

    .line 100
    :cond_2
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowOperationState(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    .line 101
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    if-eq p0, p1, :cond_4

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    if-ne p0, p1, :cond_3

    goto :goto_0

    .line 105
    :cond_3
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    goto :goto_2

    .line 103
    :cond_4
    :goto_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    goto :goto_2

    .line 109
    :cond_5
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowOperationState(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p0

    .line 110
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    if-eq p0, p1, :cond_7

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    if-ne p0, p1, :cond_6

    goto :goto_1

    .line 114
    :cond_6
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->CHANGE_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    goto :goto_2

    .line 112
    :cond_7
    :goto_1
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindowRearLeft(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    :goto_2
    return-void
.end method

.method public setFragmentIndex()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public setLayout()Ljava/lang/Object;
    .locals 0

    const p0, 0x7f090025

    .line 47
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
