.class Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment$1;
.super Ljava/lang/Object;
.source "FrontLeftWindowFragment.java"

# interfaces
.implements Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;->onBindView(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAnimationStartEnd(II)V
    .locals 0

    return-void
.end method

.method public doAnimationUpdate(I)V
    .locals 0

    return-void
.end method

.method public doDownUpVisible(II)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 84
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method
