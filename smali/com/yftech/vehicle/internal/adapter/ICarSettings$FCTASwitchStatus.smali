.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FCTASwitchStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

.field public static final enum ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

.field public static final enum FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

.field public static final enum PASSIVE_ON_INACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1111
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    .line 1112
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    const-string v1, "PASSIVE_ON_INACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->PASSIVE_ON_INACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    .line 1113
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    const-string v1, "ACTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    .line 1114
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    const-string v1, "FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    .line 1115
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    const/4 v0, 0x5

    .line 1110
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->PASSIVE_ON_INACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1119
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;
    .locals 1

    .line 1123
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    return-object p0

    .line 1124
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->PASSIVE_ON_INACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->PASSIVE_ON_INACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    return-object p0

    .line 1125
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    return-object p0

    .line 1126
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->FAILURE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    return-object p0

    .line 1127
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;
    .locals 1

    .line 1110
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;
    .locals 1

    .line 1110
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$FCTASwitchStatus;

    return-object v0
.end method
