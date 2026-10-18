.class public Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;
.super Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;
.source "TipGearNotPBindingLdrtlImpl.java"

# interfaces
.implements Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mCallback35:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDirtyFlags:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget-object v0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f07010f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    sget-object v0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 7

    const/4 v0, 0x0

    .line 31
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    aget-object p3, p3, v0

    move-object v6, p3

    check-cast v6, Landroid/widget/TextView;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 93
    iput-wide v1, p0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->mDirtyFlags:J

    .line 35
    iget-object p1, p0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->llTipGear:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->setRootTag(Landroid/view/View;)V

    .line 38
    new-instance p1, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    invoke-direct {p1, p0, v0}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object p1, p0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->mCallback35:Landroid/view/View$OnClickListener;

    .line 39
    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    .line 78
    iput-wide v2, p0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x1

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->llTipGear:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->mCallback35:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 54
    monitor-exit p0

    return v0

    .line 56
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 44
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 45
    :try_start_0
    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->mDirtyFlags:J

    .line 46
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/TipGearNotPBindingLdrtlImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method
