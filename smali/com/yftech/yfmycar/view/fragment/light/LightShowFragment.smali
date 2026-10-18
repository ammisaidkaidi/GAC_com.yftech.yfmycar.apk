.class public Lcom/yftech/yfmycar/view/fragment/light/LightShowFragment;
.super Lcom/yftech/yfmycar/view/base/BaseFragment;
.source "LightShowFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public setFragmentIndex()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setLayout()Ljava/lang/Object;
    .locals 0

    const p0, 0x7f090024

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
