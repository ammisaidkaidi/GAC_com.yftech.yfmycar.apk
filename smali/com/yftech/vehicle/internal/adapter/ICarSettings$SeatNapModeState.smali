.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeatNapModeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

.field public static final enum NO_IN_SNAPMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

.field public static final enum SNAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

.field public static final enum SNAP_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1012
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    const-string v1, "NO_IN_SNAPMODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->NO_IN_SNAPMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    .line 1013
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    const-string v1, "SNAP_SETTING_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->SNAP_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    .line 1014
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    const-string v1, "SNAP_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->SNAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    .line 1015
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    const/4 v0, 0x4

    .line 1011
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->NO_IN_SNAPMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->SNAP_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->SNAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1018
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1019
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;
    .locals 1

    .line 1023
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->NO_IN_SNAPMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->NO_IN_SNAPMODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    return-object p0

    .line 1024
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->SNAP_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->SNAP_SETTING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    return-object p0

    .line 1025
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->SNAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->SNAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    return-object p0

    .line 1026
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;
    .locals 1

    .line 1011
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;
    .locals 1

    .line 1011
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$SeatNapModeState;

    return-object v0
.end method
