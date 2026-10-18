.class public Lcom/yftech/yfmycar/view/vm/AppViewModelStore;
.super Ljava/lang/Object;
.source "AppViewModelStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/yfmycar/view/vm/AppViewModelStore$SingletonHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 17
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    invoke-static {}, Lcom/yftech/yfmycar/view/vm/AppViewModelStore;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v1

    new-instance v2, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    invoke-direct {v2}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 18
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 13
    invoke-static {}, Lcom/yftech/yfmycar/view/vm/AppViewModelStore$SingletonHolder;->access$000()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    return-object v0
.end method
