.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GasPedalLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

.field public static final enum LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

.field public static final enum LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

.field public static final enum LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

.field public static final enum LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

.field public static final enum LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 556
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    .line 557
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    const-string v1, "LEVEL_1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    .line 558
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    const-string v1, "LEVEL_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    .line 559
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    const-string v1, "LEVEL_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    .line 560
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    const-string v1, "LEVEL_4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    .line 561
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    const-string v1, "LEVEL_5"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    .line 562
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    const/4 v0, 0x7

    .line 555
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 565
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 566
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;
    .locals 1

    .line 570
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-object p0

    .line 571
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-object p0

    .line 572
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-object p0

    .line 573
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-object p0

    .line 574
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_4:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-object p0

    .line 575
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->LEVEL_5:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-object p0

    .line 576
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;
    .locals 1

    .line 555
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;
    .locals 1

    .line 555
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$GasPedalLevel;

    return-object v0
.end method
