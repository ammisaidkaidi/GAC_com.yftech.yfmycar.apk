.class public Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;
.super Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;
.source "LayoutCockpitBindingLdrtlImpl.java"

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
.field private final mCallback29:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback30:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback31:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback32:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback33:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback34:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/FrameLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    .line 39
    sget-object v0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0xa

    invoke-static {p1, p2, v2, v0, v1}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v13, p0

    const/16 v0, 0x8

    .line 42
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioButton;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RadioButton;

    const/4 v14, 0x1

    aget-object v0, p3, v14

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v12, 0x5

    aget-object v0, p3, v12

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v11, 0x2

    aget-object v0, p3, v11

    move-object v8, v0

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v10, 0x4

    aget-object v0, p3, v10

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v3, 0x3

    aget-object v0, p3, v3

    move-object v15, v0

    check-cast v15, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v2, 0x6

    aget-object v0, p3, v2

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/RadioButton;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/RadioButton;

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v14, v3

    move/from16 v3, v18

    move v14, v10

    move-object v10, v15

    move v14, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroid/widget/RadioButton;Landroid/widget/RadioButton;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    const-wide/16 v0, -0x1

    .line 452
    iput-wide v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mDirtyFlags:J

    .line 53
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontLeftSeat:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 54
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontRightSeat:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageCar:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 56
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 57
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 58
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 59
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectRightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->leftRearviewMirror:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 61
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mboundView0:Landroid/widget/FrameLayout;

    .line 62
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mboundView0:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->rightRearviewMirror:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 64
    invoke-virtual {v13, v0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->setRootTag(Landroid/view/View;)V

    .line 66
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    invoke-direct {v0, v13, v14}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback30:Landroid/view/View$OnClickListener;

    .line 67
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x4

    invoke-direct {v0, v13, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback32:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v13, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback31:Landroid/view/View$OnClickListener;

    .line 69
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x5

    invoke-direct {v0, v13, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback33:Landroid/view/View$OnClickListener;

    .line 70
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v13, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback29:Landroid/view/View$OnClickListener;

    .line 71
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x6

    invoke-direct {v0, v13, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v13, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback34:Landroid/view/View$OnClickListener;

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeGlobalCarViewModelCockpitIndex(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z
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

    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mDirtyFlags:J

    .line 126
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
    .locals 3

    const/4 p2, 0x6

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 433
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_6

    .line 445
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setCockpitIndex(I)V

    goto :goto_0

    .line 395
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_6

    .line 407
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setCockpitIndex(I)V

    goto :goto_0

    .line 357
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    if-eqz v1, :cond_6

    const/16 p1, 0x9

    .line 369
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setCockpitIndex(I)V

    goto :goto_0

    .line 376
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_6

    const/16 p1, 0x8

    .line 388
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setCockpitIndex(I)V

    goto :goto_0

    .line 338
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_4

    move v1, v2

    :cond_4
    if-eqz v1, :cond_6

    .line 350
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setCockpitIndex(I)V

    goto :goto_0

    .line 414
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_6

    .line 426
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setCockpitIndex(I)V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 27

    move-object/from16 v1, p0

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide v2, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 137
    iput-wide v4, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mDirtyFlags:J

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    const-wide/16 v6, 0x7

    and-long v8, v2, v6

    cmp-long v8, v8, v4

    const/4 v9, 0x7

    const/4 v10, 0x6

    const/16 v13, 0x8

    const/4 v15, 0x0

    if-eqz v8, :cond_20

    if-eqz v0, :cond_0

    .line 164
    iget-object v14, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->cockpitIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    .line 166
    :goto_0
    invoke-virtual {v1, v15, v14}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v14, :cond_1

    .line 171
    invoke-virtual {v14}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 176
    :goto_1
    invoke-static {v14}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v14

    const/16 v11, 0x9

    const/4 v12, 0x1

    if-ne v14, v11, :cond_2

    move v11, v12

    goto :goto_2

    :cond_2
    move v11, v15

    :goto_2
    if-ne v14, v13, :cond_3

    move/from16 v19, v12

    goto :goto_3

    :cond_3
    move/from16 v19, v15

    :goto_3
    if-ne v14, v10, :cond_4

    move/from16 v20, v12

    goto :goto_4

    :cond_4
    move/from16 v20, v15

    :goto_4
    if-ne v14, v9, :cond_5

    move v14, v12

    goto :goto_5

    :cond_5
    move v14, v15

    :goto_5
    if-eqz v8, :cond_7

    if-eqz v11, :cond_6

    const-wide/16 v21, 0x40

    or-long v2, v2, v21

    goto :goto_6

    :cond_6
    const-wide/16 v21, 0x20

    or-long v2, v2, v21

    :cond_7
    :goto_6
    and-long v21, v2, v6

    cmp-long v8, v21, v4

    if-eqz v8, :cond_9

    if-eqz v19, :cond_8

    const-wide/16 v21, 0x4000

    or-long v2, v2, v21

    goto :goto_7

    :cond_8
    const-wide/16 v21, 0x2000

    or-long v2, v2, v21

    :cond_9
    :goto_7
    and-long v21, v2, v6

    cmp-long v8, v21, v4

    if-eqz v8, :cond_b

    if-eqz v20, :cond_a

    const-wide/16 v21, 0x400

    or-long v2, v2, v21

    goto :goto_8

    :cond_a
    const-wide/16 v21, 0x200

    or-long v2, v2, v21

    :cond_b
    :goto_8
    and-long v21, v2, v6

    cmp-long v8, v21, v4

    if-eqz v8, :cond_d

    if-eqz v14, :cond_c

    const-wide/32 v21, 0x400000

    or-long v2, v2, v21

    goto :goto_9

    :cond_c
    const-wide/32 v21, 0x200000

    or-long v2, v2, v21

    :cond_d
    :goto_9
    if-eqz v11, :cond_e

    .line 222
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isRearviewMirrorAdjustmentPresent()Z

    move-result v8

    goto :goto_a

    :cond_e
    move v8, v15

    :goto_a
    if-eqz v19, :cond_f

    .line 224
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isRearviewMirrorAdjustmentPresent()Z

    move-result v21

    goto :goto_b

    :cond_f
    move/from16 v21, v15

    :goto_b
    if-eqz v20, :cond_10

    .line 226
    invoke-static {v15}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isSeatVisible(I)Z

    move-result v22

    goto :goto_c

    :cond_10
    move/from16 v22, v15

    :goto_c
    if-eqz v14, :cond_11

    .line 228
    invoke-static {v12}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isSeatVisible(I)Z

    move-result v12

    goto :goto_d

    :cond_11
    move v12, v15

    :goto_d
    and-long v23, v2, v6

    cmp-long v23, v23, v4

    if-eqz v23, :cond_13

    if-eqz v8, :cond_12

    const-wide/16 v23, 0x100

    or-long v2, v2, v23

    goto :goto_e

    :cond_12
    const-wide/16 v23, 0x80

    or-long v2, v2, v23

    :cond_13
    :goto_e
    and-long v23, v2, v6

    cmp-long v23, v23, v4

    if-eqz v23, :cond_15

    if-eqz v21, :cond_14

    const-wide/32 v23, 0x10000

    or-long v2, v2, v23

    goto :goto_f

    :cond_14
    const-wide/32 v23, 0x8000

    or-long v2, v2, v23

    :cond_15
    :goto_f
    and-long v23, v2, v6

    cmp-long v23, v23, v4

    if-eqz v23, :cond_17

    if-eqz v22, :cond_16

    const-wide/32 v23, 0x100000

    or-long v2, v2, v23

    goto :goto_10

    :cond_16
    const-wide/32 v23, 0x80000

    or-long v2, v2, v23

    :cond_17
    :goto_10
    and-long v23, v2, v6

    cmp-long v23, v23, v4

    if-eqz v23, :cond_19

    if-eqz v12, :cond_18

    const-wide/16 v23, 0x1000

    or-long v2, v2, v23

    goto :goto_11

    :cond_18
    const-wide/16 v23, 0x800

    or-long v2, v2, v23

    :cond_19
    :goto_11
    const/16 v23, 0x4

    if-eqz v8, :cond_1a

    move v8, v15

    goto :goto_12

    :cond_1a
    move/from16 v8, v23

    :goto_12
    if-eqz v21, :cond_1b

    move/from16 v21, v15

    goto :goto_13

    :cond_1b
    move/from16 v21, v23

    :goto_13
    if-eqz v22, :cond_1c

    move/from16 v22, v15

    goto :goto_14

    :cond_1c
    move/from16 v22, v23

    :goto_14
    if-eqz v12, :cond_1d

    move/from16 v23, v15

    :cond_1d
    const-wide/16 v17, 0x6

    and-long v24, v2, v17

    cmp-long v12, v24, v4

    if-eqz v12, :cond_1f

    if-eqz v0, :cond_1e

    .line 275
    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->getCarCockpitlImg()I

    move-result v15

    .line 280
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v15}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v26, v0

    move v13, v8

    move v12, v11

    move/from16 v15, v19

    move/from16 v0, v20

    move/from16 v8, v21

    move/from16 v11, v22

    move/from16 v9, v23

    goto :goto_16

    :cond_1f
    move v13, v8

    move v12, v11

    move/from16 v15, v19

    move/from16 v0, v20

    move/from16 v8, v21

    move/from16 v11, v22

    move/from16 v9, v23

    goto :goto_15

    :cond_20
    move v0, v15

    move v8, v0

    move v9, v8

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    :goto_15
    const/16 v26, 0x0

    :goto_16
    const-wide/16 v19, 0x4

    and-long v21, v2, v19

    cmp-long v16, v21, v4

    if-eqz v16, :cond_22

    if-eqz v16, :cond_22

    .line 286
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isRightLeftSeatNameNeedReverse()Z

    move-result v16

    if-eqz v16, :cond_21

    const-wide/16 v21, 0x10

    or-long v2, v2, v21

    const-wide/32 v21, 0x40000

    or-long v2, v2, v21

    goto :goto_17

    :cond_21
    const-wide/16 v21, 0x8

    or-long v2, v2, v21

    const-wide/32 v21, 0x20000

    or-long v2, v2, v21

    :cond_22
    :goto_17
    and-long/2addr v6, v2

    cmp-long v6, v6, v4

    if-eqz v6, :cond_23

    .line 300
    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontLeftSeat:Landroid/widget/RadioButton;

    invoke-static {v6, v0}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 301
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontRightSeat:Landroid/widget/RadioButton;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 302
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 303
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectLeftMirror:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 304
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v9}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 305
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectRightMirror:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 306
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->leftRearviewMirror:Landroid/widget/RadioButton;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 307
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->rightRearviewMirror:Landroid/widget/RadioButton;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    :cond_23
    and-long v6, v2, v19

    cmp-long v0, v6, v4

    if-eqz v0, :cond_26

    .line 312
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontLeftSeat:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback33:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontLeftSeat:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isRightLeftSeatNameNeedReverse()Z

    move-result v6

    const v7, 0x7f0b0036

    const v8, 0x7f0b0033

    if-eqz v6, :cond_24

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontLeftSeat:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_18

    :cond_24
    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontLeftSeat:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_18
    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 314
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontLeftSeat:Landroid/widget/RadioButton;

    invoke-static {v10}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 315
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontRightSeat:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback34:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontRightSeat:Landroid/widget/RadioButton;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isRightLeftSeatNameNeedReverse()Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontRightSeat:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_19

    :cond_25
    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontRightSeat:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_19
    invoke-static {v0, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->frontRightSeat:Landroid/widget/RadioButton;

    const/4 v6, 0x7

    invoke-static {v6}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 318
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectLeft:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback30:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageSeatSelectRight:Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback29:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->leftRearviewMirror:Landroid/widget/RadioButton;

    iget-object v6, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback31:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->leftRearviewMirror:Landroid/widget/RadioButton;

    const/16 v6, 0x8

    invoke-static {v6}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 322
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->rightRearviewMirror:Landroid/widget/RadioButton;

    iget-object v7, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mCallback32:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->rightRearviewMirror:Landroid/widget/RadioButton;

    invoke-static {v6}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_26
    const-wide/16 v6, 0x6

    and-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-eqz v0, :cond_27

    .line 328
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->imageCar:Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_27
    return-void

    :catchall_0
    move-exception v0

    .line 138
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 87
    monitor-exit p0

    return v0

    .line 89
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

    .line 77
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 78
    :try_start_0
    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mDirtyFlags:J

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->requestRebind()V

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

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 118
    :cond_0
    check-cast p2, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->onChangeGlobalCarViewModelCockpitIndex(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z

    move-result p0

    return p0
.end method

.method public setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V
    .locals 4
    .param p1    # Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 106
    iput-object p1, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->mDirtyFlags:J

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->notifyPropertyChanged(I)V

    .line 111
    invoke-super {p0}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 97
    check-cast p2, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/databinding/LayoutCockpitBindingLdrtlImpl;->setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
