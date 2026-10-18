.class public Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;
.super Landroid/widget/FrameLayout;
.source "FontSeatPositionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private isLeft:Z

.field private final mContext:Landroid/content/Context;

.field private final runnable:Ljava/lang/Runnable;

.field private seatWhole:Landroidx/appcompat/widget/AppCompatImageView;

.field private sswOperation:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "FontSeatPositionView"

    .line 27
    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->TAG:Ljava/lang/String;

    .line 130
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->sswOperation:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 131
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->handler:Landroid/os/Handler;

    .line 132
    new-instance p2, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView$1;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView$1;-><init>(Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;)V

    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->runnable:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "FontSeatPositionView"

    .line 27
    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->TAG:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->sswOperation:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->handler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView$1;-><init>(Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->runnable:Ljava/lang/Runnable;

    .line 34
    iput-boolean p2, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->isLeft:Z

    .line 35
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->mContext:Landroid/content/Context;

    .line 36
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f09001e

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->initSeatFront()V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->sswOperation:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private initSeatFront()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const v0, 0x7f0700d7

    .line 53
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->seatWhole:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f070020

    .line 56
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f07001f

    .line 57
    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 58
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 60
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0700dc

    .line 64
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f0700d9

    .line 65
    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    const v2, 0x7f0700da

    .line 66
    invoke-virtual {p0, v2}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    const v3, 0x7f0700db

    .line 67
    invoke-virtual {p0, v3}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    .line 68
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 70
    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    invoke-virtual {v3, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-virtual {v1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {v3, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public doControlSeatAction(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->sswOperation:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    .line 123
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId",
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->seatWhole:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a00b5

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    const-string p1, "FontSeatPositionView"

    const-string p2, "onTouch >> MotionEvent.ACTION_UP"

    .line 84
    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->sswOperation:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 99
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->seatWhole:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a00bb

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 100
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->doControlSeatAction(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->seatWhole:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a00b6

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 112
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->doControlSeatAction(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)V

    goto :goto_0

    .line 107
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->seatWhole:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a00ba

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 108
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->doControlSeatAction(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)V

    goto :goto_0

    .line 103
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->seatWhole:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a00b9

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 104
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->doControlSeatAction(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)V

    goto :goto_0

    .line 90
    :pswitch_4
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->seatWhole:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a00b8

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 91
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->doControlSeatAction(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)V

    goto :goto_0

    .line 94
    :pswitch_5
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->seatWhole:Landroidx/appcompat/widget/AppCompatImageView;

    const p2, 0x7f0a00b7

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 95
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->doControlSeatAction(Lcom/yftech/vehicle/internal/adapter/ICarSeat$SSWOperation;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x7f07001f
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0700d9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
