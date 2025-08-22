.class public Lcn/highlight/work_card_write/activity/IdentityActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "IdentityActivity.java"


# instance fields
.field ivTo:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field rlEnterprise:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020c
    .end annotation
.end field

.field rlPerson:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09020d
    .end annotation
.end field

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity;->type:I

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, ""

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Lcn/highlight/work_card_write/activity/IdentityActivity;->setImmersionBar(ZZLjava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 65
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->onDestroy()V

    const-string v0, "first_use"

    const/4 v1, 0x0

    .line 66
    invoke-static {p0, v0, v1}, Lcn/highlight/core/utils/SpUtil;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09020c,
            0x7f09020d,
            0x7f09016a
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 p1, 0x0

    .line 77
    iput p1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity;->type:I

    .line 78
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/IdentityActivity;->setBg()V

    goto :goto_1

    :sswitch_1
    const/4 p1, 0x1

    .line 73
    iput p1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity;->type:I

    .line 74
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/IdentityActivity;->setBg()V

    goto :goto_1

    .line 81
    :sswitch_2
    iget p1, p0, Lcn/highlight/work_card_write/activity/IdentityActivity;->type:I

    if-nez p1, :cond_0

    .line 82
    const-class p1, Lcn/highlight/work_card_write/activity/HomeActivity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/IdentityActivity;->launchActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 84
    :cond_0
    const-class p1, Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/IdentityActivity;->launchActivity(Ljava/lang/Class;)V

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/IdentityActivity;->finishActivity()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09016a -> :sswitch_2
        0x7f09020c -> :sswitch_1
        0x7f09020d -> :sswitch_0
    .end sparse-switch
.end method

.method public setBg()V
    .locals 3

    .line 53
    iget v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity;->type:I

    const v1, 0x7f080078

    const v2, 0x7f080077

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity;->rlPerson:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 55
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity;->rlEnterprise:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity;->rlPerson:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 58
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/IdentityActivity;->rlEnterprise:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0022

    return v0
.end method
