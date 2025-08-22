.class public Lcn/highlight/work_card_write/activity/ServiceActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "ServiceActivity.java"


# instance fields
.field btnConnect:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090096
    .end annotation
.end field

.field editAddress:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f5
    .end annotation
.end field

.field ivBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090168
    .end annotation
.end field

.field tvTitleBase:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c1
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ServiceActivity;->ivBack:Landroid/widget/ImageView;

    new-instance v1, Lcn/highlight/work_card_write/activity/ServiceActivity$1;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/ServiceActivity$1;-><init>(Lcn/highlight/work_card_write/activity/ServiceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity;->editAddress:Landroid/widget/EditText;

    sget-object v0, Lcn/highlight/work_card_write/Constants;->APP_URL:Ljava/lang/String;

    sget-object v1, Lcn/highlight/work_card_write/Constants;->DEFAULT_APP_URL:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onViewClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090096
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ServiceActivity;->testConnect()V

    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c002e

    return v0
.end method

.method public testConnect()V
    .locals 3

    .line 61
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ServiceActivity;->editAddress:Landroid/widget/EditText;

    invoke-static {v1}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/highlight/work_card_write/activity/ServiceActivity$2;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/activity/ServiceActivity$2;-><init>(Lcn/highlight/work_card_write/activity/ServiceActivity;)V

    invoke-virtual {v0, p0, v1, v2}, Lcn/highlight/work_card_write/api/ApiUtil;->testConn(Landroid/app/Activity;Ljava/lang/String;Lcn/highlight/work_card_write/api/ApiResult;)V

    return-void
.end method
