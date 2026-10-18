.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;
.super Ljava/lang/Enum;
.source "ICarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RearSeatShortcutmode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

.field public static final enum LH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

.field public static final enum LH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

.field public static final enum QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

.field public static final enum RH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

.field public static final enum RH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1056
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    .line 1057
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    const-string v1, "QUIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    .line 1058
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    const-string v1, "LH_MEMORY_MODE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->LH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    .line 1059
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    const-string v1, "RH_MEMORY_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->RH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    .line 1060
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    const-string v1, "LH_POSITION_RECOVERY_MODE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->LH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    .line 1061
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    const-string v1, "RH_POSITION_RECOVERY_MODE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->RH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    .line 1062
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    const/4 v0, 0x7

    .line 1055
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->LH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->RH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->LH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->RH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1065
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1066
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;
    .locals 1

    .line 1070
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-object p0

    .line 1071
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->QUIT:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-object p0

    .line 1072
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->LH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->LH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-object p0

    .line 1073
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->RH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->RH_MEMORY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-object p0

    .line 1074
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->LH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->LH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-object p0

    .line 1075
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->RH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->RH_POSITION_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-object p0

    .line 1076
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;
    .locals 1

    .line 1055
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;
    .locals 1

    .line 1055
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarSettings$RearSeatShortcutmode;

    return-object v0
.end method
