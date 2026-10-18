.class Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;
.super Ljava/lang/Object;
.source "TailgateFragment.java"

# interfaces
.implements Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->onBindView(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final dim200:F

.field final synthetic this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0500a9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->dim200:F

    return-void
.end method


# virtual methods
.method public isMoving(Z)V
    .locals 0

    return-void
.end method

.method public onFinish(I)V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->access$202(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;I)I

    const-string v0, "TailgateFragment"

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doorOpenAnglePercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->access$300(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->setMoveAngle(I)V

    return-void
.end method

.method public onMemoryChange(I)V
    .locals 3

    const/16 v0, 0x32

    if-lt p1, v0, :cond_0

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 104
    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->dim200:F

    neg-float p0, p0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x42480000    # 50.0f

    div-float/2addr p0, p1

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTranslationY(F)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 107
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)Landroid/widget/FrameLayout;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onTip(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 120
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0b0071

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showTip(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUiBack()V
    .locals 0

    return-void
.end method
