.class public Lcn/highlight/work_card_write/fragment/MyFragment;
.super Lcn/highlight/work_card_write/base/BaseFragment;
.source "MyFragment.java"


# instance fields
.field linearAbout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090176
    .end annotation
.end field

.field linearClear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017b
    .end annotation
.end field

.field linearLanguage:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090188
    .end annotation
.end field

.field linearNfc:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018e
    .end annotation
.end field

.field linearUse:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090196
    .end annotation
.end field

.field linearUserType:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090197
    .end annotation
.end field

.field llArrowRight:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a0
    .end annotation
.end field

.field llUserInfo:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a8
    .end annotation
.end field

.field tvUserNmae:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902c4
    .end annotation
.end field

.field tvUserinfo:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b0
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$showAboutDialog$0(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 144
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private showAboutDialog()V
    .locals 6

    .line 131
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0061

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 132
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f1100ca

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0902a8

    .line 133
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902b1

    .line 134
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f09008b

    .line 135
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 136
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 137
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcn/highlight/core/utils/Tools;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1000b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$MyFragment$0_WLEG9lyYvIfWZrzOQ9U-rJPvs;

    invoke-direct {v0, v1}, Lcn/highlight/work_card_write/fragment/-$$Lambda$MyFragment$0_WLEG9lyYvIfWZrzOQ9U-rJPvs;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 0

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 6

    .line 105
    invoke-super {p0, p1}, Lcn/highlight/work_card_write/base/BaseFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_5

    .line 108
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Person"

    const-string v1, "Identity"

    invoke-static {p1, v1, v0}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x71b7788b

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    const v0, 0x46f90f81

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Enterprise"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 116
    :cond_3
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserinfo:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment;->llArrowRight:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserNmae:Landroid/widget/TextView;

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserNmae:Landroid/widget/TextView;

    const v0, 0x7f1000c2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 110
    :cond_4
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserinfo:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment;->llArrowRight:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserNmae:Landroid/widget/TextView;

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 113
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserNmae:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/highlight/work_card_write/Constants;->NICKNAME:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 4
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090188,
            0x7f090196,
            0x7f09018e,
            0x7f090176,
            0x7f09017b,
            0x7f090197,
            0x7f0901a8,
            0x7f0901a0
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 91
    :sswitch_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Person"

    const-string v1, "Identity"

    invoke-static {p1, v1, v0}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x71b7788b

    if-eq v2, v3, :cond_1

    const v0, 0x46f90f81

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Enterprise"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 93
    :cond_3
    const-class p1, Lcn/highlight/work_card_write/activity/UserInfoActivity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment;->launchActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 87
    :sswitch_1
    const-class p1, Lcn/highlight/work_card_write/activity/Identity2Activity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment;->launchActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 74
    :sswitch_2
    const-class p1, Lcn/highlight/work_card_write/activity/InstructionActivity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment;->launchActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 77
    :sswitch_3
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :sswitch_4
    const-class p1, Lcn/highlight/work_card_write/activity/LanguageActivity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment;->launchActivity(Ljava/lang/Class;)V

    goto :goto_1

    .line 81
    :sswitch_5
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/MyFragment;->showAboutDialog()V

    :goto_1
    :sswitch_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090176 -> :sswitch_5
        0x7f09017b -> :sswitch_6
        0x7f090188 -> :sswitch_4
        0x7f09018e -> :sswitch_3
        0x7f090196 -> :sswitch_2
        0x7f090197 -> :sswitch_1
        0x7f0901a0 -> :sswitch_0
        0x7f0901a8 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c006b

    return v0
.end method
