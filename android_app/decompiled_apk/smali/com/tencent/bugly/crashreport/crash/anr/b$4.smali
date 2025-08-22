.class final Lcom/tencent/bugly/crashreport/crash/anr/b$4;
.super Landroid/os/FileObserver;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/crashreport/crash/anr/b;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/crash/anr/b;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/crash/anr/b;Ljava/lang/String;I)V
    .locals 0

    .line 858
    iput-object p1, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$4;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    const/16 p1, 0x100

    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string v2, "startWatchingPrivateAnrDir %s"

    .line 865
    invoke-static {v2, v0}, Lcom/tencent/bugly/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 867
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$4;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {v0, p2}, Lcom/tencent/bugly/crashreport/crash/anr/b;->a(Lcom/tencent/bugly/crashreport/crash/anr/b;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "trace file not caused by sigquit , ignore "

    .line 868
    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 872
    :cond_1
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$4;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {p2}, Lcom/tencent/bugly/crashreport/crash/anr/b;->b(Lcom/tencent/bugly/crashreport/crash/anr/b;)Lcom/tencent/bugly/proguard/ab;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 873
    iget-object p2, p0, Lcom/tencent/bugly/crashreport/crash/anr/b$4;->a:Lcom/tencent/bugly/crashreport/crash/anr/b;

    invoke-static {p2}, Lcom/tencent/bugly/crashreport/crash/anr/b;->b(Lcom/tencent/bugly/crashreport/crash/anr/b;)Lcom/tencent/bugly/proguard/ab;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/bugly/proguard/ab;->a(Z)V

    :cond_2
    return-void
.end method
