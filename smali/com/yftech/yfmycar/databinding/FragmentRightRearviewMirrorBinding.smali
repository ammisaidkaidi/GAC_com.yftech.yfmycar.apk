.class public abstract Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentRightRearviewMirrorBinding.java"


# instance fields
.field public final collapseAll:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final expandAll:Landroidx/appcompat/widget/AppCompatTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llBottomButtonsLeft:Landroidx/appcompat/widget/LinearLayoutCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final moveDown:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final moveLeft:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final moveRight:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final moveUp:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final rightMirror:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 46
    iput-object p4, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->collapseAll:Landroidx/appcompat/widget/AppCompatTextView;

    .line 47
    iput-object p5, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->expandAll:Landroidx/appcompat/widget/AppCompatTextView;

    .line 48
    iput-object p6, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->llBottomButtonsLeft:Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 49
    iput-object p7, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->moveDown:Landroidx/appcompat/widget/AppCompatImageView;

    .line 50
    iput-object p8, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->moveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    .line 51
    iput-object p9, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->moveRight:Landroidx/appcompat/widget/AppCompatImageView;

    .line 52
    iput-object p10, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->moveUp:Landroidx/appcompat/widget/AppCompatImageView;

    .line 53
    iput-object p11, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->rightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f090027

    .line 85
    invoke-static {p1, p0, v0}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 70
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 59
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f090027

    .line 65
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const v0, 0x7f090027

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;

    return-object p0
.end method
