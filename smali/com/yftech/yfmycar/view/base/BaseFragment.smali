.class public abstract Lcom/yftech/yfmycar/view/base/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final CAR_RESET_COUNT:I

.field protected TAG:Ljava/lang/String;

.field private fragmentIndex:I
    .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
    .end annotation
.end field

.field private llTip:Landroid/widget/LinearLayout;

.field private mCarRestTask:Ljava/util/TimerTask;

.field mCarRestTaskCanceled:Z

.field private mCarRestTimer:Ljava/util/Timer;

.field private timeCount:I

.field private tvTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    .line 168
    iput v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->CAR_RESET_COUNT:I

    const/4 v0, 0x0

    .line 169
    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTimer:Ljava/util/Timer;

    .line 170
    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTask:Ljava/util/TimerTask;

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->timeCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/base/BaseFragment;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->timeCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/yfmycar/view/base/BaseFragment;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->timeCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/yftech/yfmycar/view/base/BaseFragment;)I
    .locals 2

    .line 39
    iget v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->timeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->timeCount:I

    return v0
.end method


# virtual methods
.method public doWorkAfterTimeOut()V
    .locals 0

    return-void
.end method

.method public isShowErrorTip(I)Z
    .locals 3
    .param p1    # I
        .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
        .end annotation
    .end param

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 105
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowErrorTip FragmentsIndex false:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 103
    :pswitch_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowStateError(I)Z

    move-result p0

    return p0

    .line 101
    :pswitch_1
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowStateError(I)Z

    move-result p0

    return p0

    .line 99
    :pswitch_2
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowStateError(I)Z

    move-result p0

    return p0

    .line 97
    :pswitch_3
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowStateError(I)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract onBindView(Landroid/os/Bundle;Landroid/view/View;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public onCarWindowErrorEvent(Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 112
    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->getWhichFragment()I

    move-result v0

    iget v1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->fragmentIndex:I

    if-ne v0, v1, :cond_0

    .line 113
    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->isError()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->showErrorTip(Z)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 57
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f09001d

    .line 58
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->setLayout()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->setLayout()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->setLayout()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 63
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->setLayout()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :goto_0
    if-eqz p1, :cond_1

    const p2, 0x7f070057

    .line 68
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    const v0, 0x7f070088

    .line 69
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->llTip:Landroid/widget/LinearLayout;

    const v0, 0x7f07010f

    .line 70
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->tvTip:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->llTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 73
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 75
    :cond_1
    invoke-virtual {p0, p3, v1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->onBindView(Landroid/os/Bundle;Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->setFragmentIndex()I

    move-result p1

    iput p1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->fragmentIndex:I

    .line 77
    iget p1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->fragmentIndex:I

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->isShowErrorTip(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->showErrorTip(Z)V

    .line 78
    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->register(Ljava/lang/Object;)V

    return-object v1

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    const-string p1, "setLayout() type must be int or View!"

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/EventBusCompat;->unregister(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->stopCarRestTimer()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiddenChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 87
    iget p1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->fragmentIndex:I

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->isShowErrorTip(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->showErrorTip(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    return-void
.end method

.method public restartCarRestTimer(J)V
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->stopCarRestTimer()V

    .line 229
    invoke-virtual {p0, p1, p2}, Lcom/yftech/yfmycar/view/base/BaseFragment;->startCarRestTimer(J)V

    return-void
.end method

.method public abstract setFragmentIndex()I
    .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
    .end annotation
.end method

.method public abstract setLayout()Ljava/lang/Object;
.end method

.method public showErrorTip(Z)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->llTip:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->tvTip:Landroid/widget/TextView;

    const v1, 0x7f0b006f

    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->llTip:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public showLongToast(Ljava/lang/String;)V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showShortToast(Ljava/lang/String;)V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showTip(ZLjava/lang/String;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->llTip:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->tvTip:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->llTip:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public startCarRestTimer(J)V
    .locals 7

    .line 175
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTimer:Ljava/util/Timer;

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :goto_0
    const/4 v0, 0x0

    .line 180
    iput v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->timeCount:I

    .line 181
    iput-boolean v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTaskCanceled:Z

    .line 182
    new-instance v0, Lcom/yftech/yfmycar/view/base/BaseFragment$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/base/BaseFragment$1;-><init>(Lcom/yftech/yfmycar/view/base/BaseFragment;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTask:Ljava/util/TimerTask;

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTask:Ljava/util/TimerTask;

    const-wide/16 v5, 0x3e8

    move-wide v3, p1

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "BaseFragment"

    .line 203
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public stopCarRestTimer()V
    .locals 2

    .line 213
    iget-boolean v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTaskCanceled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTaskCanceled:Z

    .line 215
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTask:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 217
    iput-object v1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTask:Ljava/util/TimerTask;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 221
    iput-object v1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment;->mCarRestTimer:Ljava/util/Timer;

    :cond_1
    return-void
.end method
