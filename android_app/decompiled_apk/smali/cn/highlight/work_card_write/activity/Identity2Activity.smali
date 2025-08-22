.class public Lcn/highlight/work_card_write/activity/Identity2Activity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "Identity2Activity.java"


# instance fields
.field btnSave:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090092
    .end annotation
.end field

.field imgBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field linearEnterprise:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019c
    .end annotation
.end field

.field linearPerson:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019d
    .end annotation
.end field

.field radioEnterprise:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f7
    .end annotation
.end field

.field radioPerson:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f8
    .end annotation
.end field

.field private userType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->userType:I

    return-void
.end method

.method private selectRadioButton()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->radioEnterprise:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 64
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->radioPerson:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    iget v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->userType:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->radioPerson:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->radioEnterprise:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 6

    const-string v0, "Person"

    const-string v1, "Identity"

    .line 49
    invoke-static {p0, v1, v0}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x71b7788b

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_1

    const v0, 0x46f90f81

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Enterprise"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_3

    goto :goto_2

    .line 54
    :cond_3
    iput v5, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->userType:I

    goto :goto_2

    .line 51
    :cond_4
    iput v4, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->userType:I

    .line 58
    :goto_2
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Identity2Activity;->selectRadioButton()V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 5
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090147,
            0x7f0901f7,
            0x7f09019c,
            0x7f0901f8,
            0x7f09019d,
            0x7f090092
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 92
    :sswitch_0
    iput v1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->userType:I

    .line 93
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Identity2Activity;->selectRadioButton()V

    goto :goto_1

    .line 87
    :sswitch_1
    iput v0, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->userType:I

    .line 88
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Identity2Activity;->selectRadioButton()V

    goto :goto_1

    .line 83
    :sswitch_2
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Identity2Activity;->finishActivity()V

    goto :goto_1

    .line 96
    :sswitch_3
    iget p1, p0, Lcn/highlight/work_card_write/activity/Identity2Activity;->userType:I

    const-string v2, "Enterprise"

    const-string v3, "Person"

    const-string v4, "Identity"

    if-ne p1, v1, :cond_1

    .line 98
    invoke-static {p0, v4, v3}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Lcn/highlight/work_card_write/activity/HomeActivity;->getInstance()Lcn/highlight/work_card_write/activity/HomeActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lcn/highlight/work_card_write/activity/HomeActivity;->getInstance()Lcn/highlight/work_card_write/activity/HomeActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/HomeActivity;->changeFrag(I)V

    .line 105
    :cond_0
    invoke-static {p0, v4, v3}, Lcn/highlight/core/utils/SpUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {p0, v4, v3}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 110
    :cond_2
    const-class p1, Lcn/highlight/work_card_write/activity/LoginActivity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/Identity2Activity;->launchActivity(Ljava/lang/Class;)V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Identity2Activity;->finishActivity()V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090092 -> :sswitch_3
        0x7f090147 -> :sswitch_2
        0x7f09019c -> :sswitch_1
        0x7f09019d -> :sswitch_0
        0x7f0901f7 -> :sswitch_1
        0x7f0901f8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0023

    return v0
.end method
