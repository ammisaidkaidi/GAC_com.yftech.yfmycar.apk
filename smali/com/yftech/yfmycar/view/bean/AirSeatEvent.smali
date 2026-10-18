.class public Lcom/yftech/yfmycar/view/bean/AirSeatEvent;
.super Ljava/lang/Object;
.source "AirSeatEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yftech/yfmycar/view/bean/AirSeatEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public autoEnable:Z

.field public level:I

.field public mSeatType:I

.field public ventHeatAuto:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent$1;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/AirSeatEvent$1;-><init>()V

    sput-object v0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->mSeatType:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->ventHeatAuto:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->level:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->autoEnable:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getLevel()I
    .locals 0

    .line 35
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->level:I

    return p0
.end method

.method public getSeatType()I
    .locals 0

    .line 19
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->mSeatType:I

    return p0
.end method

.method public getVentHeatAuto()I
    .locals 0

    .line 27
    iget p0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->ventHeatAuto:I

    return p0
.end method

.method public isAutoEnable()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->autoEnable:Z

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->mSeatType:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->ventHeatAuto:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->level:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->autoEnable:Z

    return-void
.end method

.method public setAutoEnable(Z)V
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->autoEnable:Z

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->level:I

    return-void
.end method

.method public setSeatType(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->mSeatType:I

    return-void
.end method

.method public setVentHeatAuto(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->ventHeatAuto:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirSeatEvent{mSeatType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->mSeatType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ventHeatAuto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->ventHeatAuto:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->autoEnable:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    iget p2, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->mSeatType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget p2, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->ventHeatAuto:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget p2, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->level:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-boolean p0, p0, Lcom/yftech/yfmycar/view/bean/AirSeatEvent;->autoEnable:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
