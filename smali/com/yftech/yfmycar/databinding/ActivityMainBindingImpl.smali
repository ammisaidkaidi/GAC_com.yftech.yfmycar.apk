.class public Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;
.super Lcom/yftech/yfmycar/databinding/ActivityMainBinding;
.source "ActivityMainBindingImpl.java"

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
.field private final mCallback10:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback11:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback5:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback6:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback7:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback8:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback9:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mboundView5:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mboundView6:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mboundView7:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mboundView8:Landroid/widget/RadioButton;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mboundView9:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    sget-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "layout_open_close_control"

    const-string v2, "layout_cockpit"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 21
    sget-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f070055

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f07010f

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_1
    .array-data 4
        0x7f090030
        0x7f09002d
    .end array-data
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

    .line 57
    sget-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    invoke-static {p1, p2, v2, v0, v1}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v13, p0

    const/4 v14, 0x3

    .line 60
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioButton;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    const/4 v12, 0x4

    aget-object v0, p3, v12

    move-object v8, v0

    check-cast v8, Landroid/widget/RadioButton;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v11, 0x2

    aget-object v0, p3, v11

    move-object v10, v0

    check-cast v10, Landroid/widget/RadioButton;

    const/4 v3, 0x1

    aget-object v0, p3, v3

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    move-object v11, v15

    move v14, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/RadioButton;Landroid/widget/FrameLayout;Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 524
    iput-wide v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 71
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->cockpit:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->lightingEffect:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->llTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 74
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 75
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x5

    .line 76
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView5:Landroid/widget/LinearLayout;

    .line 77
    iget-object v2, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView5:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x6

    .line 78
    aget-object v3, p3, v2

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView6:Landroid/widget/RadioButton;

    .line 79
    iget-object v3, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView6:Landroid/widget/RadioButton;

    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v3, 0x7

    .line 80
    aget-object v4, p3, v3

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView7:Landroid/widget/RadioButton;

    .line 81
    iget-object v4, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView7:Landroid/widget/RadioButton;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v4, 0x8

    .line 82
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView8:Landroid/widget/RadioButton;

    .line 83
    iget-object v4, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView8:Landroid/widget/RadioButton;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/16 v4, 0x9

    .line 84
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView9:Landroid/widget/FrameLayout;

    .line 85
    iget-object v4, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView9:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v4, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->openCloseControl:Landroid/widget/RadioButton;

    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object v4, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->radioGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 88
    invoke-virtual {v13, v1}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 90
    new-instance v1, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    invoke-direct {v1, v13, v0}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    .line 91
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v14}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    .line 92
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v13, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback7:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v3}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v13, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v13, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v2}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeGlobalCarViewModelPowerMode(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/yfmycar/view/vm/NonNullLiveData<",
            "Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 181
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeGlobalCarViewModelTopIndex(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/yfmycar/view/vm/NonNullLiveData<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 172
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeLayoutCockpit(Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 188
    monitor-enter p0

    .line 189
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 190
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onChangeLayoutOpenCloseControl(Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;I)Z
    .locals 2

    if-nez p2, :cond_0

    .line 197
    monitor-enter p0

    .line 198
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 199
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final _internalCallbackOnClick(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 506
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_6

    .line 517
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setTopIndex(I)V

    goto :goto_2

    .line 412
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_6

    .line 423
    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setTopIndex(I)V

    goto :goto_2

    .line 430
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_2

    move v0, v1

    :cond_2
    if-eqz v0, :cond_6

    .line 441
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setTopIndex(I)V

    goto :goto_2

    .line 448
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_6

    .line 459
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setTopIndex(I)V

    goto :goto_2

    .line 470
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    if-eqz v0, :cond_6

    .line 481
    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setTopIndex(I)V

    goto :goto_2

    .line 488
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    if-eqz v1, :cond_6

    .line 499
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setTopIndex(I)V

    :cond_6
    :goto_2
    :pswitch_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 28

    move-object/from16 v1, p0

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-wide v2, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 210
    iput-wide v4, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    const-wide/16 v6, 0x20

    and-long v8, v2, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_5

    if-eqz v8, :cond_1

    .line 232
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isOpenCloseControlConfigShow()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x2000

    or-long/2addr v2, v8

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x1000

    or-long/2addr v2, v8

    :cond_1
    :goto_0
    and-long v8, v2, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3

    .line 240
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isCockpitConfigShow()Z

    move-result v8

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x200

    or-long/2addr v2, v8

    goto :goto_1

    :cond_2
    const-wide/16 v8, 0x100

    or-long/2addr v2, v8

    :cond_3
    :goto_1
    and-long v8, v2, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_5

    .line 248
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getAtmosphereLampConfig()Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/32 v8, 0x20000

    or-long/2addr v2, v8

    goto :goto_2

    :cond_4
    const-wide/32 v8, 0x10000

    or-long/2addr v2, v8

    :cond_5
    :goto_2
    const-wide/16 v8, 0x33

    and-long/2addr v8, v2

    cmp-long v8, v8, v4

    const-wide/16 v9, 0x32

    const-wide/16 v11, 0x30

    const-wide/16 v13, 0x31

    const/4 v15, 0x0

    if-eqz v8, :cond_1f

    and-long v16, v2, v11

    cmp-long v8, v16, v4

    if-eqz v8, :cond_b

    if-eqz v0, :cond_6

    .line 263
    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->isArLanguage()Z

    move-result v16

    goto :goto_3

    :cond_6
    move/from16 v16, v15

    :goto_3
    if-eqz v8, :cond_8

    if-eqz v16, :cond_7

    const-wide/16 v17, 0x800

    or-long v2, v2, v17

    const-wide/32 v17, 0x200000

    or-long v2, v2, v17

    goto :goto_4

    :cond_7
    const-wide/16 v17, 0x400

    or-long v2, v2, v17

    const-wide/32 v17, 0x100000

    or-long v2, v2, v17

    :cond_8
    :goto_4
    if-eqz v16, :cond_9

    move v8, v15

    goto :goto_5

    :cond_9
    const/16 v8, 0x8

    :goto_5
    if-eqz v16, :cond_a

    const/16 v16, 0x8

    goto :goto_6

    :cond_a
    move/from16 v16, v15

    goto :goto_6

    :cond_b
    move v8, v15

    move/from16 v16, v8

    :goto_6
    and-long v17, v2, v13

    cmp-long v17, v17, v4

    const/16 v18, 0x0

    const/4 v11, 0x1

    if-eqz v17, :cond_17

    if-eqz v0, :cond_c

    .line 286
    iget-object v12, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    goto :goto_7

    :cond_c
    move-object/from16 v12, v18

    .line 288
    :goto_7
    invoke-virtual {v1, v15, v12}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v12, :cond_d

    .line 293
    invoke-virtual {v12}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    goto :goto_8

    :cond_d
    move-object/from16 v12, v18

    .line 298
    :goto_8
    invoke-static {v12}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v12

    const/4 v15, 0x2

    if-ne v12, v15, :cond_e

    move v15, v11

    goto :goto_9

    :cond_e
    const/4 v15, 0x0

    :goto_9
    if-nez v12, :cond_f

    move/from16 v19, v11

    goto :goto_a

    :cond_f
    const/16 v19, 0x0

    :goto_a
    if-ne v12, v11, :cond_10

    move v12, v11

    goto :goto_b

    :cond_10
    const/4 v12, 0x0

    :goto_b
    if-eqz v17, :cond_12

    if-eqz v19, :cond_11

    const-wide/32 v20, 0x8000

    or-long v2, v2, v20

    goto :goto_c

    :cond_11
    const-wide/16 v20, 0x4000

    or-long v2, v2, v20

    :cond_12
    :goto_c
    and-long v20, v2, v13

    cmp-long v17, v20, v4

    if-eqz v17, :cond_14

    if-eqz v12, :cond_13

    const-wide/16 v20, 0x80

    or-long v2, v2, v20

    goto :goto_d

    :cond_13
    const-wide/16 v20, 0x40

    or-long v2, v2, v20

    :cond_14
    :goto_d
    if-eqz v19, :cond_15

    const/16 v17, 0x0

    goto :goto_e

    :cond_15
    const/16 v17, 0x8

    :goto_e
    if-eqz v12, :cond_16

    const/16 v20, 0x0

    goto :goto_f

    :cond_16
    const/16 v20, 0x8

    :goto_f
    move/from16 v27, v17

    move/from16 v17, v15

    move/from16 v15, v19

    move/from16 v19, v27

    goto :goto_10

    :cond_17
    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_10
    and-long v21, v2, v9

    cmp-long v21, v21, v4

    if-eqz v21, :cond_1e

    if-eqz v0, :cond_18

    .line 334
    iget-object v0, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->powerMode:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    goto :goto_11

    :cond_18
    move-object/from16 v0, v18

    .line 336
    :goto_11
    invoke-virtual {v1, v11, v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_19

    .line 341
    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    :cond_19
    move-object/from16 v0, v18

    .line 346
    sget-object v11, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->ACC:Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    if-ne v0, v11, :cond_1a

    const/16 v23, 0x1

    goto :goto_12

    :cond_1a
    const/16 v23, 0x0

    :goto_12
    if-eqz v21, :cond_1c

    if-eqz v23, :cond_1b

    const-wide/32 v21, 0x80000

    or-long v2, v2, v21

    goto :goto_13

    :cond_1b
    const-wide/32 v21, 0x40000

    or-long v2, v2, v21

    :cond_1c
    :goto_13
    if-eqz v23, :cond_1d

    const/4 v0, 0x0

    goto :goto_14

    :cond_1d
    const/16 v0, 0x8

    :goto_14
    move/from16 v24, v0

    move/from16 v26, v8

    move/from16 v25, v16

    move/from16 v11, v17

    move/from16 v8, v19

    move/from16 v0, v20

    goto :goto_15

    :cond_1e
    move/from16 v26, v8

    move/from16 v25, v16

    move/from16 v11, v17

    move/from16 v8, v19

    move/from16 v0, v20

    const/16 v24, 0x0

    goto :goto_15

    :cond_1f
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    :goto_15
    and-long/2addr v13, v2

    cmp-long v13, v13, v4

    if-eqz v13, :cond_20

    .line 365
    iget-object v13, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->cockpit:Landroid/widget/RadioButton;

    invoke-static {v13, v12}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 366
    iget-object v13, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-virtual {v13}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->getRoot()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->lightingEffect:Landroid/widget/RadioButton;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 369
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView6:Landroid/widget/RadioButton;

    invoke-static {v0, v11}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 370
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView7:Landroid/widget/RadioButton;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 371
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView8:Landroid/widget/RadioButton;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 372
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->openCloseControl:Landroid/widget/RadioButton;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    :cond_20
    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_27

    .line 377
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->cockpit:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback6:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->cockpit:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isCockpitConfigShow()Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v6, 0x0

    goto :goto_16

    :cond_21
    const/16 v6, 0x8

    :goto_16
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 379
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->lightingEffect:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback7:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->lightingEffect:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getAtmosphereLampConfig()Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v6, 0x0

    goto :goto_17

    :cond_22
    const/16 v6, 0x8

    :goto_17
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 381
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->llTip:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback11:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView6:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback8:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView6:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getAtmosphereLampConfig()Z

    move-result v6

    if-eqz v6, :cond_23

    const/4 v6, 0x0

    goto :goto_18

    :cond_23
    const/16 v6, 0x8

    :goto_18
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 384
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView7:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback9:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView7:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isCockpitConfigShow()Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x0

    goto :goto_19

    :cond_24
    const/16 v6, 0x8

    :goto_19
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 386
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView8:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback10:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView8:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isOpenCloseControlConfigShow()Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v6, 0x0

    goto :goto_1a

    :cond_25
    const/16 v6, 0x8

    :goto_1a
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 388
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->openCloseControl:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mCallback5:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->openCloseControl:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isOpenCloseControlConfigShow()Z

    move-result v6

    if-eqz v6, :cond_26

    const/4 v6, 0x0

    goto :goto_1b

    :cond_26
    const/16 v6, 0x8

    :goto_1b
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_27
    and-long v6, v2, v9

    cmp-long v0, v6, v4

    if-eqz v0, :cond_28

    .line 394
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->llTip:Landroid/widget/LinearLayout;

    move/from16 v6, v24

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_28
    const-wide/16 v6, 0x30

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_29

    .line 399
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mboundView5:Landroid/widget/LinearLayout;

    move/from16 v8, v26

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 400
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->radioGroup:Landroid/widget/LinearLayout;

    move/from16 v2, v25

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 402
    :cond_29
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-static {v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 403
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-static {v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 211
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 114
    monitor-exit p0

    return v1

    .line 116
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 120
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->hasPendingBindings()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    .line 116
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 102
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 103
    :try_start_0
    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 104
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->invalidateAll()V

    .line 106
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->invalidateAll()V

    .line 107
    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 164
    :pswitch_0
    check-cast p2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->onChangeLayoutOpenCloseControl(Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;I)Z

    move-result p0

    return p0

    .line 162
    :pswitch_1
    check-cast p2, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->onChangeLayoutCockpit(Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;I)Z

    move-result p0

    return p0

    .line 160
    :pswitch_2
    check-cast p2, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->onChangeGlobalCarViewModelPowerMode(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z

    move-result p0

    return p0

    .line 158
    :pswitch_3
    check-cast p2, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->onChangeGlobalCarViewModelTopIndex(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V
    .locals 4
    .param p1    # Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 139
    iput-object p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->mDirtyFlags:J

    .line 142
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 143
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->notifyPropertyChanged(I)V

    .line 144
    invoke-super {p0}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 142
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 150
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 151
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 130
    check-cast p2, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingImpl;->setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
