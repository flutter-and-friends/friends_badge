.class final Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;
.super Lrx/Subscriber;
.source "OperatorSwitchIfEmpty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorSwitchIfEmpty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ParentSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final alternate:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final arbiter:Lrx/internal/producers/ProducerArbiter;

.field private final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private empty:Z

.field private final serial:Lrx/subscriptions/SerialSubscription;


# direct methods
.method constructor <init>(Lrx/Subscriber;Lrx/subscriptions/SerialSubscription;Lrx/internal/producers/ProducerArbiter;Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;",
            "Lrx/subscriptions/SerialSubscription;",
            "Lrx/internal/producers/ProducerArbiter;",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->empty:Z

    .line 56
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    .line 57
    iput-object p2, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    .line 58
    iput-object p3, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    .line 59
    iput-object p4, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->alternate:Lrx/Observable;

    return-void
.end method

.method private subscribeToAlternate()V
    .locals 3

    .line 77
    new-instance v0, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorSwitchIfEmpty$AlternateSubscriber;-><init>(Lrx/Subscriber;Lrx/internal/producers/ProducerArbiter;)V

    .line 78
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->serial:Lrx/subscriptions/SerialSubscription;

    invoke-virtual {v1, v0}, Lrx/subscriptions/SerialSubscription;->set(Lrx/Subscription;)V

    .line 79
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->alternate:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->empty:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-direct {p0}, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->subscribeToAlternate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->empty:Z

    .line 90
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lrx/internal/producers/ProducerArbiter;->produced(J)V

    return-void
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lrx/internal/operators/OperatorSwitchIfEmpty$ParentSubscriber;->arbiter:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    return-void
.end method
