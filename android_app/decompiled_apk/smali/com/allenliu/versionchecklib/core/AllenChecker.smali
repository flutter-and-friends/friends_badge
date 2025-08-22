.class public Lcom/allenliu/versionchecklib/core/AllenChecker;
.super Ljava/lang/Object;
.source "AllenChecker.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static globalContext:Landroid/content/Context; = null

.field private static isDebug:Z = true

.field private static params:Lcom/allenliu/versionchecklib/core/VersionParams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelMission()V
    .locals 3

    .line 40
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 41
    sget-object v0, Lcom/allenliu/versionchecklib/core/AllenChecker;->globalContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/allenliu/versionchecklib/core/AllenChecker;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    if-eqz v1, :cond_0

    .line 42
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/allenliu/versionchecklib/core/VersionParams;->getService()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    sget-object v0, Lcom/allenliu/versionchecklib/core/AllenChecker;->globalContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 45
    :cond_0
    sget-object v0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->instance:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    if-eqz v0, :cond_1

    .line 46
    sget-object v0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->instance:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    :cond_1
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/allenliu/versionchecklib/core/AllenChecker;->globalContext:Landroid/content/Context;

    .line 49
    sput-object v0, Lcom/allenliu/versionchecklib/core/AllenChecker;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    return-void
.end method

.method public static getGlobalContext()Landroid/content/Context;
    .locals 1

    .line 54
    sget-object v0, Lcom/allenliu/versionchecklib/core/AllenChecker;->globalContext:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Z)V
    .locals 0

    .line 29
    sput-boolean p0, Lcom/allenliu/versionchecklib/core/AllenChecker;->isDebug:Z

    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/allenliu/versionchecklib/core/AllenChecker;->isDebug:Z

    return v0
.end method

.method public static startVersionCheck(Landroid/app/Application;Lcom/allenliu/versionchecklib/core/VersionParams;)V
    .locals 2

    .line 20
    sput-object p0, Lcom/allenliu/versionchecklib/core/AllenChecker;->globalContext:Landroid/content/Context;

    .line 21
    sput-object p1, Lcom/allenliu/versionchecklib/core/AllenChecker;->params:Lcom/allenliu/versionchecklib/core/VersionParams;

    .line 22
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionParams;->getService()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "VERSION_PARAMS_KEY"

    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Application;->stopService(Landroid/content/Intent;)Z

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
