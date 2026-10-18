.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;
.super Ljava/lang/Enum;
.source "ICarDrive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDrive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XDriveMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

.field public static final enum ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

.field public static final enum NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

.field public static final enum SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

.field public static final enum SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 487
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    const-string v1, "NORMAL_MODE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    .line 489
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    const-string v1, "ECO_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    .line 491
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    const-string v1, "SPORT_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    .line 493
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    const-string v1, "SPORT_PLUS_MODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    .line 494
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    const-string v1, "__UNKNOWN__"

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    const/4 v0, 0x5

    .line 485
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 498
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 499
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->rx:I

    .line 500
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->tx:I

    .line 501
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;
    .locals 1

    .line 505
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    return-object p0

    .line 506
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->ECO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    return-object p0

    .line 507
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->SPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    return-object p0

    .line 508
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->SPORT_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    return-object p0

    .line 509
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;
    .locals 1

    .line 485
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;
    .locals 1

    .line 485
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDrive$XDriveMode;

    return-object v0
.end method
