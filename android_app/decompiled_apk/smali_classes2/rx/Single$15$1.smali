.class Lrx/Single$15$1;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single$15;->call(Lrx/SingleSubscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/Single$15;

.field final synthetic val$t:Lrx/SingleSubscriber;

.field final synthetic val$w:Lrx/Scheduler$Worker;


# direct methods
.method constructor <init>(Lrx/Single$15;Lrx/SingleSubscriber;Lrx/Scheduler$Worker;)V
    .locals 0

    .line 1845
    iput-object p1, p0, Lrx/Single$15$1;->this$1:Lrx/Single$15;

    iput-object p2, p0, Lrx/Single$15$1;->val$t:Lrx/SingleSubscriber;

    iput-object p3, p0, Lrx/Single$15$1;->val$w:Lrx/Scheduler$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1848
    new-instance v0, Lrx/Single$15$1$1;

    invoke-direct {v0, p0}, Lrx/Single$15$1$1;-><init>(Lrx/Single$15$1;)V

    .line 1868
    iget-object v1, p0, Lrx/Single$15$1;->val$t:Lrx/SingleSubscriber;

    invoke-virtual {v1, v0}, Lrx/SingleSubscriber;->add(Lrx/Subscription;)V

    .line 1870
    iget-object v1, p0, Lrx/Single$15$1;->this$1:Lrx/Single$15;

    iget-object v1, v1, Lrx/Single$15;->this$0:Lrx/Single;

    invoke-virtual {v1, v0}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    return-void
.end method
