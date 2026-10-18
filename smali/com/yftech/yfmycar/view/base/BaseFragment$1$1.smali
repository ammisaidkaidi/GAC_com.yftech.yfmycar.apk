.class Lcom/yftech/yfmycar/view/base/BaseFragment$1$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/base/BaseFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/yfmycar/view/base/BaseFragment$1;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/base/BaseFragment$1;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1$1;->this$1:Lcom/yftech/yfmycar/view/base/BaseFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1$1;->this$1:Lcom/yftech/yfmycar/view/base/BaseFragment$1;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/base/BaseFragment$1;->this$0:Lcom/yftech/yfmycar/view/base/BaseFragment;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/base/BaseFragment;->doWorkAfterTimeOut()V

    return-void
.end method
