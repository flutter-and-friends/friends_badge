.class final Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$3;
.super Ljava/lang/Object;
.source "DownloadMangerV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->response(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/callback/DownloadListener;I)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$3;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    iput p2, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$3;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$3;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    if-eqz v0, :cond_0

    .line 108
    iget v1, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$3;->val$progress:I

    invoke-interface {v0, v1}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloading(I)V

    :cond_0
    return-void
.end method
