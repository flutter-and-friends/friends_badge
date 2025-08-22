.class Lcom/apkfuns/logutils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/apkfuns/logutils/Printer;


# instance fields
.field private final localTags:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

.field private mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/apkfuns/logutils/Logger;->localTags:Ljava/lang/ThreadLocal;

    .line 41
    invoke-static {}, Lcom/apkfuns/logutils/LogConfigImpl;->getInstance()Lcom/apkfuns/logutils/LogConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    .line 42
    invoke-static {}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getInstance()Lcom/apkfuns/logutils/Log2FileConfigImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    .line 43
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    sget-object v1, Lcom/apkfuns/logutils/Constant;->DEFAULT_PARSE_CLASS:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/apkfuns/logutils/LogConfigImpl;->addParserClass([Ljava/lang/Class;)Lcom/apkfuns/logutils/LogConfig;

    return-void
.end method

.method private generateTag()Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->localTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/apkfuns/logutils/Logger;->localTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v0}, Lcom/apkfuns/logutils/LogConfigImpl;->getTagPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentStackTrace()Ljava/lang/StackTraceElement;
    .locals 3

    .line 150
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 151
    const-class v1, Lcom/apkfuns/logutils/LogUtils;

    invoke-direct {p0, v0, v1}, Lcom/apkfuns/logutils/Logger;->getStackOffset([Ljava/lang/StackTraceElement;Ljava/lang/Class;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 153
    const-class v1, Lcom/apkfuns/logutils/Logger;

    invoke-direct {p0, v0, v1}, Lcom/apkfuns/logutils/Logger;->getStackOffset([Ljava/lang/StackTraceElement;Ljava/lang/Class;)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/LogConfigImpl;->getMethodOffset()I

    move-result v2

    if-lez v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/LogConfigImpl;->getMethodOffset()I

    move-result v2

    add-int/2addr v1, v2

    .line 161
    :cond_1
    aget-object v0, v0, v1

    return-object v0
.end method

.method private getStackOffset([Ljava/lang/StackTraceElement;Ljava/lang/Class;)I
    .locals 5

    .line 186
    const-class v0, Lcom/apkfuns/logutils/Logger;

    const/4 v1, 0x5

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 187
    aget-object v2, p1, v1

    .line 188
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private getTopStackInfo()Ljava/lang/String;
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getCurrentStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apkfuns/logutils/LogConfigImpl;->getFormatTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getCurrentStackTrace()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    .line 181
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const-string v0, "%s.%s%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private logObject(ILjava/lang/Object;)V
    .locals 1

    .line 127
    invoke-static {p2}, Lcom/apkfuns/logutils/utils/ObjectUtil;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs logString(ILjava/lang/String;Z[Ljava/lang/Object;)V
    .locals 7

    .line 71
    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->generateTag()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_1

    .line 73
    array-length v1, p4

    if-lez v1, :cond_0

    .line 75
    :try_start_0
    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    :cond_0
    invoke-direct {p0, v0, p2, p1}, Lcom/apkfuns/logutils/Logger;->writeToFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v1}, Lcom/apkfuns/logutils/LogConfigImpl;->isEnable()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v1}, Lcom/apkfuns/logutils/LogConfigImpl;->getLogLevel()I

    move-result v1

    if-ge p1, v1, :cond_3

    return-void

    .line 86
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc00

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-le v1, v2, :cond_7

    .line 87
    iget-object p3, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {p3}, Lcom/apkfuns/logutils/LogConfigImpl;->isShowBorder()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 88
    invoke-static {v6}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getTopStackInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v4}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_4
    invoke-static {p2}, Lcom/apkfuns/logutils/utils/Utils;->largeStringToList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 93
    invoke-direct {p0, p1, p3, v6, p4}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;Z[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :cond_5
    iget-object p2, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {p2}, Lcom/apkfuns/logutils/LogConfigImpl;->isShowBorder()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 96
    invoke-static {v3}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    .line 100
    :cond_7
    iget-object p4, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {p4}, Lcom/apkfuns/logutils/LogConfigImpl;->isShowBorder()Z

    move-result p4

    if-eqz p4, :cond_a

    const/4 p4, 0x0

    if-eqz p3, :cond_8

    .line 102
    sget-object p3, Lcom/apkfuns/logutils/Constant;->BR:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    :goto_1
    if-ge p4, p3, :cond_b

    aget-object v1, p2, p4

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 106
    :cond_8
    invoke-static {v6}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getTopStackInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {v4}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, v0, p3}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object p3, Lcom/apkfuns/logutils/Constant;->BR:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length p3, p2

    :goto_2
    if-ge p4, p3, :cond_9

    aget-object v1, p2, p4

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 112
    :cond_9
    invoke-static {v3}, Lcom/apkfuns/logutils/utils/Utils;->printDividingLine(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 115
    :cond_a
    invoke-direct {p0, p1, v0, p2}, Lcom/apkfuns/logutils/Logger;->printLog(ILjava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private varargs declared-synchronized logString(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 67
    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;Z[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private printLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v0}, Lcom/apkfuns/logutils/LogConfigImpl;->isShowBorder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/apkfuns/logutils/Logger;->getTopStackInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    invoke-static {p2, p3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 339
    :pswitch_1
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :pswitch_2
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :pswitch_3
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 330
    :pswitch_4
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    :pswitch_5
    invoke-static {p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 356
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getFileFilter()Lcom/apkfuns/logutils/file/LogFileFilter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    .line 360
    invoke-virtual {v0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getFileFilter()Lcom/apkfuns/logutils/file/LogFileFilter;

    move-result-object v0

    invoke-interface {v0, p3, p1, p2}, Lcom/apkfuns/logutils/file/LogFileFilter;->accept(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogLevel()I

    move-result v0

    if-ge p3, v0, :cond_2

    return-void

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v0}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogPath()Ljava/lang/String;

    move-result-object v0

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_3

    const-string p2, "LogUtils write to logFile error. No sdcard access permission?"

    .line 369
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 372
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Log2FilePath is an invalid path"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 374
    :cond_4
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {v2}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getLogFormatName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v0, Lcom/apkfuns/logutils/file/LogFileParam;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 376
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v0

    move v6, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/apkfuns/logutils/file/LogFileParam;-><init>(JILjava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {p1}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getEngine()Lcom/apkfuns/logutils/file/LogFileEngine;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 378
    iget-object p1, p0, Lcom/apkfuns/logutils/Logger;->log2FileConfig:Lcom/apkfuns/logutils/Log2FileConfigImpl;

    invoke-virtual {p1}, Lcom/apkfuns/logutils/Log2FileConfigImpl;->getEngine()Lcom/apkfuns/logutils/file/LogFileEngine;

    move-result-object p1

    invoke-interface {p1, v1, p2, v0}, Lcom/apkfuns/logutils/file/LogFileEngine;->writeToFile(Ljava/io/File;Ljava/lang/String;Lcom/apkfuns/logutils/file/LogFileParam;)V

    return-void

    .line 380
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "LogFileEngine must not Null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 207
    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 202
    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 217
    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 212
    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 237
    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 232
    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public json(Ljava/lang/String;)V
    .locals 2

    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "JSON{json is empty}"

    .line 270
    invoke-virtual {p0, p1}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V

    return-void

    :cond_0
    :try_start_0
    const-string v0, "{"

    .line 274
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    .line 275
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p0, v0}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "["

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p0, v0}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\njson = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apkfuns/logutils/Logger;->e(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTag(Ljava/lang/String;)Lcom/apkfuns/logutils/Printer;
    .locals 1

    .line 53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->mLogConfig:Lcom/apkfuns/logutils/LogConfigImpl;

    invoke-virtual {v0}, Lcom/apkfuns/logutils/LogConfigImpl;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/apkfuns/logutils/Logger;->localTags:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public v(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 247
    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 227
    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 222
    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public wtf(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 257
    invoke-direct {p0, v0, p1}, Lcom/apkfuns/logutils/Logger;->logObject(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 252
    invoke-direct {p0, v0, p1, p2}, Lcom/apkfuns/logutils/Logger;->logString(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public xml(Ljava/lang/String;)V
    .locals 5

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "XML{xml is empty}"

    .line 297
    invoke-virtual {p0, p1}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V

    return-void

    .line 301
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 302
    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v1, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 303
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    const-string v3, "indent"

    const-string v4, "yes"

    .line 304
    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "{http://xml.apache.org/xslt}indent-amount"

    const-string v4, "2"

    .line 305
    invoke-virtual {v2, v3, v4}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v2, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 307
    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, ">\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apkfuns/logutils/Logger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\nxml = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apkfuns/logutils/Logger;->e(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
