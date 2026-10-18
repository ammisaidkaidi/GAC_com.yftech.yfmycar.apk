.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;
.super Ljava/lang/Enum;
.source "ICarSeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeatSteeringWheelFR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 408
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    .line 410
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "SLIDE_FORWARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    .line 412
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "SLIDE_BACKWARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    .line 414
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "CUSHION_RISE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    .line 416
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "CUSHION_DOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    .line 418
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "BACKREST_FORWARD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    .line 420
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "BACKREST_BACKWARD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    .line 422
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "TILT_RISE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    .line 424
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "TILT_DOWN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    .line 425
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const-string v1, "__UNKNOWN__"

    const/16 v11, 0x9

    const/4 v12, -0x1

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    const/16 v0, 0xa

    .line 407
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 428
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 429
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;
    .locals 1

    .line 433
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0

    .line 434
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0

    .line 435
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0

    .line 436
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->CUSHION_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0

    .line 437
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->CUSHION_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0

    .line 438
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0

    .line 439
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0

    .line 440
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->TILT_RISE:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0

    .line 441
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->TILT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0

    .line 442
    :cond_8
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;
    .locals 1

    .line 407
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;
    .locals 1

    .line 407
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelFR;

    return-object v0
.end method
