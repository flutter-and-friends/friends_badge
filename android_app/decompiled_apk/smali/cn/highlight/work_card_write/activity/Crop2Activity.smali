.class public Lcn/highlight/work_card_write/activity/Crop2Activity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "Crop2Activity.java"


# instance fields
.field private convertName:Ljava/lang/String;

.field cropView:Lcom/isseiaoki/simplecropview/CropImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c5
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field private originalPath:Ljava/lang/String;

.field tvCancel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a3
    .end annotation
.end field

.field tvSure:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ae
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    return-void
.end method

.method private deleteOriginalImage()V
    .locals 4

    .line 153
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->originalPath:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TAG"

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->originalPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteOriginalImage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->convertName:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/highlight/work_card_write/Constants;->savePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->convertName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteConvertImage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private initCrop()V
    .locals 7

    const/4 v0, 0x0

    .line 89
    sput-object v0, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 90
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->load(Landroid/net/Uri;)Lcom/isseiaoki/simplecropview/LoadRequest;

    move-result-object v0

    new-instance v1, Lcn/highlight/work_card_write/activity/Crop2Activity$1;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/Crop2Activity$1;-><init>(Lcn/highlight/work_card_write/activity/Crop2Activity;)V

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/LoadRequest;->execute(Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V

    .line 100
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setAnimationEnabled(Z)V

    .line 101
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->setAnimationDuration(I)V

    .line 102
    iget v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->type:I

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FREE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setCropMode(Lcom/isseiaoki/simplecropview/CropImageView$CropMode;)V

    goto :goto_3

    :cond_0
    const/16 v0, 0xf0

    const/16 v2, 0x1a0

    .line 107
    sget-object v3, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0xc17a

    if-eq v5, v6, :cond_2

    const v6, 0xc17d

    if-eq v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "2.9"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "2.6"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const/16 v4, 0x128

    if-eqz v3, :cond_5

    if-eq v3, v1, :cond_4

    const/16 v4, 0xf0

    goto :goto_2

    :cond_4
    const/16 v2, 0x80

    goto :goto_2

    :cond_5
    const/16 v2, 0x98

    .line 117
    :goto_2
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v0, v4, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->setCustomRatio(II)V

    :goto_3
    return-void
.end method

.method private initUri()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->imageUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcn/highlight/work_card_write/util/ImageUtils;->convertBmpToPngAndReturnUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->imageUri:Landroid/net/Uri;

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->convertName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 4

    .line 56
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 58
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->type:I

    .line 62
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "uri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    :cond_1
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->imageUri:Landroid/net/Uri;

    .line 63
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "imageFile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->imagePath:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "originalPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    iput-object v2, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->originalPath:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->imageUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->imageUri:Landroid/net/Uri;

    .line 69
    :cond_4
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->initUri()V

    .line 71
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->initCrop()V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-string v1, "#333333"

    .line 50
    invoke-virtual {p0, p1, v0, v1}, Lcn/highlight/work_card_write/activity/Crop2Activity;->setImmersionBar(ZZLjava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 171
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->onDestroy()V

    .line 172
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->deleteOriginalImage()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0902a3,
            0x7f0902ae
        }
    .end annotation

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902a3

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902ae

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Crop2Activity;->imageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->crop(Landroid/net/Uri;)Lcom/isseiaoki/simplecropview/CropRequest;

    move-result-object p1

    new-instance v0, Lcn/highlight/work_card_write/activity/Crop2Activity$2;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/Crop2Activity$2;-><init>(Lcn/highlight/work_card_write/activity/Crop2Activity;)V

    invoke-virtual {p1, v0}, Lcom/isseiaoki/simplecropview/CropRequest;->execute(Lcom/isseiaoki/simplecropview/callback/CropCallback;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->deleteOriginalImage()V

    const/4 p1, 0x0

    .line 127
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 128
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Crop2Activity;->finishActivity()V

    :goto_0
    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0021

    return v0
.end method
