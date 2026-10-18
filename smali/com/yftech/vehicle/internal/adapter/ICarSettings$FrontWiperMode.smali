.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FrontWiperMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

.field public static final enum CONTINUOUS_FAST:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

.field public static final enum CONTINUOUS_SLOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1084
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    const-string v1, "NO_COMMAND"

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    .line 1085
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    const-string v1, "OFF"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    .line 1086
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    const-string v1, "CONTINUOUS_SLOW"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->CONTINUOUS_SLOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    .line 1087
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    const-string v1, "CONTINUOUS_FAST"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->CONTINUOUS_FAST:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    .line 1088
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    const/4 v0, 0x5

    .line 1083
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->CONTINUOUS_SLOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->CONTINUOUS_FAST:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1092
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1093
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->rx:I

    .line 1094
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->tx:I

    .line 1095
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;
    .locals 1

    .line 1099
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    return-object p0

    .line 1100
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    return-object p0

    .line 1101
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->CONTINUOUS_SLOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->CONTINUOUS_SLOW:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    return-object p0

    .line 1102
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->CONTINUOUS_FAST:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->CONTINUOUS_FAST:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    return-object p0

    .line 1103
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;
    .locals 1

    .line 1083
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;
    .locals 1

    .line 1083
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FrontWiperMode;

    return-object v0
.end method
