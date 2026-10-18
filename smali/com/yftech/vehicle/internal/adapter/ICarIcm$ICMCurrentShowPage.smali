.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;
.super Ljava/lang/Enum;
.source "ICarIcm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarIcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICMCurrentShowPage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum ALLDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum FACE_ID_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum MAINDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum MEDIA_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum NAVI_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum NO_LVDS:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum POWER_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum SLAVEDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum STOPWATCH_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 258
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "NO_LVDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->NO_LVDS:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    .line 259
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "MAINDISPLAYZONE_ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->MAINDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    .line 260
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "SLAVEDISPLAYZONE_ON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->SLAVEDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    .line 261
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "ALLDISPLAYZONE_ON"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->ALLDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    .line 262
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "STOPWATCH_DISPLAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->STOPWATCH_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    .line 263
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "POWER_DISPLAY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->POWER_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    .line 264
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "NAVI_DISPLAY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->NAVI_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    .line 265
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "MEDIA_DISPLAY"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->MEDIA_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    .line 266
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "FACE_ID_DISPLAY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->FACE_ID_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    .line 267
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const-string v1, "__UNKNOWN__"

    const/16 v11, 0x9

    const/4 v12, -0x1

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    const/16 v0, 0xa

    .line 257
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->NO_LVDS:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->MAINDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->SLAVEDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->ALLDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->STOPWATCH_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->POWER_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->NAVI_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->MEDIA_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->FACE_ID_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 270
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 271
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;
    .locals 1

    .line 275
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->NO_LVDS:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->NO_LVDS:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0

    .line 276
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->MAINDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->MAINDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0

    .line 277
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->SLAVEDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->SLAVEDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0

    .line 278
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->ALLDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->ALLDISPLAYZONE_ON:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0

    .line 279
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->STOPWATCH_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->STOPWATCH_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0

    .line 280
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->POWER_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->POWER_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0

    .line 281
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->NAVI_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->NAVI_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0

    .line 282
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->MEDIA_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->MEDIA_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0

    .line 283
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->FACE_ID_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->FACE_ID_DISPLAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0

    .line 284
    :cond_8
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;
    .locals 1

    .line 257
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;
    .locals 1

    .line 257
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMCurrentShowPage;

    return-object v0
.end method
