.class public Lcom/isseiaoki/simplecropview/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimpleCropView"

.field public static enabled:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 8
    sget-boolean v0, Lcom/isseiaoki/simplecropview/util/Logger;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SimpleCropView"

    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 13
    sget-boolean v0, Lcom/isseiaoki/simplecropview/util/Logger;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SimpleCropView"

    .line 14
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-boolean v0, Lcom/isseiaoki/simplecropview/util/Logger;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SimpleCropView"

    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/isseiaoki/simplecropview/util/Logger;->enabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SimpleCropView"

    .line 24
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
