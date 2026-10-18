.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeatNapPosSaveReq"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

.field public static final enum ACTIVE_POP_UP_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1250
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    .line 1251
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    const-string v1, "ACTIVE_POP_UP_WINDOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->ACTIVE_POP_UP_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    .line 1252
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    const/4 v0, 0x3

    .line 1249
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->ACTIVE_POP_UP_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1255
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1256
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;
    .locals 1

    .line 1260
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    return-object p0

    .line 1261
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->ACTIVE_POP_UP_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->ACTIVE_POP_UP_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    return-object p0

    .line 1262
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;
    .locals 1

    .line 1249
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;
    .locals 1

    .line 1249
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapPosSaveReq;

    return-object v0
.end method
