.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;
.super Ljava/lang/Enum;
.source "ICarEvDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarEvDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvdcMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

.field public static final enum ADAPTIVE_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

.field public static final enum INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

.field public static final enum MODEST_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

.field public static final enum OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

.field public static final enum ON_LOW_ADHESION_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

.field public static final enum RADICAL_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 584
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    .line 585
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    const-string v1, "MODEST_MODEL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->MODEST_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    .line 586
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    const-string v1, "RADICAL_MODEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->RADICAL_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    .line 587
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    const-string v1, "ON_LOW_ADHESION_ROAD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->ON_LOW_ADHESION_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    .line 588
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    const-string v1, "ADAPTIVE_MODEL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->ADAPTIVE_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    .line 589
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    const-string v1, "OFF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    .line 590
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    const-string v1, "__UNKNOWN__"

    const/4 v8, 0x6

    const/4 v9, -0x1

    invoke-direct {v0, v1, v8, v9}, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    const/4 v0, 0x7

    .line 583
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->MODEST_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->RADICAL_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->ON_LOW_ADHESION_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->ADAPTIVE_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    aput-object v1, v0, v8

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 594
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;
    .locals 1

    .line 598
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->INVALID:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-object p0

    .line 599
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->MODEST_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->MODEST_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-object p0

    .line 600
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->RADICAL_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->RADICAL_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-object p0

    .line 601
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->ON_LOW_ADHESION_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->ON_LOW_ADHESION_ROAD:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-object p0

    .line 602
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->ADAPTIVE_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->ADAPTIVE_MODEL:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-object p0

    .line 603
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->OFF:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-object p0

    .line 604
    :cond_5
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;
    .locals 1

    .line 583
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;
    .locals 1

    .line 583
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarEvDevice$AvdcMode;

    return-object v0
.end method
