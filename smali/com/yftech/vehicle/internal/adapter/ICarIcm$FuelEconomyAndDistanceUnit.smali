.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;
.super Ljava/lang/Enum;
.source "ICarIcm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarIcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FuelEconomyAndDistanceUnit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

.field public static final enum KM_L_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

.field public static final enum L_PER_100KM_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

.field public static final enum MPG_GB_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

.field public static final enum MPG_US_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 145
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    const-string v1, "L_PER_100KM_AND_KM"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->L_PER_100KM_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    .line 147
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    const-string v1, "MPG_GB_AND_M"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_GB_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    .line 149
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    const-string v1, "MPG_US_AND_M"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_US_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    .line 151
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    const-string v1, "KM_L_AND_KM"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->KM_L_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    .line 152
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    const-string v1, "__UNKNOWN__"

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    const/4 v0, 0x5

    .line 143
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->L_PER_100KM_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_GB_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_US_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->KM_L_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 157
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->rx:I

    .line 158
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->tx:I

    .line 159
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;
    .locals 1

    .line 163
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->L_PER_100KM_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->L_PER_100KM_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    return-object p0

    .line 164
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_GB_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_GB_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    return-object p0

    .line 165
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_US_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->MPG_US_AND_M:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    return-object p0

    .line 166
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->KM_L_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->KM_L_AND_KM:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    return-object p0

    .line 167
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;
    .locals 1

    .line 143
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;
    .locals 1

    .line 143
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$FuelEconomyAndDistanceUnit;

    return-object v0
.end method
