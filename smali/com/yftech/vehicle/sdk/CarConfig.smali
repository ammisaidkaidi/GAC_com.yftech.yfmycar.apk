.class public Lcom/yftech/vehicle/sdk/CarConfig;
.super Ljava/lang/Object;
.source "CarConfig.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/ICarConfig;


# static fields
.field private static final TAG:Ljava/lang/String; = "CarConfig"

.field private static sMe:Lcom/yftech/vehicle/sdk/CarConfig;


# instance fields
.field private mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

.field private mData:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2037
    new-instance v0, Lcom/yftech/vehicle/sdk/CarConfig$1;

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/sdk/CarConfig$1;-><init>(Lcom/yftech/vehicle/sdk/CarConfig;)V

    iput-object v0, p0, Lcom/yftech/vehicle/sdk/CarConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    return-void
.end method

.method private configData()[B
    .locals 3

    .line 2004
    iget-object v0, p0, Lcom/yftech/vehicle/sdk/CarConfig;->mData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/vehicle/sdk/CarConfig;->mData:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 2005
    :cond_0
    iget-object v0, p0, Lcom/yftech/vehicle/sdk/CarConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    const/16 v1, 0x270b

    invoke-virtual {v0, v1}, Lcom/yftech/vehicle/internal/BaseApiManager;->getSignalDataValue(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/vehicle/sdk/CarConfig;->mData:[B

    const-string v0, "CarConfig"

    .line 2006
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configData() mData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/CarConfig;->mData:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/yftech/vehicle/sdk/CarConfig;->mData:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, "[]"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    :cond_2
    iget-object p0, p0, Lcom/yftech/vehicle/sdk/CarConfig;->mData:[B

    return-object p0
.end method

.method private configValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I
    .locals 2

    .line 2012
    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarConfig;->configData()[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2013
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->byteIndex:B

    if-ltz v0, :cond_0

    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->byteIndex:B

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 2016
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->byteIndex:B

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    .line 2017
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->bitSize:B

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    .line 2018
    iget-byte v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->startBit:B

    shl-int/2addr v0, v1

    and-int/2addr p0, v0

    .line 2019
    iget-byte p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->startBit:B

    shr-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static declared-synchronized get()Lcom/yftech/vehicle/sdk/CarConfig;
    .locals 2

    const-class v0, Lcom/yftech/vehicle/sdk/CarConfig;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/yftech/vehicle/sdk/CarConfig;->sMe:Lcom/yftech/vehicle/sdk/CarConfig;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yftech/vehicle/sdk/CarConfig;->sMe:Lcom/yftech/vehicle/sdk/CarConfig;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/yftech/vehicle/sdk/CarConfig;

    invoke-direct {v1}, Lcom/yftech/vehicle/sdk/CarConfig;-><init>()V

    sput-object v1, Lcom/yftech/vehicle/sdk/CarConfig;->sMe:Lcom/yftech/vehicle/sdk/CarConfig;
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

.method public static getAirConditionType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditionType;
    .locals 1

    .line 539
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AIR_CONDITION_TYPE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditionType;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditionType;

    move-result-object v0

    return-object v0
.end method

.method public static getAirConditioningZones()Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditioningZones;
    .locals 1

    .line 515
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AIR_CONDITIONING_ZONES:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditioningZones;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$AirConditioningZones;

    move-result-object v0

    return-object v0
.end method

.method public static getApaAlarmDelayedTime()I
    .locals 1

    .line 1313
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->APA_ALARM_DELAYED_TIME:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    return v0
.end method

.method public static getAvdc()Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;
    .locals 1

    .line 1377
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AVDC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$Avdc;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;
    .locals 1

    .line 547
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CAMERA_NUMBER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigData()[B
    .locals 1

    .line 2029
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->get()Lcom/yftech/vehicle/sdk/CarConfig;

    move-result-object v0

    invoke-direct {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->configData()[B

    move-result-object v0

    return-object v0
.end method

.method public static getConfigPm25()Lcom/yftech/vehicle/internal/adapter/ICarConfig$ConfigPm25;
    .locals 1

    .line 531
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CONFIG_PM2_5:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$ConfigPm25;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$ConfigPm25;

    move-result-object v0

    return-object v0
.end method

.method private static getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I
    .locals 1

    .line 2025
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->get()Lcom/yftech/vehicle/sdk/CarConfig;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/sdk/CarConfig;->configValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result p0

    return p0
.end method

.method public static getDistractedAlarmIntervalTime()I
    .locals 1

    .line 1299
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DISTRACTED_ALARM_INTERVAL_TIME:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    return v0
.end method

.method public static getDmsConnectionMode()Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;
    .locals 1

    .line 281
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DMS_CONNECTION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$DmsConnectionMode;

    move-result-object v0

    return-object v0
.end method

.method public static getDriveType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriveType;
    .locals 1

    .line 60
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVE_TYPE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriveType;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriveType;

    move-result-object v0

    return-object v0
.end method

.method public static getDriverSeatControlPresentFunction()Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;
    .locals 1

    .line 1746
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVER_SEAT_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    move-result-object v0

    return-object v0
.end method

.method public static getFeezeMode()Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;
    .locals 1

    .line 1873
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FEEZE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$FeezeMode;

    move-result-object v0

    return-object v0
.end method

.method public static getGearboxType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;
    .locals 1

    .line 68
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->GEARBOX_TYPE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$GearboxType;

    move-result-object v0

    return-object v0
.end method

.method public static getHeatingAndVentilationFl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;
    .locals 1

    .line 1650
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HEATING_AND_VENTILATION_FL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFl;

    move-result-object v0

    return-object v0
.end method

.method public static getHeatingAndVentilationFr()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;
    .locals 1

    .line 1658
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HEATING_AND_VENTILATION_FR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationFr;

    move-result-object v0

    return-object v0
.end method

.method public static getHeatingAndVentilationRl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRl;
    .locals 1

    .line 1666
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HEATING_AND_VENTILATION_RL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRl;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRl;

    move-result-object v0

    return-object v0
.end method

.method public static getHeatingAndVentilationRr()Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRr;
    .locals 1

    .line 1674
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HEATING_AND_VENTILATION_RR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRr;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$HeatingAndVentilationRr;

    move-result-object v0

    return-object v0
.end method

.method public static getLaneChangeAssist()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LaneChangeAssist;
    .locals 1

    .line 1180
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LANE_CHANGE_ASSIST:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LaneChangeAssist;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$LaneChangeAssist;

    move-result-object v0

    return-object v0
.end method

.method public static getLeftRightHandDriveVehicles()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LeftRightHandDriveVehicles;
    .locals 1

    .line 1993
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LEFT_RIGHT_HAND_DRIVE_VEHICLES:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LeftRightHandDriveVehicles;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$LeftRightHandDriveVehicles;

    move-result-object v0

    return-object v0
.end method

.method public static getLimitSecondRowSeatsWelcomeFunction()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LimitSecondRowSeatsWelcomeFunction;
    .locals 1

    .line 1690
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LIMIT_SECOND_ROW_SEATS_WELCOME_FUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LimitSecondRowSeatsWelcomeFunction;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$LimitSecondRowSeatsWelcomeFunction;

    move-result-object v0

    return-object v0
.end method

.method public static getLoudspeakerNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;
    .locals 1

    .line 317
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LOUDSPEAKER_NUMBER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerNumber;

    move-result-object v0

    return-object v0
.end method

.method public static getLoudspeakerSupplier()Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;
    .locals 1

    .line 325
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LOUDSPEAKER_SUPPLIER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$LoudspeakerSupplier;

    move-result-object v0

    return-object v0
.end method

.method public static getNapMode()Lcom/yftech/vehicle/internal/adapter/ICarConfig$NapMode;
    .locals 1

    .line 926
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->NAP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$NapMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$NapMode;

    move-result-object v0

    return-object v0
.end method

.method public static getPromptType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;
    .locals 1

    .line 983
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->PROMPT_TYPE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$PromptType;

    move-result-object v0

    return-object v0
.end method

.method public static getRadarNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;
    .locals 1

    .line 555
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->RADAR_NUMBER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    move-result-object v0

    return-object v0
.end method

.method public static getRearDefrostAndRearviewMirrorHeating()Lcom/yftech/vehicle/internal/adapter/ICarConfig$RearDefrostAndRearviewMirrorHeating;
    .locals 1

    .line 523
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->REAR_DEFROST_AND_REARVIEW_MIRROR_HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RearDefrostAndRearviewMirrorHeating;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$RearDefrostAndRearviewMirrorHeating;

    move-result-object v0

    return-object v0
.end method

.method public static getReserced()I
    .locals 1

    .line 1642
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->RESERCED:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    return v0
.end method

.method public static getSeatAdjustmentPresentFunction()Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;
    .locals 1

    .line 1739
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->PASSENGER_SEAT_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$DriverSeatControl;

    move-result-object v0

    return-object v0
.end method

.method public static getSeatLayout()Lcom/yftech/vehicle/internal/adapter/ICarConfig$SeatLayout;
    .locals 1

    .line 607
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SEAT_LAYOUT_NEW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SeatLayout;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$SeatLayout;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondRowSeatAdjustmentPresent()Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsControl;
    .locals 1

    .line 1711
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SECOND_ROW_SEAT_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsControl;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsControl;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondRowSeatsWelcome()Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;
    .locals 1

    .line 1682
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SECOND_ROW_SEATS_WELCOME:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$SecondRowSeatsWelcome;

    move-result-object v0

    return-object v0
.end method

.method public static getStandardAndHdCameraConfiguration()Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;
    .locals 1

    .line 563
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->STANDARD_AND_HD_CAMERA_CONFIGURATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$StandardAndHdCameraConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static getTboxConnectionMode()Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;
    .locals 1

    .line 273
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->TBOX_CONNECTION_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$TboxConnectionMode;

    move-result-object v0

    return-object v0
.end method

.method public static getTiktok()Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;
    .locals 1

    .line 643
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->TIKTOK:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$Tiktok;

    move-result-object v0

    return-object v0
.end method

.method public static getTiredAlarmIntervalTime()I
    .locals 1

    .line 1306
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->TIRED_ALARM_INTERVAL_TIME:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    return v0
.end method

.method public static getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;
    .locals 1

    .line 76
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VEHICLE_PLATFORM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object v0

    return-object v0
.end method

.method public static getVehicleType()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehicleType;
    .locals 1

    .line 52
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VEHICLE_TYPE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehicleType;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehicleType;

    move-result-object v0

    return-object v0
.end method

.method public static getVrControl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;
    .locals 1

    .line 1539
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControl;

    move-result-object v0

    return-object v0
.end method

.method public static getVrControlCarwindow()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;
    .locals 1

    .line 1413
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_CARWINDOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlCarwindow;

    move-result-object v0

    return-object v0
.end method

.method public static getVrControlHvac()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;
    .locals 1

    .line 1472
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_HVAC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlHvac;

    move-result-object v0

    return-object v0
.end method

.method public static getVrControlIal()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlIal;
    .locals 1

    .line 1421
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_IAL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlIal;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlIal;

    move-result-object v0

    return-object v0
.end method

.method public static getVrControlParking()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;
    .locals 1

    .line 1589
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_PARKING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlParking;

    move-result-object v0

    return-object v0
.end method

.method public static getVrControlRoof()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlRoof;
    .locals 1

    .line 1501
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_ROOF:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlRoof;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlRoof;

    move-result-object v0

    return-object v0
.end method

.method public static getVrControlRoofposition()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlRoofposition;
    .locals 1

    .line 1531
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_ROOFPOSITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlRoofposition;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlRoofposition;

    move-result-object v0

    return-object v0
.end method

.method public static getVrControlWindowposition()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;
    .locals 1

    .line 1523
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_WINDOWPOSITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWindowposition;

    move-result-object v0

    return-object v0
.end method

.method public static getVrControlWiperAndCleaning()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;
    .locals 1

    .line 1443
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_WIPER_AND_CLEANING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$VrControlWiperAndCleaning;

    move-result-object v0

    return-object v0
.end method

.method public static getWalAndApu()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;
    .locals 1

    .line 749
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->WAL_AND_APU:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$WalAndApu;

    move-result-object v0

    return-object v0
.end method

.method public static getWindowControl()Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;
    .locals 1

    .line 890
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->WINDOW_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    invoke-static {v0}, Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;->valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarConfig$WindowControl;

    move-result-object v0

    return-object v0
.end method

.method public static isACanPresent()Z
    .locals 1

    .line 83
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->A_CAN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAccessorySmartScreenPresent()Z
    .locals 1

    .line 727
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ACCESSORY_SMART_SCREEN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAdaptiveHighBeamPresent()Z
    .locals 1

    .line 657
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ADAPTIVE_HIGH_BEAM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAirConditioningBlindExercisePresent()Z
    .locals 1

    .line 1802
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AIR_CONDITIONING_BLIND_EXERCISE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAirConditioningQuickStartPresent()Z
    .locals 1

    .line 1809
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AIR_CONDITIONING_QUICK_START:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAlertModePresent()Z
    .locals 1

    .line 1208
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ALERT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAmbienceLightsComninationPresent()Z
    .locals 1

    .line 975
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AMBIENCE_LIGHTS_COMNINATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAmbienceLightsControlPresent()Z
    .locals 1

    .line 840
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AMBIENCE_LIGHTS_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAncPresent()Z
    .locals 1

    .line 1631
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ANC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAnionPresent()Z
    .locals 1

    .line 500
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ANION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAntennaPresent()Z
    .locals 1

    .line 104
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ANTENNA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isApaVoicePromptButtonPresent()Z
    .locals 1

    .line 1257
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->APA_VOICE_PROMPT_BUTTON:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isArPresent()Z
    .locals 1

    .line 635
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoDeforstPresent()Z
    .locals 1

    .line 472
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AUTO_DEFORST:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoEmergencyBrakingBrakingPresent()Z
    .locals 1

    .line 1095
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AUTO_EMERGENCY_BRAKING_BRAKING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoModeOfFrsAndRecControlPresent()Z
    .locals 1

    .line 451
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AUTO_MODE_OF_FRS_AND_REC_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoUnlockingPresent()Z
    .locals 1

    .line 770
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AUTO_UNLOCKING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoWiperPresent()Z
    .locals 1

    .line 819
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AUTO_WIPER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAutoholdPresent()Z
    .locals 1

    .line 1610
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AUTOHOLD:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvasPresent()Z
    .locals 1

    .line 181
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AVAS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvasSoundPresent()Z
    .locals 1

    .line 339
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AVAS_SOUND:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvasSwitchPresent()Z
    .locals 1

    .line 346
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->AVAS_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBCallSwitchPresent()Z
    .locals 1

    .line 288
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->B_CALL_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBCanPresent()Z
    .locals 1

    .line 90
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->B_CAN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBackRowDisplayPresent()Z
    .locals 1

    .line 614
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->BACK_ROW_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBcmPresent()Z
    .locals 1

    .line 118
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->BCM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isBsdPresent()Z
    .locals 1

    .line 1116
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->BSD:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCallBackPresent()Z
    .locals 1

    .line 302
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CALL_BACK:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCeilingScreenPresent()Z
    .locals 1

    .line 650
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CEILING_SCREEN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isChargingInsulationPresent()Z
    .locals 1

    .line 374
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CHARGING_INSULATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCloseWindowWhileLockPresent()Z
    .locals 1

    .line 671
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLOSE_WINDOW_WHILE_LOCK:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterBackLightPresent()Z
    .locals 1

    .line 1067
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_BACK_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterDefaultSettingPresent()Z
    .locals 1

    .line 1053
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_DEFAULT_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterDistanceSettingPresent()Z
    .locals 1

    .line 1880
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_DISTANCE_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterFuelConsumptionUnitPresent()Z
    .locals 1

    .line 1060
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_FUEL_CONSUMPTION_UNIT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterLanguageSettingPresent()Z
    .locals 1

    .line 1011
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_LANGUAGE_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterMileageResetPresent()Z
    .locals 1

    .line 1018
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_MILEAGE_RESET:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterPressureUnitPresent()Z
    .locals 1

    .line 1039
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_PRESSURE_UNIT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterSpeedUnitPresent()Z
    .locals 1

    .line 1025
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_SPEED_UNIT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterTemperatureUnitPresent()Z
    .locals 1

    .line 1032
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_TEMPERATURE_UNIT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isClusterVolumeSettingPresent()Z
    .locals 1

    .line 1004
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CLUSTER_VOLUME_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isColdAndWarmCupHolderPresent()Z
    .locals 1

    .line 1603
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->COLD_AND_WARM_CUP_HOLDER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isComfortCurvePresent()Z
    .locals 1

    .line 458
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->COMFORT_CURVE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isComfortableStopPresent()Z
    .locals 1

    .line 1978
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->COMFORTABLE_STOP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isControlDaytimeRunnigLampPresent()Z
    .locals 1

    .line 591
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CONTROL_DAYTIME_RUNNIG_LAMP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isControlHighBeamAssistantPresent()Z
    .locals 1

    .line 664
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CONTROL_HIGH_BEAM_ASSISTANT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isControlSmartWelcomeLightPresent()Z
    .locals 1

    .line 685
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CONTROL_SMART_WELCOME_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCreepModePresent()Z
    .locals 1

    .line 416
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->CREEP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDomeLightInDoorGearPositionPresent()Z
    .locals 1

    .line 678
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DOME_LIGHT_IN_DOOR_GEAR_POSITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDoorOpenWarningPresent()Z
    .locals 1

    .line 1130
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DOOR_OPEN_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDriveModeMemorySwitchPresent()Z
    .locals 1

    .line 1348
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVE_MODE_MEMORY_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDriverAssistanceWarningPresent()Z
    .locals 1

    .line 1292
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVER_ASSISTANCE_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDriverDirectVoiceWakeUpPresent()Z
    .locals 1

    .line 1596
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVER_DIRECT_VOICE_WAKE_UP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDriverEasyEntryAndExitFunctionPresent()Z
    .locals 1

    .line 854
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVER_EASY_ENTRY_AND_EXIT_FUNCTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDriverModePresent()Z
    .locals 1

    .line 1341
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDriverSeatControlPresent()Z
    .locals 1

    .line 1732
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVER_SEAT_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDriverStateOfAlertPresent()Z
    .locals 1

    .line 1187
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVER_STATE_OF_ALERT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDrivingModePresent()Z
    .locals 1

    .line 444
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDrivingRecorderPresent()Z
    .locals 1

    .line 1158
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DRIVING_RECORDER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDvrPresent()Z
    .locals 1

    .line 628
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->DVR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isECallSwitchPresent()Z
    .locals 1

    .line 295
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->E_CALL_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEasyOpenTailgatePresent()Z
    .locals 1

    .line 706
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EASY_OPEN_TAILGATE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEboosterModePresent()Z
    .locals 1

    .line 1334
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EBOOSTER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEcoPlusModePresent()Z
    .locals 1

    .line 402
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ECO_PLUS_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isElectroDischargePresent()Z
    .locals 1

    .line 395
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ELECTRO_DISCHARGE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmergencyLaneKeepingAssistPresent()Z
    .locals 1

    .line 1215
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EMERGENCY_LANE_KEEPING_ASSIST:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmergencySteeringModePresent()Z
    .locals 1

    .line 1194
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EMERGENCY_STEERING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnergyConsumptionAppPresent()Z
    .locals 1

    .line 1957
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ENERGY_CONSUMPTION_APP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnergyConsumptionPresent()Z
    .locals 1

    .line 423
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ENERGY_CONSUMPTION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnergyFlowDisplayPresent()Z
    .locals 1

    .line 1894
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ENERGY_FLOW_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnergyFlowModePresent()Z
    .locals 1

    .line 1887
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ENERGY_FLOW_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnergyRecoveryModePresent()Z
    .locals 1

    .line 388
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ENERGY_RECOVERY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEnergyRecoveryPresent()Z
    .locals 1

    .line 1384
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ENERGY_RECOVERY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEngineWaveSwitchPresent()Z
    .locals 1

    .line 1355
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ENGINE_WAVE_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEpedalModePresent()Z
    .locals 1

    .line 409
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EPEDAL_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEspOffSwitchPresent()Z
    .locals 1

    .line 1320
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ESP_OFF_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEtcSettingPresent()Z
    .locals 1

    .line 805
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ETC_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEvSwitchDisplayPresent()Z
    .locals 1

    .line 1901
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EV_SWITCH_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEvaporatorSelfDryingPresent()Z
    .locals 1

    .line 1795
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EVAPORATOR_SELF_DRYING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEventRecordFunctionSwitchPresent()Z
    .locals 1

    .line 1165
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EVENT_RECORD_FUNCTION_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExtAmplifiersPresent()Z
    .locals 1

    .line 332
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EXT_AMPLIFIERS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExteriorRearViewMirrorAutoFoldingAndUnfoldingPresent()Z
    .locals 1

    .line 777
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EXTERIOR_REAR_VIEW_MIRROR_AUTO_FOLDING_AND_UNFOLDING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExteriorRearviewMirrorDipPresent()Z
    .locals 1

    .line 784
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EXTERIOR_REARVIEW_MIRROR_DIP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isExternalSvmPresent()Z
    .locals 1

    .line 251
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->EXTERNAL_SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFLSeatMessagePresent()Z
    .locals 1

    .line 1760
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FL_SEAT_MASSAGE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFRSeatMessagePresent()Z
    .locals 1

    .line 1767
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FR_SEAT_MASSAGE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFanSpeedOfAutoModePresent()Z
    .locals 1

    .line 479
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FAN_SPEED_OF_AUTO_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFapaPresent()Z
    .locals 1

    .line 237
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFcpPresent()Z
    .locals 1

    .line 153
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FCP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFlSpeakerPresent()Z
    .locals 1

    .line 202
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFollowMusicModePresent()Z
    .locals 1

    .line 699
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FOLLOW_MUSIC_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFollowTrackingLinePresent()Z
    .locals 1

    .line 570
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FOLLOW_TRACKING_LINE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isForwardCollisionWarningDistancePresent()Z
    .locals 1

    .line 1264
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FORWARD_COLLISION_WARNING_DISTANCE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrSpeakerPresent()Z
    .locals 1

    .line 209
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFragrancePresent()Z
    .locals 1

    .line 493
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FRAGRANCE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontCollisionWarningPresent()Z
    .locals 1

    .line 1102
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FRONT_COLLISION_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontCrossTrafficAlertModePresent()Z
    .locals 1

    .line 1250
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FRONT_CROSS_TRAFFIC_ALERT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontCrossTrafficAlertPresent()Z
    .locals 1

    .line 1243
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FRONT_CROSS_TRAFFIC_ALERT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isFrontDistanceDisplayPresent()Z
    .locals 1

    .line 1858
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->FRONT_DISTANCE_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGACLogoPresent()Z
    .locals 1

    .line 265
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->GAC_LOGO:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGpsPresent()Z
    .locals 1

    .line 97
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->GPS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGuidanceOfStartingVhiclePresent()Z
    .locals 1

    .line 1985
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->GUIDANCE_OF_STARTING_VHICLE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGwmPresent()Z
    .locals 1

    .line 146
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->GWM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHdcSwitchPresent()Z
    .locals 1

    .line 1327
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HDC_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHeadAcousticsPresent()Z
    .locals 1

    .line 621
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HEAD_ACOUSTICS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHealthChargeSettingPresent()Z
    .locals 1

    .line 437
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HEALTH_CHARGE_SETTING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHeatPumpAirConditioningPresent()Z
    .locals 1

    .line 507
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HEAT_PUMP_AIR_CONDITIONING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHiddenDoorHandlePresent()Z
    .locals 1

    .line 360
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HIDDEN_DOOR_HANDLE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHighWayAssistPresent()Z
    .locals 1

    .line 990
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HIGH_WAY_ASSIST:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHospitalityLampSignalsPresent()Z
    .locals 1

    .line 1823
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HOSPITALITY_LAMP_SIGNALS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHudSetPresent()Z
    .locals 1

    .line 244
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HUD_SET:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isHvacPresent()Z
    .locals 1

    .line 125
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->HVAC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIMRControlPresent()Z
    .locals 1

    .line 1123
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->IMR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIalPresent()Z
    .locals 1

    .line 847
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->IAL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIccPresent()Z
    .locals 1

    .line 1624
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ICC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIcmPresent()Z
    .locals 1

    .line 132
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ICM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIfcCruisemodePresent()Z
    .locals 1

    .line 1109
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->IFC_CRUISEMODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIndicatedLaneChangePresent()Z
    .locals 1

    .line 1271
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->INDICATED_LANE_CHANGE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIndicatedLaneChangingPresent()Z
    .locals 1

    .line 1851
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->INDICATED_LANE_CHANGING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIntelligentCollisionAvoidancePresent()Z
    .locals 1

    .line 1865
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->INTELLIGENT_COLLISION_AVOIDANCE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIntelligentInsulationNotificationPresent()Z
    .locals 1

    .line 381
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->INTELLIGENT_INSULATION_NOTIFICATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isIntelligentSpeedLimitControlPresent()Z
    .locals 1

    .line 1285
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->INTELLIGENT_SPEED_LIMIT_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isKeyIdentificationPresent()Z
    .locals 1

    .line 692
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->KEY_IDENTIFICATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaneAssistPresent()Z
    .locals 1

    .line 1088
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LANE_ASSIST:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaneAuxiliarySwitchPresent()Z
    .locals 1

    .line 1081
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LANE_AUXILIARY_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaneChangeDriverConfirmationPresent()Z
    .locals 1

    .line 1837
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LANE_CHANGE_DRIVER_CONFIRMATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLaneChangeStylePresent()Z
    .locals 1

    .line 1844
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LANE_CHANGE_STYLE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLcaCardPresent()Z
    .locals 1

    .line 1172
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LCA_CARD:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLightShowPresent()Z
    .locals 1

    .line 968
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LIGHT_SHOW:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLightTurnedOffDelayPresent()Z
    .locals 1

    .line 833
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LIGHT_TURNED_OFF_DELAY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLockAndUnlockWhistleNotePresent()Z
    .locals 1

    .line 826
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LOCK_AND_UNLOCK_WHISTLE_NOTE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLockControlPresent()Z
    .locals 1

    .line 904
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LOCK_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLookAroundToDetectTheDoorPresent()Z
    .locals 1

    .line 577
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->LOOK_AROUND_TO_DETECT_THE_DOOR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMicPresent()Z
    .locals 1

    .line 111
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->MIC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isMonsterModeSwitchPresent()Z
    .locals 1

    .line 430
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->MONSTER_MODE_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNavigationDrivingAssistPresent()Z
    .locals 1

    .line 997
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->NAVIGATION_DRIVING_ASSIST:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNfcPresent()Z
    .locals 1

    .line 741
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->NFC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOmsPresent()Z
    .locals 1

    .line 258
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->OMS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOneClickToTurnOnOffTheCellingLightPresent()Z
    .locals 1

    .line 2000
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ONE_CLICK_TO_TURN_ON_OFF_THE_CELLING_LIGHT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOverspeedAlarmOfTsrPresent()Z
    .locals 1

    .line 1278
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->OVERSPEED_ALARM_OF_TSR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOverspeedWarningPresent()Z
    .locals 1

    .line 1137
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->OVERSPEED_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPartyModePresent()Z
    .locals 1

    .line 947
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->PARTY_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPasPresent()Z
    .locals 1

    .line 139
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->PAS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPassengerSeatAdjustmentPresent()Z
    .locals 1

    .line 1725
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->PASSENGER_SEAT_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPcsPresent()Z
    .locals 1

    .line 160
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->PCS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPlgmfunccfgPresent()Z
    .locals 1

    .line 734
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->PLGMFUNCCFG:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isQishiModePresent()Z
    .locals 1

    .line 940
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->QISHI_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isQualitySensorPresent()Z
    .locals 1

    .line 465
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->QUALITY_SENSOR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRaebPresent()Z
    .locals 1

    .line 1201
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->RAEB:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRainstormModePresent()Z
    .locals 1

    .line 933
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->RAINSTORM_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRapidVentilationPresent()Z
    .locals 1

    .line 1816
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->RAPID_VENTILATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearApproachingWarningModePresent()Z
    .locals 1

    .line 1638
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->REAR_APPROACHING_WARNING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearApproachingWarningPresent()Z
    .locals 1

    .line 1236
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->REAR_APPROACHING_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearCrossTrafficAlertModePresent()Z
    .locals 1

    .line 1229
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->REAR_CROSS_TRAFFIC_ALERT_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearCrossTrafficAlertPresent()Z
    .locals 1

    .line 1222
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->REAR_CROSS_TRAFFIC_ALERT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearSeatBeltNotificationPresent()Z
    .locals 1

    .line 1046
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->REAR_SEAT_BELT_NOTIFICATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRearviewMirrorAdjustmentPresent()Z
    .locals 1

    .line 791
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->REARVIEW_MIRROR_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRemoteFindingCarPresent()Z
    .locals 1

    .line 584
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->REMOTE_FINDING_CAR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRemoteUnlockPresent()Z
    .locals 1

    .line 756
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->REMOTE_UNLOCK:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRestartVehicleCommunicationModulePresent()Z
    .locals 1

    .line 309
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->RESTART_VEHICLE_COMMUNICATION_MODULE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRlSpeakerPresent()Z
    .locals 1

    .line 216
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->RL_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRoofControlPresent()Z
    .locals 1

    .line 868
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ROOF_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRrSpeakerPresent()Z
    .locals 1

    .line 223
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->RR_SPEAKER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isRvcPresent()Z
    .locals 1

    .line 188
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->RVC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSeatControlPresent()Z
    .locals 1

    .line 861
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SEAT_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSecondRowChildLockPresent()Z
    .locals 1

    .line 1718
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SECOND_ROW_CHILD_LOCK:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSecondRowSeatAdjustmentPresent()Z
    .locals 1

    .line 1704
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SECOND_ROW_SEAT_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSecondRowSeatMassagePresent()Z
    .locals 1

    .line 1697
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SECOND_ROW_SEAT_MASSAGE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSecondRowSeatRestPresent()Z
    .locals 1

    .line 1753
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SECOND_ROW_SEAT_REST:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSixSeatLayoutPresent()Z
    .locals 1

    .line 599
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SEAT_LAYOUT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSlidingDoorControlManualAndAutomaticPresent()Z
    .locals 1

    .line 918
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SLIDING_DOOR_CONTROL_MANUAL_AND_AUTOMATIC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSlidingDoorControlPresent()Z
    .locals 1

    .line 882
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SLIDING_DOOR_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSlidingDoorSpeedAdjustmentPresent()Z
    .locals 1

    .line 911
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SLIDING_DOOR_SPEED_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSmartCommutDrivePresent()Z
    .locals 1

    .line 1971
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SMART_COMMUT_DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSmartHvacPresent()Z
    .locals 1

    .line 1479
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SMART_HVAC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSmartNaviDrivePresent()Z
    .locals 1

    .line 1964
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SMART_NAVI_DRIVE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSmartTailgatePresent()Z
    .locals 1

    .line 713
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SMART_TAILGATE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSolarFeaturesPresent()Z
    .locals 1

    .line 486
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SOLAR_FEATURES:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSpaPresent()Z
    .locals 1

    .line 1774
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSpeedLimtedSignRecognitionPresent()Z
    .locals 1

    .line 1144
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SPEED_LIMTED_SIGN_RECOGNITION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSpeedLockPresent()Z
    .locals 1

    .line 763
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SPEED_LOCK:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSportPlusPresent()Z
    .locals 1

    .line 1486
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SPORT_PLUS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSteeringModePresent()Z
    .locals 1

    .line 1151
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->STEERING_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSteeringWheelControlPresent()Z
    .locals 1

    .line 875
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->STEERING_WHEEL_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSteeringWheelCustomButtonPresent()Z
    .locals 1

    .line 897
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->STEERING_WHEEL_CUSTOM_BUTTON:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSteeringWheelHeatingPresent()Z
    .locals 1

    .line 961
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->STEERING_WHEEL_HEATING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSteeringWheelKeyPresent()Z
    .locals 1

    .line 230
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->STEERING_WHEEL_KEY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSteeringWheelSteeringHandForcePresent()Z
    .locals 1

    .line 798
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->STEERING_WHEEL_STEERING_HAND_FORCE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStorageBoxAutomaticallyFlipDownPresent()Z
    .locals 1

    .line 353
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->STORAGE_BOX_AUTOMATICALLY_FLIP_DOWN:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSuspensionDampingPresent()Z
    .locals 1

    .line 1362
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SUSPENSION_DAMPING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSvmPresent()Z
    .locals 1

    .line 195
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->SVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTboxPresent()Z
    .locals 1

    .line 167
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->TBOX:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTechnologySkylightPresent()Z
    .locals 1

    .line 1617
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->TECHNOLOGY_SKYLIGHT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTemporaryParkingLampSignalsPresent()Z
    .locals 1

    .line 1830
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->TEMPORARY_PARKING_LAMP_SIGNALS:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThe3DChimeBootSoundPresent()Z
    .locals 1

    .line 1908
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->THE_3D_CHIME_BOOT_SOUND:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThe3DChimeDriverModeSoundPresent()Z
    .locals 1

    .line 1950
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->THE_3D_CHIME_DRIVER_MODE_SOUND:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThe3DChimeFrontCollisionWarningSoundPresent()Z
    .locals 1

    .line 1929
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->THE_3D_CHIME_FRONT_COLLISION_WARNING_SOUND:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThe3DChimeIalSoundPresent()Z
    .locals 1

    .line 1943
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->THE_3D_CHIME_IAL_SOUND:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThe3DChimeIndicatorPresent()Z
    .locals 1

    .line 1915
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->THE_3D_CHIME_INDICATOR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThe3DChimeLaneChangeAssitAndRearApproachingWarningPresent()Z
    .locals 1

    .line 1922
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->THE_3D_CHIME_LANE_CHANGE_ASSIT_AND_REAR_APPROACHING_WARNING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThe3DChimeReversingRadarSoundPresent()Z
    .locals 1

    .line 1936
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->THE_3D_CHIME_REVERSING_RADAR_SOUND:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isThrottleSensitivityPresent()Z
    .locals 1

    .line 1369
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->THROTTLE_SENSITIVITY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTimeInClusterPresent()Z
    .locals 1

    .line 1074
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->TIME_IN_CLUSTER:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUltravioletRayPresent()Z
    .locals 1

    .line 1781
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->ULTRAVIOLET_RAY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUnlockVentilationPresent()Z
    .locals 1

    .line 1788
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->UNLOCK_VENTILATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVcuPresent()Z
    .locals 1

    .line 174
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VCU:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlApaControlPresent()Z
    .locals 1

    .line 1581
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_APA_CONTROL:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlChargingAndFuelTankCapPresent()Z
    .locals 1

    .line 1450
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_CHARGING_AND_FUEL_TANK_CAP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlChargingBookingMenuSwitchPresent()Z
    .locals 1

    .line 1560
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_CHARGING_BOOKING_MENU_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlChargingInsulationMenuSwitchPresent()Z
    .locals 1

    .line 1553
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_CHARGING_INSULATION_MENU_SWITCH:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlChargingInsulationNotificationPresent()Z
    .locals 1

    .line 1546
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_CHARGING_INSULATION_NOTIFICATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlControlDriverModePresent()Z
    .locals 1

    .line 1567
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_CONTROL_DRIVER_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlCruisePresent()Z
    .locals 1

    .line 1391
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_CRUISE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlDmsNotificationPresent()Z
    .locals 1

    .line 1515
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_DMS_NOTIFICATION:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlEnergyRecoveryPresent()Z
    .locals 1

    .line 1574
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_ENERGY_RECOVERY:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlEngineAndMotorPresent()Z
    .locals 1

    .line 1457
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_ENGINE_AND_MOTOR:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlExtlightPresent()Z
    .locals 1

    .line 1428
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_EXTLIGHT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlInstrumentBacklightPresent()Z
    .locals 1

    .line 1464
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_INSTRUMENT_BACKLIGHT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlPlgmPresent()Z
    .locals 1

    .line 1508
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_PLGM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlSeatAdjustmentPresent()Z
    .locals 1

    .line 1493
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_SEAT_ADJUSTMENT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlSunshadePresent()Z
    .locals 1

    .line 1405
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_SUNSHADE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlToplightPresent()Z
    .locals 1

    .line 1435
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_TOPLIGHT:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVrControlTurnlampPresent()Z
    .locals 1

    .line 1398
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->VR_CONTROL_TURNLAMP:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWakeUpModePresent()Z
    .locals 1

    .line 954
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->WAKE_UP_MODE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWinterLongDistancePresent()Z
    .locals 1

    .line 367
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->WINTER_LONG_DISTANCE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWiperMaintanencePresent()Z
    .locals 1

    .line 812
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->WIPER_MAINTANENCE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isWirelessChargingPresent()Z
    .locals 1

    .line 720
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;->WIRELESS_CHARGING:Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;

    invoke-static {v0}, Lcom/yftech/vehicle/sdk/CarConfig;->getConfigValue(Lcom/yftech/vehicle/internal/adapter/ICarConfig$Config;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setConfigData([B)Z
    .locals 2

    .line 2033
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->get()Lcom/yftech/vehicle/sdk/CarConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/vehicle/sdk/CarConfig;->mApi:Lcom/yftech/vehicle/internal/BaseApiManager;

    const/16 v1, 0x270b

    invoke-virtual {v0, v1, p0}, Lcom/yftech/vehicle/internal/BaseApiManager;->setSignalValue(I[B)Z

    move-result p0

    return p0
.end method
