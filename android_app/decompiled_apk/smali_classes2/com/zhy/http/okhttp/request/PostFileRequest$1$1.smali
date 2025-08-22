.class Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;
.super Ljava/lang/Object;
.source "PostFileRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/http/okhttp/request/PostFileRequest$1;->onRequestProgress(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zhy/http/okhttp/request/PostFileRequest$1;

.field final synthetic val$bytesWritten:J

.field final synthetic val$contentLength:J


# direct methods
.method constructor <init>(Lcom/zhy/http/okhttp/request/PostFileRequest$1;JJ)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;->this$1:Lcom/zhy/http/okhttp/request/PostFileRequest$1;

    iput-wide p2, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;->val$bytesWritten:J

    iput-wide p4, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;->val$contentLength:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 61
    iget-object v0, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;->this$1:Lcom/zhy/http/okhttp/request/PostFileRequest$1;

    iget-object v0, v0, Lcom/zhy/http/okhttp/request/PostFileRequest$1;->val$callback:Lcom/zhy/http/okhttp/callback/Callback;

    iget-wide v1, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;->val$bytesWritten:J

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget-wide v2, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;->val$contentLength:J

    long-to-float v4, v2

    div-float/2addr v1, v4

    iget-object v4, p0, Lcom/zhy/http/okhttp/request/PostFileRequest$1$1;->this$1:Lcom/zhy/http/okhttp/request/PostFileRequest$1;

    iget-object v4, v4, Lcom/zhy/http/okhttp/request/PostFileRequest$1;->this$0:Lcom/zhy/http/okhttp/request/PostFileRequest;

    iget v4, v4, Lcom/zhy/http/okhttp/request/PostFileRequest;->id:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhy/http/okhttp/callback/Callback;->inProgress(FJI)V

    return-void
.end method
