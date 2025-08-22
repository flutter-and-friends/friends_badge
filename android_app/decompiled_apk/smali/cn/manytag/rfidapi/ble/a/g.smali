.class public Lcn/manytag/rfidapi/ble/a/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcn/manytag/rfidapi/ble/d/b;

.field private final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/manytag/rfidapi/ble/d/b;

    invoke-static {}, Lcn/manytag/rfidapi/ble/a;->a()Lcn/manytag/rfidapi/ble/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/a;->e()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/manytag/rfidapi/ble/d/b;-><init>(I)V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcn/manytag/rfidapi/ble/data/BleDevice;)Lcn/manytag/rfidapi/ble/a/a;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcn/manytag/rfidapi/ble/a/a;

    invoke-direct {v0, p1}, Lcn/manytag/rfidapi/ble/a/a;-><init>(Lcn/manytag/rfidapi/ble/data/BleDevice;)V

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/manytag/rfidapi/ble/a/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/d/b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/a/a;->h()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/d/b;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcn/manytag/rfidapi/ble/a/a;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lcn/manytag/rfidapi/ble/data/BleDevice;)Lcn/manytag/rfidapi/ble/a/a;
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/d/b;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/data/BleDevice;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/d/b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/manytag/rfidapi/ble/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/d/b;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/a/a;->i()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {v0}, Lcn/manytag/rfidapi/ble/d/b;->clear()V

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/manytag/rfidapi/ble/a/a;

    invoke-virtual {v1}, Lcn/manytag/rfidapi/ble/a/a;->i()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcn/manytag/rfidapi/ble/a/a;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/d/b;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcn/manytag/rfidapi/ble/d/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Lcn/manytag/rfidapi/ble/a/a;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/manytag/rfidapi/ble/d/b;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/manytag/rfidapi/ble/a/g;->a:Lcn/manytag/rfidapi/ble/d/b;

    invoke-virtual {p1}, Lcn/manytag/rfidapi/ble/a/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/manytag/rfidapi/ble/d/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
