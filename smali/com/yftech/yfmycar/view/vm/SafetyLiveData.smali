.class public Lcom/yftech/yfmycar/view/vm/SafetyLiveData;
.super Landroidx/lifecycle/MutableLiveData;
.source "SafetyLiveData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfmycar/view/vm/SafetyLiveData$SetPropertyValueCallback;,
        Lcom/yftech/yfmycar/view/vm/SafetyLiveData$BeforeSetValueListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/MutableLiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public lastValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mBeforeSetValueListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Ljava/util/Set<",
            "Lcom/yftech/yfmycar/view/vm/SafetyLiveData$BeforeSetValueListener<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field public setPropertyValueCallback:Lcom/yftech/yfmycar/view/vm/SafetyLiveData$SetPropertyValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yftech/yfmycar/view/vm/SafetyLiveData$SetPropertyValueCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field public skipSetToSdk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->skipSetToSdk:Z

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->mBeforeSetValueListeners:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;-><init>()V

    .line 29
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Ljava/lang/Object;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->realSetValue(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$101(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method static synthetic access$201(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 19
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic lambda$observeForever$0(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 82
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->access$201(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic lambda$removeObserver$1(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V
    .locals 0

    .line 91
    invoke-static {p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->access$101(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private notifyBeforeSetValue(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object p0, p0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->mBeforeSetValueListeners:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/yfmycar/view/vm/SafetyLiveData$BeforeSetValueListener;

    .line 72
    invoke-interface {v2, v0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData$BeforeSetValueListener;->beforeSetValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private realSetValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->lastValue:Ljava/lang/Object;

    .line 63
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->notifyBeforeSetValue(Ljava/lang/Object;)V

    .line 64
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private safeSetValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/yftech/yfmycar/view/utils/UiHandler;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->realSetValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public notifyObserver()V
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->safeSetValue(Ljava/lang/Object;)V

    return-void
.end method

.method public observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 49
    invoke-super {p0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 50
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Landroidx/lifecycle/Observer;->onChanged(Ljava/lang/Object;)V

    return-void
.end method

.method public observeForever(Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 79
    invoke-static {}, Lcom/yftech/yfmycar/view/utils/UiHandler;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Lcom/yftech/yfmycar/view/vm/-$$Lambda$SafetyLiveData$fDj6Y7-5ohfK9Kz8X7BI5a-f-Ao;

    invoke-direct {v0, p0, p1}, Lcom/yftech/yfmycar/view/vm/-$$Lambda$SafetyLiveData$fDj6Y7-5ohfK9Kz8X7BI5a-f-Ao;-><init>(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V

    invoke-static {v0}, Lcom/yftech/yfmycar/view/utils/UiHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public postValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 39
    new-instance v0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData$1;

    invoke-direct {v0, p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData$1;-><init>(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/yftech/yfmycar/view/utils/UiHandler;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeObserver(Landroidx/lifecycle/Observer;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 88
    invoke-static {}, Lcom/yftech/yfmycar/view/utils/UiHandler;->isUIThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-super {p0, p1}, Landroidx/lifecycle/MutableLiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/yftech/yfmycar/view/vm/-$$Lambda$SafetyLiveData$kG5BnE3b-rhKxd87BIx6w8gK0Kc;

    invoke-direct {v0, p0, p1}, Lcom/yftech/yfmycar/view/vm/-$$Lambda$SafetyLiveData$kG5BnE3b-rhKxd87BIx6w8gK0Kc;-><init>(Lcom/yftech/yfmycar/view/vm/SafetyLiveData;Landroidx/lifecycle/Observer;)V

    invoke-static {v0}, Lcom/yftech/yfmycar/view/utils/UiHandler;->post(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public setSetPropertyValueCallback(Lcom/yftech/yfmycar/view/vm/SafetyLiveData$SetPropertyValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yftech/yfmycar/view/vm/SafetyLiveData$SetPropertyValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->setPropertyValueCallback:Lcom/yftech/yfmycar/view/vm/SafetyLiveData$SetPropertyValueCallback;

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->safeSetValue(Ljava/lang/Object;)V

    return-void
.end method
