.class public Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;
.super Ljava/lang/Object;
.source "Ihu12DashBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NaviUpdateData"
.end annotation


# instance fields
.field public NaviDestDistInfo:I

.field public NaviDist:I

.field public NaviDistBar:I

.field public NaviHour:I

.field public NaviMinitue:I

.field public naviDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

.field public naviSumDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;


# direct methods
.method public constructor <init>(Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;IILcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;III)V
    .locals 1

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->naviDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    .line 608
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->__UNKNOWN__:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    iput-object v0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->naviSumDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    .line 624
    iput-object p1, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->naviDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    .line 625
    iput p2, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDist:I

    .line 626
    iput p3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDistBar:I

    .line 627
    iput-object p4, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->naviSumDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    .line 628
    iput p5, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviMinitue:I

    .line 629
    iput p6, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviHour:I

    .line 630
    iput p7, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDestDistInfo:I

    return-void
.end method
