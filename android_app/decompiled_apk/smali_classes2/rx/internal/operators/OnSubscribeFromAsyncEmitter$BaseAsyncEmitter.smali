.class abstract Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OnSubscribeFromAsyncEmitter.java"

# interfaces
.implements Lrx/AsyncEmitter;
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromAsyncEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/AsyncEmitter<",
        "TT;>;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x65ac35ee8a56a4bfL


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final serial:Lrx/subscriptions/SerialSubscription;


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

    .line 121
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 122
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    .line 123
    new-instance p1, Lrx/subscriptions/SerialSubscription;

    invoke-direct {p1}, Lrx/subscriptions/SerialSubscription;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    return-void
.end method


# virtual methods
.method public final isUnsubscribed()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .line 128
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 132
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 144
    :cond_0
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->actual:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iget-object p1, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {p1}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    throw p1
.end method

.method onRequested()V
    .locals 0

    return-void
.end method

.method onUnsubscribed()V
    .locals 0

    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 167
    invoke-static {p1, p2}, Lrx/internal/operators/BackpressureUtils;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 169
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->onRequested()V

    :cond_0
    return-void
.end method

.method public final requested()J
    .locals 2

    .line 189
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public final setCancellation(Lrx/AsyncEmitter$Cancellable;)V
    .locals 1

    .line 184
    new-instance v0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$CancellableSubscription;

    invoke-direct {v0, p1}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$CancellableSubscription;-><init>(Lrx/AsyncEmitter$Cancellable;)V

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->setSubscription(Lrx/Subscription;)V

    return-void
.end method

.method public final setSubscription(Lrx/Subscription;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0, p1}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    .line 152
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/SerialSubscription;->unsubscribe()V

    .line 153
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsyncEmitter$BaseAsyncEmitter;->onUnsubscribed()V

    return-void
.end method
