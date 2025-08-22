.class public Lme/shaohui/advancedluban/Luban;
.super Ljava/lang/Object;
.source "Luban.java"


# static fields
.field public static final CUSTOM_GEAR:I = 0x4

.field private static DEFAULT_DISK_CACHE_DIR:Ljava/lang/String; = "luban_disk_cache"

.field public static final FIRST_GEAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Luban"

.field public static final THIRD_GEAR:I = 0x3


# instance fields
.field private mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

.field private mFile:Ljava/io/File;

.field private mFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lme/shaohui/advancedluban/LubanBuilder;

    invoke-direct {v0, p1}, Lme/shaohui/advancedluban/LubanBuilder;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    return-void
.end method

.method public static compress(Landroid/content/Context;Ljava/io/File;)Lme/shaohui/advancedluban/Luban;
    .locals 1

    .line 61
    new-instance v0, Lme/shaohui/advancedluban/Luban;

    invoke-static {p0}, Lme/shaohui/advancedluban/Luban;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lme/shaohui/advancedluban/Luban;-><init>(Ljava/io/File;)V

    .line 62
    iput-object p1, v0, Lme/shaohui/advancedluban/Luban;->mFile:Ljava/io/File;

    .line 63
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Lme/shaohui/advancedluban/Luban;->mFileList:Ljava/util/List;

    return-object v0
.end method

.method public static compress(Landroid/content/Context;Ljava/util/List;)Lme/shaohui/advancedluban/Luban;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Lme/shaohui/advancedluban/Luban;"
        }
    .end annotation

    .line 68
    new-instance v0, Lme/shaohui/advancedluban/Luban;

    invoke-static {p0}, Lme/shaohui/advancedluban/Luban;->getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Lme/shaohui/advancedluban/Luban;-><init>(Ljava/io/File;)V

    .line 69
    iput-object p1, v0, Lme/shaohui/advancedluban/Luban;->mFileList:Ljava/util/List;

    const/4 p0, 0x0

    .line 70
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    iput-object p0, v0, Lme/shaohui/advancedluban/Luban;->mFile:Ljava/io/File;

    return-object v0
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 4

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 248
    invoke-direct {p0, v3}, Lme/shaohui/advancedluban/Luban;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static getPhotoCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 201
    sget-object v0, Lme/shaohui/advancedluban/Luban;->DEFAULT_DISK_CACHE_DIR:Ljava/lang/String;

    invoke-static {p0, v0}, Lme/shaohui/advancedluban/Luban;->getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getPhotoCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 216
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    :cond_2
    const/4 p0, 0x6

    const-string p1, "Luban"

    .line 223
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "default disk cache dir is null"

    .line 224
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method


# virtual methods
.method public asListObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation

    .line 186
    new-instance v0, Lme/shaohui/advancedluban/LubanCompresser;

    iget-object v1, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    invoke-direct {v0, v1}, Lme/shaohui/advancedluban/LubanCompresser;-><init>(Lme/shaohui/advancedluban/LubanBuilder;)V

    .line 187
    iget-object v1, p0, Lme/shaohui/advancedluban/Luban;->mFileList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/LubanCompresser;->multiAction(Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public asObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 177
    new-instance v0, Lme/shaohui/advancedluban/LubanCompresser;

    iget-object v1, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    invoke-direct {v0, v1}, Lme/shaohui/advancedluban/LubanCompresser;-><init>(Lme/shaohui/advancedluban/LubanBuilder;)V

    .line 178
    iget-object v1, p0, Lme/shaohui/advancedluban/Luban;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lme/shaohui/advancedluban/LubanCompresser;->singleAction(Ljava/io/File;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public clearCache()Lme/shaohui/advancedluban/Luban;
    .locals 1

    .line 235
    iget-object v0, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    iget-object v0, v0, Lme/shaohui/advancedluban/LubanBuilder;->cacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    iget-object v0, v0, Lme/shaohui/advancedluban/LubanBuilder;->cacheDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lme/shaohui/advancedluban/Luban;->deleteFile(Ljava/io/File;)V

    :cond_0
    return-object p0
.end method

.method public launch(Lme/shaohui/advancedluban/OnCompressListener;)V
    .locals 3

    .line 129
    invoke-virtual {p0}, Lme/shaohui/advancedluban/Luban;->asObservable()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lme/shaohui/advancedluban/Luban$3;

    invoke-direct {v1, p0, p1}, Lme/shaohui/advancedluban/Luban$3;-><init>(Lme/shaohui/advancedluban/Luban;Lme/shaohui/advancedluban/OnCompressListener;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnRequest(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lme/shaohui/advancedluban/Luban$1;

    invoke-direct {v1, p0, p1}, Lme/shaohui/advancedluban/Luban$1;-><init>(Lme/shaohui/advancedluban/Luban;Lme/shaohui/advancedluban/OnCompressListener;)V

    new-instance v2, Lme/shaohui/advancedluban/Luban$2;

    invoke-direct {v2, p0, p1}, Lme/shaohui/advancedluban/Luban$2;-><init>(Lme/shaohui/advancedluban/Luban;Lme/shaohui/advancedluban/OnCompressListener;)V

    .line 134
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public launch(Lme/shaohui/advancedluban/OnMultiCompressListener;)V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lme/shaohui/advancedluban/Luban;->asListObservable()Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lme/shaohui/advancedluban/Luban$6;

    invoke-direct {v1, p0, p1}, Lme/shaohui/advancedluban/Luban$6;-><init>(Lme/shaohui/advancedluban/Luban;Lme/shaohui/advancedluban/OnMultiCompressListener;)V

    .line 153
    invoke-virtual {v0, v1}, Lrx/Observable;->doOnRequest(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lme/shaohui/advancedluban/Luban$4;

    invoke-direct {v1, p0, p1}, Lme/shaohui/advancedluban/Luban$4;-><init>(Lme/shaohui/advancedluban/Luban;Lme/shaohui/advancedluban/OnMultiCompressListener;)V

    new-instance v2, Lme/shaohui/advancedluban/Luban$5;

    invoke-direct {v2, p0, p1}, Lme/shaohui/advancedluban/Luban$5;-><init>(Lme/shaohui/advancedluban/Luban;Lme/shaohui/advancedluban/OnMultiCompressListener;)V

    .line 159
    invoke-virtual {v0, v1, v2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public putGear(I)Lme/shaohui/advancedluban/Luban;
    .locals 1

    .line 80
    iget-object v0, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    iput p1, v0, Lme/shaohui/advancedluban/LubanBuilder;->gear:I

    return-object p0
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)Lme/shaohui/advancedluban/Luban;
    .locals 1

    .line 90
    iget-object v0, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    iput-object p1, v0, Lme/shaohui/advancedluban/LubanBuilder;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public setMaxHeight(I)Lme/shaohui/advancedluban/Luban;
    .locals 1

    .line 120
    iget-object v0, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    iput p1, v0, Lme/shaohui/advancedluban/LubanBuilder;->maxHeight:I

    return-object p0
.end method

.method public setMaxSize(I)Lme/shaohui/advancedluban/Luban;
    .locals 1

    .line 100
    iget-object v0, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    iput p1, v0, Lme/shaohui/advancedluban/LubanBuilder;->maxSize:I

    return-object p0
.end method

.method public setMaxWidth(I)Lme/shaohui/advancedluban/Luban;
    .locals 1

    .line 110
    iget-object v0, p0, Lme/shaohui/advancedluban/Luban;->mBuilder:Lme/shaohui/advancedluban/LubanBuilder;

    iput p1, v0, Lme/shaohui/advancedluban/LubanBuilder;->maxWidth:I

    return-object p0
.end method
