.class public abstract Lcom/apkfuns/logutils/pattern/LogPattern;
.super Ljava/lang/Object;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;,
        Lcom/apkfuns/logutils/pattern/LogPattern$ThreadNameLogPattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$ConcatenateLogPattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;,
        Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;
    }
.end annotation


# instance fields
.field private final count:I

.field private final length:I


# direct methods
.method private constructor <init>(II)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern;->count:I

    .line 143
    iput p2, p0, Lcom/apkfuns/logutils/pattern/LogPattern;->length:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/apkfuns/logutils/pattern/LogPattern$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/apkfuns/logutils/pattern/LogPattern;-><init>(II)V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/apkfuns/logutils/pattern/LogPattern;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 159
    :cond_0
    :try_start_0
    new-instance v0, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;

    invoke-direct {v0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;-><init>()V

    invoke-virtual {v0, p0}, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->compile(Ljava/lang/String;)Lcom/apkfuns/logutils/pattern/LogPattern;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 161
    :catch_0
    new-instance v0, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0}, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;-><init>(IILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final apply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 2

    .line 147
    invoke-virtual {p0, p1}, Lcom/apkfuns/logutils/pattern/LogPattern;->doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p1

    .line 148
    iget v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern;->count:I

    iget v1, p0, Lcom/apkfuns/logutils/pattern/LogPattern;->length:I

    invoke-static {p1, v0, v1}, Lcom/apkfuns/logutils/utils/Utils;->shorten(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
.end method

.method protected isCallerNeeded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
