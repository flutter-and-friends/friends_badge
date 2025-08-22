.class public Lcom/allenliu/versionchecklib/core/AVersionService$VersionBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AVersionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allenliu/versionchecklib/core/AVersionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VersionBroadCastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/core/AVersionService;


# direct methods
.method public constructor <init>(Lcom/allenliu/versionchecklib/core/AVersionService;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService$VersionBroadCastReceiver;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 215
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.allenliu.versionchecklib.filepermisssion.action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "result"

    .line 218
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService$VersionBroadCastReceiver;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/core/AVersionService;->access$200(Lcom/allenliu/versionchecklib/core/AVersionService;)V

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService$VersionBroadCastReceiver;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    invoke-virtual {p1, p0}, Lcom/allenliu/versionchecklib/core/AVersionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method
