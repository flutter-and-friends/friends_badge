.class public Lorg/devio/takephoto/compress/CompressConfig;
.super Ljava/lang/Object;
.source "CompressConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/devio/takephoto/compress/CompressConfig$Builder;
    }
.end annotation


# instance fields
.field private enablePixelCompress:Z

.field private enableQualityCompress:Z

.field private enableReserveRaw:Z

.field private lubanOptions:Lorg/devio/takephoto/model/LubanOptions;

.field private maxPixel:I

.field private maxSize:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4b0

    .line 18
    iput v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->maxPixel:I

    const v0, 0x19000

    .line 22
    iput v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->maxSize:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->enablePixelCompress:Z

    .line 31
    iput-boolean v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->enableQualityCompress:Z

    .line 36
    iput-boolean v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->enableReserveRaw:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/devio/takephoto/compress/CompressConfig$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lorg/devio/takephoto/compress/CompressConfig;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/devio/takephoto/model/LubanOptions;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4b0

    .line 18
    iput v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->maxPixel:I

    const v0, 0x19000

    .line 22
    iput v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->maxSize:I

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->enablePixelCompress:Z

    .line 31
    iput-boolean v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->enableQualityCompress:Z

    .line 36
    iput-boolean v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->enableReserveRaw:Z

    .line 55
    iput-object p1, p0, Lorg/devio/takephoto/compress/CompressConfig;->lubanOptions:Lorg/devio/takephoto/model/LubanOptions;

    return-void
.end method

.method public static ofDefaultConfig()Lorg/devio/takephoto/compress/CompressConfig;
    .locals 1

    .line 44
    new-instance v0, Lorg/devio/takephoto/compress/CompressConfig;

    invoke-direct {v0}, Lorg/devio/takephoto/compress/CompressConfig;-><init>()V

    return-object v0
.end method

.method public static ofLuban(Lorg/devio/takephoto/model/LubanOptions;)Lorg/devio/takephoto/compress/CompressConfig;
    .locals 1

    .line 48
    new-instance v0, Lorg/devio/takephoto/compress/CompressConfig;

    invoke-direct {v0, p0}, Lorg/devio/takephoto/compress/CompressConfig;-><init>(Lorg/devio/takephoto/model/LubanOptions;)V

    return-object v0
.end method


# virtual methods
.method public enablePixelCompress(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lorg/devio/takephoto/compress/CompressConfig;->enablePixelCompress:Z

    return-void
.end method

.method public enableQualityCompress(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lorg/devio/takephoto/compress/CompressConfig;->enableQualityCompress:Z

    return-void
.end method

.method public enableReserveRaw(Z)V
    .locals 0

    .line 100
    iput-boolean p1, p0, Lorg/devio/takephoto/compress/CompressConfig;->enableReserveRaw:Z

    return-void
.end method

.method public getLubanOptions()Lorg/devio/takephoto/model/LubanOptions;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->lubanOptions:Lorg/devio/takephoto/model/LubanOptions;

    return-object v0
.end method

.method public getMaxPixel()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->maxPixel:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->maxSize:I

    return v0
.end method

.method public isEnablePixelCompress()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->enablePixelCompress:Z

    return v0
.end method

.method public isEnableQualityCompress()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->enableQualityCompress:Z

    return v0
.end method

.method public isEnableReserveRaw()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/devio/takephoto/compress/CompressConfig;->enableReserveRaw:Z

    return v0
.end method

.method public setMaxPixel(I)Lorg/devio/takephoto/compress/CompressConfig;
    .locals 0

    .line 67
    iput p1, p0, Lorg/devio/takephoto/compress/CompressConfig;->maxPixel:I

    return-object p0
.end method

.method public setMaxSize(I)V
    .locals 0

    .line 76
    iput p1, p0, Lorg/devio/takephoto/compress/CompressConfig;->maxSize:I

    return-void
.end method
