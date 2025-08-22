.class public Lcn/highlight/work_card_write/activity/InstructionActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "InstructionActivity.java"


# instance fields
.field private currentLanguage:I

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

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902af
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcn/highlight/work_card_write/activity/InstructionActivity;->currentLanguage:I

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 5

    .line 47
    invoke-static {}, Lcn/highlight/work_card_write/sp/ConfigSp;->getLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xca9

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xf2e

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    goto :goto_2

    .line 52
    :cond_3
    iput v4, p0, Lcn/highlight/work_card_write/activity/InstructionActivity;->currentLanguage:I

    goto :goto_2

    .line 49
    :cond_4
    iput v3, p0, Lcn/highlight/work_card_write/activity/InstructionActivity;->currentLanguage:I

    .line 56
    :goto_2
    new-instance v0, Lcn/highlight/work_card_write/adapter/InstructionAdapter;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/adapter/InstructionAdapter;-><init>(Landroid/content/Context;)V

    .line 57
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/InstructionActivity;->recyclerView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v1, "instruction"

    .line 60
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/InstructionActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 64
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/highlight/work_card_write/activity/InstructionActivity;->currentLanguage:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".jpg"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 68
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 70
    :goto_3
    invoke-virtual {v0, v3}, Lcn/highlight/work_card_write/adapter/InstructionAdapter;->setList(Ljava/util/List;)V

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

    .line 75
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/InstructionActivity;->finishActivity()V

    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0026

    return v0
.end method
