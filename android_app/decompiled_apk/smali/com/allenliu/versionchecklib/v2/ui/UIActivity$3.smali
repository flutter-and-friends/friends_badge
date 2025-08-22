.class Lcom/allenliu/versionchecklib/v2/ui/UIActivity$3;
.super Ljava/lang/Object;
.source "UIActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->showCustomDialog()V
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

    .line 97
    iput-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$3;->this$0:Lcom/allenliu/versionchecklib/v2/ui/UIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string p1, "click"

    .line 100
    invoke-static {p1}, Lcom/allenliu/versionchecklib/utils/ALog;->e(Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/allenliu/versionchecklib/v2/ui/UIActivity$3;->this$0:Lcom/allenliu/versionchecklib/v2/ui/UIActivity;

    invoke-static {p1}, Lcom/allenliu/versionchecklib/v2/ui/UIActivity;->access$000(Lcom/allenliu/versionchecklib/v2/ui/UIActivity;)V

    return-void
.end method
