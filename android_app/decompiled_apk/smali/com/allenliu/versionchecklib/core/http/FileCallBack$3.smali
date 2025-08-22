.class Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;
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

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/core/http/FileCallBack;Ljava/io/File;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;->this$0:Lcom/allenliu/versionchecklib/core/http/FileCallBack;

    iput-object p2, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;->val$call:Lokhttp3/Call;

    iput-object p4, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;->this$0:Lcom/allenliu/versionchecklib/core/http/FileCallBack;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;->val$call:Lokhttp3/Call;

    iget-object v3, p0, Lcom/allenliu/versionchecklib/core/http/FileCallBack$3;->val$response:Lokhttp3/Response;

    invoke-virtual {v0, v1, v2, v3}, Lcom/allenliu/versionchecklib/core/http/FileCallBack;->onSuccess(Ljava/io/File;Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method
