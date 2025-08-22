.class Lcom/apkfuns/logutils/Log2FileConfigImpl;
.super Ljava/lang/Object;
.source "Log2FileConfigImpl.java"

# interfaces
.implements Lcom/apkfuns/logutils/Log2FileConfig;


# static fields
.field public static final DEFAULT_LOG_NAME_FORMAT:Ljava/lang/String; = "%d{yyyyMMdd}.txt"

.field private static singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;


# instance fields
.field private enable:Z

.field private engine:Lcom/apkfuns/logutils/file/LogFileEngine;

.field private fileFilter:Lcom/apkfuns/logutils/file/LogFileFilter;

.field private logFormatName:Ljava/lang/String;

.field private logLevel:I

.field private logPath:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logLevel:I

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->enable:Z

    const-string v0, "%d{yyyyMMdd}.txt"

    .line 25
    iput-object v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logFormatName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/apkfuns/logutils/Log2FileConfigImpl;
    .locals 2

    .line 30
    sget-object v0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/apkfuns/logutils/Log2FileConfigImpl;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/apkfuns/logutils/Log2FileConfigImpl;->singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-direct {v1}, Lcom/apkfuns/logutils/Log2FileConfigImpl;-><init>()V

    sput-object v1, Lcom/apkfuns/logutils/Log2FileConfigImpl;->singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->singleton:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    return-object v0
.end method


# virtual methods
.method public configLog2FileEnable(Z)Lcom/apkfuns/logutils/Log2FileConfig;
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->enable:Z

    return-object p0
.end method

.method public configLog2FileLevel(I)Lcom/apkfuns/logutils/Log2FileConfig;
    .locals 0

    .line 99
    iput p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logLevel:I

    return-object p0
.end method

.method public configLog2FileNameFormat(Ljava/lang/String;)Lcom/apkfuns/logutils/Log2FileConfig;
    .locals 1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iput-object p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logFormatName:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public configLog2FilePath(Ljava/lang/String;)Lcom/apkfuns/logutils/Log2FileConfig;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    return-object p0
.end method

.method public configLogFileEngine(Lcom/apkfuns/logutils/file/LogFileEngine;)Lcom/apkfuns/logutils/Log2FileConfig;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->engine:Lcom/apkfuns/logutils/file/LogFileEngine;

    return-object p0
.end method

.method public configLogFileFilter(Lcom/apkfuns/logutils/file/LogFileFilter;)Lcom/apkfuns/logutils/Log2FileConfig;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->fileFilter:Lcom/apkfuns/logutils/file/LogFileFilter;

    return-object p0
.end method

.method public getDefaultPath()Ljava/lang/String;
    .locals 2

    .line 141
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "LogUtils"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "logs"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Sdcard No Access, please config Log2FilePath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEngine()Lcom/apkfuns/logutils/file/LogFileEngine;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->engine:Lcom/apkfuns/logutils/file/LogFileEngine;

    return-object v0
.end method

.method public getFileFilter()Lcom/apkfuns/logutils/file/LogFileFilter;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->fileFilter:Lcom/apkfuns/logutils/file/LogFileFilter;

    return-object v0
.end method

.method public getLogFile()Ljava/io/File;
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogPath()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLogFormatName()Ljava/lang/String;
    .locals 2

    .line 94
    new-instance v0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;

    iget-object v1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logFormatName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->doApply()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logLevel:I

    return v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    return-object v0

    .line 68
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->logPath:Ljava/lang/String;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/apkfuns/logutils/Log2FileConfigImpl;->enable:Z

    return v0
.end method
