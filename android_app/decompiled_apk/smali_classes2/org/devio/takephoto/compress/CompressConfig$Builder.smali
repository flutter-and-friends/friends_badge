.class public Lorg/devio/takephoto/compress/CompressConfig$Builder;
.super Ljava/lang/Object;
.source "CompressConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/devio/takephoto/compress/CompressConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private config:Lorg/devio/takephoto/compress/CompressConfig;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lorg/devio/takephoto/compress/CompressConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/devio/takephoto/compress/CompressConfig;-><init>(Lorg/devio/takephoto/compress/CompressConfig$1;)V

    iput-object v0, p0, Lorg/devio/takephoto/compress/CompressConfig$Builder;->config:Lorg/devio/takephoto/compress/CompressConfig;

    return-void
.end method


# virtual methods
.method public create()Lorg/devio/takephoto/compress/CompressConfig;
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressConfig$Builder;->config:Lorg/devio/takephoto/compress/CompressConfig;

    return-object v0
.end method

.method public enablePixelCompress(Z)Lorg/devio/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressConfig$Builder;->config:Lorg/devio/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/compress/CompressConfig;->enablePixelCompress(Z)V

    return-object p0
.end method

.method public enableQualityCompress(Z)Lorg/devio/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressConfig$Builder;->config:Lorg/devio/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/compress/CompressConfig;->enableQualityCompress(Z)V

    return-object p0
.end method

.method public enableReserveRaw(Z)Lorg/devio/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressConfig$Builder;->config:Lorg/devio/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/compress/CompressConfig;->enableReserveRaw(Z)V

    return-object p0
.end method

.method public setMaxPixel(I)Lorg/devio/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressConfig$Builder;->config:Lorg/devio/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/compress/CompressConfig;->setMaxPixel(I)Lorg/devio/takephoto/compress/CompressConfig;

    return-object p0
.end method

.method public setMaxSize(I)Lorg/devio/takephoto/compress/CompressConfig$Builder;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/devio/takephoto/compress/CompressConfig$Builder;->config:Lorg/devio/takephoto/compress/CompressConfig;

    invoke-virtual {v0, p1}, Lorg/devio/takephoto/compress/CompressConfig;->setMaxSize(I)V

    return-object p0
.end method
