.class public Lcn/highlight/work_card_write/activity/UserInfoActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "UserInfoActivity.java"


# instance fields
.field imgBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field linearZh:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019b
    .end annotation
.end field

.field tvLoginOut:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ba
    .end annotation
.end field

.field tvUserName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    const-string v0, "Identity"

    const-string v1, "Person"

    .line 43
    invoke-static {p0, v0, v1}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enterprise"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity;->tvUserName:Landroid/widget/TextView;

    sget-object v1, Lcn/highlight/work_card_write/Constants;->NICKNAME:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity;->tvLoginOut:Landroid/widget/TextView;

    const-string v1, "#FFFF0000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity;->tvUserName:Landroid/widget/TextView;

    const v1, 0x7f1000c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/UserInfoActivity;->tvLoginOut:Landroid/widget/TextView;

    const-string v1, "#FFcccccc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090147,
            0x7f0902ba
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090147

    if-eq p1, v0, :cond_2

    const v0, 0x7f0902ba

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Person"

    const-string v0, "Identity"

    .line 63
    invoke-static {p0, v0, p1}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 66
    :cond_1
    new-instance p1, Lcn/highlight/work_card_write/dialog/HintDialog;

    const v0, 0x7f100076

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/UserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/highlight/work_card_write/dialog/HintDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcn/highlight/work_card_write/activity/UserInfoActivity$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/UserInfoActivity$1;-><init>(Lcn/highlight/work_card_write/activity/UserInfoActivity;Lcn/highlight/work_card_write/dialog/HintDialog;)V

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/dialog/HintDialog;->setOnHintDialogListener(Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;)V

    .line 85
    invoke-virtual {p1}, Lcn/highlight/work_card_write/dialog/HintDialog;->show()V

    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/UserInfoActivity;->finishActivity()V

    :goto_0
    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c002f

    return v0
.end method
