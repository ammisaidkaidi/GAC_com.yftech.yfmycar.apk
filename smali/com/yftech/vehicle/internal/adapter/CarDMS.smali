.class public interface abstract Lcom/yftech/vehicle/internal/adapter/CarDMS;
.super Ljava/lang/Object;
.source "CarDMS.java"

# interfaces
.implements Lcom/yftech/vehicle/internal/adapter/IBaseApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSDistrWarn;,
        Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSFatigWarn;,
        Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSMode;,
        Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSwitch;,
        Lcom/yftech/vehicle/internal/adapter/CarDMS$DMSSysErrStatus;
    }
.end annotation


# static fields
.field public static final DMS_DISTR_WARN_SATUS:I = 0x268

.field public static final DMS_FATIG_WARN_SATUS:I = 0x267

.field public static final DMS_MODE_SATUS:I = 0x266

.field public static final DMS_MODE_SETTING:I = 0x265

.field public static final DMS_SWITCH_SATUS:I = 0x264

.field public static final DMS_SWITCH_SETTING:I = 0x263

.field public static final DMS_SYS_WORK_SATUS:I = 0x262
