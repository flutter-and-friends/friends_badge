.class Lcom/allenliu/versionchecklib/v2/ui/UIActivity$2;
.super Ljava/lang/Object;
.source "UIActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->showDefaultDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allenliu/versionchecklib/v2/ui/UIActivity;


# direct methods
.method constructor <init>(Lcom/allenliu/versionchecklib/v2/ui/UIActivity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$2;->this$0:Lcom/allenliu/versionchecklib/v2/ui/UIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$2;->this$0:Lcom/allenliu/versionchecklib/v2/ui/UIActivity;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->access$100(Lcom/allenliu/versionchecklib/v2/ui/UIActivity;)Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method
