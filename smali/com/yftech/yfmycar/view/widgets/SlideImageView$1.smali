.class Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;
.super Ljava/lang/Object;
.source "SlideImageView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/widgets/SlideImageView;->initAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 133
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 134
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->access$000(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->access$000(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    float-to-int v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->access$000(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 137
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->access$000(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->access$100(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-virtual {v1}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->access$200(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->access$300(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Lcom/yftech/yfmycar/view/widgets/SlideImageView$OnDoorStatusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->access$300(Lcom/yftech/yfmycar/view/widgets/SlideImageView;)Lcom/yftech/yfmycar/view/widgets/SlideImageView$OnDoorStatusChangeListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SlideImageView;

    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/widgets/SlideImageView;->isLeftNor:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/yftech/yfmycar/view/widgets/SlideImageView$OnDoorStatusChangeListener;->onDoorFromRightToLeft(Z)V

    :cond_2
    return-void
.end method
