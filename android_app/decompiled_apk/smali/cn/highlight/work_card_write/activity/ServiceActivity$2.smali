.class Lcn/highlight/work_card_write/activity/ServiceActivity$2;
.super Ljava/lang/Object;
.source "ServiceActivity.java"

# interfaces
.implements Lcn/highlight/work_card_write/api/ApiResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/ServiceActivity;->testConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/highlight/work_card_write/api/ApiResult<",
        "Lcn/highlight/work_card_write/api/Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/ServiceActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 80
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {p2}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {v1}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public onSuss(Lcn/highlight/work_card_write/api/Result;)V
    .locals 2

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcn/highlight/work_card_write/api/Result;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcn/highlight/work_card_write/Constants;->APP_URL:Ljava/lang/String;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    iget-object v1, v1, Lcn/highlight/work_card_write/activity/ServiceActivity;->editAddress:Landroid/widget/EditText;

    invoke-static {v1}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/highlight/core/utils/SpUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcn/highlight/work_card_write/api/Result;->getMsg()Ljava/lang/String;

    .line 74
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->this$0:Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/ServiceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuss(Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p1, Lcn/highlight/work_card_write/api/Result;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/ServiceActivity$2;->onSuss(Lcn/highlight/work_card_write/api/Result;)V

    return-void
.end method
