.class Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$1;
.super Ljava/lang/Object;
.source "SeatVentilationHeatingView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$000(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
