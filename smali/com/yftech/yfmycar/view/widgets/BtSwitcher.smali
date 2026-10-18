.class public Lcom/yftech/yfmycar/view/widgets/BtSwitcher;
.super Lcom/yftech/yfmycar/view/widgets/Switcher;
.source "BtSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BtSwitcher"


# instance fields
.field private isInterceptEvent:Z

.field private mLastTimeClick:J

.field private mSpaceTimeClick:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/widgets/Switcher;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->isInterceptEvent:Z

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mLastTimeClick:J

    const-wide/16 v0, 0x3e8

    .line 17
    iput-wide v0, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mSpaceTimeClick:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/yftech/yfmycar/view/widgets/Switcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->isInterceptEvent:Z

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mLastTimeClick:J

    const-wide/16 p1, 0x3e8

    .line 17
    iput-wide p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mSpaceTimeClick:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/yfmycar/view/widgets/Switcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->isInterceptEvent:Z

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mLastTimeClick:J

    const-wide/16 p1, 0x3e8

    .line 17
    iput-wide p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mSpaceTimeClick:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yftech/yfmycar/view/widgets/Switcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 15
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->isInterceptEvent:Z

    const-wide/16 p1, 0x0

    .line 16
    iput-wide p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mLastTimeClick:J

    const-wide/16 p1, 0x3e8

    .line 17
    iput-wide p1, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mSpaceTimeClick:J

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "BtSwitcher"

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTouchEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 40
    iget-wide v2, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mLastTimeClick:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    iget-boolean v0, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->isInterceptEvent:Z

    if-eqz v0, :cond_1

    return v5

    .line 58
    :pswitch_1
    iget-boolean v2, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->isInterceptEvent:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 59
    iput-boolean v3, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->isInterceptEvent:Z

    return v5

    .line 62
    :cond_0
    iput-boolean v3, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->isInterceptEvent:Z

    .line 63
    iput-wide v0, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mLastTimeClick:J

    goto :goto_0

    :pswitch_2
    const-string v0, "BtSwitcher"

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent spaceTime:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-wide v0, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->mSpaceTimeClick:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const-string p1, "BtSwitcher"

    const-string v0, "dispatchTouchEvent quickly"

    .line 46
    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput-boolean v5, p0, Lcom/yftech/yfmycar/view/widgets/BtSwitcher;->isInterceptEvent:Z

    return v5

    .line 67
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/view/widgets/Switcher;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
