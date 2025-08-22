.class public Lcn/highlight/work_card_write/activity/HomeActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "HomeActivity.java"


# static fields
.field private static instance:Lcn/highlight/work_card_write/activity/HomeActivity;


# instance fields
.field private cardFragment:Lcn/highlight/work_card_write/fragment/CardFragment;

.field private editFragment:Lcn/highlight/work_card_write/fragment/EditFragment;

.field imgCard:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090148
    .end annotation
.end field

.field imgHome:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090149
    .end annotation
.end field

.field imgMy:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09014a
    .end annotation
.end field

.field linearCard:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017a
    .end annotation
.end field

.field linearContent:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017c
    .end annotation
.end field

.field linearHome:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090185
    .end annotation
.end field

.field linearMy:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018b
    .end annotation
.end field

.field private myFragment:Lcn/highlight/work_card_write/fragment/MyFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/highlight/work_card_write/activity/HomeActivity;
    .locals 1

    .line 48
    sget-object v0, Lcn/highlight/work_card_write/activity/HomeActivity;->instance:Lcn/highlight/work_card_write/activity/HomeActivity;

    return-object v0
.end method

.method private initFragment()V
    .locals 3

    .line 103
    new-instance v0, Lcn/highlight/work_card_write/fragment/EditFragment;

    invoke-direct {v0}, Lcn/highlight/work_card_write/fragment/EditFragment;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->editFragment:Lcn/highlight/work_card_write/fragment/EditFragment;

    .line 104
    new-instance v0, Lcn/highlight/work_card_write/fragment/CardFragment;

    invoke-direct {v0}, Lcn/highlight/work_card_write/fragment/CardFragment;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->cardFragment:Lcn/highlight/work_card_write/fragment/CardFragment;

    .line 105
    new-instance v0, Lcn/highlight/work_card_write/fragment/MyFragment;

    invoke-direct {v0}, Lcn/highlight/work_card_write/fragment/MyFragment;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->myFragment:Lcn/highlight/work_card_write/fragment/MyFragment;

    .line 107
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->editFragment:Lcn/highlight/work_card_write/fragment/EditFragment;

    const v2, 0x7f09017c

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->cardFragment:Lcn/highlight/work_card_write/fragment/CardFragment;

    .line 108
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->myFragment:Lcn/highlight/work_card_write/fragment/MyFragment;

    .line 109
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 110
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->editFragment:Lcn/highlight/work_card_write/fragment/EditFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->cardFragment:Lcn/highlight/work_card_write/fragment/CardFragment;

    .line 111
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->myFragment:Lcn/highlight/work_card_write/fragment/MyFragment;

    .line 112
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private initUI()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgHome:Landroid/widget/ImageView;

    const v1, 0x7f0e00ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgCard:Landroid/widget/ImageView;

    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgMy:Landroid/widget/ImageView;

    const v1, 0x7f0e00bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public changeFrag(I)V
    .locals 0

    .line 95
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setUI(I)V

    .line 96
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setFragment(I)V

    return-void
.end method

.method public clearFragmentsBeforeCreate()V
    .locals 3

    .line 120
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 121
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 126
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNow()V

    return-void
.end method

.method protected initData()V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->initUI()V

    .line 64
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->initFragment()V

    .line 65
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->clearFragmentsBeforeCreate()V

    .line 66
    sput-object p0, Lcn/highlight/work_card_write/activity/HomeActivity;->instance:Lcn/highlight/work_card_write/activity/HomeActivity;

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 217
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 201
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->doubleBack()V

    const/4 p1, 0x1

    return p1

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/highlight/work_card_write/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 210
    invoke-super {p0, p1}, Lcn/highlight/work_card_write/base/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    .line 211
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setUI(I)V

    .line 212
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setFragment(I)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 71
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->onResume()V

    .line 73
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 75
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 78
    :cond_0
    sput-object v1, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    .line 79
    sput-object v1, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    .line 80
    sput-object v1, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    .line 81
    sput-object v1, Lcn/highlight/work_card_write/Constants;->editSaveModel:Lcn/highlight/lib_doodle/IDoodle;

    const/4 v0, 0x0

    .line 82
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/Constants;->IsModelThemeIn:Ljava/lang/Boolean;

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090185,
            0x7f09017a,
            0x7f09018b
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09017a

    if-eq p1, v0, :cond_2

    const v0, 0x7f090185

    if-eq p1, v0, :cond_1

    const v0, 0x7f09018b

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 144
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setUI(I)V

    .line 145
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setFragment(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 135
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setUI(I)V

    .line 136
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setFragment(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 139
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setUI(I)V

    .line 140
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/HomeActivity;->setFragment(I)V

    const-string p1, "\u6a21\u677f"

    .line 141
    sput-object p1, Lcn/highlight/work_card_write/Constants;->cardShowPage:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setFragment(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->myFragment:Lcn/highlight/work_card_write/fragment/MyFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->editFragment:Lcn/highlight/work_card_write/fragment/EditFragment;

    .line 189
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->cardFragment:Lcn/highlight/work_card_write/fragment/CardFragment;

    .line 190
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->cardFragment:Lcn/highlight/work_card_write/fragment/CardFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->editFragment:Lcn/highlight/work_card_write/fragment/EditFragment;

    .line 183
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->myFragment:Lcn/highlight/work_card_write/fragment/MyFragment;

    .line 184
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->editFragment:Lcn/highlight/work_card_write/fragment/EditFragment;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->cardFragment:Lcn/highlight/work_card_write/fragment/CardFragment;

    .line 177
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->myFragment:Lcn/highlight/work_card_write/fragment/MyFragment;

    .line 178
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c001c

    return v0
.end method

.method public setUI(I)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgHome:Landroid/widget/ImageView;

    const v1, 0x7f0e00b9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 155
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgCard:Landroid/widget/ImageView;

    const v1, 0x7f0e00b7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgMy:Landroid/widget/ImageView;

    const v1, 0x7f0e00bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgMy:Landroid/widget/ImageView;

    const v0, 0x7f0e00bc

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 162
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgCard:Landroid/widget/ImageView;

    const v0, 0x7f0e00b8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/HomeActivity;->imgHome:Landroid/widget/ImageView;

    const v0, 0x7f0e00ba

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
