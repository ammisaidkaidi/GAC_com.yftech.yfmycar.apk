.class public Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;
.super Landroid/view/View;
.source "ColorfulBitmap.java"


# instance fields
.field bitmapColor:I

.field private bitmapLightBg:Landroid/graphics/Bitmap;

.field private bitmapWithColor:Landroid/graphics/Bitmap;

.field private final colorList:[I

.field context:Landroid/content/Context;

.field private inputBitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    .line 31
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->colorList:[I

    .line 48
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->context:Landroid/content/Context;

    .line 49
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->init()V

    return-void

    :array_0
    .array-data 4
        0x7f040055
        0x7f040056
        0x7f040057
        0x7f040058
        0x7f040059
        0x7f04005a
        0x7f04005b
        0x7f04005c
        0x7f04005d
        0x7f04005e
        0x7f04005f
        0x7f040060
        0x7f040061
        0x7f040062
        0x7f040063
        0x7f040064
        0x7f040065
        0x7f040066
        0x7f040067
        0x7f040068
        0x7f040069
        0x7f04006a
        0x7f04006b
        0x7f04006c
        0x7f04006d
        0x7f04006e
        0x7f04006f
        0x7f040070
        0x7f040071
        0x7f040072
        0x7f040073
        0x7f040074
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    .line 31
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->colorList:[I

    .line 54
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->context:Landroid/content/Context;

    .line 55
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->init(I)V

    return-void

    :array_0
    .array-data 4
        0x7f040055
        0x7f040056
        0x7f040057
        0x7f040058
        0x7f040059
        0x7f04005a
        0x7f04005b
        0x7f04005c
        0x7f04005d
        0x7f04005e
        0x7f04005f
        0x7f040060
        0x7f040061
        0x7f040062
        0x7f040063
        0x7f040064
        0x7f040065
        0x7f040066
        0x7f040067
        0x7f040068
        0x7f040069
        0x7f04006a
        0x7f04006b
        0x7f04006c
        0x7f04006d
        0x7f04006e
        0x7f04006f
        0x7f040070
        0x7f040071
        0x7f040072
        0x7f040073
        0x7f040074
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x20

    .line 31
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->colorList:[I

    .line 60
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->context:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->init()V

    return-void

    :array_0
    .array-data 4
        0x7f040055
        0x7f040056
        0x7f040057
        0x7f040058
        0x7f040059
        0x7f04005a
        0x7f04005b
        0x7f04005c
        0x7f04005d
        0x7f04005e
        0x7f04005f
        0x7f040060
        0x7f040061
        0x7f040062
        0x7f040063
        0x7f040064
        0x7f040065
        0x7f040066
        0x7f040067
        0x7f040068
        0x7f040069
        0x7f04006a
        0x7f04006b
        0x7f04006c
        0x7f04006d
        0x7f04006e
        0x7f04006f
        0x7f040070
        0x7f040071
        0x7f040072
        0x7f040073
        0x7f040074
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x20

    .line 31
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->colorList:[I

    .line 66
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->context:Landroid/content/Context;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040055
        0x7f040056
        0x7f040057
        0x7f040058
        0x7f040059
        0x7f04005a
        0x7f04005b
        0x7f04005c
        0x7f04005d
        0x7f04005e
        0x7f04005f
        0x7f040060
        0x7f040061
        0x7f040062
        0x7f040063
        0x7f040064
        0x7f040065
        0x7f040066
        0x7f040067
        0x7f040068
        0x7f040069
        0x7f04006a
        0x7f04006b
        0x7f04006c
        0x7f04006d
        0x7f04006e
        0x7f04006f
        0x7f040070
        0x7f040071
        0x7f040072
        0x7f040073
        0x7f040074
    .end array-data
.end method


# virtual methods
.method public getCarLampImg()I
    .locals 0

    .line 90
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 91
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isGACLogoPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0a0024

    return p0

    :cond_0
    const p0, 0x7f0a0029

    return p0

    :cond_1
    const p0, 0x7f0a002a

    return p0
.end method

.method public init()V
    .locals 3

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapColor:I

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->getCarLampImg()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->inputBitmap:Landroid/graphics/Bitmap;

    .line 73
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0025

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapLightBg:Landroid/graphics/Bitmap;

    .line 74
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->inputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 75
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->inputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 76
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapWithColor:Landroid/graphics/Bitmap;

    return-void
.end method

.method public init(I)V
    .locals 2

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapColor:I

    .line 81
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    .line 82
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->getCarLampImg()I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->inputBitmap:Landroid/graphics/Bitmap;

    .line 83
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->inputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 84
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->inputBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 85
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapWithColor:Landroid/graphics/Bitmap;

    .line 86
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->invalidate()V

    return-void
.end method

.method public makeTintBitmap(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->colorList:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 141
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->colorList:[I

    aget p1, v1, p1

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapColor:I

    .line 142
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->inputBitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    return-void

    .line 145
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 118
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 119
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapWithColor:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    const/16 v0, 0x1f

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, v1, v1, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v2

    .line 122
    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapWithColor:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 123
    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 124
    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapLightBg:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 126
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 128
    invoke-virtual {p1, v1, v1, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    .line 129
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->bitmapWithColor:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 130
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 131
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->inputBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 132
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 133
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method
