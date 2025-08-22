.class Lcom/zhy/http/okhttp/utils/Platform$Android;
.super Lcom/zhy/http/okhttp/utils/Platform;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zhy/http/okhttp/utils/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhy/http/okhttp/utils/Platform$Android$MainThreadExecutor;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/zhy/http/okhttp/utils/Platform;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 66
    new-instance v0, Lcom/zhy/http/okhttp/utils/Platform$Android$MainThreadExecutor;

    invoke-direct {v0}, Lcom/zhy/http/okhttp/utils/Platform$Android$MainThreadExecutor;-><init>()V

    return-object v0
.end method
