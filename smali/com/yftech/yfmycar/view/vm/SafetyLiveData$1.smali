.class Lcom/yftech/yfmycar/view/vm/SafetyLiveData$1;
.super Ljava/lang/Object;
.source "SafetyLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->postValue(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/vm/SafetyLiveData;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Ljava/lang/Object;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData$1;->this$0:Lcom/yftech/yfmycar/view/vm/SafetyLiveData;

    iput-object p2, p0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData$1;->this$0:Lcom/yftech/yfmycar/view/vm/SafetyLiveData;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData$1;->val$value:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->access$000(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Ljava/lang/Object;)V

    return-void
.end method
