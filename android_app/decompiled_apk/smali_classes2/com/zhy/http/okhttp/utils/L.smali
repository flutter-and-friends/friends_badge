.class public Lcom/zhy/http/okhttp/utils/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field private static debug:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 14
    sget-boolean v0, Lcom/zhy/http/okhttp/utils/L;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "OkHttp"

    .line 16
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
