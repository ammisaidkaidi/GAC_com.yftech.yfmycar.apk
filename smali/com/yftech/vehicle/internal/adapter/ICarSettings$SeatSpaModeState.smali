.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeatSpaModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

.field public static final enum NO_IN_SPAMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

.field public static final enum SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

.field public static final enum SPA_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1034
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    const-string v1, "NO_IN_SPAMODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->NO_IN_SPAMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    .line 1035
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    const-string v1, "SPA_SETTING_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->SPA_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    .line 1036
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    const-string v1, "SPA_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    .line 1037
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    const/4 v0, 0x4

    .line 1033
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->NO_IN_SPAMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->SPA_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1040
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1041
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;
    .locals 1

    .line 1045
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->NO_IN_SPAMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->NO_IN_SPAMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    return-object p0

    .line 1046
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->SPA_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->SPA_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    return-object p0

    .line 1047
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->SPA_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    return-object p0

    .line 1048
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;
    .locals 1

    .line 1033
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;
    .locals 1

    .line 1033
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatSpaModeState;

    return-object v0
.end method
