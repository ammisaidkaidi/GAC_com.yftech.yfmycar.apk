.class public Lcom/yftech/yfmycar/view/vm/NonNullLiveData;
.super Lcom/yftech/yfmycar/view/vm/SafetyLiveData;
.source "NonNullLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yftech/yfmycar/view/vm/SafetyLiveData<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 13
    invoke-super {p0}, Lcom/yftech/yfmycar/view/vm/SafetyLiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toggle()V
    .locals 2

    .line 19
    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 20
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 22
    check-cast v0, Ljava/lang/Boolean;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/vm/NonNullLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
