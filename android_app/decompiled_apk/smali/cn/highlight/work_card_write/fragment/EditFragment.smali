.class public Lcn/highlight/work_card_write/fragment/EditFragment;
.super Lcn/highlight/work_card_write/base/BaseFragment;
.source "EditFragment.java"


# static fields
.field private static final REQUEST_PICK_IMAGE:I = 0x271b


# instance fields
.field private adapter:Lcn/highlight/work_card_write/adapter/EditAdapter;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;"
        }
    .end annotation
.end field

.field linearAlbum:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090177
    .end annotation
.end field

.field linearMore:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018a
    .end annotation
.end field

.field linearNew:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09018c
    .end annotation
.end field

.field linearPhoto:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090190
    .end annotation
.end field

.field linearZWSJ:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09019a
    .end annotation
.end field

.field newUserRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901c9
    .end annotation
.end field

.field private nfcAdapter:Landroid/nfc/NfcAdapter;

.field private nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field private type:I

.field private typeDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->type:I

    return-void
.end method

.method private initNFC()V
    .locals 5

    .line 225
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    .line 227
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$yhxnwRtivCjkyZrt285i34mp5k0;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$yhxnwRtivCjkyZrt285i34mp5k0;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment;)V

    const/4 v3, 0x1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method private initUsedData()V
    .locals 4

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->dataList:Ljava/util/List;

    .line 115
    invoke-static {}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->queryAll()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 118
    sget-object v2, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$c6R_bsYfYl3gD5YbNja-hZCKVfs;->INSTANCE:Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$c6R_bsYfYl3gD5YbNja-hZCKVfs;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 119
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 122
    invoke-interface {v0, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->dataList:Ljava/util/List;

    goto :goto_0

    .line 125
    :cond_0
    iput-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->dataList:Ljava/util/List;

    .line 128
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->adapter:Lcn/highlight/work_card_write/adapter/EditAdapter;

    if-eqz v0, :cond_2

    .line 129
    iget-object v2, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->dataList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcn/highlight/work_card_write/adapter/EditAdapter;->setDataList(Ljava/util/List;)V

    .line 132
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->dataList:Ljava/util/List;

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 133
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->linearZWSJ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->linearMore:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->newUserRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_1

    .line 137
    :cond_3
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->linearZWSJ:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->linearMore:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->newUserRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method static synthetic lambda$initUsedData$1(Lcn/highlight/work_card_write/greendao/table/BadgeBean;Lcn/highlight/work_card_write/greendao/table/BadgeBean;)I
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getTime()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private runDifferentMethods()V
    .locals 4

    .line 265
    iget v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->type:I

    const-string v1, "type"

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 278
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x271b

    invoke-virtual {p0, v0, v1}, Lcn/highlight/work_card_write/fragment/EditFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 273
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    iget v2, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/fragment/EditFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 268
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    iget v2, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/fragment/EditFragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showStartNFCDialog()V
    .locals 5

    .line 205
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902a3

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 207
    new-instance v2, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f1100d5

    invoke-direct {v2, v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 208
    iget-object v2, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v2, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 210
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 211
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 213
    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$Shgsnqy4tqh_FPsP3Y8ZG6Zrbys;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$Shgsnqy4tqh_FPsP3Y8ZG6Zrbys;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    new-instance v1, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$DHw74TJyZJibO1f8fSSiy-YqlSo;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$DHw74TJyZJibO1f8fSSiy-YqlSo;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showTypeDialog()V
    .locals 7

    .line 173
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09018c

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f09018d

    .line 175
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f09026f

    .line 176
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 177
    new-instance v4, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    const v6, 0x7f1100d5

    invoke-direct {v4, v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->typeDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 178
    iget-object v4, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->typeDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v4, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->typeDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 180
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->typeDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 181
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->typeDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 183
    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$i1bnED8lXHdM3kzOHTlDnEXtWiI;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$i1bnED8lXHdM3kzOHTlDnEXtWiI;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$5LRIGK2bfgFStw7nuTrlgnWGAUI;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$5LRIGK2bfgFStw7nuTrlgnWGAUI;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$60gcDSj8lMzDIbzrd7AEUS7zoww;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$60gcDSj8lMzDIbzrd7AEUS7zoww;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 2

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 91
    :cond_0
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 93
    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->newUserRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 94
    new-instance v0, Lcn/highlight/work_card_write/adapter/EditAdapter;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/highlight/work_card_write/adapter/EditAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->adapter:Lcn/highlight/work_card_write/adapter/EditAdapter;

    .line 95
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->newUserRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->adapter:Lcn/highlight/work_card_write/adapter/EditAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 96
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->adapter:Lcn/highlight/work_card_write/adapter/EditAdapter;

    new-instance v1, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$U6SeoOxxCqy-9WNUDY3deXV8KVM;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$U6SeoOxxCqy-9WNUDY3deXV8KVM;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/EditAdapter;->setListener(Lcn/highlight/work_card_write/adapter/EditAdapter$ItemClickListener;)V

    .line 106
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->initUsedData()V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$initData$0$EditFragment(I)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->dataList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getSize()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getColor()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    sput-object p1, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    const/4 p1, 0x1

    .line 101
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcn/highlight/work_card_write/Constants;->IsModelThemeIn:Ljava/lang/Boolean;

    .line 102
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/highlight/work_card_write/activity/Model2Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x3

    const-string v1, "type"

    .line 103
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/fragment/EditFragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$initNFC$8$EditFragment(Landroid/nfc/Tag;)V
    .locals 5

    .line 229
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object p1

    .line 231
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

    .line 234
    invoke-virtual {p1, v0}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object p1

    .line 235
    invoke-static {p1}, Lcn/highlight/work_card_write/util/HexUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getSpecificationByHardware(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "-"

    .line 238
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 239
    aget-object v0, p1, v3

    sput-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    .line 240
    aget-object p1, p1, v4

    sput-object p1, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    const/4 p1, 0x0

    .line 241
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    .line 242
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    .line 243
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    new-instance v0, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$aANlHIWnkdxF_xyR-8c_dTKPyWw;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/fragment/-$$Lambda$EditFragment$aANlHIWnkdxF_xyR-8c_dTKPyWw;-><init>(Lcn/highlight/work_card_write/fragment/EditFragment;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public synthetic lambda$null$7$EditFragment()V
    .locals 1

    .line 244
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->typeDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 250
    :cond_1
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->runDifferentMethods()V

    return-void
.end method

.method public synthetic lambda$showStartNFCDialog$5$EditFragment(Landroid/view/View;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showStartNFCDialog$6$EditFragment(Landroid/content/DialogInterface;)V
    .locals 0

    .line 215
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 216
    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->nfcAdapter:Landroid/nfc/NfcAdapter;

    :cond_0
    return-void
.end method

.method public synthetic lambda$showTypeDialog$2$EditFragment(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 184
    iput p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->type:I

    .line 185
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->showStartNFCDialog()V

    .line 186
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->initNFC()V

    return-void
.end method

.method public synthetic lambda$showTypeDialog$3$EditFragment(Landroid/view/View;)V
    .locals 0

    .line 189
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->typeDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    const/4 p1, 0x3

    .line 190
    iput p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->type:I

    const-string p1, "3.7"

    .line 191
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    const/4 p1, 0x0

    .line 192
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    .line 193
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    .line 194
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    .line 195
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->runDifferentMethods()V

    return-void
.end method

.method public synthetic lambda$showTypeDialog$4$EditFragment(Landroid/view/View;)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->typeDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 288
    invoke-super {p0, p1, p2, p3}, Lcn/highlight/work_card_write/base/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x271b

    if-ne p1, p2, :cond_0

    .line 291
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 292
    iget p2, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->type:I

    const-string v0, "type"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    const-string p3, "uri"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/fragment/EditFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 312
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseFragment;->onDestroy()V

    .line 313
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
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

    .line 304
    invoke-virtual {p1}, Lcn/highlight/work_card_write/api/MessageEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5237\u65b0\u4e3b\u9898"

    .line 305
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 306
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->initUsedData()V

    :cond_0
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09018c,
            0x7f090190,
            0x7f090177,
            0x7f09018a
        }
    .end annotation

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 151
    :sswitch_0
    iput v0, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->type:I

    .line 152
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->showStartNFCDialog()V

    .line 153
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->initNFC()V

    goto :goto_0

    .line 148
    :sswitch_1
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->showTypeDialog()V

    goto :goto_0

    .line 161
    :sswitch_2
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/work_card_write/activity/HomeActivity;

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/HomeActivity;->setUI(I)V

    .line 162
    invoke-virtual {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/highlight/work_card_write/activity/HomeActivity;

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/activity/HomeActivity;->setFragment(I)V

    const-string p1, "\u4e3b\u9898"

    .line 163
    sput-object p1, Lcn/highlight/work_card_write/Constants;->cardShowPage:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x2

    .line 156
    iput p1, p0, Lcn/highlight/work_card_write/fragment/EditFragment;->type:I

    .line 157
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->showStartNFCDialog()V

    .line 158
    invoke-direct {p0}, Lcn/highlight/work_card_write/fragment/EditFragment;->initNFC()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090177 -> :sswitch_3
        0x7f09018a -> :sswitch_2
        0x7f09018c -> :sswitch_1
        0x7f090190 -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0069

    return v0
.end method
