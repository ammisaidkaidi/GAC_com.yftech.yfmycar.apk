.class public Lcom/yftech/yfmycar/view/bean/SkyLightEvent;
.super Ljava/lang/Object;
.source "SkyLightEvent.java"


# instance fields
.field private isTiltUp:Z

.field private openOpertionSky:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

.field private percentSky:I

.field private whichWindow:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOpenOpertionSky()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->openOpertionSky:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-object p0
.end method

.method public getPercentSky()I
    .locals 0

    .line 16
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->percentSky:I

    return p0
.end method

.method public getWhichWindow()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->whichWindow:I

    return p0
.end method

.method public isTiltUp()Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->isTiltUp:Z

    return p0
.end method

.method public setOpenOpertionSky(Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->openOpertionSky:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    return-void
.end method

.method public setPercentSky(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->percentSky:I

    return-void
.end method

.method public setTiltUp(Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->isTiltUp:Z

    return-void
.end method

.method public setWhichWindow(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/SkyLightEvent;->whichWindow:I

    return-void
.end method
