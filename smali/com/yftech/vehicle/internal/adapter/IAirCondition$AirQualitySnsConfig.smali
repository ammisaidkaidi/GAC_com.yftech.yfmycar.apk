.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AirQualitySnsConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

.field public static final enum HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

.field public static final enum LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

.field public static final enum NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 337
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    const-string v1, "HIGH"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    .line 338
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    .line 339
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    const-string v1, "LOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    .line 340
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    const-string v1, "__UNKNOWN__"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    const/4 v0, 0x4

    .line 336
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 344
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 345
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->rx:I

    .line 346
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->tx:I

    .line 347
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;
    .locals 1

    .line 351
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->HIGH:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    return-object p0

    .line 352
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->NORMAL:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    return-object p0

    .line 353
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->LOW:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    return-object p0

    .line 354
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;
    .locals 1

    .line 336
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;
    .locals 1

    .line 336
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$AirQualitySnsConfig;

    return-object v0
.end method
