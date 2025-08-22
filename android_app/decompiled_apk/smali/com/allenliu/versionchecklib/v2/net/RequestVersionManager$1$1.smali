.class Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;
.super Ljava/lang/Object;
.source "RequestVersionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

.field final synthetic val$requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;->this$1:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

    iput-object p2, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;->val$requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

    iput-object p3, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;->val$requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;->val$result:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;->onRequestVersionSuccess(Ljava/lang/String;)Lcom/allenliu/versionchecklib/v2/builder/UIData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;->this$1:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

    iget-object v1, v1, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->val$builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    invoke-virtual {v1, v0}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->setVersionBundle(Lcom/allenliu/versionchecklib/v2/builder/UIData;)Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    .line 74
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;->this$1:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

    iget-object v0, v0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->val$builder:Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$1;->this$1:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

    iget-object v1, v1, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/builder/DownloadBuilder;->download(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
