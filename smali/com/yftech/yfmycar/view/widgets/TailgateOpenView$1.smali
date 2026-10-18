.class Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$1;
.super Ljava/lang/Object;
.source "TailgateOpenView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->initAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    .line 100
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->postInvalidate()V

    return-void
.end method
