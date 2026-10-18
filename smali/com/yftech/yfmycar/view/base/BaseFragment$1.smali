.class Lcom/yftech/yfmycar/view/base/BaseFragment$1;
.super Ljava/util/TimerTask;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/base/BaseFragment;->startCarRestTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/base/BaseFragment;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/base/BaseFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1;->this$0:Lcom/yftech/yfmycar/view/base/BaseFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1;->this$0:Lcom/yftech/yfmycar/view/base/BaseFragment;

    iget-boolean v0, v0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTaskCanceled:Z

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1;->this$0:Lcom/yftech/yfmycar/view/base/BaseFragment;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->access$000(Lcom/yftech/yfmycar/view/base/BaseFragment;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1;->this$0:Lcom/yftech/yfmycar/view/base/BaseFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->access$002(Lcom/yftech/yfmycar/view/base/BaseFragment;I)I

    .line 187
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1;->this$0:Lcom/yftech/yfmycar/view/base/BaseFragment;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    new-instance v1, Lcom/yftech/yfmycar/view/base/BaseFragment$1$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/base/BaseFragment$1$1;-><init>(Lcom/yftech/yfmycar/view/base/BaseFragment$1;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 193
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1;->this$0:Lcom/yftech/yfmycar/view/base/BaseFragment;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->stopCarRestTimer()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1;->this$0:Lcom/yftech/yfmycar/view/base/BaseFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->access$008(Lcom/yftech/yfmycar/view/base/BaseFragment;)I

    :cond_1
    :goto_0
    return-void
.end method
