.class public final enum Lcom/isseiaoki/simplecropview/CropImageView$CropMode;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isseiaoki/simplecropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CropMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isseiaoki/simplecropview/CropImageView$CropMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum CIRCLE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum CIRCLE_SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum CUSTOM:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum FIT_IMAGE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum FREE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum RATIO_16_9:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum RATIO_3_4:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum RATIO_4_3:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum RATIO_9_16:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field public static final enum SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;


# instance fields
.field private final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 2346
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/4 v1, 0x0

    const-string v2, "FIT_IMAGE"

    invoke-direct {v0, v2, v1, v1}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FIT_IMAGE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/4 v2, 0x1

    const-string v3, "RATIO_4_3"

    invoke-direct {v0, v3, v2, v2}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_4_3:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/4 v3, 0x2

    const-string v4, "RATIO_3_4"

    invoke-direct {v0, v4, v3, v3}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_3_4:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/4 v4, 0x3

    const-string v5, "SQUARE"

    invoke-direct {v0, v5, v4, v4}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/4 v5, 0x4

    const-string v6, "RATIO_16_9"

    invoke-direct {v0, v6, v5, v5}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_16_9:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/4 v6, 0x5

    const-string v7, "RATIO_9_16"

    invoke-direct {v0, v7, v6, v6}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_9_16:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/4 v7, 0x6

    const-string v8, "FREE"

    invoke-direct {v0, v8, v7, v7}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FREE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 2347
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/4 v8, 0x7

    const-string v9, "CUSTOM"

    invoke-direct {v0, v9, v8, v8}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CUSTOM:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/16 v9, 0x8

    const-string v10, "CIRCLE"

    invoke-direct {v0, v10, v9, v9}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/16 v10, 0x9

    const-string v11, "CIRCLE_SQUARE"

    invoke-direct {v0, v11, v10, v10}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE_SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 2345
    sget-object v11, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FIT_IMAGE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v11, v0, v1

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_4_3:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_3_4:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_16_9:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->RATIO_9_16:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FREE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CUSTOM:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE_SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    aput-object v1, v0, v10

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->$VALUES:[Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2350
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2351
    iput p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isseiaoki/simplecropview/CropImageView$CropMode;
    .locals 1

    .line 2345
    const-class v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    return-object p0
.end method

.method public static values()[Lcom/isseiaoki/simplecropview/CropImageView$CropMode;
    .locals 1

    .line 2345
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->$VALUES:[Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v0}, [Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 2355
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ID:I

    return v0
.end method
