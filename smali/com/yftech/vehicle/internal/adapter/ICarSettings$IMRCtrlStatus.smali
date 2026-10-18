.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMRCtrlStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

.field public static final enum ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

.field public static final enum STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1183
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    .line 1184
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    const-string v1, "OFF"

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    .line 1185
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    const-string v1, "STANDBY"

    const/4 v6, -0x1

    invoke-direct {v0, v1, v4, v5, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    .line 1186
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    .line 1187
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    const-string v1, "__UNKNOWN__"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    const/4 v0, 0x5

    .line 1182
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 1191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1192
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->rx:I

    .line 1193
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->tx:I

    .line 1194
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;
    .locals 1

    .line 1198
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    return-object p0

    .line 1199
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    return-object p0

    .line 1200
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->STANDBY:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    return-object p0

    .line 1201
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->ON:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    return-object p0

    .line 1202
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;
    .locals 1

    .line 1182
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;
    .locals 1

    .line 1182
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlStatus;

    return-object v0
.end method
