.class public final enum Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;
.super Ljava/lang/Enum;
.source "CarDMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/CarDMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DMSFatigWarn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

.field public static final enum ATTENTIVE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

.field public static final enum CAUTIONARY:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

.field public static final enum MICROSLEEP:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

.field public static final enum SEVERE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

.field public static final enum UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

.field public static final enum UNKNOWN:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 93
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    const-string v1, "UNAVAILABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    .line 94
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    const-string v1, "UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->UNKNOWN:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    .line 95
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    const-string v1, "ATTENTIVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->ATTENTIVE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    .line 96
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    const-string v1, "CAUTIONARY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->CAUTIONARY:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    .line 97
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    const-string v1, "SEVERE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->SEVERE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    .line 98
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    const-string v1, "MICROSLEEP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->MICROSLEEP:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    .line 99
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    const/4 v0, 0x7

    .line 92
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->UNKNOWN:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->ATTENTIVE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->CAUTIONARY:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->SEVERE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->MICROSLEEP:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;
    .locals 1

    .line 107
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->UNAVAILABLE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-object p0

    .line 108
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->UNKNOWN:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->UNKNOWN:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-object p0

    .line 109
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->ATTENTIVE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->ATTENTIVE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-object p0

    .line 110
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->CAUTIONARY:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->CAUTIONARY:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-object p0

    .line 111
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->SEVERE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->SEVERE:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-object p0

    .line 112
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->MICROSLEEP:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->MICROSLEEP:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-object p0

    .line 113
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;
    .locals 1

    .line 92
    const-class v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;
    .locals 1

    .line 92
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;

    return-object v0
.end method
