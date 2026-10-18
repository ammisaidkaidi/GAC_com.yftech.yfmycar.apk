.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CDCStyleMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

.field public static final enum COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

.field public static final enum SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 518
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    .line 520
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    const-string v1, "COMFORT_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    .line 522
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    const-string v1, "SPORT_MODE"

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    .line 523
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    const/4 v0, 0x4

    .line 516
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 526
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 527
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;
    .locals 1

    .line 531
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    return-object p0

    .line 532
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->COMFORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    return-object p0

    .line 533
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    return-object p0

    .line 534
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;
    .locals 1

    .line 516
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;
    .locals 1

    .line 516
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$CDCStyleMode;

    return-object v0
.end method
