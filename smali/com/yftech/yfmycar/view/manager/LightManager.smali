.class public Lcom/yftech/yfmycar/view/manager/LightManager;
.super Ljava/lang/Object;
.source "LightManager.java"


# static fields
.field private static volatile sInstance:Lcom/yftech/yfmycar/view/manager/LightManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private event:Lcom/yftech/yfmycar/view/bean/CarLightEvent;

.field private listener:Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SeatsManager"

    .line 18
    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/LightManager;->TAG:Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/yftech/yfmycar/view/bean/CarLightEvent;

    invoke-direct {v0}, Lcom/yftech/yfmycar/view/bean/CarLightEvent;-><init>()V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/LightManager;->event:Lcom/yftech/yfmycar/view/bean/CarLightEvent;

    .line 161
    new-instance v0, Lcom/yftech/yfmycar/view/manager/LightManager$1;

    invoke-direct {v0, p0}, Lcom/yftech/yfmycar/view/manager/LightManager$1;-><init>(Lcom/yftech/yfmycar/view/manager/LightManager;)V

    iput-object v0, p0, Lcom/yftech/yfmycar/view/manager/LightManager;->listener:Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/yfmycar/view/manager/LightManager;)Lcom/yftech/yfmycar/view/bean/CarLightEvent;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/LightManager;->event:Lcom/yftech/yfmycar/view/bean/CarLightEvent;

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;
    .locals 2

    .line 22
    sget-object v0, Lcom/yftech/yfmycar/view/manager/LightManager;->sInstance:Lcom/yftech/yfmycar/view/manager/LightManager;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/yftech/yfmycar/view/manager/SeatsManager;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/yftech/yfmycar/view/manager/LightManager;->sInstance:Lcom/yftech/yfmycar/view/manager/LightManager;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/yftech/yfmycar/view/manager/LightManager;

    invoke-direct {v1}, Lcom/yftech/yfmycar/view/manager/LightManager;-><init>()V

    sput-object v1, Lcom/yftech/yfmycar/view/manager/LightManager;->sInstance:Lcom/yftech/yfmycar/view/manager/LightManager;

    .line 27
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/yfmycar/view/manager/LightManager;->sInstance:Lcom/yftech/yfmycar/view/manager/LightManager;

    return-object v0
.end method


# virtual methods
.method public getAtmosphereLampBrightness()I
    .locals 3

    .line 60
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getAtmosphereLampBrightness()I

    move-result p0

    const-string v0, "SeatsManager"

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAtmosphereLampBrightness\u83b7\u53d6\u6c1b\u56f4\u706f\u4eae\u5ea6\u72b6\u6001 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public getAtmosphereLampColor()I
    .locals 3

    .line 74
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getAtmosphereLampColor()I

    move-result p0

    const-string v0, "SeatsManager"

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAtmosphereLampColor\u83b7\u53d6\u6c1b\u56f4\u706f\u81ea\u5b9a\u4e49\u989c\u8272\u72b6\u6001\u503c :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public getAtmosphereLampMusicModeEnableState()Z
    .locals 3

    .line 88
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getAtmosphereLampMusicModeEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    const-string v0, "SeatsManager"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAtmosphereLampMusicModeEnableState\u6c1b\u56f4\u706f:\u97f3\u4e50\u5f8b\u52a8\u6a21\u5f0f\u5f00\u5173\u72b6\u6001  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAtmosphereLampWorkMode()Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;
    .locals 3

    .line 103
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getAtmosphereLampWorkMode()Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    move-result-object p0

    const-string v0, "SeatsManager"

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAtmosphereLampWorkMode\u83b7\u53d6\u6c1b\u56f4\u706f:\u5de5\u4f5c\u6a21\u5f0f[\u8ddf\u968f\u9a7e\u9a76\u6a21\u5f0f\u5f00\u5173\u72b6\u6001] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getHeadLightDelayEnableState()Z
    .locals 1

    .line 124
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getHeadLightDelayEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    .line 125
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIHBCEnableState()Z
    .locals 1

    .line 130
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->getIHBCEnableState()Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    move-result-object p0

    .line 131
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;->ENABLED:Lcom/yftech/vehicle/internal/adapter/IBaseApi$EnableState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public init()V
    .locals 1

    .line 42
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/LightManager;->listener:Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->registerListener(Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;)V

    return-void
.end method

.method public isArLanguage()Z
    .locals 1

    .line 33
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ar"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBrakeLampEnabled()Z
    .locals 0

    .line 136
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->isBrakeLampEnabled()Z

    move-result p0

    return p0
.end method

.method public isILBCEnabled()Z
    .locals 0

    .line 142
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->isILBCEnabled()Z

    move-result p0

    return p0
.end method

.method public isLowLightEnabled()Z
    .locals 0

    .line 147
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->isLowLightEnabled()Z

    move-result p0

    return p0
.end method

.method public isSmallLightEnabled()Z
    .locals 0

    .line 152
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->isSmallLightEnabled()Z

    move-result p0

    return p0
.end method

.method public isTopLightEnabled()Z
    .locals 0

    .line 157
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->isTopLightEnabled()Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampBrightness(I)Z
    .locals 0

    .line 67
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setAtmosphereLampBrightness(I)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampColor(I)Z
    .locals 2

    const-string p0, "SeatsManager"

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAtmosphereLampColor\u8bbe\u7f6e\u6c1b\u56f4\u706f\u81ea\u5b9a\u4e49\u989c\u8272\u72b6\u6001\u503c :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setAtmosphereLampColor(I)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampDriveModeEnabled(Z)Z
    .locals 2

    const-string p0, "SeatsManager"

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAtmosphereLampDriveModeEnabled,\u8bbe\u7f6e\u8ddf\u968f\u9a7e\u9a76\u6a21\u5f0f\u5f00\u5173:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COLOR_CHOOSE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setAtmosphereLampWorkMode(Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampMode(Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;)Z
    .locals 2

    const-string p0, "SeatsManager"

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAtmosphereLampMode,\u8bbe\u7f6e\u6c1b\u56f4\u706f\u6a21\u5f0f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setAtmosphereLampWorkMode(Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampMusicModeEnabled(Z)Z
    .locals 2

    const-string p0, "SeatsManager"

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAtmosphereLampMusicModeEnabled\u6c1b\u56f4\u706f:\u8bbe\u7f6e\u97f3\u4e50\u5f8b\u52a8\u6a21\u5f0f\u5f00\u5173  :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setAtmosphereLampMusicModeEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setAtmosphereLampStateEnabled(Z)Z
    .locals 0

    .line 53
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/vehicle/sdk/CarLightManager;->setAtmosphereLampStateEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public uninit()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yftech/yfmycar/view/manager/LightManager;->listener:Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarLightManager;->get()Lcom/yftech/vehicle/sdk/CarLightManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/yfmycar/view/manager/LightManager;->listener:Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarLightManager;->unregisterListener(Lcom/yftech/vehicle/sdk/CarLightManager$CarLightListener;)V

    :cond_0
    return-void
.end method
