.class public abstract Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutCockpitBinding.java"


# instance fields
.field public final frontLeftSeat:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final frontRightSeat:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageCar:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageSeatSelectLeft:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageSeatSelectLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageSeatSelectRight:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final imageSeatSelectRightMirror:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final leftRearviewMirror:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final rightRearviewMirror:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)V

    .line 54
    iput-object p4, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->frontLeftSeat:Landroid/widget/RadioButton;

    .line 55
    iput-object p5, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->frontRightSeat:Landroid/widget/RadioButton;

    .line 56
    iput-object p6, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->imageCar:Landroidx/appcompat/widget/AppCompatImageView;

    .line 57
    iput-object p7, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->imageSeatSelectLeft:Landroidx/appcompat/widget/AppCompatImageView;

    .line 58
    iput-object p8, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->imageSeatSelectLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

    .line 59
    iput-object p9, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->imageSeatSelectRight:Landroidx/appcompat/widget/AppCompatImageView;

    .line 60
    iput-object p10, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->imageSeatSelectRightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    .line 61
    iput-object p11, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->leftRearviewMirror:Landroid/widget/RadioButton;

    .line 62
    iput-object p12, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->rightRearviewMirror:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const v0, 0x7f09002d

    .line 101
    invoke-static {p1, p0, v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->bind(Landroidx/databinding/DataBindingComponent;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 86
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;
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

    .line 75
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;
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

    const v0, 0x7f09002d

    .line 81
    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroidx/databinding/DataBindingComponent;)Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;
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

    const v0, 0x7f09002d

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLandroidx/databinding/DataBindingComponent;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    return-object p0
.end method


# virtual methods
.method public getGlobalCarViewModel()Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    return-object p0
.end method

.method public abstract setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V
    .param p1    # Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
