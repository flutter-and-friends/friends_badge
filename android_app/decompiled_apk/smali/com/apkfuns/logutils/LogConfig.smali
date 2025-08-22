.class public interface abstract Lcom/apkfuns/logutils/LogConfig;
.super Ljava/lang/Object;
.source "LogConfig.java"


# virtual methods
.method public varargs abstract addParserClass([Ljava/lang/Class;)Lcom/apkfuns/logutils/LogConfig;
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
.end method

.method public abstract configAllowLog(Z)Lcom/apkfuns/logutils/LogConfig;
.end method

.method public abstract configFormatTag(Ljava/lang/String;)Lcom/apkfuns/logutils/LogConfig;
.end method

.method public abstract configLevel(I)Lcom/apkfuns/logutils/LogConfig;
.end method

.method public abstract configMethodOffset(I)Lcom/apkfuns/logutils/LogConfig;
.end method

.method public abstract configShowBorders(Z)Lcom/apkfuns/logutils/LogConfig;
.end method

.method public abstract configTagPrefix(Ljava/lang/String;)Lcom/apkfuns/logutils/LogConfig;
.end method
