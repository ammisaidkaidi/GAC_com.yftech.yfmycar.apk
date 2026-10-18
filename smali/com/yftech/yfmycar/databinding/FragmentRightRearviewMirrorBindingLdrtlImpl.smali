.class public Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;
.super Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;
.source "FragmentRightRearviewMirrorBindingLdrtlImpl.java"


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
.field private mDirtyFlags:J

.field private final mboundView0:Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mboundView01:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "tip_gear_not_p"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    new-array v2, v2, [I

    const v5, 0x7f09003c

    aput v5, v2, v4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 21
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0700c6

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f070095

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f07008d

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f070091

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f070093

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f070084

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f07004b

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f070039

    const/16 v2, 0x9

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

    .line 41
    sget-object v0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 13

    move-object v12, p0

    const/16 v0, 0x9

    .line 44
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/LinearLayoutCompat;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/LinearLayoutCompat;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;)V

    const-wide/16 v0, -0x1

    .line 117
    iput-wide v0, v12, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mDirtyFlags:J

    const/4 v0, 0x1

    .line 54
    aget-object v0, p3, v0

    check-cast v0, Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;

    iput-object v0, v12, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mboundView0:Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;

    .line 55
    iget-object v0, v12, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mboundView0:Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    const/4 v0, 0x0

    .line 56
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v12, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mboundView01:Landroid/widget/FrameLayout;

    .line 57
    iget-object v0, v12, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mboundView01:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    move-object v0, p2

    .line 58
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->setRootTag(Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 2

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x0

    .line 109
    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mDirtyFlags:J

    .line 110
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mboundView0:Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;

    invoke-static {p0}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 110
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 76
    monitor-exit p0

    return v1

    .line 78
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mboundView0:Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;->hasPendingBindings()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    .line 78
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 65
    monitor-enter p0

    const-wide/16 v0, 0x1

    .line 66
    :try_start_0
    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mDirtyFlags:J

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mboundView0:Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;->invalidateAll()V

    .line 69
    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 67
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

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 93
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 94
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/FragmentRightRearviewMirrorBindingLdrtlImpl;->mboundView0:Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/databinding/TipGearNotPBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
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
