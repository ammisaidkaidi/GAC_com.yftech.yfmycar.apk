.class Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;
.super Ljava/lang/Object;
.source "FrontSeatFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->onBindView(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    const p1, 0x7f0700d8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p2, p1, :cond_1

    const p1, 0x7f0700de

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setVisibility(I)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/yfmycar/view/widgets/FontSeatPositionView;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 113
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/seat/FrontSeatFragment;)Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
