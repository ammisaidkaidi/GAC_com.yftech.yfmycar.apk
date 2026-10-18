.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;
.super Ljava/lang/Enum;
.source "ICarDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DoorLockBuzzerRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

.field public static final enum BUZZER_TYPE1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

.field public static final enum BUZZER_TYPE2:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

.field public static final enum BUZZER_TYPE3:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

.field public static final enum BUZZER_TYPE4:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

.field public static final enum BUZZER_TYPE5:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

.field public static final enum TERMINATE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 346
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    const-string v1, "TERMINATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->TERMINATE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    .line 347
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    const-string v1, "BUZZER_TYPE1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    .line 348
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    const-string v1, "BUZZER_TYPE2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE2:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    .line 349
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    const-string v1, "BUZZER_TYPE3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE3:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    .line 350
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    const-string v1, "BUZZER_TYPE4"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE4:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    .line 351
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    const-string v1, "BUZZER_TYPE5"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE5:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    .line 352
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    const/4 v0, 0x7

    .line 345
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->TERMINATE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE2:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE3:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE4:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE5:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 356
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;
    .locals 1

    .line 360
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->TERMINATE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->TERMINATE:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-object p0

    .line 361
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE1:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-object p0

    .line 362
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE2:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE2:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-object p0

    .line 363
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE3:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE3:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-object p0

    .line 364
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE4:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE4:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-object p0

    .line 365
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE5:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->BUZZER_TYPE5:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-object p0

    .line 366
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;
    .locals 1

    .line 345
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;
    .locals 1

    .line 345
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarDoor$DoorLockBuzzerRequest;

    return-object v0
.end method
