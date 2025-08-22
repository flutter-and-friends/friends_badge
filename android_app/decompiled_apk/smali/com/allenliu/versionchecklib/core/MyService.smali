.class public Lcom/allenliu/versionchecklib/core/MyService;
.super Lcom/allenliu/versionchecklib/core/AVersionService;
.source "MyService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/core/AVersionService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onResponses(Lcom/allenliu/versionchecklib/core/AVersionService;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
