.class Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$3;
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

.field final synthetic val$e:Ljava/io/IOException;

.field final synthetic val$requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;Ljava/io/IOException;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$3;->this$1:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

    iput-object p2, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$3;->val$requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

    iput-object p3, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$3;->val$e:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$3;->val$requestVersionListener:Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$3;->val$e:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/allenliu/versionchecklib/v2/callback/RequestVersionListener;->onRequestVersionFailure(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->getInstance()Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1$3;->this$1:Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;

    iget-object v1, v1, Lcom/allenliu/versionchecklib/v2/net/RequestVersionManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/AllenVersionChecker;->cancelAllMission(Landroid/content/Context;)V

    return-void
.end method
