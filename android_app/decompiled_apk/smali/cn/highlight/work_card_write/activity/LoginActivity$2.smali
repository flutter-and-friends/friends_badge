.class Lcn/highlight/work_card_write/activity/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcn/highlight/work_card_write/api/ApiResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/LoginActivity;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/highlight/work_card_write/api/ApiResult<",
        "Lcn/highlight/work_card_write/entity/LoginRes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/LoginActivity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 210
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {p2}, Lcn/highlight/work_card_write/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {v1}, Lcn/highlight/work_card_write/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

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

.method public onSuss(Lcn/highlight/work_card_write/entity/LoginRes;)V
    .locals 3

    if-nez p1, :cond_0

    .line 181
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_0
    invoke-virtual {p1}, Lcn/highlight/work_card_write/entity/LoginRes;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-static {v0}, Lcn/highlight/work_card_write/activity/LoginActivity;->access$000(Lcn/highlight/work_card_write/activity/LoginActivity;)V

    .line 187
    :try_start_0
    invoke-virtual {p1}, Lcn/highlight/work_card_write/entity/LoginRes;->getData()Lcn/highlight/work_card_write/entity/LoginRes$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/entity/LoginRes$DataBean;->getUser()Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;->getOrganizationId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/Constants;->organizationId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    :goto_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    const-string v1, "Identity"

    const-string v2, "Enterprise"

    invoke-static {v0, v1, v2}, Lcn/highlight/core/utils/SpUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    sget-object v1, Lcn/highlight/work_card_write/Constants;->NICKNAME:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/entity/LoginRes;->getData()Lcn/highlight/work_card_write/entity/LoginRes$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/work_card_write/entity/LoginRes$DataBean;->getUser()Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/highlight/work_card_write/entity/LoginRes$DataBean$UserBean;->getNickName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcn/highlight/core/utils/SpUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    const-class v0, Lcn/highlight/work_card_write/activity/HomeActivity;

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/LoginActivity;->launchActivity(Ljava/lang/Class;)V

    .line 195
    invoke-static {}, Lcn/highlight/work_card_write/activity/HomeActivity;->getInstance()Lcn/highlight/work_card_write/activity/HomeActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 196
    invoke-static {}, Lcn/highlight/work_card_write/activity/HomeActivity;->getInstance()Lcn/highlight/work_card_write/activity/HomeActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/HomeActivity;->changeFrag(I)V

    .line 198
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/LoginActivity;->finishActivity()V

    return-void

    .line 200
    :cond_2
    invoke-virtual {p1}, Lcn/highlight/work_card_write/entity/LoginRes;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "500"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_3
    invoke-virtual {p1}, Lcn/highlight/work_card_write/entity/LoginRes;->getMsg()Ljava/lang/String;

    .line 205
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity$2;->this$0:Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/activity/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onSuss(Ljava/lang/Object;)V
    .locals 0

    .line 177
    check-cast p1, Lcn/highlight/work_card_write/entity/LoginRes;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/LoginActivity$2;->onSuss(Lcn/highlight/work_card_write/entity/LoginRes;)V

    return-void
.end method
