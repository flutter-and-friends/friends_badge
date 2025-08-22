.class public Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;
.super Ljava/util/concurrent/LinkedBlockingDeque;
.source "SimpleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/SimpleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedBlockingStack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/LinkedBlockingDeque<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static sPolicy:Lcn/forward/androids/SimpleAsyncTask$Policy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask$Policy;->FIFO:Lcn/forward/androids/SimpleAsyncTask$Policy;

    sput-object v0, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;->sPolicy:Lcn/forward/androids/SimpleAsyncTask$Policy;

    return-void
.end method

.method private constructor <init>(Lcn/forward/androids/SimpleAsyncTask$Policy;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    .line 57
    sput-object p1, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;->sPolicy:Lcn/forward/androids/SimpleAsyncTask$Policy;

    return-void
.end method

.method synthetic constructor <init>(Lcn/forward/androids/SimpleAsyncTask$Policy;Lcn/forward/androids/SimpleAsyncTask$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;-><init>(Lcn/forward/androids/SimpleAsyncTask$Policy;)V

    return-void
.end method


# virtual methods
.method public offer(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 62
    sget-object v0, Lcn/forward/androids/SimpleAsyncTask$5;->$SwitchMap$cn$forward$androids$SimpleAsyncTask$Policy:[I

    sget-object v1, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;->sPolicy:Lcn/forward/androids/SimpleAsyncTask$Policy;

    invoke-virtual {v1}, Lcn/forward/androids/SimpleAsyncTask$Policy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;->offerLast(Ljava/lang/Object;)Z

    return v1

    .line 64
    :cond_0
    invoke-virtual {p0, p1}, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;->offerFirst(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {p0}, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;->size()I

    move-result p1

    invoke-static {}, Lcn/forward/androids/SimpleAsyncTask;->access$000()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 66
    invoke-virtual {p0}, Lcn/forward/androids/SimpleAsyncTask$LinkedBlockingStack;->removeLast()Ljava/lang/Object;

    :cond_1
    return v1
.end method
