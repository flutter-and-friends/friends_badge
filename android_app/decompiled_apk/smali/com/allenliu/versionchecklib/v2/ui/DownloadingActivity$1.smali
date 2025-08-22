.class Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity$1;
.super Ljava/lang/Object;
.source "DownloadingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->showCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 95
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadingActivity;->onCancel(Z)V

    return-void
.end method
