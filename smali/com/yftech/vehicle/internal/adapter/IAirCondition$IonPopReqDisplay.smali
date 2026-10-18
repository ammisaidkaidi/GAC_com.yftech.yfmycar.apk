.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IonPopReqDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

.field public static final enum ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 453
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    .line 454
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    .line 455
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    const/4 v0, 0x3

    .line 452
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 459
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;
    .locals 1

    .line 463
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    return-object p0

    .line 464
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    return-object p0

    .line 465
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;
    .locals 1

    .line 452
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;
    .locals 1

    .line 452
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$IonPopReqDisplay;

    return-object v0
.end method
