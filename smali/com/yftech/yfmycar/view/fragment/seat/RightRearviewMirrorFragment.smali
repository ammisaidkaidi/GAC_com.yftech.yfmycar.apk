.class public Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;
.super Lcom/yftech/yfmycar/view/base/BaseFragment;
.source "RightRearviewMirrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field private final handler:Landroid/os/Handler;

.field private llTip:Landroid/widget/LinearLayout;

.field private llTipGearNotP:Landroid/widget/LinearLayout;

.field private mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

.field private mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

.field private mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

.field private rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;-><init>()V

    .line 36
    const-class v0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    .line 120
    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment$1;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method public static synthetic lambda$onBindView$0(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 1

    .line 55
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->llTipGearNotP:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public static synthetic lambda$onBindView$1(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick ^^^^ ICarSettings.RearviewMirrorCmd.FR_MIRROR_UP"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 73
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$2(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick vvvv ICarSettings.RearviewMirrorCmd.FR_MIRROR_DOWN"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 80
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$3(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick <<<< ICarSettings.RearviewMirrorCmd.FR_MIRROR_LEFT"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 87
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$4(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 92
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_RIGHT"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 94
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$5(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 105
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick >>>> ICarSettings.RearviewMirrorCmd.FOLD"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 107
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$6(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 111
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick >>>> ICarSettings.RearviewMirrorCmd.UNFOLD"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 113
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
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

    .line 52
    const-class p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/vm/AppViewModelStore;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    const v0, 0x7f070089

    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->llTipGearNotP:Landroid/widget/LinearLayout;

    .line 54
    iget-object p1, p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->vehicleGear:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$uPvyPDXY_w9BkCc2Hz4Yz_ml3MA;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$uPvyPDXY_w9BkCc2Hz4Yz_ml3MA;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V

    invoke-virtual {p1, p0, v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const p1, 0x7f0700c6

    .line 57
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070095

    .line 58
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f07008d

    .line 59
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070091

    .line 60
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070093

    .line 61
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070088

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->llTip:Landroid/widget/LinearLayout;

    .line 64
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->llTip:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 66
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 67
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$CC5PCOGXFfvP7CTm1XM0CuFy9Bg;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$CC5PCOGXFfvP7CTm1XM0CuFy9Bg;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 76
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$nuwj304bTOqg07BOYu_uEk77v_A;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$nuwj304bTOqg07BOYu_uEk77v_A;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 83
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$dy1HOTWS4rD78cB_vwunSMaB-Ew;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$dy1HOTWS4rD78cB_vwunSMaB-Ew;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$zkRguXQbIK-ALD4c9-UMJ1P6F_k;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$zkRguXQbIK-ALD4c9-UMJ1P6F_k;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f070039

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f07004b

    .line 99
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 104
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$yXq8-4hm-xGRdH9hNLmC9G4CgBU;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$yXq8-4hm-xGRdH9hNLmC9G4CgBU;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$3f7guDWss4tA98Crw5KjJ4eXsB0;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$3f7guDWss4tA98Crw5KjJ4eXsB0;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 141
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->onHiddenChanged(Z)V

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->onPause()V

    .line 135
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 158
    :sswitch_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_UP"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a0023

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 160
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 161
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 176
    :sswitch_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_RIGHT"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a0021

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 178
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 179
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 170
    :sswitch_2
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_LEFT"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a001f

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 172
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 173
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 164
    :sswitch_3
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FR_MIRROR_DOWN"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a0022

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 166
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 167
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FR_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 186
    :sswitch_4
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 187
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 182
    :sswitch_5
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 183
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 190
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 191
    iget-object p2, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "onTouch  MotionEvent.ACTION_UP"

    invoke-static {p2, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    .line 199
    :sswitch_6
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "onTouch  MotionEvent.ACTION_UP  ICarSettings.RearviewMirrorCmd.STOP"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    if-eq p1, p2, :cond_2

    .line 201
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 202
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p1

    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p1, p2}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    .line 203
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 209
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    if-eq p1, p2, :cond_2

    .line 210
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    .line 211
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 212
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "onTouch  MotionEvent.ACTION_MOVE  ICarSettings.RearviewMirrorCmd.STOP"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 215
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p1

    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p1, p2}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    .line 216
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x7f070039 -> :sswitch_5
        0x7f07004b -> :sswitch_4
        0x7f07008d -> :sswitch_3
        0x7f070091 -> :sswitch_2
        0x7f070093 -> :sswitch_1
        0x7f070095 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x7f070039 -> :sswitch_6
        0x7f07004b -> :sswitch_6
        0x7f07008d -> :sswitch_6
        0x7f070091 -> :sswitch_6
        0x7f070093 -> :sswitch_6
        0x7f070095 -> :sswitch_6
    .end sparse-switch
.end method

.method public setFragmentIndex()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public setLayout()Ljava/lang/Object;
    .locals 0

    const p0, 0x7f090027

    .line 46
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
