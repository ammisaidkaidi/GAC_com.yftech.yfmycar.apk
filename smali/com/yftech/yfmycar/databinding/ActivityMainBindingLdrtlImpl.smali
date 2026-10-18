.class public Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;
.super Lcom/yftech/yfmycar/databinding/ActivityMainBinding;
.source "ActivityMainBindingLdrtlImpl.java"

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
.field private final mCallback1:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback2:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback3:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback4:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mboundView4:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    sput-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 16
    sget-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    const-string v1, "layout_open_close_control"

    const-string v2, "layout_cockpit"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v1, v3, v2}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 20
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 21
    sget-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f070055

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f0700b7

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const v1, 0x7f07010f

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :array_0
    .array-data 4
        0x6
        0x7
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

    .line 44
    sget-object v0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xb

    invoke-static {p1, p2, v2, v0, v1}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v13, p0

    const/4 v14, 0x2

    .line 47
    aget-object v0, p3, v14

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioButton;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/FrameLayout;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    const/4 v12, 0x3

    aget-object v0, p3, v12

    move-object v8, v0

    check-cast v8, Landroid/widget/RadioButton;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v11, 0x1

    aget-object v0, p3, v11

    move-object v10, v0

    check-cast v10, Landroid/widget/RadioButton;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v15, v0

    check-cast v15, Landroid/widget/LinearLayout;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/RadioButton;Landroid/widget/FrameLayout;Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 404
    iput-wide v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    .line 58
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->cockpit:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->lightingEffect:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->llTip:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 61
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 62
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x4

    .line 63
    aget-object v2, p3, v0

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mboundView4:Landroid/widget/FrameLayout;

    .line 64
    iget-object v2, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mboundView4:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 65
    iget-object v2, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->openCloseControl:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    move-object/from16 v1, p2

    .line 66
    invoke-virtual {v13, v1}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->setRootTag(Landroid/view/View;)V

    .line 68
    new-instance v1, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    invoke-direct {v1, v13, v14}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mCallback2:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v1, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v2, 0x1

    invoke-direct {v1, v13, v2}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mCallback1:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v1, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    invoke-direct {v1, v13, v0}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v1, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mCallback4:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v13, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mCallback3:Landroid/view/View$OnClickListener;

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->invalidateAll()V

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

    .line 154
    monitor-enter p0

    .line 155
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x2

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    .line 156
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

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    .line 147
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

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x4

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    .line 165
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

    .line 172
    monitor-enter p0

    .line 173
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x8

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    .line 174
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
    .locals 1

    const/4 p2, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 386
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_0

    move p2, v0

    :cond_0
    if-eqz p2, :cond_3

    const/4 p1, 0x2

    .line 397
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setTopIndex(I)V

    goto :goto_1

    .line 346
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_3

    .line 357
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setTopIndex(I)V

    goto :goto_1

    .line 364
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setTopIndex(I)V

    :cond_3
    :goto_1
    :pswitch_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 23

    move-object/from16 v1, p0

    .line 183
    monitor-enter p0

    .line 184
    :try_start_0
    iget-wide v2, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 185
    iput-wide v4, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    .line 186
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    const-wide/16 v6, 0x20

    and-long v8, v2, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_5

    if-eqz v8, :cond_1

    .line 204
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isOpenCloseControlConfigShow()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x800

    or-long/2addr v2, v8

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x400

    or-long/2addr v2, v8

    :cond_1
    :goto_0
    and-long v8, v2, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3

    .line 212
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

    .line 220
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getAtmosphereLampConfig()Z

    move-result v8

    if-eqz v8, :cond_4

    const-wide/32 v8, 0x8000

    or-long/2addr v2, v8

    goto :goto_2

    :cond_4
    const-wide/16 v8, 0x4000

    or-long/2addr v2, v8

    :cond_5
    :goto_2
    const-wide/16 v8, 0x33

    and-long/2addr v8, v2

    cmp-long v8, v8, v4

    const-wide/16 v9, 0x32

    const-wide/16 v11, 0x31

    const/4 v14, 0x0

    if-eqz v8, :cond_19

    and-long v15, v2, v11

    cmp-long v8, v15, v4

    const/4 v13, 0x1

    if-eqz v8, :cond_11

    if-eqz v0, :cond_6

    .line 235
    iget-object v15, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->topIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    goto :goto_3

    :cond_6
    const/4 v15, 0x0

    .line 237
    :goto_3
    invoke-virtual {v1, v14, v15}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v15, :cond_7

    .line 242
    invoke-virtual {v15}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    .line 247
    :goto_4
    invoke-static {v15}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v15

    const/4 v14, 0x2

    if-ne v15, v14, :cond_8

    move v14, v13

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    :goto_5
    if-nez v15, :cond_9

    move/from16 v16, v13

    goto :goto_6

    :cond_9
    const/16 v16, 0x0

    :goto_6
    if-ne v15, v13, :cond_a

    move v15, v13

    goto :goto_7

    :cond_a
    const/4 v15, 0x0

    :goto_7
    if-eqz v8, :cond_c

    if-eqz v16, :cond_b

    const-wide/16 v17, 0x2000

    or-long v2, v2, v17

    goto :goto_8

    :cond_b
    const-wide/16 v17, 0x1000

    or-long v2, v2, v17

    :cond_c
    :goto_8
    and-long v17, v2, v11

    cmp-long v8, v17, v4

    if-eqz v8, :cond_e

    if-eqz v15, :cond_d

    const-wide/16 v17, 0x80

    or-long v2, v2, v17

    goto :goto_9

    :cond_d
    const-wide/16 v17, 0x40

    or-long v2, v2, v17

    :cond_e
    :goto_9
    if-eqz v16, :cond_f

    const/4 v8, 0x0

    goto :goto_a

    :cond_f
    const/16 v8, 0x8

    :goto_a
    if-eqz v15, :cond_10

    const/16 v17, 0x0

    goto :goto_b

    :cond_10
    const/16 v17, 0x8

    :goto_b
    move/from16 v22, v15

    move v15, v8

    move v8, v14

    move/from16 v14, v17

    move/from16 v17, v22

    goto :goto_c

    :cond_11
    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_c
    and-long v18, v2, v9

    cmp-long v18, v18, v4

    if-eqz v18, :cond_18

    if-eqz v0, :cond_12

    .line 283
    iget-object v0, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->powerMode:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    goto :goto_d

    :cond_12
    const/4 v0, 0x0

    .line 285
    :goto_d
    invoke-virtual {v1, v13, v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v0, :cond_13

    .line 290
    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    .line 295
    :goto_e
    sget-object v13, Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;->ACC:Lcom/yftech/vehicle/internal/adapter/ICarInfo$PowerMode;

    if-ne v0, v13, :cond_14

    const/16 v20, 0x1

    goto :goto_f

    :cond_14
    const/16 v20, 0x0

    :goto_f
    if-eqz v18, :cond_16

    if-eqz v20, :cond_15

    const-wide/32 v18, 0x20000

    or-long v2, v2, v18

    goto :goto_10

    :cond_15
    const-wide/32 v18, 0x10000

    or-long v2, v2, v18

    :cond_16
    :goto_10
    if-eqz v20, :cond_17

    const/4 v0, 0x0

    goto :goto_11

    :cond_17
    const/16 v0, 0x8

    :goto_11
    move/from16 v21, v0

    move/from16 v13, v16

    move/from16 v0, v17

    goto :goto_13

    :cond_18
    move/from16 v13, v16

    move/from16 v0, v17

    goto :goto_12

    :cond_19
    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_12
    const/16 v21, 0x0

    :goto_13
    and-long/2addr v11, v2

    cmp-long v11, v11, v4

    if-eqz v11, :cond_1a

    .line 314
    iget-object v11, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->cockpit:Landroid/widget/RadioButton;

    invoke-static {v11, v0}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 315
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    .line 317
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->lightingEffect:Landroid/widget/RadioButton;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 318
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->openCloseControl:Landroid/widget/RadioButton;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    :cond_1a
    and-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-eqz v0, :cond_1e

    .line 323
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->cockpit:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mCallback2:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->cockpit:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isCockpitConfigShow()Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x0

    goto :goto_14

    :cond_1b
    const/16 v6, 0x8

    :goto_14
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 325
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->lightingEffect:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mCallback3:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->lightingEffect:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getAtmosphereLampConfig()Z

    move-result v6

    if-eqz v6, :cond_1c

    const/4 v6, 0x0

    goto :goto_15

    :cond_1c
    const/16 v6, 0x8

    :goto_15
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 327
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->llTip:Landroid/widget/LinearLayout;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mCallback4:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->openCloseControl:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mCallback1:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->openCloseControl:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isOpenCloseControlConfigShow()Z

    move-result v6

    if-eqz v6, :cond_1d

    const/4 v6, 0x0

    goto :goto_16

    :cond_1d
    const/16 v6, 0x8

    :goto_16
    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_1e
    and-long/2addr v2, v9

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1f

    .line 334
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->llTip:Landroid/widget/LinearLayout;

    move/from16 v2, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 336
    :cond_1f
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-static {v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 337
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-static {v0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    return-void

    :catchall_0
    move-exception v0

    .line 186
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 89
    monitor-exit p0

    return v1

    .line 91
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->hasPendingBindings()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->hasPendingBindings()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    .line 91
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 77
    monitor-enter p0

    const-wide/16 v0, 0x20

    .line 78
    :try_start_0
    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->invalidateAll()V

    .line 81
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->invalidateAll()V

    .line 82
    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->requestRebind()V

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

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 139
    :pswitch_0
    check-cast p2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->onChangeLayoutOpenCloseControl(Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;I)Z

    move-result p0

    return p0

    .line 137
    :pswitch_1
    check-cast p2, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->onChangeLayoutCockpit(Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;I)Z

    move-result p0

    return p0

    .line 135
    :pswitch_2
    check-cast p2, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->onChangeGlobalCarViewModelPowerMode(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z

    move-result p0

    return p0

    .line 133
    :pswitch_3
    check-cast p2, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->onChangeGlobalCarViewModelTopIndex(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z

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

    .line 114
    iput-object p1, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->mDirtyFlags:J

    .line 117
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 118
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->notifyPropertyChanged(I)V

    .line 119
    invoke-super {p0}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 117
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

    .line 124
    invoke-super {p0, p1}, Lcom/yftech/yfmycar/databinding/ActivityMainBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 125
    iget-object v0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutOpenCloseControl:Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 126
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->layoutCockpit:Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;

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

    .line 105
    check-cast p2, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/databinding/ActivityMainBindingLdrtlImpl;->setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
