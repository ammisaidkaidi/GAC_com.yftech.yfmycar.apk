.class public Lcom/yftech/yfmycar/view/bean/SpeedEvent;
.super Ljava/lang/Object;
.source "SpeedEvent.java"


# instance fields
.field public speed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpeed()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/SpeedEvent;->speed:I

    return p0
.end method

.method public setSpeed(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/SpeedEvent;->speed:I

    return-void
.end method
