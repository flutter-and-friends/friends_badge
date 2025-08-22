.class Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$1;
.super Ljava/lang/Object;
.source "DownloadMangerV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;->onSuccess(Ljava/io/File;Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;Ljava/io/File;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$1;->this$0:Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;

    iput-object p2, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$1;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$1;->this$0:Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;

    iget-object v0, v0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$1;->this$0:Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;

    iget-object v0, v0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$1;->val$file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloadSuccess(Ljava/io/File;)V

    :cond_0
    return-void
.end method
