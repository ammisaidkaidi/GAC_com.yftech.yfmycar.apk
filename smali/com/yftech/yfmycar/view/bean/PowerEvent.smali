.class public Lcom/yftech/yfmycar/view/bean/PowerEvent;
.super Ljava/lang/Object;
.source "PowerEvent.java"


# instance fields
.field private powerMode:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPowerMode()Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/PowerEvent;->powerMode:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    return-object p0
.end method

.method public setPowerMode(Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/PowerEvent;->powerMode:Lcom/yftech/vehicle/internal/adapter/ICarPower$PowerMode;

    return-void
.end method
