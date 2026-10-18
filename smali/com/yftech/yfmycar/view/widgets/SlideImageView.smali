.class public Lcom/yftech/yfmycar/view/widgets/SlideImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SlideImageView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfmycar/view/widgets/SlideImageView$OnDoorStatusChangeListener;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private doorAnimator:Landroid/animation/ValueAnimator;

.field isLeftNor:Z

.field private isMoreThanCenter:Z

.field lastClickTime:J

.field private lastX:I

.field private layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private maxMoveWidth:I

.field private onDoorStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/SlideImageView$OnDoorStatusChangeListener;

.field private parentWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x15c

    .line 19
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    const/16 p1, 0x100

    .line 21
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->maxMoveWidth:I

    const-wide/16 v0, 0x0

    .line 51
    iput-wide v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->lastClickTime:J

    const-string p1, "SlideImageView"

    .line 52
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x15c

    .line 19
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    const/16 p1, 0x100

    .line 21
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->maxMoveWidth:I

    const-wide/16 p1, 0x0

    .line 51
    iput-wide p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->lastClickTime:J

    const-string p1, "SlideImageView"

    .line 52
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->TAG:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->initAnim()V

    .line 31
    invoke-virtual {p0, p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    return p0
.end method

.method static synthetic access$300(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Lcom/yftech/yfmycar/view/widgets/SlideImageView$OnDoorStatusChangeListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->onDoorStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/SlideImageView$OnDoorStatusChangeListener;

    return-object p0
.end method

.method private initAnim()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    .line 125
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 126
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->maxMoveWidth:I

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    .line 130
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;-><init>(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 58
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isClickable()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 61
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_a

    .line 73
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->lastClickTime:J

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->lastX:I

    sub-int/2addr p1, v2

    .line 75
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result v2

    add-int/2addr v2, p1

    if-gez v2, :cond_1

    move v2, v1

    goto :goto_0

    .line 76
    :cond_1
    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->maxMoveWidth:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 77
    :goto_0
    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  ,   geLeft() = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    .line 79
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v2, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 81
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->layoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->lastX:I

    goto/16 :goto_a

    .line 86
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_UP"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isLeftNor:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    iget-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isLeftNor:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getRight()I

    move-result p1

    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    if-ne p1, p2, :cond_5

    .line 89
    :cond_4
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->TAG:Ljava/lang/String;

    const-string p1, "keep position"

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 92
    :cond_5
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    const/4 p2, 0x2

    div-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result v2

    div-int/2addr v2, p2

    sub-int/2addr p1, v2

    .line 93
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "centerX = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-boolean v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isLeftNor:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_a

    .line 97
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result v2

    if-lt v2, p1, :cond_6

    move p1, v0

    goto :goto_1

    :cond_6
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    .line 100
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    aput v2, p2, v1

    iget-boolean v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v3, v2

    :cond_7
    aput v3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 101
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u539f\u672c\u5728\u5de6\u8fb9 setFloatValues =  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">>>"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    if-eqz v2, :cond_8

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :cond_8
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    :goto_2
    int-to-long p1, p1

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result p1

    goto :goto_2

    .line 103
    :goto_3
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/16 :goto_9

    .line 106
    :cond_a
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result v2

    if-gt v2, p1, :cond_b

    move p1, v0

    goto :goto_4

    :cond_b
    move p1, v1

    :goto_4
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    .line 109
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    new-array p2, p2, [F

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result v2

    int-to-float v2, v2

    aput v2, p2, v1

    iget-boolean v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v3, v2

    :goto_5
    aput v3, p2, v0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 110
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u539f\u672c\u5728\u53f3\u8fb9 setFloatValues =  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">>>"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_6
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result p1

    :goto_7
    int-to-long p1, p1

    goto :goto_8

    :cond_e
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_7

    .line 112
    :goto_8
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 114
    :goto_9
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a

    .line 63
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->lastClickTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long p1, v2, v4

    if-gez p1, :cond_f

    return v0

    .line 67
    :cond_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->lastX:I

    .line 68
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->TAG:Ljava/lang/String;

    const-string p2, "MotionEvent.ACTION_DOWN"

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->initAnim()V

    .line 70
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result p1

    if-nez p1, :cond_10

    move v1, v0

    :cond_10
    iput-boolean v1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isLeftNor:Z

    :goto_a
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnDoorStatusChangeListener(Lcom/yftech/yfmycar/view/widgets/SlideImageView$OnDoorStatusChangeListener;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->onDoorStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/SlideImageView$OnDoorStatusChangeListener;

    return-void
.end method

.method public startAnim(Z)V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isMoreThanCenter:Z

    .line 156
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->initAnim()V

    .line 157
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getLeft()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v0

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result v3

    sub-int/2addr p1, v3

    int-to-float p1, p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    aput p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 158
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->parentWidth:I

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 159
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->doorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
