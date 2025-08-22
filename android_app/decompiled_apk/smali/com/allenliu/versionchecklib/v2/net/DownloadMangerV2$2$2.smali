.class Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$2;
.super Ljava/lang/Object;
.source "DownloadMangerV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;->onDownloading(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;I)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$2;->this$0:Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;

    iput p2, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$2;->this$0:Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;

    iget-object v0, v0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$2;->this$0:Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;

    iget-object v0, v0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    iget v1, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$2$2;->val$progress:I

    invoke-interface {v0, v1}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloading(I)V

    :cond_0
    return-void
.end method
