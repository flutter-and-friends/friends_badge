.class Lcom/allenliu/versionchecklib/v2/ui/VersionService$2;
.super Ljava/lang/Object;
.source "VersionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/ui/VersionService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/ui/VersionService;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$2;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/allenliu/versionchecklib/v2/ui/VersionService$2;->this$0:Lcom/allenliu/versionchecklib/v2/ui/VersionService;

    invoke-virtual {v0}, Lcom/allenliu/versionchecklib/v2/ui/VersionService;->onHandleWork()V

    return-void
.end method
