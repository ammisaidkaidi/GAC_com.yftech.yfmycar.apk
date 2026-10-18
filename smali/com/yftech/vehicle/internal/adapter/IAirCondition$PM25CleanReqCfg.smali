.class public final enum Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;
.super Ljava/lang/Enum;
.source "IAirCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IAirCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PM25CleanReqCfg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

.field public static final enum NOT_REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

.field public static final enum REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 431
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    .line 432
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    const-string v1, "REQ"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    .line 433
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    const-string v1, "NOT_REQ"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->NOT_REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    .line 434
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    const/4 v0, 0x4

    .line 430
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->NOT_REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 437
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 438
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;
    .locals 1

    .line 442
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    return-object p0

    .line 443
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    return-object p0

    .line 444
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->NOT_REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->NOT_REQ:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    return-object p0

    .line 445
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;
    .locals 1

    .line 430
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;
    .locals 1

    .line 430
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IAirCondition$PM25CleanReqCfg;

    return-object v0
.end method
