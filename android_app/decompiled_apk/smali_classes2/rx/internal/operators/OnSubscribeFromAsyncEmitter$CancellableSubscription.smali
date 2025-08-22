.class final Lrx/internal/operators/OnSubscribeFromAsyncEmitter$CancellableSubscription;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "OnSubscribeFromAsyncEmitter.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromAsyncEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CancellableSubscription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lrx/AsyncEmitter$Cancellable;",
        ">;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f5c453163a88dc2L


# direct methods
.method public constructor <init>(Lrx/AsyncEmitter$Cancellable;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 92
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 97
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$CancellableSubscription;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$CancellableSubscription;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/AsyncEmitter$Cancellable;

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v0}, Lrx/AsyncEmitter$Cancellable;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 104
    invoke-static {v0}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
