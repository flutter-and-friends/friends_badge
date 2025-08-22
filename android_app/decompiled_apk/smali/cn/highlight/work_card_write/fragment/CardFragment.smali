.class public Lcn/highlight/work_card_write/fragment/CardFragment;
.super Lcn/highlight/work_card_write/base/BaseFragment;
.source "CardFragment.java"


# instance fields
.field cardModelTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a2
    .end annotation
.end field

.field cardModelTv1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a3
    .end annotation
.end field

.field cardThemeTv:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a4
    .end annotation
.end field

.field cardThemeTv1:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a5
    .end annotation
.end field

.field cardTitleModel:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a6
    .end annotation
.end field

.field cardTitleTheme:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900a7
    .end annotation
.end field

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;"
        }
    .end annotation
.end field

.field linearModel:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090189
    .end annotation
.end field

.field linearTheme:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090194
    .end annotation
.end field

.field linearZWSJ:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019a
    .end annotation
.end field

.field private modelAdapter:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

.field private modelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;"
        }
    .end annotation
.end field

.field modelRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901be
    .end annotation
.end field

.field modelSelectSize:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901bf
    .end annotation
.end field

.field modelSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c0
    .end annotation
.end field

.field modelTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c1
    .end annotation
.end field

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field nfcLinear:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901ca
    .end annotation
.end field

.field themTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090289
    .end annotation
.end field

.field private themeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;"
        }
    .end annotation
.end field

.field themeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028a
    .end annotation
.end field

.field themeSelectSize:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028b
    .end annotation
.end field

.field themeSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09028c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/work_card_write/fragment/CardFragment;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->initModelData(I)V

    return-void
.end method

.method private initModel()V
    .locals 4

    .line 161
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 162
    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 163
    new-instance v0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelAdapter:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

    .line 164
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelAdapter:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 165
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelAdapter:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

    new-instance v1, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$4rULvffWQEhcV3lIPVKxB8UjaLs;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$4rULvffWQEhcV3lIPVKxB8UjaLs;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->setListener(Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemClickListener;)V

    .line 175
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/work_card_write/util/DBManagerUtil;->getInstance(Landroid/content/Context;)Lcn/highlight/work_card_write/util/DBManagerUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/util/DBManagerUtil;->getmDaoSession()Lcn/highlight/work_card_write/greendao/db/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/DaoSession;->getBadgeBeanDao()Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/db/BadgeBeanDao;->loadAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelList:Ljava/util/List;

    .line 194
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 195
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v0, :cond_0

    const/high16 v2, 0x41800000    # 16.0f

    .line 198
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 199
    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcn/highlight/work_card_write/fragment/CardFragment$1;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/fragment/CardFragment$1;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 219
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initModelData(I)V

    return-void
.end method

.method private initModelData(I)V
    .locals 4

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->dataList:Ljava/util/List;

    .line 227
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 228
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    .line 229
    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getSize()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcn/highlight/work_card_write/Constants;->cardSize:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->dataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    :cond_2
    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "blt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    iget-object v2, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->dataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    :cond_3
    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rcbg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->dataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_4
    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->dataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_5
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    .line 256
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelAdapter:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->dataList:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->setDataList(Ljava/util/List;)V

    :cond_6
    return-void
.end method

.method private initNFC()V
    .locals 5

    .line 385
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 386
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 387
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$cLdVXSG68CksF751V4h4IF_AYhk;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$cLdVXSG68CksF751V4h4IF_AYhk;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V

    const/4 v3, 0x1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private initShow(Ljava/lang/String;)V
    .locals 6

    const-string v0, "\u6a21\u677f"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v0, 0x8

    const v1, 0x7f0600d3

    const/4 v2, 0x4

    const v3, 0x7f0600d5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardModelTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardModelTv1:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardThemeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardThemeTv1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->modelSize:Landroid/widget/TextView;

    sget-object v1, Lcn/highlight/work_card_write/Constants;->cardSize:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->linearModel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->linearTheme:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardModelTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardModelTv1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardThemeTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->cardThemeTv1:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeSize:Landroid/widget/TextView;

    sget-object v1, Lcn/highlight/work_card_write/Constants;->cardSize:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->linearModel:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->linearTheme:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private initTheme()V
    .locals 4

    .line 264
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 265
    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 266
    new-instance v0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;-><init>(Landroid/content/Context;)V

    .line 267
    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 268
    new-instance v1, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$4YFOcn8Y0aM-S78_XIt7ekKoYDU;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$4YFOcn8Y0aM-S78_XIt7ekKoYDU;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->setListener(Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemClickListener;)V

    .line 278
    new-instance v1, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$nxI16e0n6PxtWRD-7H9CKKX7kHU;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$nxI16e0n6PxtWRD-7H9CKKX7kHU;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->setLongListener(Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemLongClickListener;)V

    .line 285
    sget-object v1, Lcn/highlight/work_card_write/Constants;->cardSize:Ljava/lang/String;

    invoke-static {v1}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->queryAllBySize(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeList:Ljava/util/List;

    .line 286
    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 287
    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeList:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 288
    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->setDataList(Ljava/util/List;)V

    .line 289
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->linearZWSJ:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->linearZWSJ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    :goto_0
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themTabLayout:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, v2}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 295
    iget-object v0, v0, Lcom/google/android/material/tabs/TabLayout$Tab;->view:Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz v0, :cond_1

    const/high16 v1, 0x41a00000    # 20.0f

    .line 298
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 299
    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 300
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method static synthetic lambda$showSizeDialog$3(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    .line 347
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method private showSizeDialog(Ljava/lang/String;)V
    .locals 7

    .line 333
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a3

    .line 334
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902ae

    .line 335
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0902dd

    .line 336
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/highlight/work_card_write/view/CycleWheelView;

    .line 337
    new-instance v4, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const v6, 0x7f1100d5

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 338
    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 339
    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 340
    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 341
    invoke-virtual {v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 343
    invoke-static {}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getSpecificationList()Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-virtual {v3, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setLabels(Ljava/util/List;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 345
    invoke-virtual {v3, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setAlphaGradual(F)V

    .line 347
    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$zkfo-K4r1HfL4rDv69GUWz6uwFA;

    invoke-direct {v0, v4}, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$zkfo-K4r1HfL4rDv69GUWz6uwFA;-><init>(Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;

    invoke-direct {v0, p0, v3, v4, p1}, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$PlMaUMmPsgJ8eefKfQzqQnhUc90;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment;Lcn/highlight/work_card_write/view/CycleWheelView;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showStartNFCDialog()V
    .locals 5

    .line 365
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a3

    .line 366
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 367
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f1100d5

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 368
    iget-object v2, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 369
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 370
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 371
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 373
    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$whrG2ftUWcX_71vpYsA0TNvHS5s;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$whrG2ftUWcX_71vpYsA0TNvHS5s;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v1, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$2gYfSyZWsQcUJy19uZjjg419Ws4;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$2gYfSyZWsQcUJy19uZjjg419Ws4;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 1

    .line 108
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "\u6a21\u677f"

    .line 112
    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initShow(Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initModel()V

    .line 116
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initTheme()V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$initModel$0$CardFragment(I)V
    .locals 2

    .line 167
    sget-object v0, Lcn/highlight/work_card_write/Constants;->cardSize:Ljava/lang/String;

    sput-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    const-string v0, "\u9ed1\u767d\u7ea2\u9ec4"

    .line 168
    sput-object v0, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    sput-object p1, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    const/4 p1, 0x0

    .line 170
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcn/highlight/work_card_write/Constants;->IsModelThemeIn:Ljava/lang/Boolean;

    .line 171
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/4 v1, 0x3

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initNFC$8$CardFragment(Landroid/nfc/Tag;)V
    .locals 5

    .line 389
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object p1

    .line 391
    :try_start_0
    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->connect()V

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/16 v1, -0x30

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, -0x2f

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    .line 394
    invoke-virtual {p1, v0}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object p1

    .line 395
    invoke-static {p1}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static {p1}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getSpecificationByHardware(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 397
    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    .line 398
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 399
    aget-object v0, p1, v3

    sput-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    .line 400
    aget-object p1, p1, v4

    sput-object p1, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    const/4 p1, 0x0

    .line 401
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    .line 402
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    .line 403
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$5CAQaDQFAUnmxo9ayKYFcvK_uKE;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$CardFragment$5CAQaDQFAUnmxo9ayKYFcvK_uKE;-><init>(Lcn/highlight/work_card_write/fragment/CardFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 414
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$initTheme$1$CardFragment(I)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getSize()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    .line 272
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->themeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    sput-object p1, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    const/4 p1, 0x1

    .line 273
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcn/highlight/work_card_write/Constants;->IsModelThemeIn:Ljava/lang/Boolean;

    .line 274
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/4 v1, 0x3

    .line 275
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$initTheme$2$CardFragment(I)V
    .locals 3

    .line 280
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/highlight/work_card_write/activity/CardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    .line 281
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/fragment/CardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$null$7$CardFragment()V
    .locals 3

    .line 404
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 407
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    const-string v2, "type"

    .line 408
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/fragment/CardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$showSizeDialog$4$CardFragment(Lcn/highlight/work_card_write/view/CycleWheelView;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 349
    invoke-virtual {p1}, Lcn/highlight/work_card_write/view/CycleWheelView;->getSelectLabel()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcn/highlight/work_card_write/Constants;->cardSize:Ljava/lang/String;

    .line 350
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    const-string p1, "model"

    .line 352
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 353
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initModel()V

    goto :goto_0

    .line 355
    :cond_0
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initTheme()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showStartNFCDialog$5$CardFragment(Landroid/view/View;)V
    .locals 0

    .line 373
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showStartNFCDialog$6$CardFragment(Landroid/content/DialogInterface;)V
    .locals 0

    .line 375
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 376
    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/CardFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 433
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseFragment;->onDestroy()V

    .line 434
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onEvent(Lcn/highlight/work_card_write/api/MessageEvent;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 425
    invoke-virtual {p1}, Lcn/highlight/work_card_write/api/MessageEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5237\u65b0\u4e3b\u9898"

    .line 426
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 427
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initTheme()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcn/highlight/work_card_write/base/BaseFragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    sget-object p1, Lcn/highlight/work_card_write/Constants;->cardShowPage:Ljava/lang/String;

    const-string v0, "\u6a21\u677f"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initModel()V

    goto :goto_0

    .line 128
    :cond_0
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initTheme()V

    .line 130
    :goto_0
    sget-object p1, Lcn/highlight/work_card_write/Constants;->cardShowPage:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->initShow(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0900a6,
            0x7f0900a7,
            0x7f0901bf,
            0x7f09028b,
            0x7f0901ca
        }
    .end annotation

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p1, "theme"

    .line 319
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->showSizeDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :sswitch_1
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->showStartNFCDialog()V

    .line 323
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initNFC()V

    goto :goto_0

    :sswitch_2
    const-string p1, "model"

    .line 316
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->showSizeDialog(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    const-string p1, "\u4e3b\u9898"

    .line 312
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->initShow(Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initTheme()V

    goto :goto_0

    :sswitch_4
    const-string p1, "\u6a21\u677f"

    .line 308
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/fragment/CardFragment;->initShow(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/CardFragment;->initModel()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900a6 -> :sswitch_4
        0x7f0900a7 -> :sswitch_3
        0x7f0901bf -> :sswitch_2
        0x7f0901ca -> :sswitch_1
        0x7f09028b -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0068

    return v0
.end method
