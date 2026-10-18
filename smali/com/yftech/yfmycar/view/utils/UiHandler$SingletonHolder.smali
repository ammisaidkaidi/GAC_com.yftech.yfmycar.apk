.class Lcom/yftech/yfmycar/view/utils/UiHandler$SingletonHolder;
.super Ljava/lang/Object;
.source "UiHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/utils/UiHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final instance:Lcom/yftech/yfmycar/view/utils/UiHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/yftech/yfmycar/view/utils/UiHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yftech/yfmycar/view/utils/UiHandler;-><init>(Lcom/yftech/yfmycar/view/utils/UiHandler$1;)V

    sput-object v0, Lcom/yftech/yfmycar/view/utils/UiHandler$SingletonHolder;->instance:Lcom/yftech/yfmycar/view/utils/UiHandler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/yftech/yfmycar/view/utils/UiHandler;
    .locals 1

    .line 9
    sget-object v0, Lcom/yftech/yfmycar/view/utils/UiHandler$SingletonHolder;->instance:Lcom/yftech/yfmycar/view/utils/UiHandler;

    return-object v0
.end method
