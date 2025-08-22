.class public interface abstract Lrx/AsyncEmitter;
.super Ljava/lang/Object;
.source "AsyncEmitter.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/AsyncEmitter$BackpressureMode;,
        Lrx/AsyncEmitter$Cancellable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract requested()J
.end method

.method public abstract setCancellation(Lrx/AsyncEmitter$Cancellable;)V
.end method

.method public abstract setSubscription(Lrx/Subscription;)V
.end method
