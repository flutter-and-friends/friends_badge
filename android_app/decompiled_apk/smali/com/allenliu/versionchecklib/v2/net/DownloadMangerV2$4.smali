.class final Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$4;
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
.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/callback/DownloadListener;Ljava/io/File;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$4;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    iput-object p2, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$4;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$4;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$4;->val$file:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerDownloadSuccess(Ljava/io/File;)V

    :cond_0
    return-void
.end method
