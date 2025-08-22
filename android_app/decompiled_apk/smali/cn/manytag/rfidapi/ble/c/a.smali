.class public abstract Lcn/manytag/rfidapi/ble/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:J

.field private f:Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;

.field private g:Ljava/util/List;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/HandlerThread;

.field private j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->g:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/manytag/rfidapi/ble/c/a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcn/manytag/rfidapi/ble/c/a;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcn/manytag/rfidapi/ble/c/a;Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/manytag/rfidapi/ble/c/a;->c(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    return-void
.end method

.method private c(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->h:Landroid/os/Handler;

    new-instance v1, Lcn/manytag/rfidapi/ble/c/b;

    invoke-direct {v1, p0, p1}, Lcn/manytag/rfidapi/ble/c/b;-><init>(Lcn/manytag/rfidapi/ble/c/a;Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1}, Lcn/manytag/rfidapi/ble/c/a;->d(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    return-void
.end method

.method private d(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 8

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcn/manytag/rfidapi/ble/c/a;->e(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->a:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v0, v0

    if-lez v0, :cond_7

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v3, p0, Lcn/manytag/rfidapi/ble/c/a;->a:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v5, v3, v2

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v6, ""

    :cond_3
    iget-boolean v7, p0, Lcn/manytag/rfidapi/ble/c/a;->c:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p1}, Lcn/manytag/rfidapi/ble/c/a;->e(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    return-void
.end method

.method private e(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
    .locals 5

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lcn/manytag/rfidapi/ble/c/a;->d:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcn/manytag/rfidapi/ble/c/a;->h:Landroid/os/Handler;

    new-instance v0, Lcn/manytag/rfidapi/ble/c/c;

    invoke-direct {v0, p0}, Lcn/manytag/rfidapi/ble/c/c;-><init>(Lcn/manytag/rfidapi/ble/c/a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iget-object v2, p0, Lcn/manytag/rfidapi/ble/c/a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-virtual {v3}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcn/manytag/rfidapi/ble/c/a;->g:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcn/manytag/rfidapi/ble/c/a;->h:Landroid/os/Handler;

    new-instance v2, Lcn/manytag/rfidapi/ble/c/d;

    invoke-direct {v2, p0, v0, p1}, Lcn/manytag/rfidapi/ble/c/d;-><init>(Lcn/manytag/rfidapi/ble/c/a;Ljava/lang/String;Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract a(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
.end method

.method public abstract a(Ljava/util/List;)V
.end method

.method public final a(Z)V
    .locals 5

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/c/a;->d()V

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcn/manytag/rfidapi/ble/c/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->h:Landroid/os/Handler;

    new-instance v1, Lcn/manytag/rfidapi/ble/c/e;

    invoke-direct {v1, p0}, Lcn/manytag/rfidapi/ble/c/e;-><init>(Lcn/manytag/rfidapi/ble/c/a;)V

    iget-wide v2, p0, Lcn/manytag/rfidapi/ble/c/a;->e:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->h:Landroid/os/Handler;

    new-instance v1, Lcn/manytag/rfidapi/ble/c/f;

    invoke-direct {v1, p0, p1}, Lcn/manytag/rfidapi/ble/c/f;-><init>(Lcn/manytag/rfidapi/ble/c/a;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;ZZJLcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;)V
    .locals 0

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/c/a;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcn/manytag/rfidapi/ble/c/a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcn/manytag/rfidapi/ble/c/a;->c:Z

    iput-boolean p4, p0, Lcn/manytag/rfidapi/ble/c/a;->d:Z

    iput-wide p5, p0, Lcn/manytag/rfidapi/ble/c/a;->e:J

    iput-object p7, p0, Lcn/manytag/rfidapi/ble/c/a;->f:Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;

    new-instance p1, Landroid/os/HandlerThread;

    const-class p2, Lcn/manytag/rfidapi/ble/c/a;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/c/a;->i:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/c/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcn/manytag/rfidapi/ble/c/h;

    iget-object p2, p0, Lcn/manytag/rfidapi/ble/c/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcn/manytag/rfidapi/ble/c/h;-><init>(Landroid/os/Looper;Lcn/manytag/rfidapi/ble/c/a;)V

    iput-object p1, p0, Lcn/manytag/rfidapi/ble/c/a;->j:Landroid/os/Handler;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/manytag/rfidapi/ble/c/a;->k:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcn/manytag/rfidapi/ble/c/a;->d:Z

    return v0
.end method

.method public b()Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;
    .locals 1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->f:Lcn/manytag/rfidapi/ble/callback/BleScanPresenterImp;

    return-object v0
.end method

.method public abstract b(Lcn/manytag/rfidapi/ble/data/BleDevice;)V
.end method

.method public abstract b(Z)V
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/manytag/rfidapi/ble/c/a;->k:Z

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-virtual {p0}, Lcn/manytag/rfidapi/ble/c/a;->d()V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->h:Landroid/os/Handler;

    new-instance v1, Lcn/manytag/rfidapi/ble/c/g;

    invoke-direct {v1, p0}, Lcn/manytag/rfidapi/ble/c/g;-><init>(Lcn/manytag/rfidapi/ble/c/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcn/manytag/rfidapi/ble/c/a;->k:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/c/a;->j:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Lcn/manytag/rfidapi/ble/data/BleDevice;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object v2, v1

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcn/manytag/rfidapi/ble/data/BleDevice;-><init>(Landroid/bluetooth/BluetoothDevice;I[BJ)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/c/a;->j:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
