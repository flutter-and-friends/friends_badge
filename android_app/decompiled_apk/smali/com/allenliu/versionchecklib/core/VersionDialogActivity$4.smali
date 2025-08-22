.class Lcom/allenliu/versionchecklib/core/VersionDialogActivity$4;
.super Ljava/lang/Object;
.source "VersionDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showFailDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$4;->this$0:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$4;->this$0:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->access$000(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)Lcom/allenliu/versionchecklib/callback/CommitClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$4;->this$0:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->access$000(Lcom/allenliu/versionchecklib/core/VersionDialogActivity;)Lcom/allenliu/versionchecklib/callback/CommitClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/allenliu/versionchecklib/callback/CommitClickListener;->onCommitClick()V

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$4;->this$0:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->dealAPK()V

    return-void
.end method
