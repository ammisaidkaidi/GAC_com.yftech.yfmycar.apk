.class public Lcom/yftech/yfmycar/view/bean/DriveModeEvent;
.super Ljava/lang/Object;
.source "DriveModeEvent.java"


# instance fields
.field private mode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/DriveModeEvent;->mode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-void
.end method


# virtual methods
.method public getMode()Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/DriveModeEvent;->mode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-object p0
.end method

.method public setMode(Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/DriveModeEvent;->mode:Lcom/yftech/vehicle/internal/adapter/ICarDrive$DriveMode;

    return-void
.end method
