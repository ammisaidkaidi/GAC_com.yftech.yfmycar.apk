.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PM25CleanReqDisplay"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

.field public static final enum ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 411
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    .line 412
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    .line 413
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    const/4 v0, 0x3

    .line 410
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 416
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 417
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;
    .locals 1

    .line 421
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    return-object p0

    .line 422
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    return-object p0

    .line 423
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;
    .locals 1

    .line 410
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;
    .locals 1

    .line 410
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqDisplay;

    return-object v0
.end method
