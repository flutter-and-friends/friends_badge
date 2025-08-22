.class Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$2;
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

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;Lokhttp3/Response;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$2;->this$1:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

    iput-object p2, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$2;->val$requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

    iput-object p3, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$2;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$2;->val$requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$2;->val$response:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;->onRequestVersionFailure(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$2;->this$1:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

    iget-object v1, v1, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->cancelAllMission(Landroid/content/Context;)V

    return-void
.end method
