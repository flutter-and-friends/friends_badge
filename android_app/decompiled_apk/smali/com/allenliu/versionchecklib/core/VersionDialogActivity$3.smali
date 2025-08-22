.class Lcom/allenliu/versionchecklib/core/VersionDialogActivity$3;
.super Ljava/lang/Object;
.source "VersionDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/allenliu/versionchecklib/core/VersionDialogActivity;->showLoadingDialog(I)V
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

    .line 139
    iput-object p1, p0, Lcom/allenliu/versionchecklib/core/VersionDialogActivity$3;->this$0:Lcom/allenliu/versionchecklib/core/VersionDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 142
    invoke-static {}, Lcom/allenliu/versionchecklib/core/http/AllenHttp;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Dispatcher;->cancelAll()V

    return-void
.end method
