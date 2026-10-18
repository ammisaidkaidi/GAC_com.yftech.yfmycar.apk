.class public Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;
.super Lcom/yftech/yfmycar/view/base/BaseFragment;
.source "TailgateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

.field private doorOpenAnglePercent:I

.field private frameMemoryLocation:Landroid/widget/FrameLayout;

.field private mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

.field private mOpenMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

.field private memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

.field private tailgateBitmapView:Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;

.field private tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

.field private tvMemoryLocation:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;-><init>()V

    const-string v0, "TailgateFragment"

    .line 36
    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)Landroid/widget/FrameLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->frameMemoryLocation:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)Landroid/widget/TextView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tvMemoryLocation:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;I)I
    .locals 0

    .line 35
    iput p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->doorOpenAnglePercent:I

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateBitmapView:Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;

    return-object p0
.end method

.method private initButton(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V
    .locals 7

    const-string v0, "TailgateFragment"

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>>>>>>>>>>  initButton start ,tailgateStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailDoorPercent()I

    move-result v0

    .line 156
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne p1, v1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b004f

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    if-ge v0, v2, :cond_0

    .line 163
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 164
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mOpenMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 167
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 168
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mOpenMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_1

    .line 170
    :cond_1
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mOpenMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    if-eq v0, v2, :cond_4

    .line 190
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_OPENED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-ne p1, v0, :cond_3

    .line 192
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 193
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_1

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 196
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_1

    .line 199
    :cond_4
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 200
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_1

    .line 172
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mOpenMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 176
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 179
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    :goto_1
    const-string p0, "TailgateFragment"

    const-string p1, ">>>>>>>>>>>>>>>>>>> initButton end <<<<<<<<<<<<<<<<<<<<<<<<<"

    .line 205
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onBindView$0(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "TailgateFragment"

    const-string v0, "clearMemoryPosition click clearTailDoorMemory "

    .line 72
    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->clearTailDoorMemory()Z

    move-result p1

    if-nez p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showLongToast(Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onUiBackMessageDelayed(Z)V

    return-void
.end method

.method public static synthetic lambda$onBindView$1(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "TailgateFragment"

    const-string v0, "memoryPosition click saveTailDoorPercent "

    .line 80
    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->doorOpenAnglePercent:I

    const/16 v0, 0x32

    if-ge p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0042

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showLongToast(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->saveTailDoorPercent()Z

    move-result p1

    if-nez p1, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0044

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showLongToast(Ljava/lang/String;)V

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onUiBackMessageDelayed(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public TailgateEvent(Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "TailgateFragment"

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,>>>>>>>>> TailgateEvent START!!!  <<<<<<<<<<<<<<<<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->getChangeType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 275
    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/CarTailgateEvent;->getMemoryPercent()I

    move-result p1

    const/16 v0, 0x64

    const/16 v2, 0x8

    if-ge p1, v0, :cond_1

    .line 277
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0045

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showLongToast(Ljava/lang/String;)V

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 281
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 284
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showLongToast(Ljava/lang/String;)V

    .line 286
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 287
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 290
    :goto_0
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->updateMemory()V

    goto :goto_1

    .line 293
    :cond_3
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {p1, v1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->onUiBackMessageDelayed(Z)V

    .line 295
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateStatus()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object p1

    .line 297
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 298
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateTravelPercent()I

    move-result v0

    .line 305
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->initButton(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V

    .line 306
    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {v1, p1, v0}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->isNeedMove(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;I)Z

    .line 308
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateBitmapView:Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->setMoveAngle(I)V

    :goto_1
    const-string p0, "TailgateFragment"

    const-string p1, ">>>>>>>>> TailgateEvent END!!!  <<<<<<<<<<<<<<<<<"

    .line 310
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBindView(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const p1, 0x7f07006b

    .line 59
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 60
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isArLanguage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isGACLogoPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a0073

    goto :goto_0

    :cond_0
    const v0, 0x7f0a00a9

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1
    const p1, 0x7f070101

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    const p1, 0x7f070100

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateBitmapView:Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;

    const p1, 0x7f070035

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0700ab

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mOpenMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f070032

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f07008a

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f070058

    .line 69
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->frameMemoryLocation:Landroid/widget/FrameLayout;

    const p1, 0x7f07010e

    .line 70
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tvMemoryLocation:Landroid/widget/TextView;

    .line 71
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->clearMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$TailgateFragment$eABdcZIP6XRz_wf68yMgxPZ8qD8;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$TailgateFragment$eABdcZIP6XRz_wf68yMgxPZ8qD8;-><init>(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->memoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance p2, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$TailgateFragment$EsAz_nXc99LM3B7qfuqEUVuz2S8;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$TailgateFragment$EsAz_nXc99LM3B7qfuqEUVuz2S8;-><init>(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    new-instance p2, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment$1;-><init>(Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;)V

    invoke-virtual {p1, p2}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setOnTailGateStatusChangeListener(Lcom/yftech/yfmycar/view/widgets/TailgateOpenView$OnTailGateStatusChangeListener;)V

    .line 132
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mCloseTailDoor:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->mOpenMemoryPosition:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->updateMemory()V

    .line 139
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateTravelPercent()I

    move-result p1

    .line 140
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateStatus()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object p2

    .line 141
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setMoveAngle(I)V

    .line 142
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateBitmapView:Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->setMoveAngle(I)V

    .line 143
    invoke-direct {p0, p2}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->initButton(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;)V

    .line 144
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result p1

    const-string p2, "TailgateFragment"

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u83b7\u53d6\u8f66\u901f\u4fe1\u606f  vehicleSpeed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_2

    const/4 p1, 0x1

    .line 148
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0b0071

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showTip(ZLjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070035

    if-eq p1, v0, :cond_3

    const p0, 0x7f0700ab

    if-eq p1, p0, :cond_0

    goto/16 :goto_3

    .line 256
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateStatus()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object p0

    .line 257
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "TailgateFragment"

    const-string p1, "click open memory"

    .line 262
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->controlTailgatePercent(I)Z

    goto/16 :goto_3

    :cond_2
    :goto_0
    const-string p0, "TailgateFragment"

    const-string p1, "OPENING or CLOSING, click open_memory_position setTailDoorCmd(ICarDoor.TailDoorCmd.STOP) "

    .line 258
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    goto/16 :goto_3

    .line 233
    :cond_3
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateStatus()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object p1

    .line 234
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "TailgateFragment"

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click open close \uff0c doorOpenAnglePercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->doorOpenAnglePercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",tailgateStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->FULLY_CLOSED:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq p1, v0, :cond_7

    iget p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->doorOpenAnglePercent:I

    if-nez p1, :cond_5

    goto :goto_1

    .line 245
    :cond_5
    iget p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->doorOpenAnglePercent:I

    if-lez p1, :cond_6

    iget p1, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->doorOpenAnglePercent:I

    const/16 v0, 0x14

    if-gt p1, v0, :cond_6

    .line 247
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b004c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showLongToast(Ljava/lang/String;)V

    goto :goto_3

    .line 249
    :cond_6
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->controlTailgatePercent(I)Z

    goto :goto_3

    .line 242
    :cond_7
    :goto_1
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailDoorPercent()I

    move-result p0

    .line 243
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->controlTailgatePercent(I)Z

    goto :goto_3

    :cond_8
    :goto_2
    const-string p0, "TailgateFragment"

    const-string p1, "OPENING or CLOSING, click close_tail_door setTailDoorCmd(ICarDoor.TailDoorCmd.STOP) "

    .line 235
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDoorManager;->get()Lcom/yftech/vehicle/sdk/CarDoorManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarDoorManager;->setTailDoorCmd(Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorCmd;)Z

    :goto_3
    return-void
.end method

.method public onFragmentEvent(Lcom/yftech/yfmycar/view/bean/SpeedEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 315
    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/SpeedEvent;->getSpeed()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 317
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showTip(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const-string v0, ""

    .line 320
    invoke-virtual {p0, p1, v0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showTip(ZLjava/lang/String;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 211
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_1

    .line 213
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarInfoManager;->get()Lcom/yftech/vehicle/sdk/CarInfoManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/CarInfoManager;->getVehicleSpeed()I

    move-result p1

    const-string v0, "TailgateFragment"

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u83b7\u53d6\u8f66\u901f\u4fe1\u606f  vehicleSpeed= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 217
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->showTip(ZLjava/lang/String;)V

    .line 219
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateStatus()Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    move-result-object p1

    .line 220
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarDoor$TailDoorState;

    if-eq p1, v0, :cond_1

    .line 221
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getInstance()Lcom/yftech/yfmycar/view/manager/CarDoorControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/CarDoorControl;->getTailgateTravelPercent()I

    move-result p1

    .line 222
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateOpenView:Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateOpenView;->setMoveAngle(I)V

    .line 223
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/TailgateFragment;->tailgateBitmapView:Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/TailgateBitmapView;->setMoveAngle(I)V

    :cond_1
    return-void
.end method

.method public setFragmentIndex()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public setLayout()Ljava/lang/Object;
    .locals 0

    const p0, 0x7f09002a

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
