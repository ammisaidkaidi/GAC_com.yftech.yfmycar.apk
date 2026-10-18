.class public Lcom/yftech/yfmycar/view/bean/GearPositionEvent;
.super Ljava/lang/Object;
.source "GearPositionEvent.java"


# instance fields
.field public gearPosition:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGearPosition()Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/GearPositionEvent;->gearPosition:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-object p0
.end method

.method public setGearPosition(Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/GearPositionEvent;->gearPosition:Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    return-void
.end method
