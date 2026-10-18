.class public Lcom/yftech/yfmycar/view/fragment/seat/SteeringWheelFragment;
.super Lcom/yftech/yfmycar/view/base/BaseFragment;
.source "SteeringWheelFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
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

    const p1, 0x7f070095

    .line 34
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/SteeringWheelFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f07008d

    .line 35
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/SteeringWheelFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070091

    .line 36
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/SteeringWheelFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070093

    .line 37
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/SteeringWheelFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    .line 38
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/SteeringWheelFragment;->mMoveUp:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/SteeringWheelFragment;->mMoveDown:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/SteeringWheelFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/SteeringWheelFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x7f07008d

    if-eq p0, p1, :cond_0

    const p1, 0x7f070091

    if-eq p0, p1, :cond_0

    const p1, 0x7f070093

    if-eq p0, p1, :cond_0

    const p1, 0x7f070095

    :cond_0
    return-void
.end method

.method public setFragmentIndex()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setLayout()Ljava/lang/Object;
    .locals 0

    const p0, 0x7f090029

    .line 24
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
