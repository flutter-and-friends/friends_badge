.class Lcn/forward/androids/SimpleAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 354
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 359
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;

    .line 360
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    iget-object p1, v0, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;->mTask:Lcn/forward/androids/SimpleAsyncTask;

    iget-object v0, v0, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcn/forward/androids/SimpleAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 363
    :cond_1
    iget-object p1, v0, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;->mTask:Lcn/forward/androids/SimpleAsyncTask;

    iget-object v0, v0, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcn/forward/androids/SimpleAsyncTask;->access$700(Lcn/forward/androids/SimpleAsyncTask;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
