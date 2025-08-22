.class public Lcn/highlight/work_card_write/activity/PhotoTakeActivity;
.super Lcn/highlight/work_card_write/base/BasePhotoActivity;
.source "PhotoTakeActivity.java"


# instance fields
.field private imageUri:Landroid/net/Uri;

.field private originalImageName:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;-><init>()V

    return-void
.end method

.method private setImage(Lorg/devio/takephoto/model/TImage;)V
    .locals 8

    .line 109
    iget v0, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->type:I

    const-string v1, "uri"

    const-string v2, "/"

    const-string v3, "originalPath"

    const-string v4, "type"

    const/4 v5, 0x1

    if-eq v0, v5, :cond_0

    const-string v6, "imageFile"

    const/4 v7, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 140
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/highlight/work_card_write/activity/Crop2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TImage;->getOriginalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/highlight/work_card_write/Constants;->savePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->originalImageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0, v5}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 133
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/highlight/work_card_write/activity/Crop2Activity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/highlight/work_card_write/Constants;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->originalImageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, p1, v5}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 126
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/highlight/work_card_write/activity/Crop2Activity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TImage;->getOriginalPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/highlight/work_card_write/Constants;->savePath:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->originalImageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v0, v7}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 119
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/highlight/work_card_write/activity/Crop2Activity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/highlight/work_card_write/Constants;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->originalImageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0, p1, v7}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 111
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/highlight/work_card_write/activity/CropActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    iget v0, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->type:I

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcn/highlight/work_card_write/Constants;->savePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->originalImageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->finishActivity()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected initData()V
    .locals 6

    .line 42
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x8

    .line 44
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->type:I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->originalImageName:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcn/highlight/work_card_write/Constants;->savePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->originalImageName:Ljava/lang/String;

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 56
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->imageUri:Landroid/net/Uri;

    .line 57
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Lorg/devio/takephoto/app/TakePhoto;->onEnableCompress(Lorg/devio/takephoto/compress/CompressConfig;Z)V

    .line 58
    new-instance v0, Lorg/devio/takephoto/model/TakePhotoOptions$Builder;

    invoke-direct {v0}, Lorg/devio/takephoto/model/TakePhotoOptions$Builder;-><init>()V

    .line 59
    invoke-virtual {v0, v3}, Lorg/devio/takephoto/model/TakePhotoOptions$Builder;->setWithOwnGallery(Z)Lorg/devio/takephoto/model/TakePhotoOptions$Builder;

    const/4 v1, 0x1

    .line 60
    invoke-virtual {v0, v1}, Lorg/devio/takephoto/model/TakePhotoOptions$Builder;->setCorrectImage(Z)Lorg/devio/takephoto/model/TakePhotoOptions$Builder;

    .line 61
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v2

    invoke-virtual {v0}, Lorg/devio/takephoto/model/TakePhotoOptions$Builder;->create()Lorg/devio/takephoto/model/TakePhotoOptions;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/devio/takephoto/app/TakePhoto;->setTakePhotoOptions(Lorg/devio/takephoto/model/TakePhotoOptions;)V

    .line 62
    iget v0, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->type:I

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 76
    :pswitch_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v0

    invoke-interface {v0}, Lorg/devio/takephoto/app/TakePhoto;->onPickFromGallery()V

    goto :goto_1

    .line 73
    :pswitch_1
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->imageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lorg/devio/takephoto/app/TakePhoto;->onPickFromCapture(Landroid/net/Uri;)V

    goto :goto_1

    .line 70
    :pswitch_2
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v0

    invoke-interface {v0}, Lorg/devio/takephoto/app/TakePhoto;->onPickFromGallery()V

    goto :goto_1

    .line 67
    :pswitch_3
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->imageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lorg/devio/takephoto/app/TakePhoto;->onPickFromCapture(Landroid/net/Uri;)V

    goto :goto_1

    .line 64
    :cond_3
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->getTakePhoto()Lorg/devio/takephoto/app/TakePhoto;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->imageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lorg/devio/takephoto/app/TakePhoto;->onPickFromCapture(Landroid/net/Uri;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-static {p0}, Lcom/gyf/barlibrary/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    sget-object v0, Lcom/gyf/barlibrary/BarHide;->FLAG_HIDE_NAVIGATION_BAR:Lcom/gyf/barlibrary/BarHide;

    invoke-virtual {p1, v0}, Lcom/gyf/barlibrary/ImmersionBar;->hideBar(Lcom/gyf/barlibrary/BarHide;)Lcom/gyf/barlibrary/ImmersionBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gyf/barlibrary/ImmersionBar;->init()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 151
    invoke-super {p0, p1, p2, p3}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 153
    invoke-virtual {p0, p1, p3}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->setResult(ILandroid/content/Intent;)V

    .line 154
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->finishActivity()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 84
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->onResume()V

    return-void
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c002d

    return v0
.end method

.method public takeCancel()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->takeCancel()V

    .line 90
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->finishActivity()V

    return-void
.end method

.method public takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-super {p0, p1, p2}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->finishActivity()V

    return-void
.end method

.method public takeSuccess(Lorg/devio/takephoto/model/TResult;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcn/highlight/work_card_write/base/BasePhotoActivity;->takeSuccess(Lorg/devio/takephoto/model/TResult;)V

    .line 102
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TResult;->getImages()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/devio/takephoto/model/TImage;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;->setImage(Lorg/devio/takephoto/model/TImage;)V

    return-void
.end method
