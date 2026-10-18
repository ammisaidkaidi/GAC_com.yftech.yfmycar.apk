.class public Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;
.super Lcom/yftech/yfmycar/view/base/BaseFragment;
.source "AtmosphereLampFragment.java"


# instance fields
.field private final MESSAGE_BACK:I

.field private final TAG:Ljava/lang/String;

.field private audioManager:Landroid/media/AudioManager;

.field private final handler:Landroid/os/Handler;

.field private imgLightSeat:Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;

.field private maskLp:Landroid/view/ViewGroup$LayoutParams;

.field private seekBarBright:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

.field private swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private viewMask:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;-><init>()V

    const-string v0, "AtmosphereLampFragment"

    .line 50
    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    .line 282
    iput v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->MESSAGE_BACK:I

    .line 283
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$s8UKjnFPMcwwma8HeVmTvKB0o4s;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$s8UKjnFPMcwwma8HeVmTvKB0o4s;-><init>(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroid/media/AudioManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->audioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->imgLightSeat:Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object p0
.end method

.method private followCarColor(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 204
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDriveManager;->get()Lcom/yftech/vehicle/sdk/CarDriveManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/vehicle/sdk/CarDriveManager;->getDriveMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    move-result-object p1

    .line 208
    sget-object v0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$3;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarDrive$DriveMode:[I

    invoke-virtual {p1}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 p1, 0x16

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    goto :goto_0

    .line 223
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    goto :goto_0

    .line 219
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 p1, 0xf

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    goto :goto_0

    .line 215
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    goto :goto_0

    .line 211
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    const/16 p1, 0x1f

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/LightManager;->getAtmosphereLampColor()I

    move-result p1

    .line 239
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 241
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->imgLightSeat:Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->makeTintBitmap(I)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$5(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;Landroid/os/Message;)Z
    .locals 1

    .line 284
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->initUi()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$0(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;Landroid/view/View;)V
    .locals 3

    .line 89
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yftech/yfmycar/view/manager/LightManager;->setAtmosphereLampStateEnabled(Z)Z

    .line 92
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic lambda$onBindView$1(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->imgLightSeat:Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 97
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->maskLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object p2, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0500c6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->followCarColor(Z)V

    goto :goto_2

    .line 100
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->maskLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f050114

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    :goto_2
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->viewMask:Landroid/view/View;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->maskLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic lambda$onBindView$2(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$onBindView$3(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;Landroid/view/View;)V
    .locals 3

    .line 107
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yftech/yfmycar/view/manager/LightManager;->setAtmosphereLampDriveModeEnabled(Z)Z

    .line 110
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public static synthetic lambda$onBindView$4(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->maskLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0500c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 114
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->viewMask:Landroid/view/View;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->maskLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    invoke-direct {p0, p2}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->followCarColor(Z)V

    return-void
.end method


# virtual methods
.method public driveModeEvent(Lcom/yftech/yfmycar/view/bean/DriveModeEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 292
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 293
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 294
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->followCarColor(Z)V

    :cond_0
    return-void
.end method

.method public getCarLampImg()I
    .locals 0

    .line 65
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 66
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isGACLogoPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0a0026

    return p0

    :cond_0
    const p0, 0x7f0a0027

    return p0

    :cond_1
    const p0, 0x7f0a0028

    return p0
.end method

.method public initUi()V
    .locals 5

    const-string v0, "AtmosphereLampFragment"

    const-string v1, "\u6c1b\u56f4\u706f\u754c\u9762\u521d\u59cb\u5316\uff1ainitUi"

    .line 250
    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/LightManager;->getAtmosphereLampBrightness()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    const-string v2, "AtmosphereLampFragment"

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initUi set LightBright = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v2, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarBright:Landroidx/appcompat/widget/AppCompatSeekBar;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setProgress(I)V

    .line 259
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/LightManager;->getAtmosphereLampWorkMode()Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    move-result-object v0

    .line 261
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    if-ne v0, v2, :cond_1

    goto :goto_2

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v4, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    if-ne v0, v4, :cond_2

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 267
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    if-ne v0, v2, :cond_3

    move v3, v1

    :cond_3
    invoke-direct {p0, v3}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->followCarColor(Z)V

    .line 268
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->maskLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 269
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->viewMask:Landroid/view/View;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->maskLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    goto :goto_3

    .line 263
    :cond_5
    :goto_2
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    :goto_3
    return-void
.end method

.method public onBindView(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const p1, 0x7f070119

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->viewMask:Landroid/view/View;

    .line 78
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->viewMask:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->maskLp:Landroid/view/ViewGroup$LayoutParams;

    const p1, 0x7f0700fa

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

    const p1, 0x7f0700f8

    .line 80
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    const p1, 0x7f07007c

    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->imgLightSeat:Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;

    const p1, 0x7f07006f

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 85
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->getCarLampImg()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 88
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$4LVxa7SI0cvzk44aGuzTMllR4Po;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$4LVxa7SI0cvzk44aGuzTMllR4Po;-><init>(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenClose:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$hhAf8bAVkSEAI9eRQhtUue_-IpE;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$hhAf8bAVkSEAI9eRQhtUue_-IpE;-><init>(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 104
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->viewMask:Landroid/view/View;

    sget-object v0, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$GecKcuQ2L60uqvgbuzq-jOQOElw;->INSTANCE:Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$GecKcuQ2L60uqvgbuzq-jOQOElw;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$qDFbKSs36Iu5YhW3DBIMYH8ZwFI;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$qDFbKSs36Iu5YhW3DBIMYH8ZwFI;-><init>(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->swOpenFollowCar:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$Or6PdBZUp5qu3CWF8_e_6ReowP4;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/light/-$$Lambda$AtmosphereLampFragment$Or6PdBZUp5qu3CWF8_e_6ReowP4;-><init>(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->audioManager:Landroid/media/AudioManager;

    const p1, 0x7f0700e0

    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarBright:Landroidx/appcompat/widget/AppCompatSeekBar;

    const p1, 0x7f0700df

    .line 120
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 121
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarBright:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance p2, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;-><init>(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 152
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->seekBarColor:Landroidx/appcompat/widget/AppCompatSeekBar;

    new-instance p2, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;

    invoke-direct {p2, p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;-><init>(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 185
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->initUi()V

    return-void
.end method

.method public onEvent(Lcom/yftech/yfmycar/view/bean/CarLightEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 278
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->handler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->initUi()V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->initUi()V

    :cond_0
    return-void
.end method

.method public setFragmentIndex()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setLayout()Ljava/lang/Object;
    .locals 0

    const p0, 0x7f09001f

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
