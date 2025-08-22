.class public Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;
.super Lcom/apkfuns/logutils/pattern/LogPattern;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateLogPattern"
.end annotation


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/apkfuns/logutils/pattern/LogPattern;-><init>(IILcom/apkfuns/logutils/pattern/LogPattern$1;)V

    if-eqz p3, :cond_0

    .line 41
    new-instance p1, Ljava/text/SimpleDateFormat;

    invoke-direct {p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;->dateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "HH:mm:ss.SSS"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;->dateFormat:Ljava/text/SimpleDateFormat;

    :goto_0
    return-void
.end method


# virtual methods
.method protected doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
