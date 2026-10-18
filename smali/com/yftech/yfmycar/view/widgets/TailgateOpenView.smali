.class public Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;
.super Landroid/view/View;
.source "TailgateOpenView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;
    }
.end annotation


# instance fields
.field private final MESSAGE_BACK_BUTTON:I

.field private final MESSAGE_BACK_TAILGATE:I

.field private final TAG:Ljava/lang/String;

.field private animator:Landroid/animation/ValueAnimator;

.field public bgSmallRadius:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private compareLen:I

.field private context:Landroid/content/Context;

.field public endAngle:I

.field private final handler:Landroid/os/Handler;

.field private height:I

.field private isMoved:Z

.field private isPressed:Z

.field private mCx:I

.field private mCy:I

.field private mLocationBitmap:Landroid/graphics/Bitmap;

.field private mRadius:I

.field private mThumbBitmap:Landroid/graphics/Bitmap;

.field private mThumbBitmapWidth:I

.field private mThumbRadius:I

.field private margin:I

.field public maxOpenAngle:I

.field public memoryOpenAngle:I

.field private memoryPaint:Landroid/graphics/Paint;

.field private memoryPercent:I

.field public memoryString:Ljava/lang/String;

.field public moveAngle:I

.field onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

.field private paint:Landroid/graphics/Paint;

.field private paintBg:Landroid/graphics/Paint;

.field private paintBitmap:Landroid/graphics/Paint;

.field private paintStroke:Landroid/graphics/Paint;

.field private pointX:D

.field private pointY:D

.field public startAngle:I

.field private startX:D

.field public tenPercentAngle:I

.field public twentyPercentAngle:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "TailgateOpenView"

    .line 38
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->TAG:Ljava/lang/String;

    const/16 p1, 0x91

    .line 197
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    const/16 p1, 0xd2

    .line 198
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->endAngle:I

    const/16 p1, 0x41

    .line 200
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    const/16 p1, 0x50

    .line 202
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->bgSmallRadius:I

    .line 204
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0043

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryString:Ljava/lang/String;

    const/16 p1, 0xa

    .line 280
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->MESSAGE_BACK_TAILGATE:I

    const/16 p1, 0xb

    .line 281
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->MESSAGE_BACK_BUTTON:I

    .line 282
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;-><init>(Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 302
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isPressed:Z

    .line 303
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isMoved:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "TailgateOpenView"

    .line 38
    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->TAG:Ljava/lang/String;

    const/16 p2, 0x91

    .line 197
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    const/16 p2, 0xd2

    .line 198
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->endAngle:I

    const/16 p2, 0x41

    .line 200
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    const/16 p2, 0x50

    .line 202
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->bgSmallRadius:I

    .line 204
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0043

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryString:Ljava/lang/String;

    const/16 p2, 0xa

    .line 280
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->MESSAGE_BACK_TAILGATE:I

    const/16 p2, 0xb

    .line 281
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->MESSAGE_BACK_BUTTON:I

    .line 282
    new-instance p2, Landroid/os/Handler;

    new-instance v0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$3;-><init>(Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;)V

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 302
    iput-boolean p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isPressed:Z

    .line 303
    iput-boolean p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isMoved:Z

    .line 70
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    const/4 p2, 0x1

    .line 71
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setClickable(Z)V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0a0077

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->bitmap:Landroid/graphics/Bitmap;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0a0079

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a00be

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mLocationBitmap:Landroid/graphics/Bitmap;

    .line 75
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmapWidth:I

    .line 76
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 77
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->initMemoryOpenAngle()V

    .line 78
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->initAnim()V

    .line 79
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->initPaint()V

    return-void
.end method

.method private initAnim()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    .line 96
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$1;-><init>(Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;-><init>(Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private initMemoryOpenAngle()V
    .locals 3

    .line 85
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailDoorPercent()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPercent:I

    .line 86
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPercent:I

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryOpenAngle:I

    const-string v0, "TailgateOpenView"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMemoryOpenAngle  memoryOpenAngle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryOpenAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", memoryPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPercent:I

    invoke-interface {v0, p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->onMemoryChange(I)V

    :cond_0
    return-void
.end method

.method private initPaint()V
    .locals 4

    .line 168
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paint:Landroid/graphics/Paint;

    .line 169
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    .line 173
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintStroke:Landroid/graphics/Paint;

    .line 178
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 179
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintStroke:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintStroke:Landroid/graphics/Paint;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 181
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintStroke:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f040039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBitmap:Landroid/graphics/Paint;

    .line 185
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBitmap:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPaint:Landroid/graphics/Paint;

    .line 189
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0501a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 190
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    const v2, 0x7f0400b5

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->twentyPercentAngle:I

    .line 192
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->tenPercentAngle:I

    return-void
.end method

.method private isClickPoint(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 450
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-double v1, v0

    .line 453
    iget-wide v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointX:D

    sub-double/2addr v1, v3

    float-to-double v3, p1

    .line 454
    iget-wide v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointY:D

    sub-double/2addr v3, v5

    const-string v5, "TailgateOpenView"

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " >> downY = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbRadius:I

    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbRadius:I

    mul-int/2addr p1, p0

    int-to-double p0, p1

    mul-double/2addr v1, v1

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    cmpl-double p0, p0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isNeedMove(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;I)Z
    .locals 4

    const-string v0, "TailgateOpenView"

    const-string v1, "isNeedMove start"

    .line 494
    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq p1, v3, :cond_1

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    invoke-interface {v0, v3}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->isMoving(Z)V

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->handler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    int-to-float v0, p2

    .line 502
    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v0, v3

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 503
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-ne p1, v3, :cond_4

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 504
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setMoveAngle(I)V

    return v2

    .line 507
    :cond_4
    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-ne p1, v3, :cond_5

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    .line 508
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setMoveAngle(I)V

    return v2

    .line 511
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq p1, v0, :cond_6

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq p1, v0, :cond_6

    const-string p1, "TailgateOpenView"

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TailDoorState != CLOSING && != OPENING  \uff0c TailDoor init \u540e\u80cc\u95e8\u505c\u6b62\u8fd0\u52a8\u540e,tailgateTravelPercent = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setMoveAngle(I)V

    :cond_6
    const-string p0, "TailgateOpenView"

    const-string p1, "isNeedMove end"

    .line 517
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 211
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 213
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 215
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->margin:I

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->compareLen:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->margin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->width:I

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->margin:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->height:I

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->margin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 216
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->bgSmallRadius:I

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->compareLen:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->bgSmallRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->width:I

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->bgSmallRadius:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->height:I

    iget v6, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->bgSmallRadius:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 220
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    int-to-float v5, v2

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    int-to-float v6, v2

    iget-object v8, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    const/4 v7, 0x1

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 223
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    int-to-float v7, v2

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    int-to-float v8, v2

    iget-object v10, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    const/4 v9, 0x1

    move-object v5, p1

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 227
    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPercent:I

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPercent:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 237
    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryOpenAngle:I

    add-int/lit16 v1, v1, -0xb4

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    add-int/2addr v1, v2

    int-to-float v2, v1

    .line 238
    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCx:I

    int-to-float v3, v3

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 239
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mLocationBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCx:I

    iget-object v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    iget-object v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mLocationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    neg-int v1, v1

    int-to-float v1, v1

    .line 240
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCx:I

    int-to-float v2, v2

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    int-to-float v5, v1

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    sub-int/2addr v1, v2

    int-to-float v6, v1

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 249
    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCx:I

    int-to-double v1, v1

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mRadius:I

    int-to-double v3, v3

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointX:D

    .line 250
    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    int-to-double v1, v1

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mRadius:I

    int-to-double v3, v3

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointY:D

    .line 251
    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_1

    .line 253
    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    int-to-float v5, v1

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    sub-int/2addr v1, v2

    int-to-float v6, v1

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintStroke:Landroid/graphics/Paint;

    move-object v3, p1

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_1

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0400b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 262
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCx:I

    int-to-float v2, v0

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    int-to-float v3, v0

    iget-wide v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointX:D

    double-to-float v4, v0

    iget-wide v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointY:D

    double-to-float v5, v0

    iget-object v6, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBg:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 265
    :goto_1
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmap:Landroid/graphics/Bitmap;

    iget-wide v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointX:D

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmapWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iget-wide v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointY:D

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    sub-double/2addr v2, v4

    double-to-float v2, v2

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 148
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 149
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->width:I

    .line 150
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->height:I

    .line 153
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->height:I

    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmapWidth:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mRadius:I

    .line 154
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmapWidth:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbRadius:I

    .line 155
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbRadius:I

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->margin:I

    .line 157
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->width:I

    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->height:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->compareLen:I

    .line 159
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->height:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    .line 160
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->compareLen:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCx:I

    .line 162
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCx:I

    int-to-double p1, p1

    iget p3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mRadius:I

    int-to-double p3, p3

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr p3, v0

    add-double/2addr p1, p3

    iget p3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbRadius:I

    int-to-double p3, p3

    add-double/2addr p1, p3

    iput-wide p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startX:D

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 309
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 311
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result v0

    const-string v2, "TailgateOpenView"

    .line 312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u8f66\u901f\u4fe1\u606f  vehicleSpeed= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_1

    .line 314
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz p1, :cond_0

    .line 316
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    invoke-interface {p0, v1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->onTip(Z)V

    :cond_0
    return v1

    .line 320
    :cond_1
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateStatus()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object v0

    .line 321
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-ne v0, v2, :cond_3

    :cond_2
    const-string p0, "TailgateOpenView"

    const-string p1, "OPENING or CLOSING, click TailDoor setTailDoorCmd(ICarDoor.TailDoorCmd.STOP) "

    .line 322
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    return v1

    .line 327
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x32

    const/16 v3, 0xa

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 343
    :pswitch_0
    iget-boolean v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isPressed:Z

    if-eqz v0, :cond_12

    .line 344
    iput-boolean v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isMoved:Z

    const-string v0, "TailgateOpenView"

    const-string v1, "MotionEvent.ACTION_MOVE"

    .line 345
    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 347
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-double v5, v0

    .line 349
    iget-wide v7, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointX:D

    sub-double/2addr v5, v7

    float-to-double v7, v1

    .line 350
    iget-wide v9, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->pointY:D

    sub-double/2addr v7, v9

    .line 352
    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbRadius:I

    iget v9, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbRadius:I

    mul-int/2addr v3, v9

    int-to-double v9, v3

    mul-double/2addr v5, v5

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    cmpl-double v3, v9, v5

    if-lez v3, :cond_12

    .line 361
    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    cmpg-float v3, v3, v4

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    const-wide v7, 0x4066800000000000L    # 180.0

    if-gez v3, :cond_5

    .line 363
    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCx:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-double v3, v3

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    int-to-float v0, v0

    sub-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v7

    div-double/2addr v0, v5

    const-wide v3, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 364
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPercent:I

    if-le v0, v2, :cond_4

    .line 365
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryOpenAngle:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    goto :goto_0

    .line 367
    :cond_4
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->endAngle:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    goto :goto_0

    .line 369
    :cond_5
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    int-to-float v2, v2

    sub-float v2, v1, v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    .line 371
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCy:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    float-to-double v1, v2

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mCx:I

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v7

    div-double/2addr v0, v5

    add-double/2addr v0, v7

    double-to-int v0, v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    goto :goto_0

    :cond_6
    const/16 v0, 0xb4

    .line 373
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 375
    :goto_0
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    if-ge v0, v1, :cond_7

    .line 376
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 378
    :cond_7
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->endAngle:I

    if-le v0, v1, :cond_8

    .line 379
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->endAngle:I

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 381
    :cond_8
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->invalidate()V

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "TailgateOpenView"

    .line 386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MotionEvent.ACTION_UP isPressed = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isPressed:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-boolean v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 388
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0a0079

    invoke-static {v0, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 389
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmapWidth:I

    .line 390
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->initMemoryOpenAngle()V

    .line 391
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    const-string v5, "TailgateOpenView"

    .line 392
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "openAngle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float v4, v0, v4

    const/16 v5, 0x64

    if-nez v4, :cond_a

    .line 394
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateTravelPercent()I

    move-result v0

    const/16 v4, 0x14

    if-le v0, v4, :cond_9

    .line 396
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    goto/16 :goto_1

    .line 398
    :cond_9
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 399
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 401
    iput-boolean v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isPressed:Z

    .line 402
    iput-boolean v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isMoved:Z

    .line 403
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->invalidate()V

    goto/16 :goto_2

    .line 406
    :cond_a
    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->twentyPercentAngle:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_b

    .line 408
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->twentyPercentAngle:I

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    goto/16 :goto_1

    .line 409
    :cond_b
    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryOpenAngle:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_c

    .line 411
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryOpenAngle:I

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 412
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateTravelPercent()I

    move-result v0

    .line 413
    iget-boolean v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isMoved:Z

    if-eqz v4, :cond_e

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPercent:I

    if-eq v4, v5, :cond_e

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryPercent:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v4, 0x2

    if-ge v0, v4, :cond_e

    .line 414
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0b0039

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_c
    float-to-int v0, v0

    .line 419
    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->twentyPercentAngle:I

    rem-int/2addr v0, v4

    const-string v4, "TailgateOpenView"

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reminderAngle = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->tenPercentAngle:I

    if-ge v0, v4, :cond_d

    .line 423
    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    sub-int/2addr v4, v0

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    goto :goto_1

    .line 426
    :cond_d
    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    sub-int/2addr v4, v0

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->twentyPercentAngle:I

    add-int/2addr v4, v0

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->endAngle:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 429
    :cond_e
    :goto_1
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    sub-int/2addr v0, v4

    mul-int/2addr v0, v5

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    div-int/2addr v0, v4

    if-lt v0, v2, :cond_f

    .line 430
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryOpenAngle:I

    iget v6, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    add-int/2addr v4, v6

    if-lt v2, v4, :cond_f

    .line 432
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->memoryOpenAngle:I

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    move v0, v5

    :cond_f
    const-string v2, "TailgateOpenView"

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveAngle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ">>>> percent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->invalidate()V

    .line 437
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->controlTailgatePercent(I)Z

    .line 438
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 440
    :cond_10
    iput-boolean v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isPressed:Z

    .line 441
    iput-boolean v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isMoved:Z

    goto :goto_2

    :pswitch_2
    const-string v0, "TailgateOpenView"

    const-string v2, "MotionEvent.ACTION_DOWN"

    .line 329
    invoke-static {v0, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a007a

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 332
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->mThumbBitmapWidth:I

    .line 333
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz v0, :cond_11

    .line 334
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    invoke-interface {v0, v1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->isMoving(Z)V

    .line 337
    :cond_11
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isClickPoint(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 338
    iput-boolean v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isPressed:Z

    .line 339
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->invalidate()V

    .line 446
    :cond_12
    :goto_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onUiBackMessageDelayed(Z)V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xb

    if-eqz p1, :cond_1

    .line 557
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 559
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :goto_0
    return-void
.end method

.method public setMoveAngle(I)V
    .locals 3

    const-string v0, "TailgateOpenView"

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate  setMoveAngle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 487
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    invoke-interface {v0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->onFinish(I)V

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->invalidate()V

    return-void
.end method

.method public setOnTailGateStatusChangeListener(Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    return-void
.end method

.method public startAnim(Z)V
    .locals 4

    .line 464
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getGear()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object v0

    const-string v1, "TailgateOpenView"

    .line 465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAnim ICarInfo.GearPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 467
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz p1, :cond_0

    .line 469
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    invoke-interface {p0, v2}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->onTip(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 473
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setClickable(Z)V

    .line 474
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->initAnim()V

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    .line 476
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-float v3, v3

    aput v3, v1, v0

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->endAngle:I

    int-to-float v0, v0

    aput v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0

    .line 478
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-float v3, v3

    aput v3, v1, v0

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    int-to-float v0, v0

    aput v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 480
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x384

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 481
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startMoveAnim(ZF)V
    .locals 4

    .line 523
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarInfoControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarInfoControl;->getGear()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    move-result-object v0

    const-string v1, "TailgateOpenView"

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startMoveAnim ICarInfo.GearPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    .line 526
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz p1, :cond_0

    .line 528
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    invoke-interface {p0, v2}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->onTip(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setClickable(Z)V

    .line 533
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->initAnim()V

    if-eqz p1, :cond_2

    .line 536
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-float p1, p1

    add-float/2addr p1, p2

    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->endAngle:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_0

    .line 538
    :cond_2
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 540
    :goto_0
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-float v3, v3

    aput v3, v1, v0

    aput p1, v1, v2

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 541
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    int-to-float p2, p2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 542
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    mul-int/lit8 p1, p1, 0xa

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 543
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public updateMemory()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->initMemoryOpenAngle()V

    .line 276
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->invalidate()V

    return-void
.end method
