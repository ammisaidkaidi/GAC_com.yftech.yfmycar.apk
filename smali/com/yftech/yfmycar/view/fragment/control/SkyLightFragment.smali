.class public Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;
.super Lcom/yftech/yfmycar/view/base/BaseFragment;
.source "SkyLightFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final MESSAGE_BACK_SKY_TILT_UP:I

.field private final TAG:Ljava/lang/String;

.field private final handler:Landroid/os/Handler;

.field private horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

.field private mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

.field private mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

.field private mSunroofMovingTip:Landroidx/appcompat/widget/AppCompatTextView;

.field private mSunshadeFullyClosed:Landroidx/appcompat/widget/AppCompatTextView;

.field private mSunshadeFullyOpen:Landroidx/appcompat/widget/AppCompatTextView;

.field private mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

.field private skyLightTilUp:Landroidx/appcompat/widget/AppCompatImageView;

.field private sunRoofTipString:Ljava/lang/String;

.field private windowReversingTipView:Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;-><init>()V

    const-string v0, "SkyLightFragment"

    .line 39
    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    .line 47
    iput v0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->MESSAGE_BACK_SKY_TILT_UP:I

    .line 50
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$1;-><init>(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->initTipupUI(Z)V

    return-void
.end method

.method private initTipupUI(Z)V
    .locals 5

    .line 252
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->skyLightTilUp:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setVisibility(I)V

    const-string v0, "SkyLightFragment"

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initTipupUI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",horizontalAnimWindowSky "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-virtual {v4}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 256
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 257
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 258
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunroofMovingTip:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 260
    :cond_2
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->initSkyLightPercent()V

    :goto_2
    return-void
.end method

.method private initUiData()V
    .locals 5

    .line 169
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->initSkyLightPercent()V

    .line 170
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofOpenPercent()I

    move-result v1

    .line 172
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-eq v0, v2, :cond_3

    .line 173
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    if-lez v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005e

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005c

    goto :goto_0

    :goto_1
    iput-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->sunRoofTipString:Ljava/lang/String;

    goto :goto_3

    .line 175
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->sunRoofTipString:Ljava/lang/String;

    .line 180
    :goto_3
    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunroofMovingTip:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->sunRoofTipString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :cond_3
    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->windowReversingTipView:Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->REVERSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    const/4 v2, 0x4

    :goto_4
    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;->setVisibility(I)V

    .line 183
    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    const/4 v4, 0x1

    if-ne v0, v2, :cond_5

    move v2, v4

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 184
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne v0, v1, :cond_6

    move v3, v4

    :cond_6
    invoke-direct {p0, v3}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->initTipupUI(Z)V

    .line 185
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->skyLightTilUp:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$FcKW1n4-g7ip3JytTlswytDiUOs;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$FcKW1n4-g7ip3JytTlswytDiUOs;-><init>(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$onBindView$0(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;Landroid/view/View;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    move-result-object p1

    .line 80
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->moveTwentyPercent(Z)V

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->setWindowRoofShadeOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$onBindView$1(Landroid/view/View;)Z
    .locals 1

    .line 87
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlSkyLightPercent(I)Z

    return v0
.end method

.method public static synthetic lambda$onBindView$2(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;Landroid/view/View;)Z
    .locals 2

    const-string p1, "SkyLightFragment"

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMoveRight OnLongClickListener ,mVentilation.isChecked() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p0

    if-nez p0, :cond_0

    .line 93
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlSkyLightPercent(I)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$onBindView$3(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "SkyLightFragment"

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMoveRight OnClickListener,mVentilation.isChecked() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 101
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlTiltUp(Z)V

    .line 102
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->handler:Landroid/os/Handler;

    const/4 p1, 0x3

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 104
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    move-result-object p1

    .line 105
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->moveTwentyPercent(Z)V

    goto :goto_1

    .line 106
    :cond_2
    :goto_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;->STOP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->setWindowRoofShadeOpenState(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenState;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/os/Bundle;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const p1, 0x7f07011a

    .line 74
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->windowReversingTipView:Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;

    const p1, 0x7f0700f5

    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunroofMovingTip:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f070092

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070094

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    .line 78
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$SkyLightFragment$q3SbKw6AfYhwXliNt3B1oGELxt0;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$SkyLightFragment$q3SbKw6AfYhwXliNt3B1oGELxt0;-><init>(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveLeft:Landroidx/appcompat/widget/AppCompatImageView;

    sget-object v0, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$SkyLightFragment$mjJWCiyyGGkuGer8Oehuzz-CT0c;->INSTANCE:Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$SkyLightFragment$mjJWCiyyGGkuGer8Oehuzz-CT0c;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$SkyLightFragment$7v5h1GS6C7sOZ83gZx-s74xyPQ0;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$SkyLightFragment$7v5h1GS6C7sOZ83gZx-s74xyPQ0;-><init>(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mMoveRight:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$SkyLightFragment$CSKBdarzrPb_Z0BLNeEIdjKNn6w;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/control/-$$Lambda$SkyLightFragment$CSKBdarzrPb_Z0BLNeEIdjKNn6w;-><init>(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0700e8

    .line 113
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->skyLightTilUp:Landroidx/appcompat/widget/AppCompatImageView;

    const p1, 0x7f070061

    .line 115
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    .line 116
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$2;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$2;-><init>(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)V

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setWindowAnimCallBack(Lcom/yftech/yfmycar/view/callback/WindowAnimCallBack;)V

    const p1, 0x7f070113

    .line 134
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatCheckBox;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    .line 135
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$3;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$3;-><init>(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    new-instance v0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$4;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment$4;-><init>(Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const p1, 0x7f0700f7

    .line 150
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyOpen:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0700f6

    .line 151
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyClosed:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyOpen:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyClosed:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofShadeOpenState()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;

    move-result-object p1

    .line 155
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p2, :cond_0

    .line 156
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyOpen:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 157
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyClosed:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    goto :goto_0

    .line 158
    :cond_0
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;

    if-ne p1, p2, :cond_1

    .line 159
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyOpen:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 160
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyClosed:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyOpen:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 163
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyClosed:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 165
    :goto_0
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->initUiData()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 270
    :pswitch_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlSunshade(Z)V

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlSunshade(Z)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0700f6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onEvent(Lcom/yftech/yfmycar/view/bean/SkyLightEvent;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 200
    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->getWhichWindow()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 202
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    move-result-object p1

    .line 204
    iget-object v2, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->windowReversingTipView:Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;

    sget-object v3, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->REVERSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne p1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;->setVisibility(I)V

    .line 205
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->TILT_UP:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne p1, v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 208
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 209
    invoke-direct {p0, v0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->initTipupUI(Z)V

    goto/16 :goto_6

    .line 211
    :cond_2
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofOpenPercent()I

    move-result v0

    const-string v2, "SkyLightFragment"

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u83b7\u53d6\u5929\u7a97\u767e\u5206\u6bd4 getWindowRoofOpenPercent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-eq p1, v2, :cond_5

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne p1, v2, :cond_3

    goto :goto_4

    .line 219
    :cond_3
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mVentilation:Landroidx/appcompat/widget/AppCompatCheckBox;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 220
    invoke-direct {p0, v1}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->initTipupUI(Z)V

    if-lez v0, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0b005e

    :goto_2
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0b005c

    goto :goto_2

    :goto_3
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->sunRoofTipString:Ljava/lang/String;

    goto :goto_5

    .line 216
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0b005d

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->sunRoofTipString:Ljava/lang/String;

    .line 223
    :goto_5
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunroofMovingTip:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->sunRoofTipString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x65

    if-ne v0, p1, :cond_6

    .line 225
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setPercent(I)V

    goto :goto_6

    :cond_6
    const/16 p1, 0x68

    const/16 v1, 0x64

    if-ne v0, p1, :cond_7

    .line 227
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setPercent(I)V

    goto :goto_6

    :cond_7
    if-gt v0, v1, :cond_b

    .line 229
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->horizontalAnimWindowSky:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->setPercent(I)V

    goto :goto_6

    .line 234
    :cond_8
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofShadeOpenState()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;

    move-result-object p1

    .line 236
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;

    if-ne p1, v2, :cond_9

    .line 237
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyOpen:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 238
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyClosed:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    goto :goto_6

    .line 239
    :cond_9
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofShadeOpenOpertion;

    if-ne p1, v2, :cond_a

    .line 240
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyOpen:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 241
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyClosed:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    goto :goto_6

    .line 243
    :cond_a
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyOpen:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    .line 244
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->mSunshadeFullyClosed:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setSelected(Z)V

    :cond_b
    :goto_6
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 190
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/view/base/BaseFragment;->onHiddenChanged(Z)V

    const-string v0, "SkyLightFragment"

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5929\u7a97 onHiddenChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/fragment/control/SkyLightFragment;->initUiData()V

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

    const p0, 0x7f090028

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
