.class public final synthetic Lcom/yftech/yfmycar/view/vm/-$$Lambda$SafetyLiveData$fDj6Y7-5ohfK9Kz8X7BI5a-f-Ao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/yftech/yfmycar/view/vm/SafetyLiveData;

.field private final synthetic f$1:Landroidx/lifecycle/Observer;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/yfmycar/view/vm/-$$Lambda$SafetyLiveData$fDj6Y7-5ohfK9Kz8X7BI5a-f-Ao;->f$0:Lcom/yftech/yfmycar/view/vm/SafetyLiveData;

    iput-object p2, p0, Lcom/yftech/yfmycar/view/vm/-$$Lambda$SafetyLiveData$fDj6Y7-5ohfK9Kz8X7BI5a-f-Ao;->f$1:Landroidx/lifecycle/Observer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/vm/-$$Lambda$SafetyLiveData$fDj6Y7-5ohfK9Kz8X7BI5a-f-Ao;->f$0:Lcom/yftech/yfmycar/view/vm/SafetyLiveData;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/vm/-$$Lambda$SafetyLiveData$fDj6Y7-5ohfK9Kz8X7BI5a-f-Ao;->f$1:Landroidx/lifecycle/Observer;

    invoke-static {v0, p0}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->lambda$observeForever$0(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method
