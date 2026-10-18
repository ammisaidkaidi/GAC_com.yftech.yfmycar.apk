.class Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;
.super Ljava/lang/Object;
.source "TailgateOpenView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 103
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "TailgateOpenView"

    const-string p1, "onAnimationCancel"

    .line 135
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TailgateOpenView"

    const-string v0, "onAnimationEnd"

    .line 114
    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setClickable(Z)V

    .line 116
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget p1, p1, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->moveAngle:I

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget v0, v0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->startAngle:I

    sub-int/2addr p1, v0

    mul-int/lit8 p1, p1, 0x64

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget v0, v0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->maxOpenAngle:I

    div-int/2addr p1, v0

    .line 118
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    invoke-interface {p0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->onFinish(I)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TailgateOpenView"

    const-string v0, "onAnimationStart"

    .line 106
    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onTailGateStatusChangeListener:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;->isMoving(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 125
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$2;->onAnimationStart(Landroid/animation/Animator;)V

    return-void
.end method
