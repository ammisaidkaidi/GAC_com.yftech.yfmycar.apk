.class public Lcom/yftech/yfmycar/view/manager/CarConfigControl;
.super Ljava/lang/Object;
.source "CarConfigControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarConfigManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAtmosphereLampConfig()Z
    .locals 1

    const/4 v0, 0x1

    .line 156
    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v0

    return v0
.end method

.method public static getFragmentConfigVisible(I)I
    .locals 0
    .param p0    # I
        .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
        .end annotation
    .end param

    .line 245
    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public static getFragmentIndexConfig(I)Z
    .locals 2
    .param p0    # I
        .annotation build Lcom/yftech/yfmycar/view/bean/FragmentsIndex;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    return v1

    .line 238
    :pswitch_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isPlgmfunccfgPresent()Z

    move-result p0

    return p0

    .line 228
    :pswitch_1
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isRearviewMirrorAdjustmentPresent()Z

    move-result p0

    return p0

    .line 232
    :pswitch_2
    invoke-static {v1}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isSeatVisible(I)Z

    move-result p0

    return p0

    .line 230
    :pswitch_3
    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isSeatVisible(I)Z

    move-result p0

    return p0

    :pswitch_4
    const/4 p0, 0x3

    .line 225
    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getWindowConfig(I)Z

    move-result p0

    return p0

    :pswitch_5
    const/4 p0, 0x2

    .line 223
    invoke-static {p0}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getWindowConfig(I)Z

    move-result p0

    return p0

    .line 221
    :pswitch_6
    invoke-static {v1}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getWindowConfig(I)Z

    move-result p0

    return p0

    .line 219
    :pswitch_7
    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getWindowConfig(I)Z

    move-result p0

    return p0

    .line 236
    :pswitch_8
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isIalPresent()Z

    move-result p0

    return p0

    .line 234
    :pswitch_9
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isRoofControlPresent()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLightShowConfig()Z
    .locals 4

    .line 150
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isLightShowPresent()Z

    move-result v0

    const-string v1, "CarConfigManager"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLightShowPresent\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getWindowConfig()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;
    .locals 4

    .line 85
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getWindowControl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    move-result-object v0

    const-string v1, "CarConfigManager"

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowControl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWindowConfig(I)Z
    .locals 4

    .line 91
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getWindowControl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    move-result-object v0

    const-string v1, "CarConfigManager"

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWindowControl\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->value:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_4

    .line 94
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 96
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-eq v0, p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 99
    :cond_1
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-eq v0, p0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_AND_RIGHT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-ne v0, p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    if-ne p0, v2, :cond_9

    .line 102
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 104
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-eq v0, p0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_AND_RIGHT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-ne v0, p0, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    return v1

    .line 107
    :cond_7
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->NOT_PRESENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-eq v0, p0, :cond_8

    move v1, v2

    :cond_8
    return v1

    .line 110
    :cond_9
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-ne v0, p0, :cond_a

    move v1, v2

    :cond_a
    return v1
.end method

.method public static isAllWindowCloseShow()Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isAllWindowOpenShow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isRoofControlPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isAllWindowOpenShow()Z
    .locals 2

    .line 59
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getWindowConfig()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    move-result-object v0

    .line 60
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->LEFT_AND_RIGHT_FRONT_WINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->FOUR_DOOR_WINDOWS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isArLanguage()Z
    .locals 2

    .line 28
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCockpitConfigShow()Z
    .locals 5

    const/4 v0, 0x4

    .line 43
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 47
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 48
    invoke-static {v4}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "CarConfigManager"

    const-string v1, "isCockpitConfigShow : false"

    .line 52
    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :array_0
    .array-data 4
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public static isGACLogoPresent()Z
    .locals 4

    .line 36
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isGACLogoPresent()Z

    move-result v0

    const-string v1, "CarConfigManager"

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGACLogoPresent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isIalPresent()Z
    .locals 4

    .line 115
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isIalPresent()Z

    move-result v0

    const-string v1, "CarConfigManager"

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIalPresent\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isLeftHandDriveVehicles()Z
    .locals 2

    .line 166
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getLeftRightHandDriveVehicles()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LeftRightHandDriveVehicles;

    move-result-object v0

    .line 167
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LeftRightHandDriveVehicles;->LEFT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$LeftRightHandDriveVehicles;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOpenCloseControlConfigShow()Z
    .locals 4

    const/4 v0, 0x0

    .line 190
    invoke-static {v0}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 191
    invoke-static {v1}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    .line 192
    invoke-static {v1}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    .line 193
    invoke-static {v1}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->getFragmentIndexConfig(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string v1, "CarConfigManager"

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpenCloseControlConfigShow\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isPlgmfunccfgPresent()Z
    .locals 4

    .line 79
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isPlgmfunccfgPresent()Z

    move-result v0

    const-string v1, "CarConfigManager"

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPlgmfunccfgPresent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isRearviewMirrorAdjustmentPresent()Z
    .locals 4

    .line 122
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isRearviewMirrorAdjustmentPresent()Z

    move-result v0

    const-string v1, "CarConfigManager"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRearviewMirrorAdjustmentPresent\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isRightLeftSeatNameNeedReverse()Z
    .locals 4

    .line 178
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarConfigManager"

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRightLeftSeatNameNeedReverse: language:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "en"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 183
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result v0

    return v0
.end method

.method public static isRoofControlPresent()Z
    .locals 4

    .line 73
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isRoofControlPresent()Z

    move-result v0

    const-string v1, "CarConfigManager"

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoofControlPresent \uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isSeatVisible(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_4

    .line 129
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 131
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isSeatControlPresent()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getVentilationHeatConfig(I)I

    move-result p0

    if-lez p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 134
    :cond_2
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getVentilationHeatConfig(I)I

    move-result p0

    if-lez p0, :cond_3

    move v0, v1

    :cond_3
    return v0

    :cond_4
    if-ne p0, v1, :cond_9

    .line 137
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/CarConfigControl;->isLeftHandDriveVehicles()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 139
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getVentilationHeatConfig(I)I

    move-result p0

    if-lez p0, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 142
    :cond_6
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->isSeatControlPresent()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getInstance()Lcom/yftech/yfmycar/view/manager/SeatsManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/yfmycar/view/manager/SeatsManager;->getVentilationHeatConfig(I)I

    move-result p0

    if-lez p0, :cond_8

    :cond_7
    move v0, v1

    :cond_8
    return v0

    :cond_9
    return v0
.end method
