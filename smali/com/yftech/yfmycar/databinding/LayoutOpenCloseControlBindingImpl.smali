.class public Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;
.super Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;
.source "LayoutOpenCloseControlBindingImpl.java"

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
.field private final mCallback21:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback22:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback23:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback24:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback25:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback26:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback27:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mCallback28:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mDirtyFlags:J

.field private final mboundView0:Landroid/widget/RelativeLayout;
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

    .line 43
    sget-object v0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x15

    invoke-static {p1, p2, v2, v0, v1}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v4, 0x14

    .line 46
    aget-object v4, p3, v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v15, 0x2

    aget-object v5, p3, v15

    check-cast v5, Landroid/widget/RadioButton;

    const/4 v14, 0x4

    aget-object v6, p3, v14

    check-cast v6, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v13, 0x5

    aget-object v7, p3, v13

    check-cast v7, Landroid/widget/RadioButton;

    const/4 v12, 0x7

    aget-object v8, p3, v12

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v11, 0x1

    aget-object v9, p3, v11

    check-cast v9, Landroid/view/View;

    const/4 v10, 0x3

    aget-object v16, p3, v10

    check-cast v16, Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v10, v16

    const/4 v3, 0x6

    aget-object v16, p3, v3

    check-cast v16, Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v11, v16

    const/16 v16, 0x9

    aget-object v16, p3, v16

    check-cast v16, Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v12, v16

    const/16 v16, 0xc

    aget-object v16, p3, v16

    check-cast v16, Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v13, v16

    const/16 v16, 0x11

    aget-object v16, p3, v16

    check-cast v16, Landroidx/appcompat/widget/AppCompatImageView;

    move-object/from16 v14, v16

    const/16 v16, 0x13

    aget-object v16, p3, v16

    check-cast v16, Landroidx/appcompat/widget/AppCompatTextView;

    move-object/from16 v15, v16

    const/16 v3, 0x8

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/RadioButton;

    const/16 v17, 0xa

    aget-object v17, p3, v17

    check-cast v17, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v18, 0xb

    aget-object v18, p3, v18

    check-cast v18, Landroid/widget/RadioButton;

    const/16 v19, 0xd

    aget-object v19, p3, v19

    check-cast v19, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v20, 0xe

    aget-object v20, p3, v20

    check-cast v20, Landroid/widget/RadioButton;

    const/16 v21, 0xf

    aget-object v21, p3, v21

    check-cast v21, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v22, 0x10

    aget-object v22, p3, v22

    check-cast v22, Landroid/widget/RadioButton;

    const/16 v23, 0x12

    aget-object v23, p3, v23

    check-cast v23, Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v24, 0x1

    move/from16 v3, v24

    invoke-direct/range {v0 .. v23}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RadioButton;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/RadioButton;Landroidx/appcompat/widget/AppCompatImageView;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/RadioButton;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/RadioButton;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/RadioButton;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/RadioButton;Landroidx/appcompat/widget/AppCompatImageView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 698
    iput-wide v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mDirtyFlags:J

    .line 68
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->closeWholeWindow:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowLeft:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 70
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowLeftPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 71
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowRight:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowRightPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 73
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgCarModel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgFontWindowLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 75
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgFontWindowRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgRearWindowLeft:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgRearWindowRight:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgTailgate:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 79
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    .line 80
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mboundView0:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 81
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->openSideWindow:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTag(Ljava/lang/Object;)V

    .line 82
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowLeft:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 83
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowLeftPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 84
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowRight:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowRightPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 86
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->skylight:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 87
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->skylightPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    .line 88
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->tailgate:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->tailgatePoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 90
    invoke-virtual {v2, v0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 92
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x7

    invoke-direct {v0, v2, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback27:Landroid/view/View$OnClickListener;

    .line 93
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/16 v1, 0x8

    invoke-direct {v0, v2, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback28:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback25:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback26:Landroid/view/View$OnClickListener;

    .line 96
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback23:Landroid/view/View$OnClickListener;

    .line 97
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback24:Landroid/view/View$OnClickListener;

    .line 98
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback21:Landroid/view/View$OnClickListener;

    .line 99
    new-instance v0, Lcom/yftech/yfmycar/generated/callback/OnClickListener;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lcom/yftech/yfmycar/generated/callback/OnClickListener;-><init>(Lcom/yftech/yfmycar/generated/callback/OnClickListener$Listener;I)V

    iput-object v0, v2, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback22:Landroid/view/View$OnClickListener;

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->invalidateAll()V

    return-void
.end method

.method private onChangeGlobalCarViewModelOpenCloseControlIndex(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z
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

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide p1, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mDirtyFlags:J

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mDirtyFlags:J

    .line 154
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

    const/4 p2, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 566
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p2, :cond_8

    .line 577
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->controlCarWindowAll(Z)V

    goto/16 :goto_7

    .line 548
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_1

    move v0, p2

    :cond_1
    if-eqz v0, :cond_8

    .line 559
    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->controlCarWindowAll(Z)V

    goto :goto_7

    .line 603
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    if-eqz p2, :cond_8

    const/16 p1, 0xa

    .line 615
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setOpenCloseControlIndex(I)V

    goto :goto_7

    .line 584
    :pswitch_3
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move p2, v0

    :goto_2
    if-eqz p2, :cond_8

    .line 596
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setOpenCloseControlIndex(I)V

    goto :goto_7

    .line 641
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move p2, v0

    :goto_3
    if-eqz p2, :cond_8

    const/4 p1, 0x5

    .line 653
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setOpenCloseControlIndex(I)V

    goto :goto_7

    .line 622
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move p2, v0

    :goto_4
    if-eqz p2, :cond_8

    const/4 p1, 0x4

    .line 634
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setOpenCloseControlIndex(I)V

    goto :goto_7

    .line 679
    :pswitch_6
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_6

    goto :goto_5

    :cond_6
    move p2, v0

    :goto_5
    if-eqz p2, :cond_8

    const/4 p1, 0x3

    .line 691
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setOpenCloseControlIndex(I)V

    goto :goto_7

    .line 660
    :pswitch_7
    iget-object p0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    if-eqz p0, :cond_7

    goto :goto_6

    :cond_7
    move p2, v0

    :goto_6
    if-eqz p2, :cond_8

    const/4 p1, 0x2

    .line 672
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->setOpenCloseControlIndex(I)V

    :cond_8
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected executeBindings()V
    .locals 41

    move-object/from16 v1, p0

    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-wide v2, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 165
    iput-wide v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mDirtyFlags:J

    .line 166
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    iget-object v0, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    const-wide/16 v6, 0x4

    and-long v8, v2, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3

    if-eqz v8, :cond_1

    .line 207
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isAllWindowCloseShow()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/32 v8, 0x400000

    or-long/2addr v2, v8

    goto :goto_0

    :cond_0
    const-wide/32 v8, 0x200000

    or-long/2addr v2, v8

    :cond_1
    :goto_0
    and-long v8, v2, v6

    cmp-long v8, v8, v4

    if-eqz v8, :cond_3

    .line 215
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isAllWindowOpenShow()Z

    move-result v8

    if-eqz v8, :cond_2

    const-wide/32 v8, 0x40000

    or-long/2addr v2, v8

    goto :goto_1

    :cond_2
    const-wide/32 v8, 0x20000

    or-long/2addr v2, v8

    :cond_3
    :goto_1
    const-wide/16 v8, 0x7

    and-long v10, v2, v8

    cmp-long v10, v10, v4

    const-wide/16 v11, 0x1000

    const-wide/32 v15, 0x1000000

    const-wide v17, 0x400000000L

    const/16 v19, 0x0

    const/4 v6, 0x5

    const/16 v13, 0xa

    const/4 v14, 0x4

    const/4 v7, 0x0

    if-eqz v10, :cond_28

    if-eqz v10, :cond_5

    .line 226
    invoke-static {v7}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_4

    or-long/2addr v2, v15

    goto :goto_2

    :cond_4
    const-wide/32 v23, 0x800000

    or-long v2, v2, v23

    :cond_5
    :goto_2
    and-long v23, v2, v8

    cmp-long v10, v23, v4

    if-eqz v10, :cond_7

    .line 234
    invoke-static {v13}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_6

    or-long/2addr v2, v11

    goto :goto_3

    :cond_6
    const-wide/16 v23, 0x800

    or-long v2, v2, v23

    :cond_7
    :goto_3
    and-long v23, v2, v8

    cmp-long v10, v23, v4

    if-eqz v10, :cond_9

    .line 242
    invoke-static {v6}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_8

    or-long v2, v2, v17

    goto :goto_4

    :cond_8
    const-wide v23, 0x200000000L

    or-long v2, v2, v23

    :cond_9
    :goto_4
    and-long v23, v2, v8

    cmp-long v10, v23, v4

    if-eqz v10, :cond_b

    .line 250
    invoke-static {v14}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const-wide/16 v23, 0x100

    or-long v2, v2, v23

    goto :goto_5

    :cond_a
    const-wide/16 v23, 0x80

    or-long v2, v2, v23

    :cond_b
    :goto_5
    and-long v23, v2, v8

    cmp-long v10, v23, v4

    if-eqz v10, :cond_d

    const/4 v10, 0x3

    .line 258
    invoke-static {v10}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v23

    if-eqz v23, :cond_c

    const-wide/16 v20, 0x10

    or-long v2, v2, v20

    goto :goto_6

    :cond_c
    const-wide/16 v23, 0x8

    or-long v2, v2, v23

    :cond_d
    :goto_6
    and-long v23, v2, v8

    cmp-long v10, v23, v4

    if-eqz v10, :cond_f

    .line 266
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isPlgmfunccfgPresent()Z

    move-result v10

    if-eqz v10, :cond_e

    const-wide/16 v23, 0x40

    or-long v2, v2, v23

    goto :goto_7

    :cond_e
    const-wide/16 v23, 0x20

    or-long v2, v2, v23

    :cond_f
    :goto_7
    and-long v23, v2, v8

    cmp-long v10, v23, v4

    if-eqz v10, :cond_11

    const/4 v10, 0x2

    .line 274
    invoke-static {v10}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v23

    if-eqz v23, :cond_10

    const-wide/16 v23, 0x4000

    or-long v2, v2, v23

    goto :goto_8

    :cond_10
    const-wide/16 v23, 0x2000

    or-long v2, v2, v23

    :cond_11
    :goto_8
    if-eqz v0, :cond_12

    .line 285
    iget-object v10, v0, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->openCloseControlIndex:Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    goto :goto_9

    :cond_12
    move-object/from16 v10, v19

    .line 287
    :goto_9
    invoke-virtual {v1, v7, v10}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->updateLiveDataRegistration(ILandroidx/lifecycle/LiveData;)Z

    if-eqz v10, :cond_13

    .line 292
    invoke-virtual {v10}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    goto :goto_a

    :cond_13
    move-object/from16 v10, v19

    .line 297
    :goto_a
    invoke-static {v10}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    move-result v10

    if-ne v10, v13, :cond_14

    const/16 v23, 0x1

    goto :goto_b

    :cond_14
    move/from16 v23, v7

    :goto_b
    if-nez v10, :cond_15

    const/16 v24, 0x1

    goto :goto_c

    :cond_15
    move/from16 v24, v7

    :goto_c
    if-ne v10, v6, :cond_16

    const/16 v25, 0x1

    goto :goto_d

    :cond_16
    move/from16 v25, v7

    :goto_d
    if-ne v10, v14, :cond_17

    const/4 v7, 0x2

    const/16 v26, 0x1

    goto :goto_e

    :cond_17
    move/from16 v26, v7

    const/4 v7, 0x2

    :goto_e
    if-ne v10, v7, :cond_18

    const/4 v7, 0x1

    :goto_f
    const/4 v14, 0x3

    goto :goto_10

    :cond_18
    const/4 v7, 0x0

    goto :goto_f

    :goto_10
    if-ne v10, v14, :cond_19

    const/4 v14, 0x1

    goto :goto_11

    :cond_19
    const/4 v14, 0x0

    :goto_11
    and-long v27, v2, v8

    cmp-long v27, v27, v4

    if-eqz v27, :cond_1b

    if-eqz v25, :cond_1a

    const-wide/16 v27, 0x400

    or-long v2, v2, v27

    goto :goto_12

    :cond_1a
    const-wide/16 v27, 0x200

    or-long v2, v2, v27

    :cond_1b
    :goto_12
    and-long v27, v2, v8

    cmp-long v27, v27, v4

    if-eqz v27, :cond_1d

    if-eqz v26, :cond_1c

    const-wide v27, 0x40000000000L

    or-long v2, v2, v27

    goto :goto_13

    :cond_1c
    const-wide v27, 0x20000000000L

    or-long v2, v2, v27

    :cond_1d
    :goto_13
    and-long v27, v2, v8

    cmp-long v27, v27, v4

    if-eqz v27, :cond_1f

    if-eqz v7, :cond_1e

    const-wide v27, 0x10000000000L

    or-long v2, v2, v27

    goto :goto_14

    :cond_1e
    const-wide v27, 0x8000000000L

    or-long v2, v2, v27

    :cond_1f
    :goto_14
    and-long v27, v2, v8

    cmp-long v27, v27, v4

    if-eqz v27, :cond_21

    if-eqz v14, :cond_20

    const-wide/32 v27, 0x4000000

    or-long v2, v2, v27

    goto :goto_15

    :cond_20
    const-wide/32 v27, 0x2000000

    or-long v2, v2, v27

    :cond_21
    :goto_15
    if-eqz v25, :cond_22

    const/16 v27, 0x0

    goto :goto_16

    :cond_22
    const/16 v27, 0x4

    :goto_16
    if-eqz v26, :cond_23

    const/16 v28, 0x0

    goto :goto_17

    :cond_23
    const/16 v28, 0x4

    :goto_17
    if-eqz v7, :cond_24

    const/16 v29, 0x0

    goto :goto_18

    :cond_24
    const/16 v29, 0x4

    :goto_18
    if-eqz v14, :cond_25

    const/16 v30, 0x0

    goto :goto_19

    :cond_25
    const/16 v30, 0x4

    :goto_19
    const-wide/16 v31, 0x6

    and-long v31, v2, v31

    cmp-long v31, v31, v4

    if-eqz v31, :cond_27

    if-eqz v0, :cond_26

    .line 358
    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;->getCarModelImg()I

    move-result v0

    goto :goto_1a

    :cond_26
    const/4 v0, 0x0

    .line 363
    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->getRoot()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    :cond_27
    move v13, v7

    move-object/from16 v0, v19

    move/from16 v7, v23

    move/from16 v36, v24

    move/from16 v37, v25

    move/from16 v38, v26

    move/from16 v35, v27

    move/from16 v34, v28

    move/from16 v33, v29

    move/from16 v39, v30

    goto :goto_1b

    :cond_28
    move-object/from16 v0, v19

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    :goto_1b
    and-long v23, v2, v8

    cmp-long v19, v23, v4

    if-eqz v19, :cond_2d

    .line 371
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isPlgmfunccfgPresent()Z

    move-result v23

    if-eqz v23, :cond_29

    move/from16 v23, v7

    goto :goto_1c

    :cond_29
    const/16 v23, 0x0

    :goto_1c
    if-eqz v19, :cond_2b

    if-eqz v23, :cond_2a

    const-wide v24, 0x100000000L

    or-long v2, v2, v24

    goto :goto_1d

    :cond_2a
    const-wide v24, 0x80000000L

    or-long v2, v2, v24

    :cond_2b
    :goto_1d
    if-eqz v23, :cond_2c

    const/16 v19, 0x0

    goto :goto_1e

    :cond_2c
    const/16 v19, 0x4

    :goto_1e
    move/from16 v40, v19

    goto :goto_1f

    :cond_2d
    const/16 v40, 0x0

    :goto_1f
    and-long v17, v2, v17

    cmp-long v17, v17, v4

    if-eqz v17, :cond_2e

    if-eq v10, v6, :cond_2e

    const/16 v17, 0x1

    goto :goto_20

    :cond_2e
    const/16 v17, 0x0

    :goto_20
    const-wide/16 v18, 0x10

    and-long v18, v2, v18

    cmp-long v18, v18, v4

    if-eqz v18, :cond_2f

    const/4 v6, 0x3

    if-eq v10, v6, :cond_2f

    const/4 v6, 0x1

    goto :goto_21

    :cond_2f
    const/4 v6, 0x0

    :goto_21
    and-long/2addr v15, v2

    cmp-long v15, v15, v4

    if-eqz v15, :cond_30

    if-eqz v10, :cond_30

    const/4 v15, 0x1

    goto :goto_22

    :cond_30
    const/4 v15, 0x0

    :goto_22
    and-long/2addr v11, v2

    cmp-long v11, v11, v4

    if-eqz v11, :cond_31

    const/16 v11, 0xa

    if-eq v10, v11, :cond_31

    const/4 v11, 0x1

    goto :goto_23

    :cond_31
    const/4 v11, 0x0

    :goto_23
    const-wide/16 v18, 0x100

    and-long v18, v2, v18

    cmp-long v12, v18, v4

    if-eqz v12, :cond_32

    const/4 v12, 0x4

    if-eq v10, v12, :cond_32

    const/4 v12, 0x1

    goto :goto_24

    :cond_32
    const/4 v12, 0x0

    :goto_24
    const-wide/16 v18, 0x4000

    and-long v18, v2, v18

    cmp-long v16, v18, v4

    if-eqz v16, :cond_33

    const/4 v4, 0x2

    if-eq v10, v4, :cond_33

    const/16 v22, 0x1

    goto :goto_25

    :cond_33
    const/16 v22, 0x0

    :goto_25
    and-long v4, v2, v8

    const-wide/16 v18, 0x0

    cmp-long v4, v4, v18

    if-eqz v4, :cond_4c

    const/4 v5, 0x3

    .line 419
    invoke-static {v5}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_34

    const/4 v5, 0x4

    goto :goto_26

    :cond_34
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 421
    :goto_26
    invoke-static {v5}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_35

    const/16 v5, 0xa

    goto :goto_27

    :cond_35
    const/16 v5, 0xa

    const/4 v12, 0x0

    .line 423
    :goto_27
    invoke-static {v5}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_36

    const/4 v5, 0x2

    goto :goto_28

    :cond_36
    const/4 v5, 0x2

    const/4 v11, 0x0

    .line 425
    :goto_28
    invoke-static {v5}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_37

    const/4 v5, 0x0

    goto :goto_29

    :cond_37
    const/4 v5, 0x0

    const/16 v22, 0x0

    .line 427
    :goto_29
    invoke-static {v5}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_38

    const/4 v5, 0x5

    goto :goto_2a

    :cond_38
    const/4 v5, 0x5

    const/4 v15, 0x0

    .line 429
    :goto_2a
    invoke-static {v5}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v10

    if-eqz v10, :cond_39

    goto :goto_2b

    :cond_39
    const/16 v17, 0x0

    :goto_2b
    if-eqz v4, :cond_3b

    if-eqz v6, :cond_3a

    const-wide/32 v4, 0x10000

    or-long/2addr v2, v4

    goto :goto_2c

    :cond_3a
    const-wide/32 v4, 0x8000

    or-long/2addr v2, v4

    :cond_3b
    :goto_2c
    and-long v4, v2, v8

    const-wide/16 v18, 0x0

    cmp-long v4, v4, v18

    if-eqz v4, :cond_3d

    if-eqz v12, :cond_3c

    const-wide/32 v4, 0x10000000

    or-long/2addr v2, v4

    goto :goto_2d

    :cond_3c
    const-wide/32 v4, 0x8000000

    or-long/2addr v2, v4

    :cond_3d
    :goto_2d
    and-long v4, v2, v8

    cmp-long v4, v4, v18

    if-eqz v4, :cond_3f

    if-eqz v11, :cond_3e

    const-wide v4, 0x1000000000L

    or-long/2addr v2, v4

    goto :goto_2e

    :cond_3e
    const-wide v4, 0x800000000L

    or-long/2addr v2, v4

    :cond_3f
    :goto_2e
    and-long v4, v2, v8

    cmp-long v4, v4, v18

    if-eqz v4, :cond_41

    if-eqz v22, :cond_40

    const-wide/32 v4, 0x40000000

    or-long/2addr v2, v4

    goto :goto_2f

    :cond_40
    const-wide/32 v4, 0x20000000

    or-long/2addr v2, v4

    :cond_41
    :goto_2f
    and-long v4, v2, v8

    cmp-long v4, v4, v18

    if-eqz v4, :cond_43

    if-eqz v15, :cond_42

    const-wide/32 v4, 0x100000

    or-long/2addr v2, v4

    goto :goto_30

    :cond_42
    const-wide/32 v4, 0x80000

    or-long/2addr v2, v4

    :cond_43
    :goto_30
    and-long v4, v2, v8

    cmp-long v4, v4, v18

    if-eqz v4, :cond_45

    if-eqz v17, :cond_44

    const-wide v4, 0x4000000000L

    or-long/2addr v2, v4

    goto :goto_31

    :cond_44
    const-wide v4, 0x2000000000L

    or-long/2addr v2, v4

    :cond_45
    :goto_31
    if-eqz v6, :cond_46

    const/4 v4, 0x0

    goto :goto_32

    :cond_46
    const/4 v4, 0x4

    :goto_32
    if-eqz v12, :cond_47

    const/4 v5, 0x0

    goto :goto_33

    :cond_47
    const/4 v5, 0x4

    :goto_33
    if-eqz v11, :cond_48

    const/4 v6, 0x0

    goto :goto_34

    :cond_48
    const/4 v6, 0x4

    :goto_34
    if-eqz v22, :cond_49

    const/4 v10, 0x0

    goto :goto_35

    :cond_49
    const/4 v10, 0x4

    :goto_35
    if-eqz v15, :cond_4a

    const/4 v11, 0x0

    goto :goto_36

    :cond_4a
    const/4 v11, 0x4

    :goto_36
    if-eqz v17, :cond_4b

    goto :goto_37

    :cond_4b
    const/4 v12, 0x4

    goto :goto_38

    :cond_4c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_37
    const/4 v12, 0x0

    :goto_38
    const-wide/16 v15, 0x4

    and-long/2addr v15, v2

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_4f

    .line 497
    iget-object v15, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->closeWholeWindow:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback28:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->closeWholeWindow:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isAllWindowCloseShow()Z

    move-result v9

    if-eqz v9, :cond_4d

    const/4 v9, 0x0

    goto :goto_39

    :cond_4d
    const/4 v9, 0x4

    :goto_39
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 499
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowLeft:Landroid/widget/RadioButton;

    iget-object v9, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback21:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowLeft:Landroid/widget/RadioButton;

    const/4 v9, 0x2

    invoke-static {v9}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 501
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowRight:Landroid/widget/RadioButton;

    iget-object v9, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback22:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowRight:Landroid/widget/RadioButton;

    const/4 v9, 0x3

    invoke-static {v9}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 503
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->openSideWindow:Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v9, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback27:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->openSideWindow:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isAllWindowOpenShow()Z

    move-result v9

    if-eqz v9, :cond_4e

    const/4 v9, 0x0

    goto :goto_3a

    :cond_4e
    const/4 v9, 0x4

    :goto_3a
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 505
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowLeft:Landroid/widget/RadioButton;

    iget-object v9, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback23:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowLeft:Landroid/widget/RadioButton;

    const/4 v9, 0x4

    invoke-static {v9}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 507
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowRight:Landroid/widget/RadioButton;

    iget-object v9, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback24:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowRight:Landroid/widget/RadioButton;

    const/4 v9, 0x5

    invoke-static {v9}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 509
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->skylight:Landroid/widget/RadioButton;

    iget-object v9, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback25:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->skylight:Landroid/widget/RadioButton;

    const/4 v9, 0x0

    invoke-static {v9}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 511
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->tailgate:Landroid/widget/RadioButton;

    iget-object v9, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mCallback26:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->tailgate:Landroid/widget/RadioButton;

    const/16 v9, 0xa

    invoke-static {v9}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentConfigVisible(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setVisibility(I)V

    const-wide/16 v8, 0x7

    :cond_4f
    and-long/2addr v8, v2

    const-wide/16 v15, 0x0

    cmp-long v8, v8, v15

    if-eqz v8, :cond_50

    .line 517
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowLeft:Landroid/widget/RadioButton;

    invoke-static {v8, v13}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 518
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowLeftPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v8, v10}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 519
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowRight:Landroid/widget/RadioButton;

    invoke-static {v8, v14}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 520
    iget-object v8, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->fontWindowRightPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v8, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 521
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgFontWindowLeft:Landroidx/appcompat/widget/AppCompatImageView;

    move/from16 v8, v33

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 522
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgFontWindowRight:Landroidx/appcompat/widget/AppCompatImageView;

    move/from16 v8, v39

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 523
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgRearWindowLeft:Landroidx/appcompat/widget/AppCompatImageView;

    move/from16 v8, v34

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 524
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgRearWindowRight:Landroidx/appcompat/widget/AppCompatImageView;

    move/from16 v8, v35

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 525
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgTailgate:Landroidx/appcompat/widget/AppCompatImageView;

    move/from16 v8, v40

    invoke-virtual {v4, v8}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 526
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowLeft:Landroid/widget/RadioButton;

    move/from16 v8, v38

    invoke-static {v4, v8}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 527
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowLeftPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 528
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowRight:Landroid/widget/RadioButton;

    move/from16 v5, v37

    invoke-static {v4, v5}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 529
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->rearWindowRightPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v12}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 530
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->skylight:Landroid/widget/RadioButton;

    move/from16 v5, v36

    invoke-static {v4, v5}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 531
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->skylightPoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v11}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 532
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->tailgate:Landroid/widget/RadioButton;

    invoke-static {v4, v7}, Landroidx/databinding/adapters/CompoundButtonBindingAdapter;->setChecked(Landroid/widget/CompoundButton;Z)V

    .line 533
    iget-object v4, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->tailgatePoint:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v4, v6}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    :cond_50
    const-wide/16 v4, 0x6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_51

    .line 538
    iget-object v1, v1, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->imgCarModel:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_51
    return-void

    :catchall_0
    move-exception v0

    .line 166
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 115
    monitor-exit p0

    return v0

    .line 117
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

    .line 105
    monitor-enter p0

    const-wide/16 v0, 0x4

    .line 106
    :try_start_0
    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mDirtyFlags:J

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {p0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 107
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

    .line 146
    :cond_0
    check-cast p2, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;

    invoke-direct {p0, p2, p3}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->onChangeGlobalCarViewModelOpenCloseControlIndex(Lcom/yftech/yfmycar/view/vm/NonNullLiveData;I)Z

    move-result p0

    return p0
.end method

.method public setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V
    .locals 4
    .param p1    # Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    iput-object p1, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mGlobalCarViewModel:Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-wide v0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->mDirtyFlags:J

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 138
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->notifyPropertyChanged(I)V

    .line 139
    invoke-super {p0}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 137
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

    .line 125
    check-cast p2, Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;

    invoke-virtual {p0, p2}, Lcom/yftech/yfmycar/databinding/LayoutOpenCloseControlBindingImpl;->setGlobalCarViewModel(Lcom/yftech/yfmycar/view/base/GlobalCarViewModel;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
