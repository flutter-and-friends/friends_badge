.class public Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;
.super Ljava/lang/Object;
.source "ISCameraConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yuyh/library/imgsel/config/ISCameraConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aspectX:I

.field private aspectY:I

.field private filePath:Ljava/lang/String;

.field private needCrop:Z

.field private outputX:I

.field private outputY:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->needCrop:Z

    const/4 v0, 0x1

    .line 47
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->aspectX:I

    .line 48
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->aspectY:I

    const/16 v0, 0x190

    .line 49
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->outputX:I

    .line 50
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->outputY:I

    .line 53
    invoke-static {}, Lcom/yuyh/library/imgsel/utils/FileUtils;->isSdCardAvailable()Z

    move-result v0

    const-string v1, "/Camera"

    if-eqz v0, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->filePath:Ljava/lang/String;

    .line 58
    :goto_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/utils/FileUtils;->createDir(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->needCrop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->aspectX:I

    return p0
.end method

.method static synthetic access$300(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->aspectY:I

    return p0
.end method

.method static synthetic access$400(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->outputX:I

    return p0
.end method

.method static synthetic access$500(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->outputY:I

    return p0
.end method

.method private filePath(Ljava/lang/String;)Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/yuyh/library/imgsel/config/ISCameraConfig;
    .locals 1

    .line 80
    new-instance v0, Lcom/yuyh/library/imgsel/config/ISCameraConfig;

    invoke-direct {v0, p0}, Lcom/yuyh/library/imgsel/config/ISCameraConfig;-><init>(Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;)V

    return-object v0
.end method

.method public cropSize(IIII)Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;
    .locals 0

    .line 72
    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->aspectX:I

    .line 73
    iput p2, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->aspectY:I

    .line 74
    iput p3, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->outputX:I

    .line 75
    iput p4, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->outputY:I

    return-object p0
.end method

.method public needCrop(Z)Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/config/ISCameraConfig$Builder;->needCrop:Z

    return-object p0
.end method
