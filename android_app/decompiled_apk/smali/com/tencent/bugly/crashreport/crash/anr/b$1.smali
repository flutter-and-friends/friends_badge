.class final Lcom/tencent/bugly/crashreport/crash/anr/b$1;
.super Landroid/os/FileObserver;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/anr/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/bugly/crashreport/crash/anr/b;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/anr/b;Ljava/lang/String;I)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$1;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    const/16 p1, 0x8

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 510
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "/data/anr/"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v2, "watching file %s"

    .line 511
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const-string v0, "trace"

    .line 512
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "not anr file %s"

    .line 513
    invoke-static {p1, p2}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 517
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$1;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {p2}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/crashreport/crash/anr/b;)Lcom/tencent/bugly/proguard/w;

    move-result-object p2

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/anr/b$1$1;

    invoke-direct {v0, p0, p1}, Lcom/tencent/bugly/crashreport/crash/anr/b$1$1;-><init>(Lcom/tencent/bugly/crashreport/crash/anr/b$1;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
