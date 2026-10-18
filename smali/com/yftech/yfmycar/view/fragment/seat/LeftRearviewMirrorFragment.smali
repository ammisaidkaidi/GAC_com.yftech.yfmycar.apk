.class public Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;
.super Lcom/yftech/yfmycar/view/base/BaseFragment;
.source "LeftRearviewMirrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

.field private final handler:Landroid/os/Handler;

.field private llTipGearNotP:Landroid/widget/LinearLayout;

.field private mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

.field private mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

.field private mLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;-><init>()V

    .line 34
    const-class v0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    .line 123
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment$1;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)Landroid/os/Handler;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic lambda$onBindView$0(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 1

    .line 59
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->llTipGearNotP:Landroid/widget/LinearLayout;

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

.method public static synthetic lambda$onBindView$1(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 76
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick ^^^^ ICarSettings.RearviewMirrorCmd.FL_MIRROR_UP"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 78
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$2(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 83
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick vvvv ICarSettings.RearviewMirrorCmd.FL_MIRROR_DOWN"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 85
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$3(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 90
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick <<<< ICarSettings.RearviewMirrorCmd.FL_MIRROR_LEFT"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 92
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$4(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 97
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick >>>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_RIGHT"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 99
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$5(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick >>>> ICarSettings.RearviewMirrorCmd.FOLD"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 111
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$6(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;Landroid/view/View;)Z
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string v0, "LongClick >>>> ICarSettings.RearviewMirrorCmd.UNFOLD"

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 117
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

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

    .line 56
    const-class p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/vm/AppViewModelStore;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    const v0, 0x7f070089

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->llTipGearNotP:Landroid/widget/LinearLayout;

    .line 58
    iget-object p1, p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->vehicleGear:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$XpwTjDfxwirg3EfXIilPdYR0DcI;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$XpwTjDfxwirg3EfXIilPdYR0DcI;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)V

    invoke-virtual {p1, p0, v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    const p1, 0x7f07007a

    .line 62
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070095

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f07008d

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070091

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070093

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    .line 69
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 74
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$6wxitOw5OywxqZmEDpKriFO0jCI;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$6wxitOw5OywxqZmEDpKriFO0jCI;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 81
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$5WmeWL4esuWn2VlJ5qhO1EcNUPA;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$5WmeWL4esuWn2VlJ5qhO1EcNUPA;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$2K6XFD4HSnv1uKTOlUtqlLfncuk;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$2K6XFD4HSnv1uKTOlUtqlLfncuk;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 95
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$I1N109sTUedvrNPZsrlX8NZTU1g;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$I1N109sTUedvrNPZsrlX8NZTU1g;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f070039

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f07004b

    .line 103
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    .line 104
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$aqF4QUTbNItM6OquYAia9irrxtQ;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$aqF4QUTbNItM6OquYAia9irrxtQ;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 114
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$JYcXCCaOTh_RkwU7uar0DcM4C3k;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$LeftRearviewMirrorFragment$JYcXCCaOTh_RkwU7uar0DcM4C3k;-><init>(Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 148
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->onHiddenChanged(Z)V

    .line 149
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5de6\u540e\u89c6\u955c onHiddenChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 141
    invoke-super {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->onPause()V

    .line 142
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

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

    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 161
    :sswitch_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_UP"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 163
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0a001e

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 164
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_UP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 179
    :sswitch_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_RIGHT"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 181
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0a001c

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 182
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_RIGHT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 173
    :sswitch_2
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_LEFT"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 175
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0a001a

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 176
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_LEFT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 167
    :sswitch_3
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_DOWN >>> ICarSettings.RearviewMirrorCmd.FL_MIRROR_DOWN"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 169
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f0a001d

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 170
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FL_MIRROR_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 189
    :sswitch_4
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 190
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->UNFOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 185
    :sswitch_5
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 186
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->FOLD:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    goto/16 :goto_0

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_0

    .line 201
    :sswitch_6
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "onTouch  MotionEvent.ACTION_UP  ICarSettings.RearviewMirrorCmd.STOP"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 203
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    if-eq p1, p2, :cond_2

    .line 204
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 205
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p1

    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p1, p2}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    .line 206
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 214
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    if-eq p1, p2, :cond_2

    .line 215
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatImageView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mCollapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    .line 216
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mExpandAll:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_2

    .line 217
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->TAG:Ljava/lang/String;

    const-string p2, "onTouch  MotionEvent.ACTION_MOVE  ICarSettings.RearviewMirrorCmd.STOP"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->cmd:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    .line 220
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarMirrorControl;

    move-result-object p1

    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;

    invoke-virtual {p1, p2}, Lcom/yftech/yfmycar/view/manager/CarMirrorControl;->setRearViewMirrorCmd(Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearviewMirrorCmd;)Z

    .line 221
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;->mLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

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

    const/16 p0, 0x8

    return p0
.end method

.method public setLayout()Ljava/lang/Object;
    .locals 0

    const p0, 0x7f090023

    .line 50
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
