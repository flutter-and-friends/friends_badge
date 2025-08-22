.class Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcn/forward/androids/SimpleAsyncTask;


# direct methods
.method varargs constructor <init>(Lcn/forward/androids/SimpleAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/forward/androids/SimpleAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-object p1, p0, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;->mTask:Lcn/forward/androids/SimpleAsyncTask;

    .line 382
    iput-object p2, p0, Lcn/forward/androids/SimpleAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    return-void
.end method
