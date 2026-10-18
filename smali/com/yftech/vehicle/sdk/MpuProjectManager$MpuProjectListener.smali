.class public abstract Lcom/yftech/vehicle/sdk/MpuProjectManager$MpuProjectListener;
.super Ljava/lang/Object;
.source "MpuProjectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/sdk/MpuProjectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MpuProjectListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanLogInfoChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onCanLogInfoChanged([B)V
    .locals 6
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26c4
    .end annotation

    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    const-string v3, "%02X "

    const/4 v4, 0x1

    .line 237
    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_0
    aget-byte v1, p1, v3

    shl-int/lit8 v1, v1, 0x18

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    const/16 v2, 0x11

    aget-byte v2, p1, v2

    shl-int/2addr v2, v3

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x12

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x13

    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v1

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager$MpuProjectListener;->onCanLogInfoChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public onPersonalMemoryInfoChanged(Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;)V
    .locals 0
    .annotation runtime Lcom/yftech/vehicle/internal/SignalReceiver;
        signalId = 0x26c5
    .end annotation

    return-void
.end method
