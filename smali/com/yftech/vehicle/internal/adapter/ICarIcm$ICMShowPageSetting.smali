.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;
.super Ljava/lang/Enum;
.source "ICarIcm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarIcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ICMShowPageSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum MEDIA_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum MEDIA_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum NAV_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum NAV_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum POWER_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum POWER_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum STOPWATCH_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum STOPWATCH_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 224
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "NO_COMMAND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    .line 225
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "STOPWATCH_START"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->STOPWATCH_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    .line 226
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "STOPWATCH_STOP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->STOPWATCH_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    .line 227
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "POWER_START"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->POWER_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    .line 228
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "POWER_STOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->POWER_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    .line 229
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "NAV_START"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NAV_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    .line 230
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "NAV_STOP"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NAV_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    .line 231
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "MEDIA_START"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->MEDIA_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    .line 232
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "MEDIA_STOP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->MEDIA_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    .line 233
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const-string v1, "__UNKNOWN__"

    const/16 v11, 0x9

    const/4 v12, -0x1

    invoke-direct {v0, v1, v11, v12}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    const/16 v0, 0xa

    .line 223
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->STOPWATCH_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->STOPWATCH_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->POWER_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->POWER_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NAV_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NAV_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->MEDIA_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->MEDIA_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    aput-object v1, v0, v11

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;
    .locals 1

    .line 241
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NO_COMMAND:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0

    .line 242
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->STOPWATCH_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->STOPWATCH_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0

    .line 243
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->STOPWATCH_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->STOPWATCH_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0

    .line 244
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->POWER_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->POWER_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0

    .line 245
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->POWER_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->POWER_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0

    .line 246
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NAV_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NAV_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0

    .line 247
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NAV_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->NAV_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0

    .line 248
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->MEDIA_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->MEDIA_START:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0

    .line 249
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->MEDIA_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->MEDIA_STOP:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0

    .line 250
    :cond_8
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;
    .locals 1

    .line 223
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;
    .locals 1

    .line 223
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$ICMShowPageSetting;

    return-object v0
.end method
