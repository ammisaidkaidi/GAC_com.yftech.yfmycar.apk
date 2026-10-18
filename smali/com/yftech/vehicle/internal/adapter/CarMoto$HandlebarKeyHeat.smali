.class public final enum Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;
.super Ljava/lang/Enum;
.source "CarMoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/CarMoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandlebarKeyHeat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

.field public static final enum LEVEL_1:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

.field public static final enum LEVEL_2:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

.field public static final enum LEVEL_3:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 92
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->OFF:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    .line 93
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    const-string v1, "LEVEL_1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    .line 94
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    const-string v1, "LEVEL_2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    .line 95
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    const-string v1, "LEVEL_3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    .line 96
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    const/4 v0, 0x5

    .line 91
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->OFF:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;
    .locals 1

    .line 104
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->OFF:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->OFF:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    return-object p0

    .line 105
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_1:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    return-object p0

    .line 106
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_2:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    return-object p0

    .line 107
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->LEVEL_3:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    return-object p0

    .line 108
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;
    .locals 1

    .line 91
    const-class v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;
    .locals 1

    .line 91
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/CarMoto$HandlebarKeyHeat;

    return-object v0
.end method
