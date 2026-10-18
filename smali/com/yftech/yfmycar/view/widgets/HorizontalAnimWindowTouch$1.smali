.class Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$1;
.super Ljava/lang/Object;
.source "HorizontalAnimWindowTouch.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$1;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 59
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$1;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$1;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$000(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p1, v1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$100(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;I)V

    .line 61
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$1;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$200(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return v0
.end method
