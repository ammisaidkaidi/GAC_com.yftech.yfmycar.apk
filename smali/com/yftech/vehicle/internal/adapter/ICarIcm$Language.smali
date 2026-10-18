.class public final enum Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;
.super Ljava/lang/Enum;
.source "ICarIcm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/ICarIcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum ARABIC:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum CHINESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum ENGLISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum FRENCH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum INDONESIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum ITALY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum MALAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum RUSSIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum SPANISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum THAI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum VIETNAMENSE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;


# instance fields
.field private final rx:I

.field private final tx:I

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 99
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "CHINESE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 100
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "ENGLISH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4, v4}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 101
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "RUSSIAN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5, v5}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->RUSSIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 102
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "ARABIC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6, v6}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ARABIC:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 103
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "SPANISH"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7, v7}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 104
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "PORTUGUESE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8, v8}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 105
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "INDONESIAN"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9, v9}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 106
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "CHINESE_TRADITIONAL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v9, v10, v10}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 107
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "VIETNAMENSE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v10, v11, v11}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->VIETNAMENSE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 108
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "THAI"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v11, v12, v12}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->THAI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 109
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "MALAY"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v12, v13, v13}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->MALAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 110
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "FRENCH"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v13, v14, v14}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->FRENCH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 111
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "ITALY"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v14, v15, v15}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    .line 112
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const-string v1, "__UNKNOWN__"

    const/4 v14, -0x1

    invoke-direct {v0, v1, v15, v14, v14}, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const/16 v0, 0xe

    .line 98
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->RUSSIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ARABIC:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v8

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v9

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->VIETNAMENSE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v10

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->THAI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v11

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->MALAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v12

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->FRENCH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v13

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    aput-object v1, v0, v15

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    .line 118
    iput p4, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->tx:I

    .line 119
    iget p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->tx:I

    iput p1, p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;
    .locals 1

    .line 123
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 124
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ENGLISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 125
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->RUSSIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->RUSSIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 126
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ARABIC:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ARABIC:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 127
    :cond_3
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_4

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->SPANISH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 128
    :cond_4
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_5

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->PORTUGUESE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 129
    :cond_5
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_6

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->INDONESIAN:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 130
    :cond_6
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_7

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->CHINESE_TRADITIONAL:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 131
    :cond_7
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->VIETNAMENSE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_8

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->VIETNAMENSE:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 132
    :cond_8
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->THAI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->THAI:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 133
    :cond_9
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->MALAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_a

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->MALAY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 134
    :cond_a
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->FRENCH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_b

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->FRENCH:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 135
    :cond_b
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->rx:I

    if-ne p0, v0, :cond_c

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->ITALY:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0

    .line 136
    :cond_c
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;
    .locals 1

    .line 98
    const-class v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;
    .locals 1

    .line 98
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/ICarIcm$Language;

    return-object v0
.end method
