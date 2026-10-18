.class public Lcom/yftech/yfmycar/view/utils/UiHandler;
.super Ljava/lang/Object;
.source "UiHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfmycar/view/utils/UiHandler$SingletonHolder;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/utils/UiHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/yfmycar/view/utils/UiHandler$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/utils/UiHandler;-><init>()V

    return-void
.end method

.method private static getInstance()Lcom/yftech/yfmycar/view/utils/UiHandler;
    .locals 1

    .line 14
    invoke-static {}, Lcom/yftech/yfmycar/view/utils/UiHandler$SingletonHolder;->access$100()Lcom/yftech/yfmycar/view/utils/UiHandler;

    move-result-object v0

    return-object v0
.end method

.method public static getUiHandler()Landroid/os/Handler;
    .locals 1

    .line 22
    invoke-static {}, Lcom/yftech/yfmycar/view/utils/UiHandler;->getInstance()Lcom/yftech/yfmycar/view/utils/UiHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/yfmycar/view/utils/UiHandler;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isUIThread()Z
    .locals 2

    .line 26
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/yftech/yfmycar/view/utils/UiHandler;->getInstance()Lcom/yftech/yfmycar/view/utils/UiHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/yfmycar/view/utils/UiHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 43
    invoke-static {}, Lcom/yftech/yfmycar/view/utils/UiHandler;->getInstance()Lcom/yftech/yfmycar/view/utils/UiHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/yfmycar/view/utils/UiHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 47
    invoke-static {}, Lcom/yftech/yfmycar/view/utils/UiHandler;->getInstance()Lcom/yftech/yfmycar/view/utils/UiHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/yfmycar/view/utils/UiHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/yftech/yfmycar/view/utils/UiHandler;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/yftech/yfmycar/view/utils/UiHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
