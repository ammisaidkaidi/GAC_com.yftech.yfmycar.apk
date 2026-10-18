.class public Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;
.super Ljava/lang/Object;
.source "WindowErrorEvent.java"


# instance fields
.field isError:Z

.field whichFragment:I
    .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->whichFragment:I

    .line 17
    iput-boolean p2, p0, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->isError:Z

    return-void
.end method


# virtual methods
.method public getWhichFragment()I
    .locals 0
    .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
    .end annotation

    .line 22
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->whichFragment:I

    return p0
.end method

.method public isError()Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->isError:Z

    return p0
.end method

.method public setError(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->isError:Z

    return-void
.end method

.method public setWhichFragment(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
        .end annotation
    .end param

    .line 26
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/WindowErrorEvent;->whichFragment:I

    return-void
.end method
