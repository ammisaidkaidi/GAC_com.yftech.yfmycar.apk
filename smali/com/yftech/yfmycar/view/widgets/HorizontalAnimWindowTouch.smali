.class public Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;
.super Landroid/widget/RelativeLayout;
.source "HorizontalAnimWindowTouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$RoundViewOutlineProvider;
    }
.end annotation


# instance fields
.field private final MESSAGE_BACK:I

.field private final TAG:Ljava/lang/String;

.field private clickable:Z

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private final handler:Landroid/os/Handler;

.field private intrinsicHeight:I

.field private intrinsicWidth:I

.field public isAddPercent:Z

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

.field private measuredHeight:I

.field private measuredWidth:I

.field private touchDrawable:Landroid/graphics/drawable/Drawable;

.field public windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

.field private windowMoveMax:I

.field private windowMoveTwentyPercent:I

.field private windowMoveTwentyPercentCenter:I

.field private windowView:Landroid/view/View;

.field private windowViewTouch:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "HorizontalAnimWindow"

    .line 36
    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->TAG:Ljava/lang/String;

    const/4 v0, 0x7

    .line 55
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->MESSAGE_BACK:I

    .line 56
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$1;-><init>(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->handler:Landroid/os/Handler;

    .line 52
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->initUI(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "HorizontalAnimWindow"

    .line 36
    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->TAG:Ljava/lang/String;

    const/4 v0, 0x7

    .line 55
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->MESSAGE_BACK:I

    .line 56
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$1;-><init>(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    if-eqz p2, :cond_1

    .line 70
    sget-object v1, Lcom/yftech/yfmycar/R$styleable;->HorizontalAnimWindowTouch:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p2, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->clickable:Z

    const/4 v1, 0x1

    .line 72
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x3

    const/16 v2, 0x96

    .line 73
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveMax:I

    .line 74
    iget-boolean v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->clickable:Z

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->touchDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->intrinsicHeight:I

    .line 78
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->intrinsicWidth:I

    .line 80
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    :cond_1
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveMax:I

    div-int/lit8 p2, p2, 0x5

    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveTwentyPercent:I

    const-string p2, "HorizontalAnimWindow"

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "windowMoveMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and  windowMoveTwentyPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveTwentyPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveTwentyPercent:I

    div-int/2addr p2, v0

    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveTwentyPercentCenter:I

    .line 86
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->initUI(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->resetMargins(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->clickable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveMax:I

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveTwentyPercent:I

    return p0
.end method

.method static synthetic access$700(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)I
    .locals 0

    .line 35
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveTwentyPercentCenter:I

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method private init()V
    .locals 2

    .line 296
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isArLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x800005

    .line 297
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setGravity(I)V

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 300
    new-instance v1, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$RoundViewOutlineProvider;

    invoke-direct {v1, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$RoundViewOutlineProvider;-><init>(I)V

    .line 301
    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 303
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setClipToOutline(Z)V

    return-void
.end method

.method private initUI(Landroid/content/Context;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->init()V

    .line 112
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowView:Landroid/view/View;

    .line 113
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->intrinsicWidth:I

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->intrinsicHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 114
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowView:Landroid/view/View;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowView:Landroid/view/View;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->addView(Landroid/view/View;)V

    .line 117
    iget-boolean v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->clickable:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    .line 119
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    iget-boolean v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->clickable:Z

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 120
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->intrinsicWidth:I

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->intrinsicHeight:I

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    .line 121
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->touchDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->addView(Landroid/view/View;)V

    .line 124
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    new-instance v0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;-><init>(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method private resetMargins(I)V
    .locals 3

    .line 185
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isArLanguage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v2, p1

    invoke-virtual {v0, v2, v1, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 187
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 188
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v2, p1

    invoke-virtual {v0, p1, v1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 191
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 192
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 195
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private resetViewMargin(I)V
    .locals 3

    .line 224
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isArLanguage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v2, p1

    invoke-virtual {v0, v2, v1, p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 227
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    neg-int v2, p1

    invoke-virtual {v0, p1, v1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 231
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowView:Landroid/view/View;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public initSkyLightPercent()V
    .locals 4

    .line 262
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowRoofOpenPercent()I

    move-result v0

    const-string v1, "HorizontalAnimWindow"

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSkyLightPercent  windowRoofShadeOpenPercent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/16 v2, 0x65

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setPercent(I)V

    .line 266
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    if-eqz v2, :cond_2

    .line 267
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    invoke-interface {p0, v0, v1}, Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;->doAnimationStartEnd(II)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x68

    const/16 v3, 0x64

    if-ne v0, v2, :cond_1

    .line 270
    invoke-virtual {p0, v3}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setPercent(I)V

    .line 271
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    if-eqz v0, :cond_2

    .line 272
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    invoke-interface {p0, v3, v1}, Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;->doAnimationStartEnd(II)V

    goto :goto_0

    :cond_1
    if-gt v0, v3, :cond_2

    .line 275
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setPercent(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initSunBlind()V
    .locals 4

    .line 280
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowRoofShadeOpenPercent()I

    move-result v0

    const-string v1, "HorizontalAnimWindow"

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSunBlind  windowRoofShadeOpenPercent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x69

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setPercent(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x6a

    const/16 v2, 0x64

    if-ne v0, v1, :cond_1

    .line 285
    invoke-virtual {p0, v2}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setPercent(I)V

    goto :goto_0

    .line 287
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setPercent(I)V

    :goto_0
    return-void
.end method

.method public moveTwentyPercent(Z)V
    .locals 3

    .line 239
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->isAddPercent:Z

    .line 240
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarWindowManager;->get()Lcom/yftech/vehicle/sdk/CarWindowManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarWindowManager;->getWindowRoofOpenPercent()I

    move-result p0

    .line 241
    rem-int/lit8 v0, p0, 0x14

    sub-int v1, p0, v0

    const/16 v2, 0xa

    if-eqz p1, :cond_1

    const/16 p1, 0x64

    if-le v0, v2, :cond_0

    add-int/lit8 v1, v1, 0x28

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x14

    .line 245
    :goto_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    if-ge v0, v2, :cond_2

    add-int/lit8 v1, v1, -0x14

    .line 247
    :cond_2
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    const-string v0, "HorizontalAnimWindow"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u767e\u5206\u6bd4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">>moveTwentyPercent =  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlSkyLightPercent(I)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public setPercent(I)V
    .locals 5

    .line 199
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->handler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "HorizontalAnimWindow"

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPercent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowMoveMax:I

    mul-int/2addr v0, p1

    const/16 v1, 0x64

    div-int/2addr v0, v1

    .line 202
    invoke-direct {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->resetViewMargin(I)V

    .line 203
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    move-result-object v2

    .line 205
    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 206
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v3

    iget-object v4, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v4

    if-gt v3, v4, :cond_1

    :cond_0
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParamsTouch:Landroid/widget/RelativeLayout$LayoutParams;

    .line 207
    invoke-virtual {v3}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v3

    iget-object v4, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout$LayoutParams;->getMarginStart()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 208
    :cond_1
    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    iget-object v4, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 209
    invoke-direct {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->resetMargins(I)V

    .line 211
    :cond_2
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-eq v2, v3, :cond_3

    .line 213
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowViewTouch:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 214
    invoke-direct {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->resetMargins(I)V

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    if-eqz v0, :cond_6

    .line 218
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    const/4 v0, 0x0

    const/4 v2, 0x4

    if-ne p1, v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v0

    :goto_0
    if-nez p1, :cond_5

    move v0, v2

    :cond_5
    invoke-interface {p0, v1, v0}, Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;->doDownUpVisible(II)V

    :cond_6
    return-void
.end method

.method public setWindowAnimCallBack(Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->windowAnimCallBack:Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;

    return-void
.end method
