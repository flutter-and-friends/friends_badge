.class public Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;
.super Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;
.source "FixedBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder<",
        "Ljava/util/concurrent/ExecutorService;",
        ">;"
    }
.end annotation


# instance fields
.field private mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcn/highlight/core/utils/threadpool/builder/ThreadPoolBuilder;-><init>()V

    const/4 v0, 0x1

    .line 26
    iput v0, p0, Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;->mSize:I

    return-void
.end method


# virtual methods
.method protected create()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 30
    iget v0, p0, Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;->mSize:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected getType()Lcn/highlight/core/utils/threadpool/ThreadPoolType;
    .locals 1

    .line 35
    sget-object v0, Lcn/highlight/core/utils/threadpool/ThreadPoolType;->FIXED:Lcn/highlight/core/utils/threadpool/ThreadPoolType;

    return-object v0
.end method

.method public setSize(I)Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;
    .locals 0

    .line 39
    iput p1, p0, Lcn/highlight/core/utils/threadpool/builder/FixedBuilder;->mSize:I

    return-object p0
.end method
