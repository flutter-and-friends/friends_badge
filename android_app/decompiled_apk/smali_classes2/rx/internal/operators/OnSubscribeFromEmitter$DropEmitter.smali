.class final Lrx/internal/operators/OnSubscribeFromEmitter$DropEmitter;
.super Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseEmitter;
.source "OnSubscribeFromEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeFromEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DropEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseEmitter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7404e4d77326a273L


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

    .line 252
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromEmitter$NoOverflowBaseEmitter;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method onOverflow()V
    .locals 0

    return-void
.end method
