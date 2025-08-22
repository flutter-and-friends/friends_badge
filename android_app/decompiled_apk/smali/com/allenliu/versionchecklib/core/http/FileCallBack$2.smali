.class Lcom/allenliu/versionchecklib/core/http/FileCallBack$2;
.super Ljava/lang/Object;
.source "FileCallBack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/core/http/FileCallBack;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/core/http/FileCallBack;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/core/http/FileCallBack;I)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$2;->this$0:Lcom/allenliu/versionchecklib/core/http/FileCallBack;

    iput p2, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$2;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$2;->this$0:Lcom/allenliu/versionchecklib/core/http/FileCallBack;

    iget v1, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$2;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->onDownloading(I)V

    return-void
.end method
