.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;
.super Ljava/lang/Enum;
.source "ICarLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadLightVirtualSwitch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

.field public static final enum AUTO_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

.field public static final enum LOW_BEAM:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

.field public static final enum NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

.field public static final enum POSITION_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 162
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    const-string v1, "NOT_ACTIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    .line 163
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    const-string v1, "POSITION_LIGHT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->POSITION_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    .line 164
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    const-string v1, "LOW_BEAM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->LOW_BEAM:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    .line 165
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    const-string v1, "AUTO_LIGHT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->AUTO_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    .line 166
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    const/4 v0, 0x5

    .line 161
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->POSITION_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->LOW_BEAM:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->AUTO_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;
    .locals 1

    .line 174
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->NOT_ACTIVE:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    return-object p0

    .line 175
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->POSITION_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->POSITION_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    return-object p0

    .line 176
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->LOW_BEAM:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->LOW_BEAM:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    return-object p0

    .line 177
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->AUTO_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->AUTO_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    return-object p0

    .line 178
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;
    .locals 1

    .line 161
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;
    .locals 1

    .line 161
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarLight$HeadLightVirtualSwitch;

    return-object v0
.end method
