.class Lcom/zhy/http/okhttp/callback/FileCallBack$1;
.super Ljava/lang/Object;
.source "FileCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhy/http/okhttp/callback/FileCallBack;->saveFile(Lokhttp3/Response;I)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhy/http/okhttp/callback/FileCallBack;

.field final synthetic val$finalSum:J

.field final synthetic val$id:I

.field final synthetic val$total:J


# direct methods
.method constructor <init>(Lcom/zhy/http/okhttp/callback/FileCallBack;JJI)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/zhy/http/okhttp/callback/FileCallBack$1;->this$0:Lcom/zhy/http/okhttp/callback/FileCallBack;

    iput-wide p2, p0, Lcom/zhy/http/okhttp/callback/FileCallBack$1;->val$finalSum:J

    iput-wide p4, p0, Lcom/zhy/http/okhttp/callback/FileCallBack$1;->val$total:J

    iput p6, p0, Lcom/zhy/http/okhttp/callback/FileCallBack$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 72
    iget-object v0, p0, Lcom/zhy/http/okhttp/callback/FileCallBack$1;->this$0:Lcom/zhy/http/okhttp/callback/FileCallBack;

    iget-wide v1, p0, Lcom/zhy/http/okhttp/callback/FileCallBack$1;->val$finalSum:J

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    iget-wide v2, p0, Lcom/zhy/http/okhttp/callback/FileCallBack$1;->val$total:J

    long-to-float v4, v2

    div-float/2addr v1, v4

    iget v4, p0, Lcom/zhy/http/okhttp/callback/FileCallBack$1;->val$id:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/zhy/http/okhttp/callback/FileCallBack;->inProgress(FJI)V

    return-void
.end method
