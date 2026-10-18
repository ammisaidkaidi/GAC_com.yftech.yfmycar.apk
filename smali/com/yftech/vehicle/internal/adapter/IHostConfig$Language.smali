.class public final enum Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;
.super Ljava/lang/Enum;
.source "IHostConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/IHostConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum ITALY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum MALAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum THAI:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum VIETNAMESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 133
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "CHINESE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 135
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "ENGLISH"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 137
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "ARABIC_RESERVED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 139
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "RUSSIAN_RESERVED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 141
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "CHINESE_PLUSENGLISH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 143
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "SPANISH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 145
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "INDONESIAN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 147
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "THAI"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->THAI:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 149
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "MALAY"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->MALAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 151
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "VIETNAMESE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->VIETNAMESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 153
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "CHINESE_TRADITIONAL"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 155
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "PORTUGUESE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 157
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "ITALY"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    .line 159
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const-string v1, "__UNKNOWN__"

    const/16 v15, 0xd

    const/4 v14, -0x1

    invoke-direct {v0, v1, v15, v14}, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const/16 v0, 0xe

    .line 131
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->THAI:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->MALAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->VIETNAMESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    aput-object v1, v0, v15

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 163
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;
    .locals 1

    .line 167
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 168
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 169
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ARABIC_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 170
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->RUSSIAN_RESERVED:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 171
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_PLUSENGLISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 172
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 173
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 174
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->THAI:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->THAI:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 175
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->MALAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->MALAY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 176
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->VIETNAMESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->VIETNAMESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 177
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 178
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 179
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->value:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0

    .line 180
    :cond_c
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;
    .locals 1

    .line 131
    const-class v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;
    .locals 1

    .line 131
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/IHostConfig$Language;

    return-object v0
.end method
