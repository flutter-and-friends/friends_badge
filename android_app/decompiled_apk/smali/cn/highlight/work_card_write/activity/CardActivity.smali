.class public Lcn/highlight/work_card_write/activity/CardActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "CardActivity.java"


# instance fields
.field private adapter:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;"
        }
    .end annotation
.end field

.field imageCopy:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012d
    .end annotation
.end field

.field imageDelete:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012e
    .end annotation
.end field

.field linearCancel:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090179
    .end annotation
.end field

.field linearCopy:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017d
    .end annotation
.end field

.field linearDelete:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09017f
    .end annotation
.end field

.field private selectList:Ljava/util/List;
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

.field tvCopy:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field tvDelete:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a5
    .end annotation
.end field

.field tvNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a9
    .end annotation
.end field

.field tvSelect:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ac
    .end annotation
.end field

.field tvSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ad
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    return-void
.end method

.method private copyCard()V
    .locals 1

    .line 236
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$mI51sj_IrwY5Ce7ok1P9UvXZSOU;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$mI51sj_IrwY5Ce7ok1P9UvXZSOU;-><init>(Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private deleteCard()V
    .locals 1

    .line 298
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$UswzbdigSJePTFSvtOudaAuZbgw;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$UswzbdigSJePTFSvtOudaAuZbgw;-><init>(Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isContain(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)Z
    .locals 3

    .line 111
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    .line 112
    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$null$10()V
    .locals 1

    .line 304
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getLoadingUtil()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/core/utils/load/LoadingUtil;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic lambda$null$2(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 219
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$null$3(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 220
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$null$7()V
    .locals 1

    .line 288
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getLoadingUtil()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/core/utils/load/LoadingUtil;->dismissProgressDialog()V

    return-void
.end method

.method private refreshUI()V
    .locals 1

    .line 124
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$A7qBpnf79aa_sDTX5Fi9rb1vm3U;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$A7qBpnf79aa_sDTX5Fi9rb1vm3U;-><init>(Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 194
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$DdT3RTOvh12EDuM9bgaxghK-w2s;

    invoke-direct {v0, p0, p1, p2}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$DdT3RTOvh12EDuM9bgaxghK-w2s;-><init>(Lcn/highlight/work_card_write/activity/CardActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .line 84
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 85
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->themeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 86
    new-instance v0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->adapter:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;

    .line 87
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->themeRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->adapter:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 88
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->adapter:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$npJL_Rqp4748RUh1PQFsf_uLuPc;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$npJL_Rqp4748RUh1PQFsf_uLuPc;-><init>(Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->setListener(Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ItemClickListener;)V

    .line 99
    sget-object v0, Lcn/highlight/work_card_write/Constants;->cardSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->queryAllBySize(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    .line 100
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->adapter:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->setDataList(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 3

    .line 77
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvNum:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    const v1, 0x7f100032

    invoke-virtual {p0, v1, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvSize:Landroid/widget/TextView;

    sget-object v0, Lcn/highlight/work_card_write/Constants;->cardSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$copyCard$8$CardActivity()V
    .locals 9

    .line 237
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$DRiRj0Q44stI7YwHy5OIJ7gq0eg;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$DRiRj0Q44stI7YwHy5OIJ7gq0eg;-><init>(Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    .line 242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-virtual {v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;->queryAllByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 246
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    .line 247
    new-instance v7, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    invoke-direct {v7}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;-><init>()V

    .line 248
    invoke-virtual {v7, v4}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setImageName(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIDoodlePen()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIDoodlePen(I)V

    .line 250
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMSize(F)V

    .line 251
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMColor()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMColor(I)V

    .line 252
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMLocationX(F)V

    .line 253
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMLocationY(F)V

    .line 254
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotX()F

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMPivotX(F)V

    .line 255
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotY()F

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMPivotY(F)V

    .line 256
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMRotate()F

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMRotate(F)V

    .line 257
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIsNeedClipOutside()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMIsNeedClipOutside(Z)V

    .line 258
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMScale()F

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMScale(F)V

    .line 259
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMText0(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMText(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextStyle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextStyle(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextBgColor()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextBgColor(I)V

    .line 263
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextBold()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextBold(I)V

    .line 264
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextItalic()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextItalic(I)V

    .line 265
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextUnderline()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMTextUnderline(I)V

    .line 266
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setMBitmap([B)V

    .line 267
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getBgColor()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setBgColor(I)V

    .line 268
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getFgColor()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setFgColor(I)V

    .line 269
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getShape1()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setShape1(I)V

    .line 270
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setWidth(I)V

    .line 271
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setHeight(I)V

    .line 272
    invoke-virtual {v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getEffects()I

    move-result v6

    invoke-virtual {v7, v6}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->setEffects(I)V

    .line 273
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 277
    :cond_0
    new-instance v5, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-direct {v5}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;-><init>()V

    .line 278
    invoke-virtual {v5, v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setImageName(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setSize(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setColor(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapStart()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapStart([B)V

    .line 282
    invoke-virtual {v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapEnd()[B

    move-result-object v3

    invoke-virtual {v5, v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setBitmapEnd([B)V

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->setTime(Ljava/lang/String;)V

    .line 284
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 286
    :cond_1
    invoke-static {v0}, Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;->insertAll(Ljava/util/List;)V

    .line 287
    invoke-static {v1}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->insertAll(Ljava/util/List;)V

    .line 288
    sget-object v0, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$ExEqAORYISAgagjDsOeGB3-lAKg;->INSTANCE:Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$ExEqAORYISAgagjDsOeGB3-lAKg;

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcn/highlight/work_card_write/api/MessageEvent;

    const-string v2, "\u5237\u65b0\u4e3b\u9898"

    invoke-direct {v1, v2}, Lcn/highlight/work_card_write/api/MessageEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->finishActivity()V

    return-void
.end method

.method public synthetic lambda$deleteCard$11$CardActivity()V
    .locals 3

    .line 299
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$kpoLk0Gp7mJbbYqSyWG83NrdgCM;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$kpoLk0Gp7mJbbYqSyWG83NrdgCM;-><init>(Lcn/highlight/work_card_write/activity/CardActivity;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 300
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    .line 301
    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;->deleteAllByName(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-static {v0}, Lcn/highlight/work_card_write/greendao/dao/BadgeBeanDaoUse;->deleteInTx(Ljava/util/List;)V

    .line 304
    sget-object v0, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$ccBRVwcCNGZmtD3_mmb7T5cKBNk;->INSTANCE:Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$ccBRVwcCNGZmtD3_mmb7T5cKBNk;

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 305
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcn/highlight/work_card_write/api/MessageEvent;

    const-string v2, "\u5237\u65b0\u4e3b\u9898"

    invoke-direct {v1, v2}, Lcn/highlight/work_card_write/api/MessageEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->finishActivity()V

    return-void
.end method

.method public synthetic lambda$initData$0$CardActivity(I)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->isContain(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->adapter:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->setDataList(Ljava/util/List;Ljava/util/List;)V

    .line 96
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->refreshUI()V

    return-void
.end method

.method public synthetic lambda$null$4$CardActivity(Landroid/app/Dialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 222
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const-string p1, "copy"

    .line 223
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->copyCard()V

    goto :goto_0

    :cond_0
    const-string p1, "delete"

    .line 225
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 226
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->deleteCard()V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic lambda$null$6$CardActivity()V
    .locals 2

    .line 237
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getLoadingUtil()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcn/highlight/core/utils/load/LoadingUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$9$CardActivity()V
    .locals 2

    .line 299
    invoke-static {}, Lcn/highlight/work_card_write/api/ApiUtil;->getInstance()Lcn/highlight/work_card_write/api/ApiUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcn/highlight/work_card_write/api/ApiUtil;->getLoadingUtil()Lcn/highlight/core/utils/load/LoadingUtil;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Lcn/highlight/core/utils/load/LoadingUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$refreshUI$1$CardActivity()V
    .locals 7

    .line 126
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->adapter:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 127
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->setDataList(Ljava/util/List;Ljava/util/List;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvNum:Landroid/widget/TextView;

    const v1, 0x7f100032

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v3}, Lcn/highlight/work_card_write/activity/CardActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvSelect:Landroid/widget/TextView;

    const v1, 0x7f100035

    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvSelect:Landroid/widget/TextView;

    const v1, 0x7f100031

    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const v1, 0x7f0600d3

    const v3, 0x7f0e0013

    const v4, 0x7f0600d6

    if-lez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->imageCopy:Landroid/widget/ImageView;

    const v5, 0x7f0e0014

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 140
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvCopy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_3

    .line 143
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->imageCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 144
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvCopy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->imageCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvCopy:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 152
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->imageDelete:Landroid/widget/ImageView;

    const v2, 0x7f0e001c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 153
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 155
    :cond_4
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->imageDelete:Landroid/widget/ImageView;

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 156
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvDelete:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    return-void
.end method

.method public synthetic lambda$showDialog$5$CardActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 195
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902b5

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090182

    .line 197
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f09008d

    .line 198
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const v4, 0x7f090183

    .line 199
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f09008c

    .line 200
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    const v6, 0x7f09008e

    .line 201
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 202
    new-instance v7, Landroid/app/Dialog;

    const v8, 0x7f1100ca

    invoke-direct {v7, p0, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 203
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 204
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 206
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 207
    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    .line 208
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 209
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 210
    invoke-virtual {v11, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 211
    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    const/high16 v11, 0x3f400000    # 0.75f

    mul-float v10, v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, -0x2

    .line 212
    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 213
    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 214
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 216
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 217
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    new-instance p1, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$Oh1Q49zm33vZdkwYr7sRoDCvbqw;

    invoke-direct {p1, v7}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$Oh1Q49zm33vZdkwYr7sRoDCvbqw;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    new-instance p1, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$A6kXD4hhckBkViOsUX2sq5Gm9TA;

    invoke-direct {p1, v7}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$A6kXD4hhckBkViOsUX2sq5Gm9TA;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v5, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    new-instance p1, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$XmbpR958V9MK2T_RC1dLQFXcIHU;

    invoke-direct {p1, p0, v7, p2}, Lcn/highlight/work_card_write/activity/-$$Lambda$CardActivity$XmbpR958V9MK2T_RC1dLQFXcIHU;-><init>(Lcn/highlight/work_card_write/activity/CardActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090179,
            0x7f0902ac,
            0x7f09017d,
            0x7f09017f
        }
    .end annotation

    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 168
    :sswitch_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->tvSelect:Landroid/widget/TextView;

    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f100031

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 170
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 174
    :goto_0
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->refreshUI()V

    goto :goto_1

    .line 182
    :sswitch_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 183
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10002f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "delete"

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 177
    :sswitch_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CardActivity;->dataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CardActivity;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 178
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "copy"

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/CardActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 165
    :sswitch_3
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CardActivity;->finishActivity()V

    :cond_2
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090179 -> :sswitch_3
        0x7f09017d -> :sswitch_2
        0x7f09017f -> :sswitch_1
        0x7f0902ac -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c001f

    return v0
.end method
