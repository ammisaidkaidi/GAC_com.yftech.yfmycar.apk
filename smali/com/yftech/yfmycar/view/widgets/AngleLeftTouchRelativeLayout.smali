.class public Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "AngleLeftTouchRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout$OnSpecialTypeClickListener;
    }
.end annotation


# static fields
.field private static final PART_FOUR:I = 0x4

.field private static final PART_ONE:I = 0x1

.field private static final PART_THREE:I = 0x3

.field private static final PART_TWO:I = 0x2


# instance fields
.field private angles:[F

.field private height:I

.field private mListener:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout$OnSpecialTypeClickListener;

.field private r:F

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 10
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->angles:[F

    return-void

    :array_0
    .array-data 4
        0x42300000    # 44.0f
        0x42300000    # 44.0f
        0x42300000    # 44.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 10
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->angles:[F

    return-void

    :array_0
    .array-data 4
        0x42300000    # 44.0f
        0x42300000    # 44.0f
        0x42300000    # 44.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 10
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->angles:[F

    return-void

    :array_0
    .array-data 4
        0x42300000    # 44.0f
        0x42300000    # 44.0f
        0x42300000    # 44.0f
    .end array-data
.end method

.method private doOnSpecialTypeClick(Landroid/view/MotionEvent;)V
    .locals 10

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 73
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v0, v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v6, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->height:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float v6, v1, v6

    float-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 75
    iget v6, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->r:F

    float-to-double v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 76
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->touchOnWhichPart(Landroid/view/MotionEvent;)I

    move-result p1

    const-wide/16 v2, 0x0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const-wide v6, 0x4066800000000000L    # 180.0

    packed-switch p1, :pswitch_data_0

    move-wide v0, v2

    goto :goto_0

    .line 89
    :pswitch_0
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->height:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p1, v1

    float-to-double v8, p1

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->width:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    add-double/2addr v0, v4

    goto :goto_0

    .line 86
    :pswitch_1
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->width:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p1, v0

    float-to-double v8, p1

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->height:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-double v0, v1

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    const-wide v4, 0x4050400000000000L    # 65.0

    sub-double/2addr v0, v4

    goto :goto_0

    .line 83
    :pswitch_2
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->height:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-double v8, v1

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->width:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    const-wide v4, 0x4069a00000000000L    # 205.0

    add-double/2addr v0, v4

    goto :goto_0

    .line 80
    :pswitch_3
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->width:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-double v8, v0

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->height:I

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr p1, v1

    float-to-double v0, p1

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    const-wide v4, 0x405cc00000000000L    # 115.0

    add-double/2addr v0, v4

    :goto_0
    const/4 p1, 0x0

    move-wide v4, v2

    .line 94
    :goto_1
    iget-object v6, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->angles:[F

    array-length v6, v6

    if-ge p1, v6, :cond_1

    .line 95
    iget-object v6, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->angles:[F

    aget v6, v6, p1

    float-to-double v6, v6

    add-double/2addr v4, v6

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->mListener:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout$OnSpecialTypeClickListener;

    if-eqz v0, :cond_1

    .line 98
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->mListener:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout$OnSpecialTypeClickListener;

    invoke-interface {p0, p1}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout$OnSpecialTypeClickListener;->onSpecialTypeClick(I)V

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private touchOnWhichPart(Landroid/view/MotionEvent;)I
    .locals 3

    .line 122
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->width:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->height:I

    div-int/2addr p0, v2

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->height:I

    div-int/2addr p0, v2

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 138
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 31
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->width:I

    .line 32
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->height:I

    .line 33
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->width:I

    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->height:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->r:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->angles:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->angles:[F

    array-length v0, v0

    if-lez v0, :cond_1

    .line 46
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->doOnSpecialTypeClick(Landroid/view/MotionEvent;)V

    .line 50
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setOnSpecialTypeClickListener(Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout$OnSpecialTypeClickListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->mListener:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout$OnSpecialTypeClickListener;

    return-void
.end method
