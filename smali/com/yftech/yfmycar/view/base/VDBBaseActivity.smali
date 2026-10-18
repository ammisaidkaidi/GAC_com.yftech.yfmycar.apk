.class public Lcom/yftech/yfmycar/view/base/VDBBaseActivity;
.super Lcom/yftech/yfmycar/view/base/BaseActivity;
.source "VDBBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/yftech/yfmycar/view/base/BaseActivity;"
    }
.end annotation


# instance fields
.field protected vdb:Landroidx/databinding/ViewDataBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVDB;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/VDBUtil;->createViewDataBindingFromGenericSuperclass(Ljava/lang/Class;Landroid/view/LayoutInflater;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    .line 20
    iget-object p1, p0, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 21
    iget-object p1, p0, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/utils/VDBUtil;->unbindAdapter(Landroidx/databinding/ViewDataBinding;)V

    .line 29
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->unbind()V

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    .line 32
    :cond_0
    invoke-super {p0}, Lcom/yftech/yfmycar/view/base/BaseActivity;->onDestroy()V

    return-void
.end method
