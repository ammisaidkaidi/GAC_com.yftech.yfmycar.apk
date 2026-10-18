.class public final enum Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;
.super Ljava/lang/Enum;
.source "CarMoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/CarMoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KnobLeftRightKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

.field public static final enum LEFT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

.field public static final enum RELEASE:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

.field public static final enum RIGHT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 182
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    const-string v1, "RELEASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->RELEASE:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    .line 183
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    const-string v1, "RIGHT_PRESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->RIGHT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    .line 184
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    const-string v1, "LEFT_PRESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->LEFT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    .line 185
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    const-string v1, "__UNKNOWN__"

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-direct {v0, v1, v5, v6}, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    const/4 v0, 0x4

    .line 181
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->RELEASE:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->RIGHT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->LEFT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 189
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;
    .locals 1

    .line 193
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->RELEASE:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->RELEASE:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    return-object p0

    .line 194
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->RIGHT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->RIGHT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    return-object p0

    .line 195
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->LEFT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->LEFT_PRESS:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    return-object p0

    .line 196
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;
    .locals 1

    .line 181
    const-class v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;
    .locals 1

    .line 181
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/CarMoto$KnobLeftRightKey;

    return-object v0
.end method
