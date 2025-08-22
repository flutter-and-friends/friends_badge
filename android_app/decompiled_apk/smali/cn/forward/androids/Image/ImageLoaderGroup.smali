.class public Lcn/forward/androids/Image/ImageLoaderGroup;
.super Ljava/lang/Object;
.source "ImageLoaderGroup.java"

# interfaces
.implements Lcn/forward/androids/Image/ImageLoader;


# instance fields
.field private mImageCache:Lcn/forward/androids/Image/ImageCache;

.field private mImageLoaderConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

.field private mImageLoaders:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcn/forward/androids/Image/ImageLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit8 v1, v1, 0x8

    const-wide/32 v2, 0x1900000

    invoke-direct {p0, p1, v1, v2, v3}, Lcn/forward/androids/Image/ImageLoaderGroup;-><init>(Landroid/content/Context;IJ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcn/forward/androids/Image/ImageLoaderGroup;-><init>(Landroid/content/Context;Lcn/forward/androids/Image/ImageLoaderConfig;)V

    .line 24
    new-instance v0, Lcn/forward/androids/Image/ImageCache;

    invoke-direct {v0, p1, p2, p3, p4}, Lcn/forward/androids/Image/ImageCache;-><init>(Landroid/content/Context;IJ)V

    iput-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageCache:Lcn/forward/androids/Image/ImageCache;

    .line 25
    new-instance p1, Lcn/forward/androids/Image/ImageLoaderConfig;

    iget-object p2, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageCache:Lcn/forward/androids/Image/ImageCache;

    invoke-direct {p1, p2}, Lcn/forward/androids/Image/ImageLoaderConfig;-><init>(Lcn/forward/androids/Image/ImageCache;)V

    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaderConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/forward/androids/Image/ImageLoaderConfig;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaders:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 30
    iput-object p2, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaderConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    return-void
.end method


# virtual methods
.method public addImageLoader(Lcn/forward/androids/Image/ImageLoader;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearAllImageLoaders()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public containImageLoader(Lcn/forward/androids/Image/ImageLoader;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getImageCache()Lcn/forward/androids/Image/ImageCache;
    .locals 1

    .line 102
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageCache:Lcn/forward/androids/Image/ImageCache;

    return-object v0
.end method

.method public getImageLoaderConfig()Lcn/forward/androids/Image/ImageLoaderConfig;
    .locals 1

    .line 38
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaderConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    return-object v0
.end method

.method public load(Landroid/view/View;Ljava/lang/String;)Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaderConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/forward/androids/Image/ImageLoaderGroup;->load(Landroid/view/View;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z

    move-result p1

    return p1
.end method

.method public load(Landroid/view/View;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v1, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/forward/androids/Image/ImageLoader;

    .line 48
    invoke-interface {v2, p1, p2, p3, p4}, Lcn/forward/androids/Image/ImageLoader;->load(Landroid/view/View;Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public load(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaderConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    invoke-virtual {p0, p1, v0, p2}, Lcn/forward/androids/Image/ImageLoaderGroup;->load(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z

    move-result p1

    return p1
.end method

.method public load(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z
    .locals 3

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/forward/androids/Image/ImageLoader;

    .line 63
    invoke-interface {v2, p1, p2, p3}, Lcn/forward/androids/Image/ImageLoader;->load(Ljava/lang/String;Lcn/forward/androids/Image/ImageLoaderConfig;Lcn/forward/androids/Image/ImageLoader$ImageLoaderListener;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public removeImageLoader(Lcn/forward/androids/Image/ImageLoader;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaders:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setImageLoaderConfig(Lcn/forward/androids/Image/ImageLoaderConfig;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/forward/androids/Image/ImageLoaderGroup;->mImageLoaderConfig:Lcn/forward/androids/Image/ImageLoaderConfig;

    return-void
.end method
