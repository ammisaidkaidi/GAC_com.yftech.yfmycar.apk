.class public Lcom/yftech/vehicle/sdk/MpuProjectManager;
.super Lcom/yftech/vehicle/internal/BaseApiManager;
.source "MpuProjectManager.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/project/IProject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/sdk/MpuProjectManager$MpuProjectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MpuProjectManager"

.field private static sMe:Lcom/yftech/vehicle/sdk/MpuProjectManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/yftech/vehicle/internal/BaseApiManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/yftech/vehicle/sdk/MpuProjectManager;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/MpuProjectManager;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/MpuProjectManager;->sMe:Lcom/yftech/vehicle/sdk/MpuProjectManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/MpuProjectManager;->sMe:Lcom/yftech/vehicle/sdk/MpuProjectManager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/MpuProjectManager;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/MpuProjectManager;->sMe:Lcom/yftech/vehicle/sdk/MpuProjectManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public registerListener(Lcom/yftech/vehicle/sdk/MpuProjectManager$MpuProjectListener;)V
    .locals 0

    .line 215
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->registerReceiver(Ljava/lang/Object;)V

    return-void
.end method

.method public requestTBoxECallState()Z
    .locals 2

    const/4 v0, 0x5

    .line 69
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const/16 v1, 0x26d3

    .line 75
    invoke-virtual {p0, v1, v0}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0

    nop

    :array_0
    .array-data 1
        -0x7et
        0x0t
        0x16t
        0x2t
        0x3t
    .end array-data
.end method

.method public setAvmApaCloseByMutleKey()Z
    .locals 4

    .line 95
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getCameraNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    move-result-object p0

    const-string v0, "ro.product.brand"

    const-string v1, ""

    .line 96
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MpuProjectManager"

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAvmApaCloseByMutleKey: cameraNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " brand:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v1, Lcom/yftech/vehicle/sdk/MpuProjectManager$1;->$SwitchMap$com$yftech$vehicle$internal$adapter$ICarConfig$CameraNumber:[I

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    const-string p0, "MpuProjectManager"

    const-string v0, "setAvmApaCloseByMutleKey: config is not avm"

    .line 172
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_0
    return v1

    :pswitch_1
    const-string p0, "A60_ZD"

    .line 137
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "T60"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->get()Lcom/yftech/vehicle/sdk/MpuAvmManager;

    move-result-object p0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->OFF:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->setAvmDisplayStateByMpuReq(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;)Z

    .line 152
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSvmFunctionCmd(Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;)Z

    const-string p0, "A58_G"

    .line 154
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "T58_G"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 155
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->perform360SvmButtonClick()Z

    .line 160
    :cond_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getRecorderDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v0, :cond_9

    .line 161
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setPAAMode(Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;)Z

    .line 162
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->performAPAButtonClick()Z

    goto/16 :goto_2

    .line 138
    :cond_2
    :goto_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getRecorderDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v0, :cond_3

    .line 139
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSvmFunctionCmd(Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;)Z

    goto/16 :goto_2

    :cond_3
    const-string p0, "MpuProjectManager"

    const-string v0, "setAvmApaCloseByMutleKey: getRecorderDisplayState is not display!"

    .line 141
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 108
    :pswitch_2
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getRecorderDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v2, :cond_8

    .line 109
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v2, Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;->APA:Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;

    invoke-virtual {p0, v2}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setPAAMode(Lcom/yftech/vehicle/internal/adapter/ICarDevice$PAAMode;)Z

    .line 110
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->performAPAButtonClick()Z

    :pswitch_3
    const-string p0, "A60_ZD"

    .line 117
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "T60"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    .line 125
    :cond_4
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getRecorderDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v0, :cond_5

    .line 126
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSvmFunctionCmd(Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;)Z

    .line 127
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->perform360SvmButtonClick()Z

    goto :goto_2

    :cond_5
    const-string p0, "MpuProjectManager"

    const-string v0, "setAvmApaCloseByMutleKey: getRecorderDisplayState is not display!"

    .line 129
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 118
    :cond_6
    :goto_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->getRecorderDisplayState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v0, :cond_7

    .line 119
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->get()Lcom/yftech/vehicle/sdk/CarDeviceManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;->REQ_CANCEL:Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/CarDeviceManager;->setSvmFunctionCmd(Lcom/yftech/vehicle/internal/adapter/ICarDevice$SvmFunctionCmd;)Z

    goto :goto_2

    :cond_7
    const-string p0, "MpuProjectManager"

    const-string v0, "setAvmApaCloseByMutleKey: getRecorderDisplayState is not display!"

    .line 121
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    const-string p0, "MpuProjectManager"

    const-string v0, "setAvmApaCloseByMutleKey: getRecorderDisplayState is not display!"

    .line 112
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 101
    :pswitch_4
    invoke-static {}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->get()Lcom/yftech/vehicle/sdk/MpuAvmManager;

    move-result-object p0

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;->OFF:Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;

    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/sdk/MpuAvmManager;->setAvmDisplayStateByMpuReq(Lcom/yftech/vehicle/internal/adapter/IMpuAvm$AvmDisplayState;)Z

    :cond_9
    :goto_2
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCarFactorySet()Z
    .locals 3

    const/4 v0, 0x5

    .line 82
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v1, v0, v1

    const/16 v1, 0x26d3

    .line 86
    invoke-virtual {p0, v1, v0}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setCarSeartMemoryInfo(Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;)Z
    .locals 1

    .line 50
    invoke-virtual {p1, p1}, Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;->parseByte(Lcom/yftech/vehicle/internal/project/IProject$CarSeartMemoryInfo;)[B

    move-result-object p1

    const/16 v0, 0x26d3

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setMuteForEcall(Z)Z
    .locals 3

    const/4 v0, 0x5

    .line 57
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v1, v0, v1

    const/4 v1, 0x2

    aput-byte v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    const/16 p1, 0x26d3

    .line 62
    invoke-virtual {p0, p1, v0}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setPersonalMemoryInfo(Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;)Z
    .locals 1

    .line 43
    invoke-virtual {p1, p1}, Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;->parseByte(Lcom/yftech/vehicle/internal/project/IProject$PersonalMemoryInfo;)[B

    move-result-object p1

    const/16 v0, 0x26d3

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setSystemCmd(Ljava/lang/String;)Z
    .locals 1

    .line 208
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const/16 v0, 0x26c3

    invoke-virtual {p0, v0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public setTouchInfo2Bsv(III)Z
    .locals 3

    const/16 v0, 0x8

    .line 188
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x6

    aput-byte p1, v0, p2

    int-to-byte p1, p3

    const/4 p2, 0x7

    aput-byte p1, v0, p2

    const/16 p1, 0x26d3

    .line 199
    invoke-virtual {p0, p1, v0}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method

.method public unregisterListener(Lcom/yftech/vehicle/sdk/MpuProjectManager$MpuProjectListener;)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/MpuProjectManager;->unregisterReceiver(Ljava/lang/Object;)V

    return-void
.end method
