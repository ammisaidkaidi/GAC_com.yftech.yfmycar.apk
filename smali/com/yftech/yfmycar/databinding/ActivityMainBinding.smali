.class public abstract Lcom/yftech/yfmycar/databinding/ActivityMainBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ActivityMainBinding.java"


# instance fields
.field public final cockpit:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final fragmentContainer:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final lightingEffect:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final llTip:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final openCloseControl:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final radioGroup:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final tvTip:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/RadioButton;Landroid/widget/FrameLayout;Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 55
    iput-object p4, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->cockpit:Landroid/widget/RadioButton;

    .line 56
    iput-object p5, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->fragmentContainer:Landroid/widget/FrameLayout;

    .line 57
    iput-object p6, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    .line 58
    iget-object p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 59
    iput-object p7, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    .line 60
    iget-object p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 61
    iput-object p8, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->lightingEffect:Landroid/widget/RadioButton;

    .line 62
    iput-object p9, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->llTip:Landroid/widget/LinearLayout;

    .line 63
    iput-object p10, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->openCloseControl:Landroid/widget/RadioButton;

    .line 64
    iput-object p11, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->radioGroup:Landroid/widget/LinearLayout;

    .line 65
    iput-object p12, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->tvTip:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/yftech/yfmycar/databinding/ActivityMainBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/ActivityMainBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f09001c

    .line 104
    invoke-static {p1, p0, v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/yftech/yfmycar/databinding/ActivityMainBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 89
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/yftech/yfmycar/databinding/ActivityMainBinding;
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

    .line 78
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/ActivityMainBinding;
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

    const v0, 0x7f09001c

    .line 84
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/ActivityMainBinding;
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

    const v0, 0x7f09001c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    return-object p0
.end method


# virtual methods
.method public getGlobalCarViewModel()Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 72
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    return-object p0
.end method

.method public abstract setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V
    .param p1    # Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
