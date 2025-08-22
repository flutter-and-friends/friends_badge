.class Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;
.super Ljava/lang/Object;
.source "SimpleAsyncTask.java"

# interfaces
.implements Lcn/forward/androids/CompareRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompareRunnableFIFOWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/forward/androids/CompareRunnable<",
        "Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static mCount:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private mRunnable:Lcn/forward/androids/CompareRunnable;

.field private final mSecondPriority:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>(Lcn/forward/androids/CompareRunnable;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mRunnable:Lcn/forward/androids/CompareRunnable;

    .line 109
    sget-object p1, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mSecondPriority:J

    return-void
.end method

.method synthetic constructor <init>(Lcn/forward/androids/CompareRunnable;Lcn/forward/androids/SimpleAsyncTask$1;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;-><init>(Lcn/forward/androids/CompareRunnable;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;)I
    .locals 4

    .line 127
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mRunnable:Lcn/forward/androids/CompareRunnable;

    invoke-virtual {p1}, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->getRunnable()Lcn/forward/androids/CompareRunnable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/forward/androids/CompareRunnable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-wide v0, p0, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mSecondPriority:J

    invoke-virtual {p1}, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->getSecondPriority()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1

    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 101
    check-cast p1, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;

    invoke-virtual {p0, p1}, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->compareTo(Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;)I

    move-result p1

    return p1
.end method

.method public getRunnable()Lcn/forward/androids/CompareRunnable;
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mRunnable:Lcn/forward/androids/CompareRunnable;

    return-object v0
.end method

.method public getSecondPriority()J
    .locals 2

    .line 117
    iget-wide v0, p0, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mSecondPriority:J

    return-wide v0
.end method

.method public run()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/forward/androids/SimpleAsyncTask$CompareRunnableFIFOWrapper;->mRunnable:Lcn/forward/androids/CompareRunnable;

    invoke-interface {v0}, Lcn/forward/androids/CompareRunnable;->run()V

    return-void
.end method
