.class public Lcn/manytag/rfidapi/ble/a/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Lcn/manytag/rfidapi/ble/a/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[B

.field private g:I

.field private h:Z

.field private i:J

.field private j:Lcn/manytag/rfidapi/ble/callback/i;

.field private k:Ljava/util/Queue;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "splitWriter"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcn/manytag/rfidapi/ble/a/i;

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/h;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/manytag/rfidapi/ble/a/i;-><init>(Lcn/manytag/rfidapi/ble/a/h;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->b:Landroid/os/Handler;

    return-void
.end method

.method private static a([BI)Ljava/util/Queue;
    .locals 8

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    const-string v0, "Be careful: split count beyond 20! Ensure MTU higher than 23!"

    invoke-static {v0}, Lcn/manytag/rfidapi/ble/d/a;->b(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    array-length v1, p0

    rem-int/2addr v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    array-length v1, p0

    div-int/2addr v1, p1

    goto :goto_0

    :cond_1
    array-length v1, p0

    div-int/2addr v1, p1

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    :goto_0
    if-lez v1, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_5

    if-eq v1, v2, :cond_3

    add-int/lit8 v5, v1, -0x1

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    mul-int v5, v4, p1

    new-array v6, p1, [B

    invoke-static {p0, v5, v6, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_3
    :goto_2
    array-length v5, p0

    rem-int/2addr v5, p1

    if-nez v5, :cond_4

    move v5, p1

    goto :goto_3

    :cond_4
    array-length v5, p0

    rem-int/2addr v5, p1

    :goto_3
    mul-int v6, v4, p1

    new-array v7, v5, [B

    invoke-static {p0, v6, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v7

    :goto_4
    invoke-interface {v0, v6}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->f:[B

    if-eqz v0, :cond_1

    iget v1, p0, Lcn/manytag/rfidapi/ble/a/h;->g:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-static {v0, v1}, Lcn/manytag/rfidapi/ble/a/h;->a([BI)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->k:Ljava/util/Queue;

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iput v0, p0, Lcn/manytag/rfidapi/ble/a/h;->l:I

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/h;->b()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "split count should higher than 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data is Null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcn/manytag/rfidapi/ble/a/h;)V
    .locals 0

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/h;->b()V

    return-void
.end method

.method static synthetic b(Lcn/manytag/rfidapi/ble/a/h;)I
    .locals 0

    iget p0, p0, Lcn/manytag/rfidapi/ble/a/h;->l:I

    return p0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/h;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->k:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/h;->c:Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/a/a;->a()Lcn/manytag/rfidapi/ble/a/e;

    move-result-object v1

    iget-object v2, p0, Lcn/manytag/rfidapi/ble/a/h;->d:Ljava/lang/String;

    iget-object v3, p0, Lcn/manytag/rfidapi/ble/a/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcn/manytag/rfidapi/ble/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcn/manytag/rfidapi/ble/a/e;

    move-result-object v1

    new-instance v2, Lcn/manytag/rfidapi/ble/a/j;

    invoke-direct {v2, p0}, Lcn/manytag/rfidapi/ble/a/j;-><init>(Lcn/manytag/rfidapi/ble/a/h;)V

    iget-object v3, p0, Lcn/manytag/rfidapi/ble/a/h;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3}, Lcn/manytag/rfidapi/ble/a/e;->a([BLcn/manytag/rfidapi/ble/callback/i;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcn/manytag/rfidapi/ble/a/h;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->b:Landroid/os/Handler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/a/h;->b:Landroid/os/Handler;

    iget-wide v2, p0, Lcn/manytag/rfidapi/ble/a/h;->i:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method static synthetic c(Lcn/manytag/rfidapi/ble/a/h;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/h;->k:Ljava/util/Queue;

    return-object p0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/h;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic d(Lcn/manytag/rfidapi/ble/a/h;)Lcn/manytag/rfidapi/ble/callback/i;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/h;->j:Lcn/manytag/rfidapi/ble/callback/i;

    return-object p0
.end method

.method static synthetic e(Lcn/manytag/rfidapi/ble/a/h;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/manytag/rfidapi/ble/a/h;->h:Z

    return p0
.end method

.method static synthetic f(Lcn/manytag/rfidapi/ble/a/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/a/h;->b:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcn/manytag/rfidapi/ble/a/h;)J
    .locals 2

    iget-wide v0, p0, Lcn/manytag/rfidapi/ble/a/h;->i:J

    return-wide v0
.end method


# virtual methods
.method public a(Lcn/manytag/rfidapi/ble/a/a;Ljava/lang/String;Ljava/lang/String;[BZJLcn/manytag/rfidapi/ble/callback/i;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/a/h;->c:Lcn/manytag/rfidapi/ble/a/a;

    iput-object p2, p0, Lcn/manytag/rfidapi/ble/a/h;->d:Ljava/lang/String;

    iput-object p3, p0, Lcn/manytag/rfidapi/ble/a/h;->e:Ljava/lang/String;

    iput-object p4, p0, Lcn/manytag/rfidapi/ble/a/h;->f:[B

    iput-boolean p5, p0, Lcn/manytag/rfidapi/ble/a/h;->h:Z

    iput-wide p6, p0, Lcn/manytag/rfidapi/ble/a/h;->i:J

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a;->i()I

    move-result p1

    iput p1, p0, Lcn/manytag/rfidapi/ble/a/h;->g:I

    iput-object p8, p0, Lcn/manytag/rfidapi/ble/a/h;->j:Lcn/manytag/rfidapi/ble/callback/i;

    invoke-direct {p0}, Lcn/manytag/rfidapi/ble/a/h;->a()V

    return-void
.end method
