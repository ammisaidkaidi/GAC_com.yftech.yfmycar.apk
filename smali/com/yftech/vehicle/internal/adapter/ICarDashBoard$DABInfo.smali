.class public Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;
.super Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;
.source "ICarDashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarDashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DABInfo"
.end annotation


# instance fields
.field public mDabProgramName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xf

    .line 1296
    invoke-direct {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;-><init>(I)V

    const-string v0, ""

    .line 1293
    iput-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xf

    .line 1300
    invoke-direct {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;-><init>(I)V

    const-string v0, ""

    .line 1293
    iput-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    .line 1301
    iput-object p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toBytes()[B
    .locals 0

    const/4 p0, 0x0

    .line 1306
    new-array p0, p0, [B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DABInfo{dabProgramName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
