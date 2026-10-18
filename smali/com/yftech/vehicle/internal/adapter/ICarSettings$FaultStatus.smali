.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FaultStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

.field public static final enum FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

.field public static final enum NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1230
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    const-string v1, "NOT_FAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    .line 1231
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    const-string v1, "FAULT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    .line 1232
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    const/4 v0, 0x3

    .line 1229
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1235
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1236
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;
    .locals 1

    .line 1240
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->NOT_FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    return-object p0

    .line 1241
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->FAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    return-object p0

    .line 1242
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;
    .locals 1

    .line 1229
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;
    .locals 1

    .line 1229
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FaultStatus;

    return-object v0
.end method
