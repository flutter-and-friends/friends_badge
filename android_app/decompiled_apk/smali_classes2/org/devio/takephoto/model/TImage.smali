.class public Lorg/devio/takephoto/model/TImage;
.super Ljava/lang/Object;
.source "TImage.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/devio/takephoto/model/TImage$FromType;
    }
.end annotation


# instance fields
.field private compressPath:Ljava/lang/String;

.field private compressed:Z

.field private cropped:Z

.field private fromType:Lorg/devio/takephoto/model/TImage$FromType;

.field private originalPath:Ljava/lang/String;

.field private tempPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/devio/takephoto/model/TImage;->originalPath:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/devio/takephoto/model/TImage;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/devio/takephoto/model/TImage;->tempPath:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/devio/takephoto/model/TImage;->originalPath:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/devio/takephoto/model/TImage;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/devio/takephoto/model/TImage;->originalPath:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lorg/devio/takephoto/model/TImage;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    return-void
.end method

.method public static of(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;
    .locals 1

    .line 26
    new-instance v0, Lorg/devio/takephoto/model/TImage;

    invoke-direct {v0, p0, p1}, Lorg/devio/takephoto/model/TImage;-><init>(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;
    .locals 1

    .line 30
    new-instance v0, Lorg/devio/takephoto/model/TImage;

    invoke-direct {v0, p0, p1, p2}, Lorg/devio/takephoto/model/TImage;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;
    .locals 1

    .line 22
    new-instance v0, Lorg/devio/takephoto/model/TImage;

    invoke-direct {v0, p0, p1}, Lorg/devio/takephoto/model/TImage;-><init>(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)V

    return-object v0
.end method


# virtual methods
.method public getCompressPath()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/devio/takephoto/model/TImage;->compressPath:Ljava/lang/String;

    return-object v0
.end method

.method public getFromType()Lorg/devio/takephoto/model/TImage$FromType;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/devio/takephoto/model/TImage;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    return-object v0
.end method

.method public getOriginalPath()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/devio/takephoto/model/TImage;->originalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTempPath()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/devio/takephoto/model/TImage;->tempPath:Ljava/lang/String;

    return-object v0
.end method

.method public isCompressed()Z
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/devio/takephoto/model/TImage;->compressed:Z

    return v0
.end method

.method public isCropped()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lorg/devio/takephoto/model/TImage;->cropped:Z

    return v0
.end method

.method public setCompressPath(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/devio/takephoto/model/TImage;->compressPath:Ljava/lang/String;

    return-void
.end method

.method public setCompressed(Z)V
    .locals 0

    .line 94
    iput-boolean p1, p0, Lorg/devio/takephoto/model/TImage;->compressed:Z

    return-void
.end method

.method public setCropped(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lorg/devio/takephoto/model/TImage;->cropped:Z

    return-void
.end method

.method public setFromType(Lorg/devio/takephoto/model/TImage$FromType;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/devio/takephoto/model/TImage;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    return-void
.end method

.method public setOriginalPath(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lorg/devio/takephoto/model/TImage;->originalPath:Ljava/lang/String;

    return-void
.end method

.method public setTempPath(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/devio/takephoto/model/TImage;->tempPath:Ljava/lang/String;

    return-void
.end method
