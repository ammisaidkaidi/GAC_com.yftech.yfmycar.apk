.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IMRCtrlErrorStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

.field public static final enum SYSTEM_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

.field public static final enum SYSTEM_NO_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1210
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    const-string v1, "SYSTEM_NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->SYSTEM_NO_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    .line 1211
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    const-string v1, "SYSTEM_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->SYSTEM_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    .line 1212
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    const-string v1, "__UNKNOWN__"

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-direct {v0, v1, v4, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    const/4 v0, 0x3

    .line 1209
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->SYSTEM_NO_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->SYSTEM_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1215
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1216
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;
    .locals 1

    .line 1220
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->SYSTEM_NO_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->SYSTEM_NO_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    return-object p0

    .line 1221
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->SYSTEM_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->SYSTEM_ERROR:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    return-object p0

    .line 1222
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;
    .locals 1

    .line 1209
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;
    .locals 1

    .line 1209
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$IMRCtrlErrorStatus;

    return-object v0
.end method
