.class Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$1;
.super Ljava/lang/Object;
.source "DownloadFailedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->showDefaultDialog()V
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

    .line 32
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity$1;->this$0:Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->access$000(Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;)Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/allenliu/versionchecklib/v2/ui/DownloadFailedActivity;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
