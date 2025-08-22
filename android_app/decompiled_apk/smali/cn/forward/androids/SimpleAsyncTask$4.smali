.class Lcn/forward/androids/SimpleAsyncTask$4;
.super Ljava/util/concurrent/FutureTask;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/forward/androids/SimpleAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/forward/androids/SimpleAsyncTask;


# direct methods
.method constructor <init>(Lcn/forward/androids/SimpleAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcn/forward/androids/SimpleAsyncTask$4;->this$0:Lcn/forward/androids/SimpleAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .line 185
    :try_start_0
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask$4;->this$0:Lcn/forward/androids/SimpleAsyncTask;

    invoke-virtual {p0}, Lcn/forward/androids/SimpleAsyncTask$4;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/forward/androids/SimpleAsyncTask;->access$600(Lcn/forward/androids/SimpleAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask$4;->this$0:Lcn/forward/androids/SimpleAsyncTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/forward/androids/SimpleAsyncTask;->access$600(Lcn/forward/androids/SimpleAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/RuntimeException;

    .line 190
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    const-string v2, "An error occurred while executing doInBackground()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    const-string v1, "SimpleAsyncTask"

    .line 187
    invoke-static {v1, v0}, Lcn/forward/androids/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
