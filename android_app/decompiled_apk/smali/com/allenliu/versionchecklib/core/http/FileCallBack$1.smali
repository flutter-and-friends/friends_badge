.class Lcom/allenliu/versionchecklib/core/http/FileCallBack$1;
.super Ljava/lang/Object;
.source "FileCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/core/http/FileCallBack;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/core/http/FileCallBack;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/core/http/FileCallBack;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$1;->this$0:Lcom/allenliu/versionchecklib/core/http/FileCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$1;->this$0:Lcom/allenliu/versionchecklib/core/http/FileCallBack;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->onDownloadFailed()V

    return-void
.end method
