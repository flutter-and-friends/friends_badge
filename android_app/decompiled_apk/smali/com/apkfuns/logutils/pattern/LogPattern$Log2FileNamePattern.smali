.class public Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;
.super Ljava/lang/Object;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Log2FileNamePattern"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private patternString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->patternString:Ljava/lang/String;

    .line 272
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public doApply()Ljava/lang/String;
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->patternString:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    sget-object v1, Lcom/apkfuns/logutils/pattern/LogPattern$Compiler;->DATE_PATTERN_SHORT:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->patternString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 281
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 282
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 283
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/apkfuns/logutils/pattern/LogPattern$Log2FileNamePattern;->date:Ljava/util/Date;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 285
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method
