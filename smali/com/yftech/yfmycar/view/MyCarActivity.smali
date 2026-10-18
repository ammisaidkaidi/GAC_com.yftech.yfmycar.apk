.class public Lcom/yftech/yfmycar/view/MyCarActivity;
.super Lcom/yftech/yfmycar/view/base/VDBBaseActivity;
.source "MyCarActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yftech/yfmycar/view/base/VDBBaseActivity<",
        "Lcom/yftech/yfmycar/databinding/ActivityMainBinding;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyCarActivity"


# instance fields
.field private globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

.field private mCurrentIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->mCurrentIndex:I

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/yftech/yfmycar/view/MyCarActivity;Ljava/lang/Integer;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object v0, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->openCloseControlIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 76
    iget-object v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object v0, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->cockpitIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 78
    iget-object v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object v0, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->lampIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 80
    :cond_3
    :goto_0
    sget-object v1, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "topIndex >> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", index = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/MyCarActivity;->switchFragment(I)V

    return-void

    .line 69
    :cond_4
    :goto_1
    sget-object p0, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topIndex >>  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static synthetic lambda$onCreate$2(Lcom/yftech/yfmycar/view/MyCarActivity;Ljava/lang/Integer;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object v0, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->mCurrentIndex:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 90
    sget-object v0, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openCloseControlIndex >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->switchFragment(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onCreate$3(Lcom/yftech/yfmycar/view/MyCarActivity;Ljava/lang/Integer;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object v0, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->mCurrentIndex:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 96
    sget-object v0, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cockpitIndex >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->switchFragment(I)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onCreate$4(Lcom/yftech/yfmycar/view/MyCarActivity;Ljava/lang/Integer;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object v0, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->mCurrentIndex:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 102
    sget-object v0, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lampIndex >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->switchFragment(I)V

    :cond_0
    return-void
.end method

.method private onIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "mycarscheme"

    const/16 v1, 0x64

    .line 167
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    .line 169
    sget-object v0, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntent().getIntExtra , jump FragmentsIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setCurrentIndex(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "YFMyCar_202506191631"

    .line 62
    invoke-static {p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->setTag(Ljava/lang/String;)V

    .line 63
    const-class p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    .line 64
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V

    .line 65
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V

    .line 66
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V

    .line 67
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    new-instance v0, Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$aowKkciGVFPZWwtpHjnAQstJ_eE;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$aowKkciGVFPZWwtpHjnAQstJ_eE;-><init>(Lcom/yftech/yfmycar/view/MyCarActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 83
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->initCurrentIndex()V

    .line 84
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/MyCarActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->onIntent(Landroid/content/Intent;)V

    .line 85
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/manager/ManagerUtil;->initAllManager(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V

    .line 86
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    check-cast p1, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->llTip:Landroid/widget/LinearLayout;

    sget-object v0, Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$G8142gTcD1H4yKRxpRPtZt_Vsfo;->INSTANCE:Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$G8142gTcD1H4yKRxpRPtZt_Vsfo;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->openCloseControlIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    new-instance v0, Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$ntGpTwJEfMvwZwjsGTMjSCaBegE;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$ntGpTwJEfMvwZwjsGTMjSCaBegE;-><init>(Lcom/yftech/yfmycar/view/MyCarActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 94
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->cockpitIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    new-instance v0, Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$C5HvZE9aXjmdiFi3uommr-ZPDdM;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$C5HvZE9aXjmdiFi3uommr-ZPDdM;-><init>(Lcom/yftech/yfmycar/view/MyCarActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 100
    iget-object p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->globalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    iget-object p1, p1, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->lampIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    new-instance v0, Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$5cQNlnrcL6HM40eR9WAH0_-Tmlk;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/-$$Lambda$MyCarActivity$5cQNlnrcL6HM40eR9WAH0_-Tmlk;-><init>(Lcom/yftech/yfmycar/view/MyCarActivity;)V

    invoke-virtual {p1, p0, v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 106
    iget-object p0, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->vdb:Landroidx/databinding/ViewDataBinding;

    check-cast p0, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->executePendingBindings()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 112
    invoke-super {p0}, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->onDestroy()V

    .line 113
    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/ManagerUtil;->unInitAllManager(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 162
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 163
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->onIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 177
    sget-object v0, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-super {p0}, Lcom/yftech/yfmycar/view/base/VDBBaseActivity;->onPause()V

    return-void
.end method

.method protected registerEventBus()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 182
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/MyCarActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f070055

    .line 183
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 185
    instance-of v2, p1, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    sget-object p0, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFragment sameFragment , name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 191
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_2

    .line 196
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 197
    sget-object v3, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeFragment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 200
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 201
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 202
    sget-object p0, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 204
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 205
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    .line 208
    sget-object p0, Lcom/yftech/yfmycar/view/MyCarActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public switchFragment(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
        .end annotation
    .end param

    .line 120
    iput p1, p0, Lcom/yftech/yfmycar/view/MyCarActivity;->mCurrentIndex:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 154
    :pswitch_0
    new-instance p1, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 139
    :pswitch_1
    new-instance p1, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 136
    :pswitch_2
    new-instance p1, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/fragment/seat/LeftRearviewMirrorFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x0

    .line 145
    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->newInstance(Z)Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x1

    .line 142
    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->newInstance(Z)Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 132
    :pswitch_5
    new-instance p1, Lcom/yftech/yfmycar/view/fragment/control/RearRightSlidingDoorFragment;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/fragment/control/RearRightSlidingDoorFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 129
    :pswitch_6
    new-instance p1, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/fragment/control/RearLeftSlidingDoorFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 126
    :pswitch_7
    new-instance p1, Lcom/yftech/yfmycar/view/fragment/control/FrontRightWindowFragment;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/fragment/control/FrontRightWindowFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 123
    :pswitch_8
    new-instance p1, Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/fragment/control/FrontLeftWindowFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 151
    :pswitch_9
    new-instance p1, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 148
    :pswitch_a
    new-instance p1, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;

    invoke-direct {p1}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;-><init>()V

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/MyCarActivity;->showFragment(Landroidx/fragment/app/Fragment;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
