.class public final synthetic Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$uPvyPDXY_w9BkCc2Hz4Yz_ml3MA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field private final synthetic f$0:Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$uPvyPDXY_w9BkCc2Hz4Yz_ml3MA;->f$0:Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/-$$Lambda$RightRearviewMirrorFragment$uPvyPDXY_w9BkCc2Hz4Yz_ml3MA;->f$0:Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;

    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;

    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;->lambda$onBindView$0(Lcom/yftech/yfmycar/view/fragment/seat/RightRearviewMirrorFragment;Lcom/yftech/vehicle/internal/adapter/ICarInfo$GearPosition;)V

    return-void
.end method
