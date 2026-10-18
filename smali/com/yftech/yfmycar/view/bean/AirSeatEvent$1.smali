.class final Lcom/yftech/yfmycar/view/bean/AirSeatEvent$1;
.super Ljava/lang/Object;
.source "AirSeatEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/yfmycar/view/bean/AirSeatEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/yftech/yfmycar/view/bean/AirSeatEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;
    .locals 0

    .line 84
    new-instance p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    invoke-direct {p0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/yftech/yfmycar/view/bean/AirSeatEvent;
    .locals 0

    .line 89
    new-array p0, p1, [Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent$1;->newArray(I)[Lcom/yftech/yfmycar/view/bean/AirSeatEvent;

    move-result-object p0

    return-object p0
.end method
