.class public Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;
.super Landroid/widget/FrameLayout;
.source "SeatVentilationHeatingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final COOL_HOT_LEVEL_CLOSE:I = -0x1

.field public static final COOL_HOT_LEVEL_HIGH:I = 0x3

.field public static final COOL_HOT_LEVEL_LOW:I = 0x1

.field public static final COOL_HOT_LEVEL_MIDDLE:I = 0x2


# instance fields
.field private final COOL_LEVEL_ANIM:[I

.field private final COOL_LEVEL_IMAGE:[I

.field private final COOL_LEVEL_ROUND:[I

.field private final HOT_LEVEL_ANIM:[I

.field private final HOT_LEVEL_IMAGE:[I

.field private final MESSAGE_BACK_UI:I

.field private final TAG:Ljava/lang/String;

.field private final TYPE_AUTO:I

.field private final TYPE_HEAT:I

.field private final TYPE_OFF:I

.field private final TYPE_VENT:I

.field private angleLeftTouchRelativeLayout:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

.field private final handler:Landroid/os/Handler;

.field private imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

.field private imgCoolHotLevel:Landroidx/appcompat/widget/AppCompatImageView;

.field private imgCoolHotLevelSeat:Landroidx/appcompat/widget/AppCompatImageView;

.field private imgCoolHotRound:Landroidx/appcompat/widget/AppCompatImageView;

.field private mSeatSelectType:I

.field private mSeatType:I

.field private norLevelHeat:I

.field private norLevelVent:I

.field private norSeatImageResource:I

.field private norSeatImageResourceCool:I

.field private norSeatImageResourceHot:I

.field private radioGroupHeat:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "SeatVentilationHeatingView"

    .line 44
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    .line 49
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TYPE_OFF:I

    const/4 p1, 0x1

    .line 50
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TYPE_VENT:I

    const/4 p1, 0x2

    .line 51
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TYPE_HEAT:I

    const/4 p1, 0x3

    .line 52
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TYPE_AUTO:I

    const/16 v0, 0x9

    .line 53
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->MESSAGE_BACK_UI:I

    .line 54
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$1;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$1;-><init>(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    .line 292
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelVent:I

    .line 293
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelHeat:I

    .line 297
    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_ROUND:[I

    .line 302
    new-array v0, p1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_IMAGE:[I

    .line 310
    new-array v0, p1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_ANIM:[I

    .line 315
    new-array v0, p1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->HOT_LEVEL_ANIM:[I

    .line 321
    new-array p1, p1, [I

    fill-array-data p1, :array_4

    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->HOT_LEVEL_IMAGE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0001
        0x7f0a0002
        0x7f0a0004
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0006
        0x7f0a0007
        0x7f0a0008
    .end array-data

    :array_2
    .array-data 4
        0x7f01000d
        0x7f01000c
        0x7f01000e
    .end array-data

    :array_3
    .array-data 4
        0x7f060062
        0x7f060063
        0x7f060064
    .end array-data

    :array_4
    .array-data 4
        0x7f0a000a
        0x7f0a000b
        0x7f0a000c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "SeatVentilationHeatingView"

    .line 44
    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    .line 49
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TYPE_OFF:I

    const/4 v1, 0x1

    .line 50
    iput v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TYPE_VENT:I

    const/4 v2, 0x2

    .line 51
    iput v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TYPE_HEAT:I

    const/4 v2, 0x3

    .line 52
    iput v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->TYPE_AUTO:I

    const/16 v3, 0x9

    .line 53
    iput v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->MESSAGE_BACK_UI:I

    .line 54
    new-instance v3, Landroid/os/Handler;

    new-instance v4, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$1;

    invoke-direct {v4, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$1;-><init>(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)V

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    .line 292
    iput v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelVent:I

    .line 293
    iput v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelHeat:I

    .line 297
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_ROUND:[I

    .line 302
    new-array v3, v2, [I

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_IMAGE:[I

    .line 310
    new-array v3, v2, [I

    fill-array-data v3, :array_2

    iput-object v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_ANIM:[I

    .line 315
    new-array v3, v2, [I

    fill-array-data v3, :array_3

    iput-object v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->HOT_LEVEL_ANIM:[I

    .line 321
    new-array v2, v2, [I

    fill-array-data v2, :array_4

    iput-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->HOT_LEVEL_IMAGE:[I

    if-eqz p2, :cond_0

    .line 92
    sget-object v2, Lcom/yftech/yfmycar/R$styleable;->SeatVentilationHeatingView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    const p2, 0x7f0a0086

    .line 94
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResource:I

    const p2, 0x7f0a0087

    .line 95
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResourceHot:I

    const p2, 0x7f0a0084

    .line 96
    iput p2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResourceCool:I

    .line 97
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f09002e

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->initUI()V

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f0a0001
        0x7f0a0002
        0x7f0a0004
    .end array-data

    :array_1
    .array-data 4
        0x7f0a0006
        0x7f0a0007
        0x7f0a0008
    .end array-data

    :array_2
    .array-data 4
        0x7f01000d
        0x7f01000c
        0x7f01000e
    .end array-data

    :array_3
    .array-data 4
        0x7f060062
        0x7f060063
        0x7f060064
    .end array-data

    :array_4
    .array-data 4
        0x7f0a000a
        0x7f0a000b
        0x7f0a000c
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->initSeatStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelVent:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelVent:I

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelHeat:I

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelHeat:I

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)Landroid/widget/RadioGroup;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$500(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotRound:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setVentLevel(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setHeatLevel(I)V

    return-void
.end method

.method private getHeatLevelByValue(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;
    .locals 0

    .line 502
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    if-ne p1, p0, :cond_0

    .line 503
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    return-object p0

    .line 504
    :cond_0
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    if-ne p1, p0, :cond_1

    .line 505
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    return-object p0

    .line 506
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    if-ne p1, p0, :cond_2

    .line 507
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    return-object p0

    .line 509
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    return-object p0
.end method

.method private getVentLevelByValue(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;
    .locals 0

    .line 513
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p1, p0, :cond_0

    .line 514
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0

    .line 515
    :cond_0
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p1, p0, :cond_1

    .line 516
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0

    .line 517
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne p1, p0, :cond_2

    .line 518
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0

    .line 520
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    return-object p0
.end method

.method private initSeatStatus()V
    .locals 8

    const-string v0, "SeatVentilationHeatingView"

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSeatStatus start !! whichSeat =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {p0, v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getHeatLevel(I)I

    move-result v0

    .line 434
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v1

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getVentLevel(I)I

    move-result v1

    .line 435
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget v2, v2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    if-eq v0, v2, :cond_a

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget v2, v2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne v1, v2, :cond_0

    goto/16 :goto_3

    .line 440
    :cond_0
    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    iget v2, v2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;->value:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 441
    :goto_0
    sget-object v5, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    iget v5, v5, Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;->value:I

    if-ne v1, v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    .line 443
    :goto_1
    iget-object v6, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v6

    const v7, 0x7f070027

    if-ne v6, v7, :cond_3

    if-eqz v2, :cond_3

    return-void

    .line 446
    :cond_3
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const v6, 0x7f070029

    if-ne v2, v6, :cond_4

    if-eqz v5, :cond_4

    return-void

    .line 448
    :cond_4
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 449
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v2

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {v2, v5}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    .line 451
    iput v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    const-string v2, "SeatVentilationHeatingView"

    const-string v5, "initSeatStatus: TYPE_AUTO \u667a\u80fd\u6a21\u5f0f "

    .line 452
    invoke-static {v2, v5}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    const v5, 0x7f07002b

    invoke-virtual {v2, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 455
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatLevelEnable(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 456
    invoke-virtual {p0, v4, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setCoolHotLevelUI(ZI)V

    goto/16 :goto_2

    .line 457
    :cond_5
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isVentLevelEnable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 458
    invoke-virtual {p0, v3, v1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setCoolHotLevelUI(ZI)V

    goto :goto_2

    :cond_6
    const/4 v0, -0x1

    .line 460
    invoke-virtual {p0, v4, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setCoolHotLevelUI(ZI)V

    goto :goto_2

    .line 462
    :cond_7
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatLevelEnable(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v1, 0x2

    .line 464
    iput v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    .line 465
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelHeat:I

    const-string v1, "SeatVentilationHeatingView"

    .line 466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSeatStatus: TYPE_HEAT \u52a0\u70ed\u6a21\u5f0f heatLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v7}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 468
    :cond_8
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isVentLevelEnable(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 470
    iput v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    .line 471
    iput v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelVent:I

    const-string v0, "SeatVentilationHeatingView"

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSeatStatus: TYPE_VENT \u901a\u98ce\u6a21\u5f0f ventLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    :cond_9
    const-string v0, "SeatVentilationHeatingView"

    const-string v1, "initSeatStatus: TYPE_OFF \u5173\u95ed\u52a0\u70ed\u901a\u98ce"

    .line 475
    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iput v4, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    .line 478
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :goto_2
    const-string v0, "SeatVentilationHeatingView"

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initSeatStatus end !!! whichSeat =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {p0, v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_3
    return-void
.end method

.method private initUI()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    const v0, 0x7f0700c3

    .line 118
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->angleLeftTouchRelativeLayout:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

    const v0, 0x7f07003c

    .line 119
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f07003f

    .line 120
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotRound:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f07003d

    .line 121
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotLevel:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f07003e

    .line 124
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotLevelSeat:Landroidx/appcompat/widget/AppCompatImageView;

    .line 125
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotLevelSeat:Landroidx/appcompat/widget/AppCompatImageView;

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResource:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    const v0, 0x7f0700b9

    .line 126
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    const v0, 0x7f07002a

    .line 127
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070029

    .line 128
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 129
    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f070027

    .line 130
    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 131
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f07002b

    .line 132
    invoke-virtual {p0, v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 133
    invoke-virtual {v2, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v3

    iget v4, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {v3, v4}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getVentilationHeatConfig(I)I

    move-result v3

    .line 138
    iget-object v4, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setVisibility(I)V

    const/4 v4, 0x1

    const/16 v6, 0x8

    if-eq v3, v4, :cond_1

    const/4 v7, 0x2

    if-ne v3, v7, :cond_0

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v7, v5

    .line 139
    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    if-eq v3, v4, :cond_3

    const/4 v0, 0x3

    if-ne v3, v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v5

    .line 140
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 142
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getAirConditionType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditionType;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditionType;->AUTO:Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditionType;

    if-ne v0, v1, :cond_4

    goto :goto_4

    :cond_4
    move v5, v6

    :goto_4
    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;-><init>(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->angleLeftTouchRelativeLayout:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->angleLeftTouchRelativeLayout:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;-><init>(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)V

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->setOnSpecialTypeClickListener(Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout$OnSpecialTypeClickListener;)V

    .line 208
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->initSeatStatus()V

    return-void
.end method

.method private setHeatLevel(I)V
    .locals 3

    const-string v0, "SeatVentilationHeatingView"

    .line 390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeatLevel\u52a0\u70ed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {p0, v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->HEAT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setHeatVentMode(ILcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z

    .line 397
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getHeatLevelByValue(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setHeatLevel(ILcom/yftech/vehicle/internal/adapter/ICarSeat$HeatLevel;)Z

    .line 398
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotLevel:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->HOT_LEVEL_IMAGE:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 399
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->angleLeftTouchRelativeLayout:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private setHeatVentOff()V
    .locals 3

    const-string v0, "SeatVentilationHeatingView"

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeatVentOff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {p0, v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->angleLeftTouchRelativeLayout:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->setVisibility(I)V

    .line 407
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isHeatVentAutoModeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setHeatVentAutoModeEnabled(IZ)Z

    goto :goto_0

    .line 410
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {v0, p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setHeatVentOff(I)V

    :goto_0
    return-void
.end method

.method private setVentLevel(I)V
    .locals 3

    const-string v0, "SeatVentilationHeatingView"

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVentLevel\u901a\u98ce\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {p0, v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;->VENT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;

    invoke-virtual {v0, v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setHeatVentMode(ILcom/yftech/vehicle/internal/adapter/ICarSeat$HeatVentMode;)Z

    .line 379
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object v0

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getVentLevelByValue(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setVentLevel(ILcom/yftech/vehicle/internal/adapter/ICarSeat$VentLevel;)Z

    .line 380
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotLevel:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_IMAGE:[I

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 381
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->angleLeftTouchRelativeLayout:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 1

    .line 81
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    const p1, 0x7f0a0086

    .line 82
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResource:I

    const p1, 0x7f0a0087

    .line 83
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResourceHot:I

    const p1, 0x7f0a0084

    .line 84
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResourceCool:I

    .line 85
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f09002e

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->initUI()V

    return-void
.end method

.method public onAirSeat(I)V
    .locals 3

    .line 492
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    if-ne v0, p1, :cond_0

    const-string v0, "SeatVentilationHeatingView"

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6536\u5230\u7535\u6e90\u53d8\u5316\uff0c\u901a\u98ce\u52a0\u70ed \u53d8\u6210OFF\u72b6\u6001 \uff0cWhichCarSeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 494
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    .line 495
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 496
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 497
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->radioGroupHeat:Landroid/widget/RadioGroup;

    const p1, 0x7f07002a

    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_0
    return-void
.end method

.method public onAirSeatEvent(I)V
    .locals 3

    .line 484
    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    if-ne v0, p1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string v0, "SeatVentilationHeatingView"

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAirSeatEvent \uff0cWhichCarSeat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->initSeatStatus()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    const/16 v4, 0x9

    const/4 v5, 0x3

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 249
    :pswitch_1
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    if-ne p1, v5, :cond_0

    const-string p0, "SeatVentilationHeatingView"

    const-string p1, "click auto ,and mSeatSelectType  = TYPE_AUTO"

    .line 250
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, -0x1

    .line 254
    invoke-virtual {p0, v0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setCoolHotLevelUI(ZI)V

    .line 255
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 257
    iput v5, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelHeat:I

    .line 258
    iput v5, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelVent:I

    .line 259
    iput v5, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    const-string p1, "SeatVentilationHeatingView"

    .line 260
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "click auto,\u8bbe\u7f6e\u667a\u80fd >> whichSeat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {p0, v6}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object p1

    iget v5, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {p1, v5, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->setHeatVentAutoModeEnabled(IZ)Z

    .line 262
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 264
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object p1

    iget v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    invoke-virtual {p1, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getVentilationHeatConfig(I)I

    move-result p1

    .line 265
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 275
    :pswitch_2
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0b0088

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 272
    :pswitch_3
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0b008a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 269
    :pswitch_4
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 278
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 217
    :pswitch_5
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    if-nez p1, :cond_1

    return-void

    .line 220
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    iput v5, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelHeat:I

    .line 223
    iput v5, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelVent:I

    .line 224
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    .line 225
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setHeatVentOff()V

    .line 226
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 229
    :pswitch_6
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    if-ne p1, v1, :cond_2

    return-void

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iput v5, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelHeat:I

    .line 234
    iput v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    .line 235
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelVent:I

    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setVentLevel(I)V

    .line 236
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 239
    :pswitch_7
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    return-void

    .line 242
    :cond_3
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iput v5, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelVent:I

    .line 244
    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatSelectType:I

    .line 245
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norLevelHeat:I

    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setHeatLevel(I)V

    .line 246
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f070027
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setCoolHotLevelUI(ZI)V
    .locals 5

    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_1

    .line 332
    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotLevel:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_IMAGE:[I

    aget v2, v2, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->HOT_LEVEL_IMAGE:[I

    aget v2, v2, v0

    :goto_0
    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_1
    const/4 v1, -0x1

    const/4 v2, 0x4

    if-ne p2, v1, :cond_2

    .line 335
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->angleLeftTouchRelativeLayout:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

    invoke-virtual {p1, v2}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->setVisibility(I)V

    .line 336
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotLevelSeat:Landroidx/appcompat/widget/AppCompatImageView;

    iget p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResource:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    goto :goto_1

    .line 338
    :cond_2
    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->angleLeftTouchRelativeLayout:Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_3

    .line 341
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotLevelSeat:Landroidx/appcompat/widget/AppCompatImageView;

    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResourceCool:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 343
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotRound:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 344
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotRound:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_ROUND:[I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 345
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 346
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

    const/high16 p2, 0x7f0a0000

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 347
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->COOL_LEVEL_ANIM:[I

    aget p2, p2, v0

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 348
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 349
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 352
    :cond_3
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotLevelSeat:Landroidx/appcompat/widget/AppCompatImageView;

    iget v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->norSeatImageResourceHot:I

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 354
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHotRound:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 355
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setAnimation(Landroid/view/animation/Animation;)V

    if-ne p2, v1, :cond_4

    .line 358
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    goto :goto_1

    .line 361
    :cond_4
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 362
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->HOT_LEVEL_ANIM:[I

    aget p2, p2, v0

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setBackgroundResource(I)V

    .line 363
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->imgCoolHot:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_1
    return-void
.end method

.method public setSeatType(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->mSeatType:I

    return-void
.end method

.method public valueOfSeatName(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, " | CAR_SEAT_UNKNOWN |"

    return-object p0

    :pswitch_0
    const-string p0, " | CAR_SEAT_ALL | "

    return-object p0

    :pswitch_1
    const-string p0, " | CAR_SEAT_REAR_RIGHT | "

    return-object p0

    :pswitch_2
    const-string p0, " | CAR_SEAT_REAR_LEFT | "

    return-object p0

    :pswitch_3
    const-string p0, " | CAR_SEAT_FONT_RIGHT | "

    return-object p0

    :pswitch_4
    const-string p0, " | CAR_SEAT_FONT_LEFT | "

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
