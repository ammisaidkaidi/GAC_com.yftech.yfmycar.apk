.class Lcom/yftech/yfmycar/view/vm/AppViewModelStore$SingletonHolder;
.super Ljava/lang/Object;
.source "AppViewModelStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/vm/AppViewModelStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final SINGLETON:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    sput-object v0, Lcom/yftech/yfmycar/view/vm/AppViewModelStore$SingletonHolder;->SINGLETON:Landroidx/lifecycle/ViewModelStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 8
    sget-object v0, Lcom/yftech/yfmycar/view/vm/AppViewModelStore$SingletonHolder;->SINGLETON:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method
