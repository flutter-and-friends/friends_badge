.class Lcom/allenliu/versionchecklib/core/VersionDialogActivity$1;
.super Ljava/lang/Object;
.source "VersionDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showVersionDialog()V
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

    .line 116
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$1;->this$0:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$1;->this$0:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    invoke-virtual {p1}, Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->finish()V

    return-void
.end method
