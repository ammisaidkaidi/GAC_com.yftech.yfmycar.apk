.class public Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;
.super Ljava/lang/Object;
.source "ICarMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceNode"
.end annotation


# instance fields
.field public GWT_ECTConn:Z

.field public WCMConn:Z

.field public apaConn:Z

.field public avmConn:Z

.field public hvAcConn:Z


# direct methods
.method private constructor <init>(ZZZZZ)V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-boolean p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->hvAcConn:Z

    .line 357
    iput-boolean p2, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    .line 358
    iput-boolean p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->apaConn:Z

    .line 359
    iput-boolean p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->WCMConn:Z

    .line 360
    iput-boolean p5, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->GWT_ECTConn:Z

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;
    .locals 9

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_3

    move v7, v2

    goto :goto_3

    :cond_3
    move v7, v1

    :goto_3
    and-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move v8, v1

    .line 368
    :goto_4
    new-instance p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;-><init>(ZZZZZ)V

    return-object p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceNode{hvAcConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->hvAcConn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "avmConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "apaConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->apaConn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "WCMConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->WCMConn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "GWT_ECTConn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->GWT_ECTConn:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
