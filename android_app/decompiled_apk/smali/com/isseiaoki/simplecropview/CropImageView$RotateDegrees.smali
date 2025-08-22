.class public final enum Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isseiaoki/simplecropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RotateDegrees"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

.field public static final enum ROTATE_180D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

.field public static final enum ROTATE_270D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

.field public static final enum ROTATE_90D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

.field public static final enum ROTATE_M180D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

.field public static final enum ROTATE_M270D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

.field public static final enum ROTATE_M90D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;


# instance fields
.field private final VALUE:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2373
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    const/4 v1, 0x0

    const-string v2, "ROTATE_90D"

    const/16 v3, 0x5a

    invoke-direct {v0, v2, v1, v3}, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_90D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    const/4 v2, 0x1

    const-string v3, "ROTATE_180D"

    const/16 v4, 0xb4

    invoke-direct {v0, v3, v2, v4}, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_180D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    const/4 v3, 0x2

    const-string v4, "ROTATE_270D"

    const/16 v5, 0x10e

    invoke-direct {v0, v4, v3, v5}, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_270D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    const/4 v4, 0x3

    const-string v5, "ROTATE_M90D"

    const/16 v6, -0x5a

    invoke-direct {v0, v5, v4, v6}, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_M90D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    const/4 v5, 0x4

    const-string v6, "ROTATE_M180D"

    const/16 v7, -0xb4

    invoke-direct {v0, v6, v5, v7}, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_M180D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    .line 2374
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    const/4 v6, 0x5

    const-string v7, "ROTATE_M270D"

    const/16 v8, -0x10e

    invoke-direct {v0, v7, v6, v8}, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_M270D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    .line 2372
    sget-object v7, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_90D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    aput-object v7, v0, v1

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_180D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_270D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    aput-object v1, v0, v3

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_M90D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    aput-object v1, v0, v4

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_M180D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    aput-object v1, v0, v5

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_M270D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    aput-object v1, v0, v6

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->$VALUES:[Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2379
    iput p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->VALUE:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;
    .locals 1

    .line 2372
    const-class v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    return-object p0
.end method

.method public static values()[Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;
    .locals 1

    .line 2372
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->$VALUES:[Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    invoke-virtual {v0}, [Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 2383
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->VALUE:I

    return v0
.end method
