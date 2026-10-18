.class public final enum Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;
.super Ljava/lang/Enum;
.source "CarDMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/CarDMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DMSMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

.field public static final enum DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

.field public static final enum FATIGUE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

.field public static final enum FATIGUE_AND_DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 66
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    const-string v1, "NO_COMMAND"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    .line 67
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    const-string v1, "FATIGUE"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->FATIGUE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    .line 68
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    const-string v1, "DISTRACTION"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v4, v5}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    .line 69
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    const-string v1, "FATIGUE_AND_DISTRACTION"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v5, v6}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->FATIGUE_AND_DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    .line 70
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v2}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    const/4 v0, 0x5

    .line 65
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->FATIGUE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->FATIGUE_AND_DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->rx:I

    .line 76
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->tx:I

    .line 77
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;
    .locals 1

    .line 81
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    return-object p0

    .line 82
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->FATIGUE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->FATIGUE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    return-object p0

    .line 83
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    return-object p0

    .line 84
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->FATIGUE_AND_DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->FATIGUE_AND_DISTRACTION:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    return-object p0

    .line 85
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;
    .locals 1

    .line 65
    const-class v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;
    .locals 1

    .line 65
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;

    return-object v0
.end method
