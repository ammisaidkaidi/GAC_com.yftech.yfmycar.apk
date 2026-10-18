.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;
.super Ljava/lang/Enum;
.source "ICarInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GearPositionHEV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum DRIVE_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum DRIVE_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum MANUAL_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum MANUAL_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 333
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 335
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "PARKING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 337
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "REVERSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 339
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "NEUTRAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 341
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "DRIVE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 343
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "DRIVE_INCREASE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 345
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "DRIVE_REDUCE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 347
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "SPORT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 349
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "MANUAL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 351
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "MANUAL_INCREASE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 353
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "MANUAL_REDUCE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    .line 354
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const-string v1, "__UNKNOWN__"

    const/16 v13, 0xb

    const/4 v14, -0x1

    invoke-direct {v0, v1, v13, v14}, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    const/16 v0, 0xc

    .line 331
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    aput-object v1, v0, v13

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 357
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 358
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;
    .locals 1

    .line 362
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 363
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->PARKING:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 364
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->REVERSE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 365
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->NEUTRAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 366
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 367
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 368
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->DRIVE_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 369
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->SPORT:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 370
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 371
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL_INCREASE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 372
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->MANUAL_REDUCE:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0

    .line 373
    :cond_a
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;
    .locals 1

    .line 331
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;
    .locals 1

    .line 331
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPositionHEV;

    return-object v0
.end method
