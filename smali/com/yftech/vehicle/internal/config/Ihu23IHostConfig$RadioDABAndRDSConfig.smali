.class public final enum Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;
.super Ljava/lang/Enum;
.source "Ihu23IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioDABAndRDSConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

.field public static final enum DAB:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

.field public static final enum DAB_RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

.field public static final enum NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

.field public static final enum RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 525
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    const-string v1, "RDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    .line 527
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    const-string v1, "DAB_RDS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->DAB_RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    .line 529
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    const-string v1, "DAB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->DAB:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    .line 531
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    const-string v1, "NOT_PRESENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    .line 532
    new-instance v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    const/4 v0, 0x5

    .line 523
    new-array v0, v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->DAB_RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->DAB:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 535
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 536
    iput p3, p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;
    .locals 1

    .line 540
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->NOT_PRESENT:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    return-object p0

    .line 541
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->DAB_RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->DAB_RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    return-object p0

    .line 542
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->DAB:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->DAB:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    return-object p0

    .line 543
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    iget v0, v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->RDS:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    return-object p0

    .line 544
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->__UNKNOWN__:Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;
    .locals 1

    .line 523
    const-class v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;
    .locals 1

    .line 523
    sget-object v0, Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->$VALUES:[Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/config/Ihu23IHostConfig$RadioDABAndRDSConfig;

    return-object v0
.end method
