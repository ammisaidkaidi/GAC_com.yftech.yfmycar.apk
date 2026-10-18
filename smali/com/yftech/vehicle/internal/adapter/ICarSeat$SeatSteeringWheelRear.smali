.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;
.super Ljava/lang/Enum;
.source "ICarSeat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSeat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeatSteeringWheelRear"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum LIFT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum LIFT_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum OTTOMAN1_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum OTTOMAN1_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum OTTOMAN2_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum OTTOMAN2_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum SHOULDER_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum SHOULDER_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 484
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 486
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "SLIDE_FORWARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 488
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "SLIDE_BACKWARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 490
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "BACKREST_FORWARD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 492
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "BACKREST_BACKWARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 494
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "LIFT_UP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->LIFT_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 496
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "LIFT_DOWN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->LIFT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 498
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "OTTOMAN1_FORWARD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN1_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 500
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "OTTOMAN1_BACKWARD"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN1_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 502
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "OTTOMAN2_FORWARD"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN2_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 504
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "OTTOMAN2_BACKWARD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN2_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 506
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "SHOULDER_FORWARD"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SHOULDER_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 508
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "SHOULDER_BACKWARD"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SHOULDER_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    .line 509
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const-string v1, "__UNKNOWN__"

    const/16 v15, 0xd

    const/4 v14, -0x1

    invoke-direct {v0, v1, v15, v14}, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const/16 v0, 0xe

    .line 483
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->LIFT_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->LIFT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN1_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN1_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN2_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN2_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SHOULDER_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SHOULDER_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    aput-object v1, v0, v15

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 512
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 513
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;
    .locals 1

    .line 517
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 518
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SLIDE_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 519
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SLIDE_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 520
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->BACKREST_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 521
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->BACKREST_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 522
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->LIFT_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->LIFT_UP:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 523
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->LIFT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->LIFT_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 524
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN1_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN1_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 525
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN1_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN1_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 526
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN2_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN2_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 527
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN2_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->OTTOMAN2_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 528
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SHOULDER_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SHOULDER_FORWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 529
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SHOULDER_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->value:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->SHOULDER_BACKWARD:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0

    .line 530
    :cond_c
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;
    .locals 1

    .line 483
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;
    .locals 1

    .line 483
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSeat$SeatSteeringWheelRear;

    return-object v0
.end method
