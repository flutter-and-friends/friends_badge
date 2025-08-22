.class public Lcom/android/usbserial/util/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field static className:Ljava/lang/String;

.field static lineNumber:I

.field static methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "================"

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    sget-object v1, Lcom/android/usbserial/util/LogUtils;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/android/usbserial/util/LogUtils;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/android/usbserial/util/LogUtils;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")================:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/android/usbserial/util/LogUtils;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/android/usbserial/util/LogUtils;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 61
    sget-object v0, Lcom/android/usbserial/util/LogUtils;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/usbserial/util/LogUtils;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/android/usbserial/util/LogUtils;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/android/usbserial/util/LogUtils;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 47
    sget-object v0, Lcom/android/usbserial/util/LogUtils;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/usbserial/util/LogUtils;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getMethodNames([Ljava/lang/StackTraceElement;)V
    .locals 2

    const/4 v0, 0x1

    .line 38
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/usbserial/util/LogUtils;->className:Ljava/lang/String;

    .line 39
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/usbserial/util/LogUtils;->methodName:Ljava/lang/String;

    .line 40
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    sput p0, Lcom/android/usbserial/util/LogUtils;->lineNumber:I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {}, Lcom/android/usbserial/util/LogUtils;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/android/usbserial/util/LogUtils;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 54
    sget-object v0, Lcom/android/usbserial/util/LogUtils;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/usbserial/util/LogUtils;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isDebuggable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/android/usbserial/util/LogUtils;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/android/usbserial/util/LogUtils;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 68
    sget-object v0, Lcom/android/usbserial/util/LogUtils;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/usbserial/util/LogUtils;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/android/usbserial/util/LogUtils;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/android/usbserial/util/LogUtils;->getMethodNames([Ljava/lang/StackTraceElement;)V

    .line 75
    sget-object v0, Lcom/android/usbserial/util/LogUtils;->className:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/usbserial/util/LogUtils;->createLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
