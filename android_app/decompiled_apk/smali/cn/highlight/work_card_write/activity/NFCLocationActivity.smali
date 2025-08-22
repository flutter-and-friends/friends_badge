.class public Lcn/highlight/work_card_write/activity/NFCLocationActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "NFCLocationActivity.java"


# instance fields
.field imgBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field linearHUAWEI:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090184
    .end annotation
.end field

.field linearIphone:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090186
    .end annotation
.end field

.field linearOppo:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018f
    .end annotation
.end field

.field linearSanXing:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090191
    .end annotation
.end field

.field linearVivo:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090198
    .end annotation
.end field

.field linearXiaoMi:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090199
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

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

.method public onViewClicked(Landroid/view/View;)V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090147,
            0x7f090186,
            0x7f090184,
            0x7f090199,
            0x7f090191,
            0x7f09018f,
            0x7f090198
        }
    .end annotation

    .line 47
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v1, "type"

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x2

    .line 61
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 62
    const-class p1, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;

    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x5

    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-class p1, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;

    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x3

    .line 65
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-class p1, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;

    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x4

    .line 69
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-class p1, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;

    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_4
    const/4 p1, 0x0

    .line 53
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-class p1, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;

    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_5
    const/4 p1, 0x1

    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-class p1, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;

    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->launchActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 50
    :sswitch_6
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->finishActivity()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090147 -> :sswitch_6
        0x7f090184 -> :sswitch_5
        0x7f090186 -> :sswitch_4
        0x7f09018f -> :sswitch_3
        0x7f090191 -> :sswitch_2
        0x7f090198 -> :sswitch_1
        0x7f090199 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c002b

    return v0
.end method
