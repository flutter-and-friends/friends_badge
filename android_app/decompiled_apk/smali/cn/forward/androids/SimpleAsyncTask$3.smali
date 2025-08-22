.class Lcn/forward/androids/SimpleAsyncTask$3;
.super Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable;
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
        "Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/forward/androids/SimpleAsyncTask;


# direct methods
.method constructor <init>(Lcn/forward/androids/SimpleAsyncTask;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcn/forward/androids/SimpleAsyncTask$3;->this$0:Lcn/forward/androids/SimpleAsyncTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcn/forward/androids/SimpleAsyncTask$WorkerRunnable;-><init>(Lcn/forward/androids/SimpleAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask$3;->this$0:Lcn/forward/androids/SimpleAsyncTask;

    invoke-static {v0}, Lcn/forward/androids/SimpleAsyncTask;->access$400(Lcn/forward/androids/SimpleAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    .line 173
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 175
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask$3;->this$0:Lcn/forward/androids/SimpleAsyncTask;

    iget-object v1, p0, Lcn/forward/androids/SimpleAsyncTask$3;->mParams:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcn/forward/androids/SimpleAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 177
    iget-object v1, p0, Lcn/forward/androids/SimpleAsyncTask$3;->this$0:Lcn/forward/androids/SimpleAsyncTask;

    invoke-static {v1, v0}, Lcn/forward/androids/SimpleAsyncTask;->access$500(Lcn/forward/androids/SimpleAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
