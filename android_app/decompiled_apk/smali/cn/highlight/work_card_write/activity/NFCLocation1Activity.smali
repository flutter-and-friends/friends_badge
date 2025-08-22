.class public Lcn/highlight/work_card_write/activity/NFCLocation1Activity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "NFCLocation1Activity.java"


# instance fields
.field imgBack:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090147
    .end annotation
.end field

.field recyclerView:Landroid/widget/ListView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090200
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 10

    .line 41
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance v1, Lcn/highlight/work_card_write/adapter/InstructionAdapter;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/adapter/InstructionAdapter;-><init>(Landroid/content/Context;)V

    .line 47
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;->recyclerView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v2, "type"

    .line 49
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "nfc_iphone"

    if-eqz v0, :cond_6

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "nfc_vivo"

    goto :goto_0

    :cond_2
    const-string v2, "nfc_oppo"

    goto :goto_0

    :cond_3
    const-string v2, "nfc_sanxing"

    goto :goto_0

    :cond_4
    const-string v2, "nfc_xiaomi"

    goto :goto_0

    :cond_5
    const-string v2, "nfc_huawei"

    .line 72
    :cond_6
    :goto_0
    invoke-static {}, Lcn/highlight/work_card_write/sp/ConfigSp;->getLang()Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 80
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 81
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 82
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 83
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 88
    :cond_7
    invoke-virtual {v1, v4}, Lcn/highlight/work_card_write/adapter/InstructionAdapter;->setList(Ljava/util/List;)V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewClicked()V
    .locals 0
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f090147
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/NFCLocation1Activity;->finishActivity()V

    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c002c

    return v0
.end method
