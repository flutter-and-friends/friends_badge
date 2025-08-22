.class abstract Lrx/internal/operators/OnSubscribeFromAsyncEmitter$NoOverflowBaseAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;
.source "OnSubscribeFromAsyncEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromAsyncEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "NoOverflowBaseAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3948ba7d6479d0d1L


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 226
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$NoOverflowBaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$NoOverflowBaseAsyncEmitter;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 236
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$NoOverflowBaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v0, 0x1

    .line 237
    invoke-static {p0, v0, v1}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    goto :goto_0

    .line 239
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$NoOverflowBaseAsyncEmitter;->onOverflow()V

    :goto_0
    return-void
.end method

.method abstract onOverflow()V
.end method
