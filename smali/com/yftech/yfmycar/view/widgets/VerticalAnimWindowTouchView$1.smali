.class Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;
.super Ljava/lang/Object;
.source "VerticalAnimWindowTouchView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 109
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    .line 110
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$000(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 111
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$200(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$100(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {v2}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$100(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 112
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$000(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$1;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$200(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return v0
.end method
