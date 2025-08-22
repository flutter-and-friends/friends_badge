.class Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$4;
.super Ljava/lang/Object;
.source "DownloadFailedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->showCustomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$4;->this$0:Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$4;->this$0:Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->access$000(Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
