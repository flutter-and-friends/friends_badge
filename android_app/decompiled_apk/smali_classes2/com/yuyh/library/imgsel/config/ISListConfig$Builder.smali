.class public Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
.super Ljava/lang/Object;
.source "ISListConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yuyh/library/imgsel/config/ISListConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private allImagesText:Ljava/lang/String;

.field private aspectX:I

.field private aspectY:I

.field private backResId:I

.field private btnBgColor:I

.field private btnText:Ljava/lang/String;

.field private btnTextColor:I

.field private filePath:Ljava/lang/String;

.field private isDark:Z

.field private maxNum:I

.field private multiSelect:Z

.field private needCamera:Z

.field private needCrop:Z

.field private outputX:I

.field private outputY:I

.field private rememberSelected:Z

.field public statusBarColor:I

.field private title:Ljava/lang/String;

.field private titleBgColor:I

.field private titleColor:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->needCrop:Z

    const/4 v1, 0x1

    .line 122
    iput-boolean v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->multiSelect:Z

    .line 123
    iput-boolean v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->rememberSelected:Z

    const/16 v2, 0x9

    .line 124
    iput v2, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->maxNum:I

    .line 125
    iput-boolean v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->needCamera:Z

    const/4 v2, -0x1

    .line 126
    iput v2, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->statusBarColor:I

    .line 127
    iput-boolean v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->isDark:Z

    .line 128
    iput v2, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->backResId:I

    .line 138
    iput v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->aspectX:I

    .line 139
    iput v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->aspectY:I

    const/16 v1, 0x190

    .line 140
    iput v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->outputX:I

    .line 141
    iput v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->outputY:I

    .line 145
    invoke-static {}, Lcom/yuyh/library/imgsel/utils/FileUtils;->isSdCardAvailable()Z

    move-result v1

    const-string v3, "/Camera"

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->filePath:Ljava/lang/String;

    :goto_0
    const-string v1, "\u7167\u7247"

    .line 150
    iput-object v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->title:Ljava/lang/String;

    const-string v1, "#3F51B5"

    .line 151
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->titleBgColor:I

    .line 152
    iput v2, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->titleColor:I

    const-string v1, "\u786e\u5b9a"

    .line 154
    iput-object v1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->btnText:Ljava/lang/String;

    .line 155
    iput v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->btnBgColor:I

    .line 156
    iput v2, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->btnTextColor:I

    const-string v0, "\u6240\u6709\u56fe\u7247"

    .line 158
    iput-object v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->allImagesText:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->filePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/yuyh/library/imgsel/utils/FileUtils;->createDir(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->needCrop:Z

    return p0
.end method

.method static synthetic access$100(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->multiSelect:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->btnText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->btnBgColor:I

    return p0
.end method

.method static synthetic access$1200(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->btnTextColor:I

    return p0
.end method

.method static synthetic access$1300(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->allImagesText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->aspectX:I

    return p0
.end method

.method static synthetic access$1600(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->aspectY:I

    return p0
.end method

.method static synthetic access$1700(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->outputX:I

    return p0
.end method

.method static synthetic access$1800(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->outputY:I

    return p0
.end method

.method static synthetic access$200(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->rememberSelected:Z

    return p0
.end method

.method static synthetic access$300(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->maxNum:I

    return p0
.end method

.method static synthetic access$400(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->needCamera:Z

    return p0
.end method

.method static synthetic access$500(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Z
    .locals 0

    .line 119
    iget-boolean p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->isDark:Z

    return p0
.end method

.method static synthetic access$600(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->backResId:I

    return p0
.end method

.method static synthetic access$700(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)Ljava/lang/String;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->titleBgColor:I

    return p0
.end method

.method static synthetic access$900(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)I
    .locals 0

    .line 119
    iget p0, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->titleColor:I

    return p0
.end method

.method private filePath(Ljava/lang/String;)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->filePath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public allImagesText(Ljava/lang/String;)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->allImagesText:Ljava/lang/String;

    return-object p0
.end method

.method public backResId(I)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 199
    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->backResId:I

    return-object p0
.end method

.method public btnBgColor(I)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 229
    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->btnBgColor:I

    return-object p0
.end method

.method public btnText(Ljava/lang/String;)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->btnText:Ljava/lang/String;

    return-object p0
.end method

.method public btnTextColor(I)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 224
    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->btnTextColor:I

    return-object p0
.end method

.method public build()Lcom/yuyh/library/imgsel/config/ISListConfig;
    .locals 1

    .line 252
    new-instance v0, Lcom/yuyh/library/imgsel/config/ISListConfig;

    invoke-direct {v0, p0}, Lcom/yuyh/library/imgsel/config/ISListConfig;-><init>(Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;)V

    return-object v0
.end method

.method public cropSize(IIII)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 244
    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->aspectX:I

    .line 245
    iput p2, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->aspectY:I

    .line 246
    iput p3, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->outputX:I

    .line 247
    iput p4, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->outputY:I

    return-object p0
.end method

.method public isDarkStatusStyle(Z)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->isDark:Z

    return-object p0
.end method

.method public maxNum(I)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 179
    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->maxNum:I

    return-object p0
.end method

.method public multiSelect(Z)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->multiSelect:Z

    return-object p0
.end method

.method public needCamera(Z)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->needCamera:Z

    return-object p0
.end method

.method public needCrop(Z)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->needCrop:Z

    return-object p0
.end method

.method public rememberSelected(Z)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->rememberSelected:Z

    return-object p0
.end method

.method public statusBarColor(I)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 189
    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->statusBarColor:I

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public titleBgColor(I)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 214
    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->titleBgColor:I

    return-object p0
.end method

.method public titleColor(I)Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;
    .locals 0

    .line 209
    iput p1, p0, Lcom/yuyh/library/imgsel/config/ISListConfig$Builder;->titleColor:I

    return-object p0
.end method
