.class public Lcn/highlight/lib_doodle/DoodleColor;
.super Ljava/lang/Object;
.source "DoodleColor.java"

# interfaces
.implements Lcn/highlight/lib_doodle/IDoodleColor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/lib_doodle/DoodleColor$Type;
    }
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mColor:I

.field private mLevel:I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mTileX:Landroid/graphics/Shader$TileMode;

.field private mTileY:Landroid/graphics/Shader$TileMode;

.field private mType:Lcn/highlight/lib_doodle/DoodleColor$Type;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mLevel:I

    .line 27
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 28
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    .line 31
    sget-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->COLOR:Lcn/highlight/lib_doodle/DoodleColor$Type;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    .line 32
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 2

    .line 40
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mLevel:I

    .line 27
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 28
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    .line 44
    sget-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->BITMAP:Lcn/highlight/lib_doodle/DoodleColor$Type;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    .line 45
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    .line 46
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    .line 47
    iput-object p3, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 48
    iput-object p4, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    return-void
.end method


# virtual methods
.method public config(Lcn/highlight/lib_doodle/IDoodleItem;Landroid/graphics/Paint;)V
    .locals 3

    .line 53
    check-cast p1, Lcn/highlight/lib_doodle/DoodleItemBase;

    .line 54
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    sget-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->COLOR:Lcn/highlight/lib_doodle/DoodleColor$Type;

    if-ne p1, v0, :cond_0

    .line 55
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mColor:I

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    sget-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->BITMAP:Lcn/highlight/lib_doodle/DoodleColor$Type;

    if-ne p1, v0, :cond_1

    .line 58
    new-instance p1, Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 59
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 60
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    :goto_0
    return-void
.end method

.method public copy()Lcn/highlight/lib_doodle/IDoodleColor;
    .locals 3

    .line 111
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    sget-object v1, Lcn/highlight/lib_doodle/DoodleColor$Type;->COLOR:Lcn/highlight/lib_doodle/DoodleColor$Type;

    if-ne v0, v1, :cond_0

    .line 112
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mColor:I

    invoke-direct {v0, v1}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    .line 116
    :goto_0
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    iput-object v1, v0, Lcn/highlight/lib_doodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 117
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    iput-object v1, v0, Lcn/highlight/lib_doodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    .line 118
    new-instance v1, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {v1, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v1, v0, Lcn/highlight/lib_doodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    .line 119
    iget v1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mLevel:I

    iput v1, v0, Lcn/highlight/lib_doodle/DoodleColor;->mLevel:I

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 101
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    .line 97
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mColor:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 128
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mLevel:I

    return v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 93
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getType()Lcn/highlight/lib_doodle/DoodleColor$Type;
    .locals 1

    .line 105
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    return-object v0
.end method

.method public setColor(I)V
    .locals 1

    .line 65
    sget-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->COLOR:Lcn/highlight/lib_doodle/DoodleColor$Type;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    .line 66
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mColor:I

    return-void
.end method

.method public setColor(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 70
    sget-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->BITMAP:Lcn/highlight/lib_doodle/DoodleColor$Type;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    .line 71
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setColor(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 1

    .line 75
    sget-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->BITMAP:Lcn/highlight/lib_doodle/DoodleColor$Type;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    .line 76
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    .line 77
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setColor(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 1

    .line 81
    sget-object v0, Lcn/highlight/lib_doodle/DoodleColor$Type;->BITMAP:Lcn/highlight/lib_doodle/DoodleColor$Type;

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleColor;->mType:Lcn/highlight/lib_doodle/DoodleColor$Type;

    .line 82
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    .line 84
    iput-object p3, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileX:Landroid/graphics/Shader$TileMode;

    .line 85
    iput-object p4, p0, Lcn/highlight/lib_doodle/DoodleColor;->mTileY:Landroid/graphics/Shader$TileMode;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mLevel:I

    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleColor;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method
