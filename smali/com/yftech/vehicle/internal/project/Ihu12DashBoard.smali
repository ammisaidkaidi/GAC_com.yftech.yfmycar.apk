.class public Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;
.super Ljava/lang/Object;
.source "Ihu12DashBoard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;,
        Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;
    }
.end annotation


# static fields
.field public static final INFO_TYPE_NAVI_BASE_INFO:B = 0x7t

.field public static final INFO_TYPE_NAVI_GUIDE_COMPASS:B = 0x8t

.field public static final INFO_TYPE_NAVI_GUIDE_CURR_LOAD_NAME:B = 0x9t

.field public static final INFO_TYPE_NAVI_GUIDE_NEXT_LOAD_NAME:B = 0xat

.field public static final INFO_TYPE_NAVI_GUIDE_NEXT_PATH_CALCULATION:B = 0xbt

.field public static final INFO_TYPE_PHONE_INFO:B = 0x3t

.field public static final INFO_TYPE_PHONE_NAME:B = 0x5t

.field public static final INFO_TYPE_PHONE_NUMBER:B = 0x4t

.field public static final INFO_TYPE_PHONE_TIMES:B = 0x6t

.field public static final INFO_TYPE_SONG_ARTIST:B = 0x2t

.field public static final INFO_TYPE_SONG_TITLE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "Ihu12DashBoard"

.field static mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

.field private static mDashBoardInfoDataByteArrayForIhu12:[B

.field private static mLastSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 15
    new-array v0, v0, [B

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mDashBoardInfoDataByteArrayForIhu12:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDabProgramInfo(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B
    .locals 5

    const/16 v0, 0x8

    .line 857
    new-array v0, v0, [B

    .line 858
    instance-of v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;

    if-nez v1, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string v1, "getDabProgramInfo() - info is not DABInfo"

    .line 859
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 862
    :cond_0
    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;

    .line 864
    iget-object v0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 865
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    const/16 v2, 0x1b

    .line 868
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_4

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 870
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    goto :goto_2

    :cond_3
    move v1, v0

    :cond_4
    :goto_2
    add-int/lit8 v2, v1, 0x5

    .line 872
    new-array v2, v2, [B

    const/16 v3, -0x7c

    .line 873
    aput-byte v3, v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x10

    .line 874
    aput-byte v4, v2, v3

    const/4 v3, 0x2

    .line 875
    aput-byte v3, v2, v3

    const/4 v3, 0x3

    int-to-byte v4, v1

    .line 876
    aput-byte v4, v2, v3

    const/4 v3, 0x4

    .line 877
    aput-byte v0, v2, v3

    if-eqz v1, :cond_5

    .line 879
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 v3, 0x5

    invoke-static {p0, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    return-object v2
.end method

.method public static getDashBoardInfoDataByteArrayForIhu12(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B
    .locals 15

    .line 120
    sget-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mDashBoardInfoDataByteArrayForIhu12:[B

    const/4 v1, 0x0

    const/16 v2, -0x7c

    .line 121
    aput-byte v2, v0, v1

    const/16 v2, 0x10

    const/4 v3, 0x1

    .line 122
    aput-byte v2, v0, v3

    const/4 v4, 0x2

    .line 123
    aput-byte v3, v0, v4

    const/4 v5, 0x3

    .line 124
    aput-byte v1, v0, v5

    .line 125
    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v6

    const/4 v7, 0x6

    const/4 v8, 0x4

    const/16 v9, 0x9

    if-eq v6, v9, :cond_0

    packed-switch v6, :pswitch_data_0

    packed-switch v6, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    const/16 v6, 0x25

    .line 155
    aput-byte v6, v0, v5

    goto :goto_0

    :pswitch_1
    const/16 v6, 0x24

    .line 152
    aput-byte v6, v0, v5

    goto :goto_0

    :pswitch_2
    const/16 v6, 0x14

    .line 137
    aput-byte v6, v0, v5

    goto :goto_0

    :pswitch_3
    const/16 v6, 0x20

    .line 143
    aput-byte v6, v0, v5

    goto :goto_0

    :pswitch_4
    const/16 v6, 0x21

    .line 140
    aput-byte v6, v0, v5

    goto :goto_0

    .line 134
    :pswitch_5
    aput-byte v7, v0, v5

    goto :goto_0

    :pswitch_6
    const/16 v6, 0x16

    .line 146
    aput-byte v6, v0, v5

    goto :goto_0

    .line 131
    :pswitch_7
    aput-byte v8, v0, v5

    goto :goto_0

    .line 128
    :cond_0
    :pswitch_8
    aput-byte v5, v0, v5

    .line 161
    :goto_0
    :pswitch_9
    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v6

    const/16 v10, 0xa

    const/4 v11, 0x5

    if-eq v6, v11, :cond_5

    if-eq v6, v9, :cond_5

    if-eq v6, v2, :cond_5

    packed-switch v6, :pswitch_data_2

    packed-switch v6, :pswitch_data_3

    goto/16 :goto_4

    .line 206
    :pswitch_a
    instance-of v4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;

    if-nez v4, :cond_1

    const-string p0, "Ihu12DashBoard"

    const-string v1, "formartDashBoardInfoDataBytes() AbsDashBoardInfo is not RadioInfo"

    .line 207
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 210
    :cond_1
    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;

    .line 212
    iget-byte v4, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    const/16 v6, 0xe

    const/16 v7, 0xf

    packed-switch v4, :pswitch_data_4

    goto :goto_1

    .line 220
    :pswitch_b
    aput-byte v6, v0, v5

    goto :goto_1

    .line 216
    :pswitch_c
    aput-byte v7, v0, v5

    :goto_1
    const/16 v4, 0xd

    .line 226
    iget-byte v5, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->scanMode:B

    if-ne v5, v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget-byte v3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->scanMode:B

    :goto_2
    aput-byte v3, v0, v4

    .line 229
    iget-byte v3, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mBandType:B

    packed-switch v3, :pswitch_data_5

    goto/16 :goto_4

    .line 243
    :pswitch_d
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    add-int/lit16 p0, p0, -0x90

    if-gez p0, :cond_3

    move p0, v1

    :cond_3
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 248
    aput-byte v1, v0, v2

    const/16 v1, 0x11

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 249
    aput-byte p0, v0, v1

    goto/16 :goto_4

    .line 233
    :pswitch_e
    iget p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$RadioInfo;->mFrequency:I

    .line 234
    div-int/2addr p0, v10

    add-int/lit16 p0, p0, -0x1964

    if-gez p0, :cond_4

    move p0, v1

    :cond_4
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 238
    aput-byte v1, v0, v6

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    .line 239
    aput-byte p0, v0, v7

    goto/16 :goto_4

    .line 170
    :cond_5
    :pswitch_f
    instance-of v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez v1, :cond_6

    const-string p0, "Ihu12DashBoard"

    const-string v1, "getDashBoardInfoDataByteArrayForIhu12() AbsDashBoardInfo is not MediaInfo"

    .line 171
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 175
    :cond_6
    move-object v1, p0

    check-cast v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 177
    iget v5, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->status:I

    if-ne v5, v4, :cond_7

    .line 178
    aput-byte v3, v0, v8

    goto :goto_3

    .line 179
    :cond_7
    iget v5, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->status:I

    if-ne v5, v3, :cond_8

    .line 180
    aput-byte v4, v0, v8

    .line 182
    :cond_8
    :goto_3
    iget v4, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->playType:I

    int-to-byte v4, v4

    aput-byte v4, v0, v11

    const/16 v4, 0x3e8

    .line 184
    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result p0

    if-ne p0, v2, :cond_9

    move v4, v3

    .line 187
    :cond_9
    iget p0, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    mul-int/lit8 v2, v4, 0x3c

    mul-int/lit8 v5, v2, 0x3c

    mul-int/lit8 v6, v5, 0x18

    rem-int/2addr p0, v6

    div-int/2addr p0, v5

    .line 188
    iget v8, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    rem-int/2addr v8, v5

    div-int/2addr v8, v2

    .line 189
    iget v11, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->total:I

    rem-int/2addr v11, v2

    div-int/2addr v11, v4

    const-string v12, "Ihu12DashBoard"

    .line 190
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ihu12: totalHours "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "  totalMinutes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "  totalSeconds"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v12, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    rem-int/2addr v12, v6

    div-int/2addr v12, v5

    .line 193
    iget v6, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    rem-int/2addr v6, v5

    div-int/2addr v6, v2

    .line 194
    iget v5, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->current:I

    rem-int/2addr v5, v2

    div-int/2addr v5, v4

    const-string v2, "Ihu12DashBoard"

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ihu12: currHours "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  currMinutes "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "  currSeconds "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    int-to-byte p0, p0

    .line 197
    aput-byte p0, v0, v7

    const/4 p0, 0x7

    int-to-byte v2, v8

    .line 198
    aput-byte v2, v0, p0

    int-to-byte p0, v11

    const/16 v2, 0x8

    .line 199
    aput-byte p0, v0, v2

    int-to-byte p0, v12

    .line 200
    aput-byte p0, v0, v9

    int-to-byte p0, v6

    .line 201
    aput-byte p0, v0, v10

    const/16 p0, 0xb

    int-to-byte v2, v5

    .line 202
    aput-byte v2, v0, p0

    const/16 p0, 0xc

    .line 203
    iget-boolean v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->isMute:Z

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    :goto_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_a
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static getDashBoardSourceDataByteArray(ILcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B
    .locals 4

    const/16 v0, 0x12

    .line 93
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x10

    aput-byte v3, v0, v2

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    aput-byte v1, v0, v2

    :goto_0
    if-nez p1, :cond_0

    const-string p1, "Ihu12DashBoard"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MCU_IHU12  getDashBoardSourceDataByteArray->source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",info is null continue"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getMediaInfo(BLcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)[B
    .locals 14

    const/16 v0, 0x8

    .line 278
    new-array v1, v0, [B

    const/16 v2, 0x18

    const/16 v3, 0x1b

    const/16 v4, 0x11

    const/16 v5, -0x7c

    const/4 v6, 0x6

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/4 v11, 0x5

    const/4 v12, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_e

    .line 433
    :pswitch_0
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez p0, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - PHONE_TIMES info is not btInfo"

    .line 434
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 437
    :cond_0
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 438
    iget p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->talkTimes:I

    const v1, 0x5265c00

    rem-int/2addr p0, v1

    const v1, 0x36ee80

    div-int/2addr p0, v1

    .line 439
    iget v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->talkTimes:I

    rem-int/2addr v2, v1

    const v1, 0xea60

    div-int/2addr v2, v1

    .line 440
    iget p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->talkTimes:I

    rem-int/2addr p1, v1

    div-int/lit16 p1, p1, 0x3e8

    const-string v1, "Ihu12DashBoard"

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INFO_TYPE_PHONE_TIMES: "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " currHours "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " currMinutes "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " currSeconds "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    new-array v1, v0, [B

    aput-byte v5, v1, v12

    aput-byte v4, v1, v9

    aput-byte v7, v1, v8

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v10

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v7

    int-to-byte p0, v2

    aput-byte p0, v1, v11

    int-to-byte p0, p1

    aput-byte p0, v1, v6

    goto/16 :goto_e

    .line 409
    :pswitch_1
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez p0, :cond_1

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - PHONE_NAME info is not BtInfo"

    .line 410
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 413
    :cond_1
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 414
    iget-object p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtName:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, ""

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    .line 415
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_1

    :cond_3
    move p1, v12

    .line 418
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 419
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 420
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_2

    :cond_4
    move p1, v12

    :cond_5
    :goto_2
    add-int/lit8 v0, p1, 0x5

    .line 422
    new-array v1, v0, [B

    .line 423
    aput-byte v5, v1, v12

    .line 424
    aput-byte v4, v1, v9

    .line 425
    aput-byte v10, v1, v8

    int-to-byte v0, p1

    .line 426
    aput-byte v0, v1, v10

    .line 427
    aput-byte v12, v1, v7

    if-eqz p1, :cond_19

    .line 429
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v12, v1, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_e

    .line 385
    :pswitch_2
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez p0, :cond_6

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - PHONE_NUMBER info is not BtInfo"

    .line 386
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 389
    :cond_6
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 390
    iget-object p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    if-nez p0, :cond_7

    const-string p0, ""

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_8

    .line 391
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_4

    :cond_8
    move p1, v12

    .line 394
    :goto_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 395
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 396
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_5

    :cond_9
    move p1, v12

    :cond_a
    :goto_5
    add-int/lit8 v0, p1, 0x5

    .line 398
    new-array v1, v0, [B

    .line 399
    aput-byte v5, v1, v12

    .line 400
    aput-byte v4, v1, v9

    .line 401
    aput-byte v8, v1, v8

    int-to-byte v0, p1

    .line 402
    aput-byte v0, v1, v10

    .line 403
    aput-byte v12, v1, v7

    if-eqz p1, :cond_19

    .line 405
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v12, v1, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_e

    .line 330
    :pswitch_3
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez p0, :cond_b

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - PHONE_INFO info is not BtInfo"

    .line 331
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 334
    :cond_b
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 335
    new-array v1, v0, [B

    aput-byte v5, v1, v12

    aput-byte v4, v1, v9

    aput-byte v9, v1, v8

    .line 340
    iget-byte p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    if-eqz p0, :cond_c

    aput-byte v9, v1, v10

    goto :goto_6

    :cond_c
    aput-byte v12, v1, v10

    :goto_6
    aput-byte v12, v1, v7

    aput-byte v12, v1, v11

    .line 351
    iget-byte p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtStatus:B

    if-eqz p0, :cond_d

    packed-switch p0, :pswitch_data_1

    aput-byte v12, v1, v6

    goto :goto_7

    :pswitch_4
    aput-byte v11, v1, v6

    goto :goto_7

    :pswitch_5
    aput-byte v7, v1, v6

    goto :goto_7

    :pswitch_6
    aput-byte v10, v1, v6

    goto :goto_7

    :pswitch_7
    aput-byte v8, v1, v6

    goto :goto_7

    :pswitch_8
    aput-byte v9, v1, v6

    goto :goto_7

    :cond_d
    aput-byte v12, v1, v6

    :goto_7
    const/4 p0, 0x7

    aput-byte v9, v1, p0

    .line 377
    iget-byte v0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mPhoneSourceType:B

    if-ne v0, v7, :cond_e

    aput-byte v8, v1, p0

    .line 380
    :cond_e
    iget-byte p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mPhoneSourceType:B

    if-ne p1, v11, :cond_19

    aput-byte v10, v1, p0

    goto/16 :goto_e

    .line 306
    :pswitch_9
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez p0, :cond_f

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - SONG_ARTIST info is not MediaInfo"

    .line 307
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 310
    :cond_f
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 311
    iget-object p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-nez p0, :cond_10

    const-string p0, ""

    goto :goto_8

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_8
    if-eqz p0, :cond_11

    .line 312
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_9

    :cond_11
    move p1, v12

    .line 315
    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_13

    .line 316
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 317
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_a

    :cond_12
    move p1, v12

    :cond_13
    :goto_a
    add-int/lit8 v0, p1, 0x5

    .line 319
    new-array v1, v0, [B

    .line 320
    aput-byte v5, v1, v12

    const/16 v0, 0x10

    .line 321
    aput-byte v0, v1, v9

    .line 322
    aput-byte v10, v1, v8

    int-to-byte v0, p1

    .line 323
    aput-byte v0, v1, v10

    .line 324
    aput-byte v12, v1, v7

    if-eqz p1, :cond_19

    .line 326
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v12, v1, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_e

    .line 281
    :pswitch_a
    instance-of p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez p0, :cond_14

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getMediaInfo() - SONG_TITLE info is not MediaInfo"

    .line 282
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 285
    :cond_14
    check-cast p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 287
    iget-object p0, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    if-nez p0, :cond_15

    const-string p0, ""

    goto :goto_b

    :cond_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_b
    if-eqz p0, :cond_16

    .line 288
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_c

    :cond_16
    move p1, v12

    .line 291
    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_18

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 293
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_d

    :cond_17
    move p1, v12

    :cond_18
    :goto_d
    add-int/lit8 v0, p1, 0x5

    .line 295
    new-array v1, v0, [B

    .line 296
    aput-byte v5, v1, v12

    const/16 v0, 0x10

    .line 297
    aput-byte v0, v1, v9

    .line 298
    aput-byte v8, v1, v8

    int-to-byte v0, p1

    .line 299
    aput-byte v0, v1, v10

    .line 300
    aput-byte v12, v1, v7

    if-eqz p1, :cond_19

    .line 302
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v12, v1, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_e
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public static getNaviGuideBaseInfoDataProtocol(BLcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;)[B
    .locals 12

    const/16 v0, 0x8

    .line 715
    new-array v1, v0, [B

    if-nez p1, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideInfoDataProtocol() - PHONE_NUMBER info is null"

    .line 717
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/16 v2, 0x18

    const/16 v3, 0x1b

    const/4 v4, 0x4

    const/16 v5, 0x12

    const/16 v6, -0x7c

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_8

    .line 797
    :pswitch_0
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->caculationState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    if-nez p0, :cond_1

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideInfoDataProtocol() - info.caculationState is null"

    .line 798
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 801
    :cond_1
    new-array v1, v0, [B

    aput-byte v6, v1, v11

    aput-byte v5, v1, v10

    aput-byte v7, v1, v9

    .line 805
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->caculationState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CaculationState;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v8

    goto/16 :goto_8

    .line 770
    :pswitch_1
    instance-of p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;

    if-nez p0, :cond_2

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideBaseInfoDataProtocol() - INFO_TYPE_NAVI_GUIDE_CURR_LOAD_NAME info is not NaviGuideBaseInfo"

    .line 771
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 774
    :cond_2
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    if-eqz p0, :cond_8

    const-string p0, ""

    iget-object v0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    .line 778
    :cond_3
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    if-nez p0, :cond_4

    const-string p0, ""

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->nextRoadName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_5

    .line 779
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_1

    :cond_5
    move p1, v11

    .line 782
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 783
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 784
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_2

    :cond_6
    move p1, v11

    :cond_7
    :goto_2
    add-int/lit8 v0, p1, 0x5

    .line 786
    new-array v1, v0, [B

    .line 787
    aput-byte v6, v1, v11

    .line 788
    aput-byte v5, v1, v10

    .line 789
    aput-byte v4, v1, v9

    int-to-byte v0, p1

    .line 790
    aput-byte v0, v1, v8

    .line 791
    aput-byte v11, v1, v4

    if-eqz p1, :cond_10

    .line 793
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v11, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_8

    :cond_8
    :goto_3
    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideInfoDataProtocol() - info.nextRoadName is null"

    .line 775
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 743
    :pswitch_2
    instance-of p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;

    if-nez p0, :cond_9

    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideBaseInfoDataProtocol() - INFO_TYPE_NAVI_GUIDE_CURR_LOAD_NAME info is not NaviGuideBaseInfo"

    .line 744
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 747
    :cond_9
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    if-eqz p0, :cond_f

    const-string p0, ""

    iget-object v0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_7

    .line 751
    :cond_a
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    if-nez p0, :cond_b

    const-string p0, ""

    goto :goto_4

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->roadName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_c

    .line 752
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_5

    :cond_c
    move p1, v11

    .line 755
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_e

    .line 756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 757
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length p1, p1

    goto :goto_6

    :cond_d
    move p1, v11

    :cond_e
    :goto_6
    add-int/lit8 v0, p1, 0x5

    .line 759
    new-array v1, v0, [B

    .line 760
    aput-byte v6, v1, v11

    .line 761
    aput-byte v5, v1, v10

    .line 762
    aput-byte v8, v1, v9

    int-to-byte v0, p1

    .line 763
    aput-byte v0, v1, v8

    .line 764
    aput-byte v11, v1, v4

    if-eqz p1, :cond_10

    .line 766
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, v11, v1, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8

    :cond_f
    :goto_7
    const-string p0, "Ihu12DashBoard"

    const-string p1, "getNaviGuideInfoDataProtocol() - info.roadName is null"

    .line 748
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 736
    :pswitch_3
    new-array v1, v0, [B

    aput-byte v6, v1, v11

    aput-byte v5, v1, v10

    aput-byte v9, v1, v9

    .line 740
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->compass:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$CompassGuide;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v8

    goto :goto_8

    :pswitch_4
    const/16 p0, 0xb

    .line 722
    new-array v1, p0, [B

    aput-byte v6, v1, v11

    aput-byte v5, v1, v10

    aput-byte v10, v1, v9

    .line 726
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->seaLevel:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$SeaLevel;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v8

    .line 727
    iget-object p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->gpsSignal:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$GpsSignal;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v4

    .line 728
    iget p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->azimuthInfo:I

    shr-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v7

    const/4 p0, 0x6

    .line 729
    iget v2, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->azimuthInfo:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, p0

    const/4 p0, 0x7

    .line 730
    iget-object v2, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviState:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;

    iget v2, v2, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviState;->value:I

    int-to-byte v2, v2

    aput-byte v2, v1, p0

    .line 731
    iget p0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviIcon_TBT:I

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    const/16 p0, 0x9

    .line 732
    iget v0, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviIcon_RC:I

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    const/16 p0, 0xa

    .line 733
    iget p1, p1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviGuideBaseInfo;->naviIcon_WS:I

    int-to-byte p1, p1

    aput-byte p1, v1, p0

    :cond_10
    :goto_8
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNaviGuideUpdateDataProtocol(Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;)[B
    .locals 6

    const/16 v0, 0x8

    .line 819
    new-array v1, v0, [B

    if-nez p0, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string v0, "getNaviGuideUpdateDataProtocol() - updateData is null"

    .line 821
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const/16 v1, 0x12

    .line 824
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x7c

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    aput-byte v1, v2, v3

    const/4 v1, 0x2

    const/4 v3, 0x6

    aput-byte v3, v2, v1

    const/4 v1, 0x3

    .line 828
    iget-object v4, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->naviDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    invoke-virtual {v4}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->ordinal()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    const/4 v1, 0x4

    .line 830
    iget v4, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDist:I

    const/16 v5, 0x10

    shr-int/2addr v4, v5

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    const/4 v1, 0x5

    .line 831
    iget v4, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDist:I

    shr-int/2addr v4, v0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 832
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDist:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    const/4 v1, 0x7

    .line 834
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDistBar:I

    shr-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 835
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDistBar:I

    shr-int/2addr v1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v2, v0

    const/16 v1, 0x9

    .line 836
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDistBar:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xa

    .line 838
    iget-object v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->naviSumDistUnit:Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;

    invoke-virtual {v3}, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviDistUnit;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xb

    .line 840
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviMinitue:I

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xc

    .line 842
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviHour:I

    shr-int/2addr v3, v0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xd

    .line 843
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviHour:I

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xe

    .line 845
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDestDistInfo:I

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    const/16 v1, 0xf

    .line 846
    iget v3, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDestDistInfo:I

    shr-int/2addr v3, v5

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 847
    iget v1, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDestDistInfo:I

    shr-int/lit8 v0, v1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v2, v5

    const/16 v0, 0x11

    .line 848
    iget p0, p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard$NaviUpdateData;->NaviDestDistInfo:I

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    aput-byte p0, v2, v0

    return-object v2
.end method

.method public static isBtInfoChange(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string v1, "isBtInfoChange()  BtInfo is null)"

    .line 63
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 66
    :cond_0
    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    .line 67
    iget-object v1, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->mBtCallNumber:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string p0, "Ihu12DashBoard"

    const-string v1, "isBtInfoChange()  BtInfo.mBtCallNumber is null)"

    .line 68
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 72
    :cond_1
    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    instance-of v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-nez v1, :cond_2

    goto :goto_0

    .line 76
    :cond_2
    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    check-cast v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    if-eqz v1, :cond_3

    .line 77
    invoke-virtual {v1, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->isInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    invoke-virtual {v1, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;->setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;)V

    goto :goto_1

    :cond_3
    move v2, v0

    goto :goto_1

    .line 73
    :cond_4
    :goto_0
    new-instance p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;

    invoke-direct {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$BtInfo;-><init>()V

    sput-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    :goto_1
    const-string p0, "Ihu12DashBoard"

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isBtInfoChange() isBtInfoChange ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isCurrentSource(I)Z
    .locals 1

    .line 21
    sget v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isDabProgramInfoChange(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "Ihu12DashBoard"

    const-string v1, "isDabProgramInfoChange()  DABInfo is null)"

    .line 891
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 895
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    instance-of v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 899
    :cond_1
    move-object v1, p0

    check-cast v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;

    .line 900
    sget-object v3, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    check-cast v3, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;

    const-string v4, "Ihu12DashBoard"

    .line 901
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDabProgramInfoChange: old info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " new info:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_2

    .line 902
    iget-object p0, v3, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    iget-object v3, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    invoke-static {p0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 903
    new-instance p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;

    iget-object v0, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_1

    .line 896
    :cond_3
    :goto_0
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;

    iget-object p0, p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;->mDabProgramName:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$DABInfo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    :goto_1
    const-string p0, "Ihu12DashBoard"

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDabProgramInfoChange() isDabProgramInfoChange ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static isMediaChange(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;)Z
    .locals 4

    .line 25
    move-object v0, p0

    check-cast v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 26
    iget-object v1, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->title:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->artist:Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 31
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    instance-of v1, v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-nez v1, :cond_1

    goto :goto_0

    .line 42
    :cond_1
    sget p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v1

    if-eq p0, v1, :cond_2

    .line 43
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->setDashBoardSource(I)V

    .line 45
    sget p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    if-nez p0, :cond_5

    const-string p0, "Ihu12DashBoard"

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaChange: mLastSource= 0 , update source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result p0

    sput p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    goto :goto_1

    .line 50
    :cond_2
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    if-eqz p0, :cond_3

    .line 51
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->isInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)V

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_1

    .line 32
    :cond_4
    :goto_0
    new-instance v1, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    invoke-virtual {p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result p0

    invoke-direct {v1, p0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;-><init>(I)V

    sput-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    .line 33
    sget-object p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;

    .line 34
    invoke-virtual {p0, v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->setInfoDiff(Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;)V

    .line 36
    sget p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    if-nez p0, :cond_5

    const-string p0, "Ihu12DashBoard"

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaChange: mLastSource= 0 , update source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-virtual {v0}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$MediaInfo;->getDashBoardSource()I

    move-result p0

    sput p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    :cond_5
    :goto_1
    const-string p0, "Ihu12DashBoard"

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMediaChange()-3 mLastSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAbsInfo.getDashBoardSource()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mAbsInfo:Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;

    invoke-virtual {v1}, Lcom/yftech/vehicle/internal/adapter/ICarDashBoard$AbsDashBoardInfo;->getDashBoardSource()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isMediaUpdate ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    :goto_2
    const-string p0, "Ihu12DashBoard"

    const-string v0, "isMediaChange() USB MediaInfo.title is null or AbsDashBoardInfo is not MediaInfo"

    .line 27
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static setCurrentSource(I)V
    .locals 0

    .line 18
    sput p0, Lcom/yftech/vehicle/internal/project/Ihu12DashBoard;->mLastSource:I

    return-void
.end method
