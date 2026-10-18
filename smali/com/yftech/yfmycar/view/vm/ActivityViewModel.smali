.class public Lcom/yftech/yfmycar/view/vm/ActivityViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "ActivityViewModel.java"


# instance fields
.field private final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/yftech/yfmycar/view/vm/ActivityViewModel;->intent:Landroid/content/Intent;

    return-void
.end method
