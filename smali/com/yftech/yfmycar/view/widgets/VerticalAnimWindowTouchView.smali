.class public Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;
.super Landroid/widget/RelativeLayout;
.source "VerticalAnimWindowTouchView.java"


# instance fields
.field private final MESSAGE_BACK:I

.field private final TAG:Ljava/lang/String;

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private clickable:Z

.field private final handler:Landroid/os/Handler;

.field private intrinsicHeight:I

.field private intrinsicWidth:I

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

.field public moveValue:I

.field private touchViewDrawable:Landroid/graphics/drawable/Drawable;

.field private whichSeat:I

.field public windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

.field private windowMoveMax:I

.field private windowMoveMaxTwentyPercent:I

.field private final windowMoveMaxTwentyPercentCenter:D

.field private windowView:Landroid/view/View;

.field private windowViewTouch:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VerticalAnimWindowTouchView"

    .line 27
    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    .line 105
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->MESSAGE_BACK:I

    .line 106
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;-><init>(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->handler:Landroid/os/Handler;

    .line 51
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->whichSeat:I

    .line 52
    iput p3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMax:I

    .line 53
    iput-object p4, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object p5, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->touchViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    iput-boolean p6, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->clickable:Z

    .line 56
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMax:I

    div-int/lit8 p2, p2, 0x5

    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercent:I

    .line 57
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMax:I

    rem-int/lit8 p2, p2, 0x5

    if-lez p2, :cond_0

    .line 58
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercent:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercent:I

    .line 61
    :cond_0
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercent:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    float-to-double p2, p2

    iput-wide p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercentCenter:D

    .line 62
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->initUI(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "VerticalAnimWindowTouchView"

    .line 27
    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    .line 105
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->MESSAGE_BACK:I

    .line 106
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;-><init>(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->handler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eqz p2, :cond_1

    .line 68
    sget-object v2, Lcom/yftech/yfmycar/R$styleable;->VerticalAnimWindowTouchView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v2, 0x0

    .line 69
    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->whichSeat:I

    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMax:I

    const/4 v3, 0x2

    .line 71
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x3

    .line 72
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->clickable:Z

    .line 73
    iget-boolean v2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->clickable:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    .line 74
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->touchViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    :cond_0
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->intrinsicHeight:I

    .line 77
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->intrinsicWidth:I

    .line 78
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    :cond_1
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMax:I

    div-int/2addr p2, v1

    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercent:I

    .line 81
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMax:I

    rem-int/2addr p2, v1

    if-lez p2, :cond_2

    .line 82
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercent:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercent:I

    .line 85
    :cond_2
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercent:I

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    float-to-double v0, p2

    iput-wide v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercentCenter:D

    .line 86
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->initUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->clickable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->whichSeat:I

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/os/Handler;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMax:I

    return p0
.end method

.method static synthetic access$700(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercent:I

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)D
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMaxTwentyPercentCenter:D

    return-wide v0
.end method

.method private initUI(Landroid/content/Context;)V
    .locals 3

    .line 120
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowView:Landroid/view/View;

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->intrinsicWidth:I

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->intrinsicHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 122
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowView:Landroid/view/View;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowView:Landroid/view/View;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->addView(Landroid/view/View;)V

    .line 125
    iget-boolean v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->clickable:Z

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    .line 127
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    iget-boolean v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->clickable:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 128
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->intrinsicWidth:I

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->intrinsicHeight:I

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    .line 129
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->touchViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->addView(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    new-instance v0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;-><init>(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initWindowPercent()V
    .locals 7

    .line 217
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->handler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->whichSeat:I

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowOpenPrecisePercent(I)F

    move-result v0

    const/high16 v1, 0x42ca0000    # 101.0f

    cmpl-float v1, v0, v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/16 v3, 0x64

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/high16 v1, 0x42d00000    # 104.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    move v0, v3

    goto :goto_0

    .line 225
    :cond_1
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    .line 227
    :goto_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object v1

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->whichSeat:I

    invoke-virtual {v1, v5}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowOperationState(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object v1

    .line 228
    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowMoveMax:I

    mul-int/2addr v5, v0

    div-int/2addr v5, v3

    iput v5, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    const-string v3, "VerticalAnimWindowTouchView"

    .line 230
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPercent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  WhichCarSeat = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->whichSeat:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    neg-int v5, v5

    invoke-virtual {v0, v4, v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowView:Landroid/view/View;

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 235
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-gt v0, v3, :cond_4

    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_4

    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->STOPED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    if-ne v1, v0, :cond_5

    .line 238
    :cond_4
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    neg-int v3, v3

    invoke-virtual {v0, v4, v1, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 239
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowViewTouch:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 244
    :cond_5
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    if-eqz v0, :cond_c

    .line 245
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->whichSeat:I

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowState(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    move-result-object v0

    .line 246
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object v1

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->whichSeat:I

    invoke-virtual {v1, v3}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowOpenPrecisePercent(I)F

    move-result v1

    .line 247
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    const/4 v5, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    :goto_1
    move v3, v5

    .line 248
    :goto_2
    sget-object v6, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowState;

    if-eq v0, v6, :cond_9

    cmpl-float v0, v1, v2

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v5, v4

    .line 249
    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    const/4 v0, 0x4

    if-eqz v5, :cond_a

    move v1, v0

    goto :goto_4

    :cond_a
    move v1, v4

    :goto_4
    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    move v0, v4

    :goto_5
    invoke-interface {p0, v1, v0}, Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;->doDownUpVisible(II)V

    :cond_c
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setWindowAnimCallBack(Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    return-void
.end method
