.class public final Lcom/tencent/bugly/proguard/ab;
.super Ljava/lang/Thread;
.source "BUGLY"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/aa;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/proguard/ac;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/bugly/proguard/aa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ab;->a:Z

    .line 23
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ab;->b:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->d:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ab;->e:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Landroid/os/Handler;J)V
    .locals 3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "addThread handler should not be null"

    .line 69
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    .line 74
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 75
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v1}, Lcom/tencent/bugly/proguard/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "addThread fail ,this thread has been added in monitor queue"

    new-array p2, p2, [Ljava/lang/Object;

    .line 76
    invoke-static {v0, p2}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 81
    invoke-static {p2}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    .line 83
    :cond_2
    iget-object p2, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    new-instance v0, Lcom/tencent/bugly/proguard/aa;

    const-wide/16 v1, 0x1388

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/tencent/bugly/proguard/aa;-><init>(Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/aa;

    .line 153
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/aa;->c()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 156
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/bugly/proguard/ab;->a(Landroid/os/Handler;J)V

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/ac;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "addThreadMonitorListeners fail ,this threadMonitorListener has been added in monitor queue"

    .line 166
    invoke-static {v0, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 269
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ab;->b:Z

    return-void
.end method

.method public final b()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 44
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/aa;

    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/aa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "remove handler::%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 45
    iget-object v4, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 46
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final b(Lcom/tencent/bugly/proguard/ac;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ab;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()Z
    .locals 2

    const/4 v0, 0x1

    .line 119
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ab;->a:Z

    .line 120
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 124
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 126
    invoke-static {v1}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    :goto_0
    return v0
.end method

.method public final d()Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    :goto_0
    return v1
.end method

.method public final run()V
    .locals 10

    .line 196
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ab;->a:Z

    if-nez v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/aa;

    .line 201
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/aa;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7d0

    move-wide v5, v3

    :goto_2
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/tencent/bugly/proguard/ab;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_2

    .line 205
    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/ab;->sleep(J)V

    .line 206
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    sub-long v5, v3, v5

    goto :goto_2

    .line 208
    :cond_2
    invoke-direct {p0}, Lcom/tencent/bugly/proguard/ab;->e()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .line 213
    :goto_3
    iget-object v5, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_5

    .line 214
    iget-object v5, p0, Lcom/tencent/bugly/proguard/ab;->c:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/bugly/proguard/aa;

    .line 215
    invoke-virtual {v5}, Lcom/tencent/bugly/proguard/aa;->b()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 216
    iget-object v6, p0, Lcom/tencent/bugly/proguard/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide v6, 0x7fffffffffffffffL

    .line 217
    invoke-virtual {v5, v6, v7}, Lcom/tencent/bugly/proguard/aa;->a(J)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 221
    :cond_5
    invoke-static {}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->getInstance()Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 222
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->isEnableCatchAnrTrace()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 223
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/crash/jni/NativeCrashHandler;->dumpAnrNativeStack()V

    const-string v1, "jni mannual dump anr trace"

    new-array v5, v0, [Ljava/lang/Object;

    .line 224
    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    const-string v1, "do not enable jni mannual dump anr trace"

    new-array v5, v0, [Ljava/lang/Object;

    .line 226
    invoke-static {v1, v5}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_4
    const/4 v1, 0x0

    .line 229
    :cond_7
    iget-boolean v5, p0, Lcom/tencent/bugly/proguard/ab;->b:Z

    if-nez v5, :cond_8

    const-string v5, "do not enable anr continue check"

    new-array v6, v0, [Ljava/lang/Object;

    .line 230
    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 231
    invoke-static {v3, v4}, Lcom/tencent/bugly/proguard/ab;->sleep(J)V

    add-int/2addr v1, v2

    const/16 v5, 0xf

    if-ne v1, v5, :cond_7

    .line 235
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_8
    const/4 v1, 0x0

    .line 236
    :goto_5
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ab;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/bugly/proguard/aa;

    const/4 v3, 0x0

    .line 242
    :goto_6
    iget-object v4, p0, Lcom/tencent/bugly/proguard/ab;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    const-string v4, "main thread blocked,now begin to upload anr stack"

    new-array v5, v0, [Ljava/lang/Object;

    .line 243
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/x;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 244
    iget-object v4, p0, Lcom/tencent/bugly/proguard/ab;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/bugly/proguard/ac;

    invoke-interface {v4, v2}, Lcom/tencent/bugly/proguard/ac;->a(Lcom/tencent/bugly/proguard/aa;)Z

    .line 245
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ab;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    .line 251
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 249
    invoke-static {v0}, Lcom/tencent/bugly/proguard/x;->b(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_a
    return-void
.end method
