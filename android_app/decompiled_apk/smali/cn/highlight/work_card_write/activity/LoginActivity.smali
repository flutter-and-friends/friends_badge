.class public Lcn/highlight/work_card_write/activity/LoginActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "LoginActivity.java"


# instance fields
.field btnLogin:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090098
    .end annotation
.end field

.field editAccount:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f4
    .end annotation
.end field

.field editPassword:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fa
    .end annotation
.end field

.field ivArrow:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090167
    .end annotation
.end field

.field llLanguage:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a2
    .end annotation
.end field

.field llPerson:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a5
    .end annotation
.end field

.field llService:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a6
    .end annotation
.end field

.field private menuLanguageAdapter:Lcn/highlight/work_card_write/adapter/MenuAdapter;

.field private menuLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/entity/Menu;",
            ">;"
        }
    .end annotation
.end field

.field private popLanguage:Landroid/widget/PopupWindow;

.field tvLanguage:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902b8
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/work_card_write/activity/LoginActivity;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LoginActivity;->saveUserInfo()V

    return-void
.end method

.method private login()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->editAccount:Landroid/widget/EditText;

    invoke-static {v0}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->editPassword:Landroid/widget/EditText;

    invoke-static {v1}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v2

    new-instance v3, Lcn/highlight/work_card_write/activity/LoginActivity$2;

    invoke-direct {v3, p0}, Lcn/highlight/work_card_write/activity/LoginActivity$2;-><init>(Lcn/highlight/work_card_write/activity/LoginActivity;)V

    invoke-virtual {v2, p0, v0, v1, v3}, Lcn/highlight/work_card_write/api/ApiUtil;->login(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcn/highlight/work_card_write/api/ApiResult;)V

    return-void
.end method

.method private saveUserInfo()V
    .locals 2

    .line 220
    :try_start_0
    sget-object v0, Lcn/highlight/work_card_write/Constants;->ACCOUNT:Ljava/lang/String;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->editAccount:Landroid/widget/EditText;

    invoke-static {v1}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/highlight/core/utils/SpUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcn/highlight/work_card_write/Constants;->PASSWORD:Ljava/lang/String;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->editPassword:Landroid/widget/EditText;

    invoke-static {v1}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcn/highlight/core/utils/SpUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showOrgPop(Landroid/view/View;)V
    .locals 5

    .line 135
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    .line 137
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    const/16 v2, 0x78

    invoke-static {v2, p0}, Lcn/highlight/core/utils/ScreenUtil;->DPtoPX(ILandroid/content/Context;)I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v2, p0}, Lcn/highlight/core/utils/ScreenUtil;->DPtoPX(ILandroid/content/Context;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 139
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    const/16 v0, 0xb4

    .line 140
    invoke-static {v0, p0}, Lcn/highlight/core/utils/ScreenUtil;->DPtoPX(ILandroid/content/Context;)I

    move-result v0

    .line 141
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 145
    :goto_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    const v1, 0x7f1100f1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 146
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 147
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 148
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0600dd

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0090

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090212

    .line 150
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    .line 151
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 152
    new-instance v3, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v3}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 153
    iget-object v3, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageAdapter:Lcn/highlight/work_card_write/adapter/MenuAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 154
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 155
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 158
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    aget v3, v0, v4

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2, p1, v4, v3, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 159
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->ivArrow:Landroid/widget/ImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 161
    :cond_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    new-instance v0, Lcn/highlight/work_card_write/activity/LoginActivity$1;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/LoginActivity$1;-><init>(Lcn/highlight/work_card_write/activity/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LoginActivity;->initMenu()V

    .line 85
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->editAccount:Landroid/widget/EditText;

    sget-object v1, Lcn/highlight/work_card_write/Constants;->ACCOUNT:Ljava/lang/String;

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->editPassword:Landroid/widget/EditText;

    sget-object v1, Lcn/highlight/work_card_write/Constants;->PASSWORD:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcn/highlight/core/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->editPassword:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public initMenu()V
    .locals 4

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageList:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageList:Ljava/util/List;

    new-instance v1, Lcn/highlight/work_card_write/entity/Menu;

    const/4 v2, 0x0

    const-string v3, "English"

    invoke-direct {v1, v2, v3}, Lcn/highlight/work_card_write/entity/Menu;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageList:Ljava/util/List;

    new-instance v1, Lcn/highlight/work_card_write/entity/Menu;

    const/4 v2, 0x1

    const-string v3, "Deutsch"

    invoke-direct {v1, v2, v3}, Lcn/highlight/work_card_write/entity/Menu;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageList:Ljava/util/List;

    new-instance v1, Lcn/highlight/work_card_write/entity/Menu;

    const/4 v2, 0x2

    const-string v3, "\u4e2d\u6587"

    invoke-direct {v1, v2, v3}, Lcn/highlight/work_card_write/entity/Menu;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v0, Lcn/highlight/work_card_write/adapter/MenuAdapter;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageList:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcn/highlight/work_card_write/adapter/MenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageAdapter:Lcn/highlight/work_card_write/adapter/MenuAdapter;

    .line 102
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageAdapter:Lcn/highlight/work_card_write/adapter/MenuAdapter;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$LoginActivity$BIVNy7jrcMZ6WeqN6UCL7QwHEDk;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$LoginActivity$BIVNy7jrcMZ6WeqN6UCL7QwHEDk;-><init>(Lcn/highlight/work_card_write/activity/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/MenuAdapter;->setOnItemClickListener(Lcn/highlight/work_card_write/adapter/MenuAdapter$OnItemClickListener;)V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, ""

    .line 78
    invoke-virtual {p0, p1, v0, v1}, Lcn/highlight/work_card_write/activity/LoginActivity;->setImmersionBar(ZZLjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$initMenu$0$LoginActivity(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageAdapter:Lcn/highlight/work_card_write/adapter/MenuAdapter;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/work_card_write/entity/Menu;

    invoke-virtual {v1}, Lcn/highlight/work_card_write/entity/Menu;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/MenuAdapter;->sign(I)V

    .line 104
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageAdapter:Lcn/highlight/work_card_write/adapter/MenuAdapter;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/adapter/MenuAdapter;->notifyDataSetChanged()V

    .line 105
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->menuLanguageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/entity/Menu;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/entity/Menu;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->tvLanguage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "zh"

    goto :goto_0

    :cond_1
    const-string p1, "de"

    goto :goto_0

    :cond_2
    const-string p1, "en"

    .line 122
    :goto_0
    invoke-static {p1}, Lcn/highlight/work_card_write/sp/ConfigSp;->saveLang(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "Language"

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 125
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->popLanguage:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0901a2,
            0x7f090098,
            0x7f0901a5,
            0x7f0901a6
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 254
    :sswitch_0
    const-class p1, Lcn/highlight/work_card_write/activity/ServiceActivity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/LoginActivity;->launchActivity(Ljava/lang/Class;)V

    goto :goto_0

    .line 246
    :sswitch_1
    const-class p1, Lcn/highlight/work_card_write/activity/HomeActivity;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/LoginActivity;->launchActivity(Ljava/lang/Class;)V

    const-string p1, "Identity"

    const-string v0, "Person"

    .line 247
    invoke-static {p0, p1, v0}, Lcn/highlight/core/utils/SpUtil;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcn/highlight/work_card_write/activity/HomeActivity;->getInstance()Lcn/highlight/work_card_write/activity/HomeActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    invoke-static {}, Lcn/highlight/work_card_write/activity/HomeActivity;->getInstance()Lcn/highlight/work_card_write/activity/HomeActivity;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/HomeActivity;->changeFrag(I)V

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LoginActivity;->finishActivity()V

    goto :goto_0

    .line 231
    :sswitch_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->llLanguage:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/LoginActivity;->showOrgPop(Landroid/view/View;)V

    goto :goto_0

    .line 235
    :sswitch_3
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->editAccount:Landroid/widget/EditText;

    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->isNull(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100072

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 239
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/LoginActivity;->editPassword:Landroid/widget/EditText;

    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->isNull(Landroid/widget/EditText;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f100073

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 243
    :cond_2
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/LoginActivity;->login()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f090098 -> :sswitch_3
        0x7f0901a2 -> :sswitch_2
        0x7f0901a5 -> :sswitch_1
        0x7f0901a6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0028

    return v0
.end method
