.class public Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;
.super Landroid/widget/FrameLayout;
.source "WindowReversingTipView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;->initVdbData()V

    return-void
.end method

.method public static synthetic lambda$initVdbData$0(Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x4

    .line 30
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;->setVisibility(I)V

    return-void
.end method

.method static synthetic lambda$initVdbData$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public initVdbData()V
    .locals 3

    .line 29
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090031

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f070025

    .line 30
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yftech/yfmycar/view/widgets/-$$Lambda$WindowReversingTipView$yD7QWeR3nZJVDkhAkRO8KQ3AUrI;

    invoke-direct {v1, p0}, Lcom/yftech/yfmycar/view/widgets/-$$Lambda$WindowReversingTipView$yD7QWeR3nZJVDkhAkRO8KQ3AUrI;-><init>(Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070056

    .line 31
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/widgets/WindowReversingTipView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    sget-object v0, Lcom/yftech/yfmycar/view/widgets/-$$Lambda$WindowReversingTipView$LeENBAhBhc0R3U0lgExjHveMBTk;->INSTANCE:Lcom/yftech/yfmycar/view/widgets/-$$Lambda$WindowReversingTipView$LeENBAhBhc0R3U0lgExjHveMBTk;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
