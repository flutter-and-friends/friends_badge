.class final Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$1;
.super Ljava/lang/Object;
.source "DownloadMangerV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/callback/DownloadListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$1;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/DownloadMangerV2$1;->val$listener:Lcom/allenliu/versionchecklib/callback/DownloadListener;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcom/allenliu/versionchecklib/callback/DownloadListener;->onCheckerStartDownload()V

    :cond_0
    return-void
.end method
