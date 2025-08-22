.class Lcom/apkfuns/logutils/LogConfigImpl;
.super Ljava/lang/Object;
.source "LogConfigImpl.java"

# interfaces
.implements Lcom/apkfuns/logutils/LogConfig;


# static fields
.field private static singleton:Lcom/apkfuns/logutils/LogConfigImpl;


# instance fields
.field private enable:Z

.field private formatTag:Ljava/lang/String;

.field private logLevel:I

.field private methodOffset:I

.field private parseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apkfuns/logutils/Parser;",
            ">;"
        }
    .end annotation
.end field

.field private showBorder:Z

.field private tagPrefix:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->enable:Z

    .line 19
    iput-boolean v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->showBorder:Z

    .line 20
    iput v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->logLevel:I

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->methodOffset:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->parseList:Ljava/util/List;

    return-void
.end method

.method static getInstance()Lcom/apkfuns/logutils/LogConfigImpl;
    .locals 2

    .line 33
    sget-object v0, Lcom/apkfuns/logutils/LogConfigImpl;->singleton:Lcom/apkfuns/logutils/LogConfigImpl;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/apkfuns/logutils/LogConfigImpl;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/apkfuns/logutils/LogConfigImpl;->singleton:Lcom/apkfuns/logutils/LogConfigImpl;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-direct {v1}, Lcom/apkfuns/logutils/LogConfigImpl;-><init>()V

    sput-object v1, Lcom/apkfuns/logutils/LogConfigImpl;->singleton:Lcom/apkfuns/logutils/LogConfigImpl;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/apkfuns/logutils/LogConfigImpl;->singleton:Lcom/apkfuns/logutils/LogConfigImpl;

    return-object v0
.end method


# virtual methods
.method public varargs addParserClass([Ljava/lang/Class;)Lcom/apkfuns/logutils/LogConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "+",
            "Lcom/apkfuns/logutils/Parser;",
            ">;)",
            "Lcom/apkfuns/logutils/LogConfig;"
        }
    .end annotation

    .line 93
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 95
    :try_start_0
    iget-object v4, p0, Lcom/apkfuns/logutils/LogConfigImpl;->parseList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 97
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public configAllowLog(Z)Lcom/apkfuns/logutils/LogConfig;
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->enable:Z

    return-object p0
.end method

.method public configFormatTag(Ljava/lang/String;)Lcom/apkfuns/logutils/LogConfig;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->formatTag:Ljava/lang/String;

    return-object p0
.end method

.method public configLevel(I)Lcom/apkfuns/logutils/LogConfig;
    .locals 0

    .line 86
    iput p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->logLevel:I

    return-object p0
.end method

.method public configMethodOffset(I)Lcom/apkfuns/logutils/LogConfig;
    .locals 0

    .line 76
    iput p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->methodOffset:I

    return-object p0
.end method

.method public configShowBorders(Z)Lcom/apkfuns/logutils/LogConfig;
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->showBorder:Z

    return-object p0
.end method

.method public configTagPrefix(Ljava/lang/String;)Lcom/apkfuns/logutils/LogConfig;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/apkfuns/logutils/LogConfigImpl;->tagPrefix:Ljava/lang/String;

    return-object p0
.end method

.method public getFormatTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->formatTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->formatTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/apkfuns/logutils/pattern/LogPattern;->compile(Ljava/lang/String;)Lcom/apkfuns/logutils/pattern/LogPattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apkfuns/logutils/pattern/LogPattern;->apply(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLogLevel()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->logLevel:I

    return v0
.end method

.method public getMethodOffset()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->methodOffset:I

    return v0
.end method

.method public getParseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/apkfuns/logutils/Parser;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->parseList:Ljava/util/List;

    return-object v0
.end method

.method public getTagPrefix()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->tagPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LogUtils"

    return-object v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->tagPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->enable:Z

    return v0
.end method

.method public isShowBorder()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/apkfuns/logutils/LogConfigImpl;->showBorder:Z

    return v0
.end method
