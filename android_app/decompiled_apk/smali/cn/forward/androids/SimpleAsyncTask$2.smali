.class final Lcn/forward/androids/SimpleAsyncTask$2;
.super Ljava/util/concurrent/PriorityBlockingQueue;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/PriorityBlockingQueue<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcn/forward/androids/SimpleAsyncTask$2;->offer(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .locals 2

    .line 94
    new-instance v0, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;

    check-cast p1, Lcn/forward/androids/CompareRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;-><init>(Lcn/forward/androids/CompareRunnable;Lcn/forward/androids/SimpleAsyncTask$1;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/PriorityBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
