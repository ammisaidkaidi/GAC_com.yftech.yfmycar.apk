.class public Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;
.super Landroid/widget/RelativeLayout;
.source "RelativeRadioGroup.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private checkId:I

.field private mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    return-void
.end method

.method private setCheck(IZ)V
    .locals 7
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 59
    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    .line 63
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    .line 65
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    if-eq p1, v2, :cond_4

    if-eqz p2, :cond_4

    .line 66
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    .line 67
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 68
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v2, v0, v3}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    move v2, v1

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 72
    invoke-virtual {p0, v2}, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 73
    instance-of v5, v4, Landroid/widget/RadioButton;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, p1, :cond_2

    .line 74
    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    .line 75
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, p1, :cond_3

    .line 76
    check-cast v4, Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_4
    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    if-ne p1, v2, :cond_6

    if-nez p2, :cond_6

    .line 82
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    .line 83
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz p1, :cond_6

    .line 84
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {p0, v0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_2

    .line 89
    :cond_5
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    if-eq p1, v0, :cond_6

    .line 90
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    .line 91
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CompoundButton;

    .line 93
    instance-of p1, p0, Landroid/widget/RadioButton;

    if-eqz p1, :cond_6

    .line 94
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 44
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->setCheck(IZ)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public clearCheck()V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, v0, v1}, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->setCheck(IZ)V

    return-void
.end method

.method public getCheckedRadioButtonId()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->checkId:I

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 41
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->setCheck(IZ)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 30
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 32
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 33
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 34
    instance-of p3, p2, Landroid/widget/RadioButton;

    if-eqz p3, :cond_0

    .line 35
    check-cast p2, Landroid/widget/RadioButton;

    invoke-virtual {p2, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/RelativeRadioGroup;->mChildOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method
