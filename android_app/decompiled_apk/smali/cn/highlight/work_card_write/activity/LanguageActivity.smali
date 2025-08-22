.class public Lcn/highlight/work_card_write/activity/LanguageActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "LanguageActivity.java"


# instance fields
.field btnSave:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090092
    .end annotation
.end field

.field private currentLanguage:I

.field imgBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field linearDe:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017e
    .end annotation
.end field

.field linearEn:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090181
    .end annotation
.end field

.field linearZh:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019b
    .end annotation
.end field

.field radioDe:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f4
    .end annotation
.end field

.field radioEn:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f5
    .end annotation
.end field

.field radioZh:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901f6
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->currentLanguage:I

    return-void
.end method

.method private selectRadioButton()V
    .locals 3

    .line 113
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioEn:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioZh:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 115
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioDe:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 116
    iget v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->currentLanguage:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioDe:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioZh:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioEn:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 6

    .line 51
    invoke-static {}, Lcn/highlight/work_card_write/sp/ConfigSp;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xc81

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2

    const/16 v2, 0xca9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xf2e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "de"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    goto :goto_2

    .line 59
    :cond_4
    iput v4, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->currentLanguage:I

    goto :goto_2

    .line 56
    :cond_5
    iput v5, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->currentLanguage:I

    goto :goto_2

    .line 53
    :cond_6
    iput v3, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->currentLanguage:I

    .line 62
    :goto_2
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LanguageActivity;->selectRadioButton()V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090147,
            0x7f090181,
            0x7f0901f5,
            0x7f09019b,
            0x7f0901f6,
            0x7f09017e,
            0x7f0901f4,
            0x7f090092
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 79
    :sswitch_0
    iput v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->currentLanguage:I

    .line 80
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LanguageActivity;->selectRadioButton()V

    goto :goto_1

    :sswitch_1
    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->currentLanguage:I

    .line 75
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LanguageActivity;->selectRadioButton()V

    goto :goto_1

    .line 84
    :sswitch_2
    iput v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->currentLanguage:I

    .line 85
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LanguageActivity;->selectRadioButton()V

    goto :goto_1

    .line 70
    :sswitch_3
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LanguageActivity;->finishActivity()V

    goto :goto_1

    .line 89
    :sswitch_4
    iget p1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity;->currentLanguage:I

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "de"

    goto :goto_0

    :cond_1
    const-string p1, "zh"

    goto :goto_0

    :cond_2
    const-string p1, "en"

    .line 100
    :goto_0
    invoke-static {p1}, Lcn/highlight/work_card_write/sp/ConfigSp;->saveLang(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "Language"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LanguageActivity;->finishActivity()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090092 -> :sswitch_4
        0x7f090147 -> :sswitch_3
        0x7f09017e -> :sswitch_2
        0x7f090181 -> :sswitch_1
        0x7f09019b -> :sswitch_0
        0x7f0901f4 -> :sswitch_2
        0x7f0901f5 -> :sswitch_1
        0x7f0901f6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0027

    return v0
.end method
