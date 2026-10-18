.class public Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "AngleTouchRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout$OnSpecialTypeClickListener;
    }
.end annotation


# static fields
.field private static final PART_FOUR:I = 0x4

.field private static final PART_ONE:I = 0x1

.field private static final PART_THREE:I = 0x3

.field private static final PART_TWO:I = 0x2


# instance fields
.field private TAG:Ljava/lang/String;

.field private angles:[F

.field private height:I

.field private mListener:Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout$OnSpecialTypeClickListener;

.field private norQuadrant:I

.field private quadrants:[F

.field private r:F

.field private startAngle:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "AngleTouchRelativeLayout"

    .line 18
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    .line 20
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->angles:[F

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->norQuadrant:I

    .line 122
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->startAngle:I

    const/4 p1, 0x4

    .line 123
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->quadrants:[F

    return-void

    :array_0
    .array-data 4
        0x42300000    # 44.0f
        0x42300000    # 44.0f
        0x42300000    # 44.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "AngleTouchRelativeLayout"

    .line 18
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->TAG:Ljava/lang/String;

    const/4 p1, 0x3

    .line 20
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->angles:[F

    const/4 p1, 0x0

    .line 114
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->norQuadrant:I

    .line 122
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->startAngle:I

    const/4 v0, 0x4

    .line 123
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->quadrants:[F

    if-eqz p2, :cond_2

    .line 60
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/yftech/yfmycar/R$styleable;->AngleTouchRelativeLayout:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 62
    invoke-virtual {p2, p1, p1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 67
    :goto_0
    div-int/lit8 v1, p1, 0x5a

    iput v1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->norQuadrant:I

    .line 69
    rem-int/lit8 p1, p1, 0x5a

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->startAngle:I

    .line 70
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startAngle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->startAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " norQuadrant = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->norQuadrant:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->quadrants:[F

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->norQuadrant:I

    const/4 v2, 0x0

    aput v2, p1, v1

    const/4 p1, 0x1

    :goto_1
    if-ge p1, v0, :cond_1

    .line 74
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->quadrants:[F

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->norQuadrant:I

    add-int/2addr v2, p1

    rem-int/2addr v2, v0

    mul-int/lit8 v3, p1, 0x5a

    int-to-float v3, v3

    aput v3, v1, v2

    .line 75
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " quadrants["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->norQuadrant:I

    add-int/2addr v3, p1

    rem-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->quadrants:[F

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->norQuadrant:I

    add-int/2addr v4, p1

    rem-int/2addr v4, v0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0x42300000    # 44.0f
        0x42300000    # 44.0f
        0x42300000    # 44.0f
    .end array-data
.end method

.method private doOnSpecialTypeClick(Landroid/view/MotionEvent;)V
    .locals 12

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 142
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->width:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v2, v0, v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->height:I

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float v2, v1, v2

    float-to-double v8, v2

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v4, v8

    .line 144
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->r:F

    float-to-double v8, v2

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gez v2, :cond_3

    .line 145
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->touchOnWhichPart(Landroid/view/MotionEvent;)I

    move-result p1

    const/4 v2, 0x0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide/16 v8, 0x0

    packed-switch p1, :pswitch_data_0

    move-wide v0, v8

    goto :goto_0

    .line 158
    :pswitch_0
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->height:I

    div-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr p1, v1

    float-to-double v10, p1

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->width:I

    div-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->quadrants:[F

    const/4 v3, 0x3

    aget p1, p1, v3

    float-to-double v3, p1

    add-double/2addr v0, v3

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->startAngle:I

    int-to-double v3, p1

    sub-double/2addr v0, v3

    goto :goto_0

    .line 155
    :pswitch_1
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->width:I

    div-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr p1, v0

    float-to-double v10, p1

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->height:I

    div-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-double v0, v1

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->quadrants:[F

    aget p1, p1, v3

    float-to-double v3, p1

    add-double/2addr v0, v3

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->startAngle:I

    int-to-double v3, p1

    sub-double/2addr v0, v3

    goto :goto_0

    .line 152
    :pswitch_2
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->height:I

    div-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr v1, p1

    float-to-double v10, v1

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->width:I

    div-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->quadrants:[F

    const/4 v3, 0x1

    aget p1, p1, v3

    float-to-double v3, p1

    add-double/2addr v0, v3

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->startAngle:I

    int-to-double v3, p1

    sub-double/2addr v0, v3

    goto :goto_0

    .line 149
    :pswitch_3
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->width:I

    div-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr v0, p1

    float-to-double v10, v0

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->height:I

    div-int/2addr p1, v3

    int-to-float p1, p1

    sub-float/2addr p1, v1

    float-to-double v0, p1

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v6

    div-double/2addr v0, v4

    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->quadrants:[F

    aget p1, p1, v2

    float-to-double v3, p1

    add-double/2addr v0, v3

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->startAngle:I

    int-to-double v3, p1

    sub-double/2addr v0, v3

    :goto_0
    cmpg-double p1, v0, v8

    const-wide v3, 0x4076800000000000L    # 360.0

    if-gez p1, :cond_0

    add-double/2addr v0, v3

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u70b9\u51fb\u89d2\u5ea6 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v8

    .line 165
    :goto_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->angles:[F

    array-length p1, p1

    if-ge v2, p1, :cond_3

    .line 166
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->angles:[F

    aget p1, p1, v2

    float-to-double v10, p1

    add-double/2addr v5, v10

    cmpl-double p1, v5, v3

    if-lez p1, :cond_1

    move-wide v5, v3

    :cond_1
    cmpl-double p1, v0, v8

    if-lez p1, :cond_2

    cmpg-double p1, v0, v5

    if-gez p1, :cond_2

    .line 171
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->mListener:Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout$OnSpecialTypeClickListener;

    if-eqz p1, :cond_3

    .line 172
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->mListener:Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout$OnSpecialTypeClickListener;

    invoke-interface {p0, v2}, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout$OnSpecialTypeClickListener;->onSpecialTypeClick(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    nop

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

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->width:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->height:I

    div-int/2addr p0, v2

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 202
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->height:I

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

    .line 212
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 83
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 84
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->width:I

    .line 85
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->height:I

    .line 86
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->width:I

    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->height:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->r:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->angles:[F

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->angles:[F

    array-length v0, v0

    if-lez v0, :cond_1

    .line 99
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->doOnSpecialTypeClick(Landroid/view/MotionEvent;)V

    .line 103
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setAngles([F)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->angles:[F

    return-void
.end method

.method public setOnSpecialTypeClickListener(Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout$OnSpecialTypeClickListener;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout;->mListener:Lcom/yftech/yfmycar/view/widgets/AngleTouchRelativeLayout$OnSpecialTypeClickListener;

    return-void
.end method
