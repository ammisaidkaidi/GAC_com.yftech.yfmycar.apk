.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CarReadyIndicator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

.field public static final enum BLINKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

.field public static final enum LIGHTING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

.field public static final enum LIGHTS_OUT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 381
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    const-string v1, "LIGHTS_OUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->LIGHTS_OUT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    .line 382
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    const-string v1, "BLINKING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->BLINKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    .line 383
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    const-string v1, "LIGHTING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->LIGHTING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    .line 384
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    const/4 v0, 0x4

    .line 380
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->LIGHTS_OUT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->BLINKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->LIGHTING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 387
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 388
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;
    .locals 1

    .line 392
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->LIGHTS_OUT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->LIGHTS_OUT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    return-object p0

    .line 393
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->BLINKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->BLINKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    return-object p0

    .line 394
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->LIGHTING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->LIGHTING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    return-object p0

    .line 395
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;
    .locals 1

    .line 380
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;
    .locals 1

    .line 380
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$CarReadyIndicator;

    return-object v0
.end method
