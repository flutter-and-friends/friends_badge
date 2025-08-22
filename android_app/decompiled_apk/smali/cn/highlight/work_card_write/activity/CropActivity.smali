.class public Lcn/highlight/work_card_write/activity/CropActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "CropActivity.java"


# instance fields
.field private convertName:Ljava/lang/String;

.field private cropColor:Ljava/lang/String;

.field private cropSize:Ljava/lang/String;

.field cropView:Lcom/isseiaoki/simplecropview/CropImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900c5
    .end annotation
.end field

.field editColorBlack:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f6
    .end annotation
.end field

.field editColorLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f2
    .end annotation
.end field

.field editColorRed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f7
    .end annotation
.end field

.field editColorWhite:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f8
    .end annotation
.end field

.field editColorYellow:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f9
    .end annotation
.end field

.field editSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fc
    .end annotation
.end field

.field private imagePath:Ljava/lang/String;

.field private imageUri:Landroid/net/Uri;

.field img_turn_left:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09014f
    .end annotation
.end field

.field img_turn_right:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090150
    .end annotation
.end field

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

    .line 29
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/work_card_write/activity/CropActivity;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->type:I

    return p0
.end method

.method private deleteOriginalImage()V
    .locals 4

    .line 207
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->imagePath:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "TAG"

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/CropActivity;->imagePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteOriginalImage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->convertName:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcn/highlight/work_card_write/Constants;->savePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/highlight/work_card_write/activity/CropActivity;->convertName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 218
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
    .locals 5

    .line 138
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->load(Landroid/net/Uri;)Lcom/isseiaoki/simplecropview/LoadRequest;

    move-result-object v0

    new-instance v1, Lcn/highlight/work_card_write/activity/CropActivity$1;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/CropActivity$1;-><init>(Lcn/highlight/work_card_write/activity/CropActivity;)V

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/LoadRequest;->execute(Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V

    .line 148
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setAnimationEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->setAnimationDuration(I)V

    .line 150
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropSize:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0xc17a

    const/4 v4, 0x2

    if-eq v2, v3, :cond_2

    const v3, 0xc17d

    if-eq v2, v3, :cond_1

    const v3, 0xc53c

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "3.7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v2, "2.9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "2.6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v2, 0x128

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    if-eq v0, v4, :cond_4

    goto :goto_2

    .line 158
    :cond_4
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const/16 v1, 0xf0

    const/16 v2, 0x1a0

    invoke-virtual {v0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->setCustomRatio(II)V

    goto :goto_2

    .line 155
    :cond_5
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const/16 v1, 0x80

    invoke-virtual {v0, v2, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setCustomRatio(II)V

    goto :goto_2

    .line 152
    :cond_6
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    const/16 v1, 0x98

    invoke-virtual {v0, v2, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setCustomRatio(II)V

    :goto_2
    return-void
.end method

.method private initSpecification()V
    .locals 3

    .line 108
    iget v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropSize:Ljava/lang/String;

    const-string v0, "\u9ed1\u767d\u7ea2\u9ec4"

    .line 114
    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropColor:Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorLinear:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 109
    :cond_1
    :goto_0
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropSize:Ljava/lang/String;

    .line 110
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropColor:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    :goto_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editSize:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorBlack:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorWhite:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorRed:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorYellow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropColor:Ljava/lang/String;

    const-string v2, "\u9ed1\u767d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorBlack:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorWhite:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropColor:Ljava/lang/String;

    const-string v2, "\u7ea2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorRed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :cond_3
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropColor:Ljava/lang/String;

    const-string v2, "\u9ec4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->editColorYellow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private initUri()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->imageUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcn/highlight/work_card_write/util/ImageUtils;->convertBmpToPngAndReturnUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcn/highlight/work_card_write/activity/CropActivity;->imageUri:Landroid/net/Uri;

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->convertName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 4

    .line 77
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 79
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->type:I

    .line 83
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->imageUri:Landroid/net/Uri;

    .line 84
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "originalPath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->imagePath:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->initUri()V

    .line 88
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->initSpecification()V

    .line 90
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->initCrop()V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-string v1, "#333333"

    .line 71
    invoke-virtual {p0, p1, v0, v1}, Lcn/highlight/work_card_write/activity/CropActivity;->setImmersionBar(ZZLjava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 225
    invoke-super {p0}, Lcn/highlight/work_card_write/base/BaseActivity;->onDestroy()V

    .line 226
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->deleteOriginalImage()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09014f,
            0x7f090150,
            0x7f0902a3,
            0x7f0902ae
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 184
    :sswitch_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/CropActivity;->imageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->crop(Landroid/net/Uri;)Lcom/isseiaoki/simplecropview/CropRequest;

    move-result-object p1

    new-instance v0, Lcn/highlight/work_card_write/activity/CropActivity$2;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/CropActivity$2;-><init>(Lcn/highlight/work_card_write/activity/CropActivity;)V

    invoke-virtual {p1, v0}, Lcom/isseiaoki/simplecropview/CropRequest;->execute(Lcom/isseiaoki/simplecropview/callback/CropCallback;)V

    goto :goto_0

    .line 179
    :sswitch_1
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->deleteOriginalImage()V

    const/4 p1, 0x0

    .line 180
    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    .line 181
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/CropActivity;->finishActivity()V

    goto :goto_0

    .line 174
    :sswitch_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    if-eqz p1, :cond_0

    .line 175
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_90D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    invoke-virtual {p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->rotateImage(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;)V

    goto :goto_0

    .line 169
    :sswitch_3
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/CropActivity;->cropView:Lcom/isseiaoki/simplecropview/CropImageView;

    if-eqz p1, :cond_0

    .line 170
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->ROTATE_M90D:Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;

    invoke-virtual {p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->rotateImage(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09014f -> :sswitch_3
        0x7f090150 -> :sswitch_2
        0x7f0902a3 -> :sswitch_1
        0x7f0902ae -> :sswitch_0
    .end sparse-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0020

    return v0
.end method
