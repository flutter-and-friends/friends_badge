.class Lcom/allenliu/versionchecklib/core/AVersionService$2;
.super Ljava/lang/Object;
.source "AVersionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/core/AVersionService;->pauseRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/core/AVersionService;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/core/AVersionService;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/AVersionService$2;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/allenliu/versionchecklib/core/AVersionService$2;->this$0:Lcom/allenliu/versionchecklib/core/AVersionService;

    invoke-static {v0}, Lcom/allenliu/versionchecklib/core/AVersionService;->access$100(Lcom/allenliu/versionchecklib/core/AVersionService;)V

    return-void
.end method
