.class public final enum Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isseiaoki/simplecropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field public static final enum NOT_SHOW:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field public static final enum SHOW_ALWAYS:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field public static final enum SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;


# instance fields
.field private final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 2360
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "SHOW_ALWAYS"

    invoke-direct {v0, v3, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ALWAYS:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    const/4 v3, 0x2

    const-string v4, "SHOW_ON_TOUCH"

    invoke-direct {v0, v4, v2, v3}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    const/4 v4, 0x3

    const-string v5, "NOT_SHOW"

    invoke-direct {v0, v5, v3, v4}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->NOT_SHOW:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    new-array v0, v4, [Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 2359
    sget-object v4, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ALWAYS:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->NOT_SHOW:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->$VALUES:[Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 2363
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2364
    iput p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->ID:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;
    .locals 1

    .line 2359
    const-class v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    return-object p0
.end method

.method public static values()[Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;
    .locals 1

    .line 2359
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->$VALUES:[Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {v0}, [Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 2368
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->ID:I

    return v0
.end method
