.class public Lcom/yftech/yfmycar/view/bean/CarLightEvent;
.super Ljava/lang/Object;
.source "CarLightEvent.java"


# instance fields
.field isEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnable()Z
    .locals 0

    .line 14
    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/bean/CarLightEvent;->isEnable:Z

    return p0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/bean/CarLightEvent;->isEnable:Z

    return-void
.end method
