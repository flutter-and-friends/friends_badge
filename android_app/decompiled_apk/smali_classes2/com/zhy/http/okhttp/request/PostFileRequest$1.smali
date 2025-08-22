.class Lcom/zhy/http/okhttp/request/PostFileRequest$1;
.super Ljava/lang/Object;
.source "PostFileRequest.java"

# interfaces
.implements Lcom/zhy/http/okhttp/request/CountingRequestBody$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/http/okhttp/request/PostFileRequest;->wrapRequestBody(Lokhttp3/RequestBody;Lcom/zhy/http/okhttp/callback/Callback;)Lokhttp3/RequestBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/http/okhttp/request/PostFileRequest;

.field final synthetic val$callback:Lcom/zhy/http/okhttp/callback/Callback;


# direct methods
.method constructor <init>(Lcom/zhy/http/okhttp/request/PostFileRequest;Lcom/zhy/http/okhttp/callback/Callback;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1;->this$0:Lcom/zhy/http/okhttp/request/PostFileRequest;

    iput-object p2, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestProgress(JJ)V
    .locals 8

    .line 56
    invoke-static {}, Lcom/zhy/http/okhttp/OkHttpUtils;->getInstance()Lcom/zhy/http/okhttp/OkHttpUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zhy/http/okhttp/OkHttpUtils;->getDelivery()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;-><init>(Lcom/zhy/http/okhttp/request/PostFileRequest$1;JJ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
