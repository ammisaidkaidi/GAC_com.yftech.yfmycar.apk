.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExhibitionHallMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

.field public static final enum DEFAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

.field public static final enum NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

.field public static final enum SHOWROOM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

.field public static final enum TRANSPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1322
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->DEFAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    .line 1323
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    const-string v1, "NORMAL_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    .line 1324
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    const-string v1, "TRANSPORT_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->TRANSPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    .line 1325
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    const-string v1, "SHOWROOM_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->SHOWROOM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    .line 1326
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    const/4 v0, 0x5

    .line 1321
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->DEFAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->TRANSPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->SHOWROOM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1329
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1330
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;
    .locals 1

    .line 1334
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->DEFAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->DEFAULT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    return-object p0

    .line 1335
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->NORMAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    return-object p0

    .line 1336
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->TRANSPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->TRANSPORT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    return-object p0

    .line 1337
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->SHOWROOM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->SHOWROOM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    return-object p0

    .line 1338
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;
    .locals 1

    .line 1321
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;
    .locals 1

    .line 1321
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$ExhibitionHallMode;

    return-object v0
.end method
