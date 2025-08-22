.class public Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;
.super Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;
.source "PermissionDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;-><init>()V

    return-void
.end method

.method private sendBroadcast(Z)V
    .locals 2

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.allenliu.versionchecklib.filepermisssion.action"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "result"

    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    new-instance v0, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    invoke-direct {v0}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;-><init>()V

    const/16 v1, 0x63

    .line 77
    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setEventType(I)Lcom/allenliu/versionchecklib/v2/eventbus/BaseEvent;

    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setSuccessful(Z)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    .line 79
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;->setData(Ljava/lang/Object;)Lcom/allenliu/versionchecklib/v2/eventbus/CommonEvent;

    .line 80
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 26
    invoke-super {p0, p1}, Lcom/allenliu/versionchecklib/v2/ui/AllenBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 27
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    invoke-static {p0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x123

    if-eqz v0, :cond_0

    .line 38
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 47
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 56
    invoke-direct {p0, p1}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->sendBroadcast(Z)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const/16 p2, 0x123

    if-eq p1, p2, :cond_0

    return-void

    .line 92
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-lez p1, :cond_1

    aget p1, p3, p2

    if-nez p1, :cond_1

    .line 97
    invoke-direct {p0, v0}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->sendBroadcast(Z)V

    goto :goto_0

    .line 99
    :cond_1
    sget p1, Lcom/allenliu/versionchecklib/R$string;->versionchecklib_write_permission_deny:I

    invoke-virtual {p0, p1}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-direct {p0, p2}, Lcom/allenliu/versionchecklib/core/PermissionDialogActivity;->sendBroadcast(Z)V

    :goto_0
    return-void
.end method

.method public showCustomDialog()V
    .locals 0

    return-void
.end method

.method public showDefaultDialog()V
    .locals 0

    return-void
.end method
