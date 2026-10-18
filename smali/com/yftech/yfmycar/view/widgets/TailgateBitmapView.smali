.class public Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;
.super Landroid/view/View;
.source "TailgateBitmapView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private mCx:I

.field private mCy:I

.field public maxOpenAngle:I

.field public moveAngle:I

.field private paintBitmap:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string p1, "TailgateBitmapView"

    .line 23
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->TAG:Ljava/lang/String;

    const/16 p1, 0x41

    .line 60
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->maxOpenAngle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "TailgateBitmapView"

    .line 23
    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->TAG:Ljava/lang/String;

    const/16 p2, 0x41

    .line 60
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->maxOpenAngle:I

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0077

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->bitmap:Landroid/graphics/Bitmap;

    .line 37
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->paintBitmap:Landroid/graphics/Paint;

    .line 54
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->paintBitmap:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 55
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->paintBitmap:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 67
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 69
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->moveAngle:I

    add-int/lit8 v0, v0, -0xe

    int-to-float v0, v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->mCx:I

    int-to-float v1, v1

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->mCy:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 70
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->bitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->mCx:I

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->mCy:I

    add-int/lit8 v2, v2, -0xa

    int-to-float v2, v2

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->paintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    sub-int/2addr p1, p2

    .line 46
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 48
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->mCy:I

    .line 49
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->mCy:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->mCx:I

    return-void
.end method

.method public setMoveAngle(I)V
    .locals 3

    const-string v0, "TailgateBitmapView"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidate bitmap setMoveAngle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->maxOpenAngle:I

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->moveAngle:I

    .line 76
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->invalidate()V

    return-void
.end method
