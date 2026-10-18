.class public final enum Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;
.super Ljava/lang/Enum;
.source "IBaseApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IBaseApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchStateOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

.field public static final enum TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

.field public static final enum TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 65
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    const-string v1, "TURN_ON"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    .line 66
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    const-string v1, "TURN_OFF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    .line 67
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    const-string v1, "__UNKNOWN__"

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    const/4 v0, 0x3

    .line 64
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;
    .locals 1

    .line 75
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->TURN_ON:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    return-object p0

    .line 76
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->TURN_OFF:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    return-object p0

    .line 77
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;
    .locals 1

    .line 64
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;
    .locals 1

    .line 64
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IBaseApi$SwitchStateOp;

    return-object v0
.end method
