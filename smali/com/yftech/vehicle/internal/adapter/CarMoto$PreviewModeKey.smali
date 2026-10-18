.class public final enum Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;
.super Ljava/lang/Enum;
.source "CarMoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/vehicle/internal/adapter/CarMoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PreviewModeKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

.field public static final enum ENTER:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

.field public static final enum MODE1:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

.field public static final enum MODE2:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

.field public static final enum MODE3:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

.field public static final enum __UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 136
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    const-string v1, "ENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->ENTER:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    .line 137
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    const-string v1, "MODE1"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE1:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    .line 138
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    const-string v1, "MODE2"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE2:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    .line 139
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    const-string v1, "MODE3"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE3:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    .line 140
    new-instance v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    const-string v1, "__UNKNOWN__"

    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-direct {v0, v1, v6, v7}, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    const/4 v0, 0x5

    .line 135
    new-array v0, v0, [Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->ENTER:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE1:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE2:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE3:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->value:I

    return-void
.end method

.method public static valueOf(I)Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;
    .locals 1

    .line 148
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->ENTER:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->value:I

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->ENTER:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    return-object p0

    .line 149
    :cond_0
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE1:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->value:I

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE1:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    return-object p0

    .line 150
    :cond_1
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE2:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->value:I

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE2:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    return-object p0

    .line 151
    :cond_2
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE3:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    iget v0, v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->value:I

    if-ne p0, v0, :cond_3

    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->MODE3:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    return-object p0

    .line 152
    :cond_3
    sget-object p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;
    .locals 1

    .line 135
    const-class v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    return-object p0
.end method

.method public static values()[Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;
    .locals 1

    .line 135
    sget-object v0, Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->$VALUES:[Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    invoke-virtual {v0}, [Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yftech/vehicle/internal/adapter/CarMoto$PreviewModeKey;

    return-object v0
.end method
