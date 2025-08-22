.class public Lcom/yuyh/library/imgsel/ui/ISListActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ISListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yuyh/library/imgsel/common/Callback;


# static fields
.field private static final IMAGE_CROP_CODE:I = 0x1

.field public static final INTENT_RESULT:Ljava/lang/String; = "result"

.field private static final STORAGE_REQUEST_CODE:I = 0x1


# instance fields
.field private btnConfirm:Landroid/widget/Button;

.field private config:Lcom/yuyh/library/imgsel/config/ISListConfig;

.field private cropImagePath:Ljava/lang/String;

.field private fragment:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

.field private ivBack:Landroid/widget/ImageView;

.field private result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rlTitleBar:Landroid/widget/RelativeLayout;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->result:Ljava/util/ArrayList;

    return-void
.end method

.method private crop(Ljava/lang/String;)V
    .locals 4

    .line 205
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/yuyh/library/imgsel/utils/FileUtils;->createRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->cropImagePath:Ljava/lang/String;

    .line 208
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getImageContentUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v2, "true"

    .line 210
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget p1, p1, Lcom/yuyh/library/imgsel/config/ISListConfig;->aspectX:I

    const-string v2, "aspectX"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget p1, p1, Lcom/yuyh/library/imgsel/config/ISListConfig;->aspectY:I

    const-string v2, "aspectY"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget p1, p1, Lcom/yuyh/library/imgsel/config/ISListConfig;->outputX:I

    const-string v2, "outputX"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget p1, p1, Lcom/yuyh/library/imgsel/config/ISListConfig;->outputY:I

    const-string v2, "outputY"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string v2, "scale"

    .line 215
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "scaleUpIfNeeded"

    .line 216
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "return-data"

    const/4 v3, 0x0

    .line 217
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "outputFormat"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "noFaceDetection"

    .line 220
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v1, p1}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 108
    sget v0, Lcom/yuyh/library/imgsel/R$id;->rlTitleBar:I

    invoke-virtual {p0, v0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->rlTitleBar:Landroid/widget/RelativeLayout;

    .line 109
    sget v0, Lcom/yuyh/library/imgsel/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    .line 111
    sget v0, Lcom/yuyh/library/imgsel/R$id;->btnConfirm:I

    invoke-virtual {p0, v0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->btnConfirm:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    sget v0, Lcom/yuyh/library/imgsel/R$id;->ivBack:I

    invoke-virtual {p0, v0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->ivBack:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    if-eqz v0, :cond_4

    .line 118
    iget v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->backResId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->ivBack:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v2, v2, Lcom/yuyh/library/imgsel/config/ISListConfig;->backResId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->statusBarColor:I

    if-eq v0, v1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->statusBarColor:I

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v1, v1, Lcom/yuyh/library/imgsel/config/ISListConfig;->isDark:Z

    invoke-static {p0, v0, v1}, Lcom/yuyh/library/imgsel/utils/StatusBarCompat;->compat(Landroid/app/Activity;IZ)Landroid/view/View;

    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->rlTitleBar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v1, v1, Lcom/yuyh/library/imgsel/config/ISListConfig;->titleBgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 131
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v1, v1, Lcom/yuyh/library/imgsel/config/ISListConfig;->titleColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-object v1, v1, Lcom/yuyh/library/imgsel/config/ISListConfig;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v1, v1, Lcom/yuyh/library/imgsel/config/ISListConfig;->btnBgColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 134
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v1, v1, Lcom/yuyh/library/imgsel/config/ISListConfig;->btnTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->multiSelect:Z

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->rememberSelected:Z

    if-nez v0, :cond_2

    .line 138
    sget-object v0, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->btnConfirm:Landroid/widget/Button;

    sget v1, Lcom/yuyh/library/imgsel/R$string;->confirm_format:I

    invoke-virtual {p0, v1}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-object v4, v4, Lcom/yuyh/library/imgsel/config/ISListConfig;->btnText:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v4, v4, Lcom/yuyh/library/imgsel/config/ISListConfig;->maxNum:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_3
    sget-object v0, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 143
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->btnConfirm:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static startForResult(Landroid/app/Activity;Lcom/yuyh/library/imgsel/config/ISListConfig;I)V
    .locals 2

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yuyh/library/imgsel/ui/ISListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config"

    .line 66
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startForResult(Landroid/app/Fragment;Lcom/yuyh/library/imgsel/config/ISListConfig;I)V
    .locals 3

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/yuyh/library/imgsel/ui/ISListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config"

    .line 78
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startForResult(Landroidx/fragment/app/Fragment;Lcom/yuyh/library/imgsel/config/ISListConfig;I)V
    .locals 3

    .line 71
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/yuyh/library/imgsel/ui/ISListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "config"

    .line 72
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 3

    .line 264
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 265
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->result:Ljava/util/ArrayList;

    sget-object v2, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 267
    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->result:Ljava/util/ArrayList;

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 268
    invoke-virtual {p0, v1, v0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->setResult(ILandroid/content/Intent;)V

    .line 270
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->multiSelect:Z

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->finish()V

    return-void
.end method

.method public getConfig()Lcom/yuyh/library/imgsel/config/ISListConfig;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    return-object v0
.end method

.method public getImageContentUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 8

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    const-string v4, "_data=? "

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 233
    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const-string v0, "content://media/external/images/media"

    .line 235
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    .line 240
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 256
    sget-object v0, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->cropImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->multiSelect:Z

    .line 258
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->exit()V

    .line 260
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->fragment:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->hidePreview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    :cond_0
    sget-object v0, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 312
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onCameraShot(Ljava/io/File;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCrop:Z

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->crop(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_0
    sget-object v0, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/yuyh/library/imgsel/config/ISListConfig;->multiSelect:Z

    .line 190
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->exit()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 151
    sget v0, Lcom/yuyh/library/imgsel/R$id;->btnConfirm:I

    if-ne p1, v0, :cond_1

    .line 152
    sget-object p1, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->exit()V

    goto :goto_0

    .line 155
    :cond_0
    sget p1, Lcom/yuyh/library/imgsel/R$string;->minnum:I

    invoke-virtual {p0, p1}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    :cond_1
    sget v0, Lcom/yuyh/library/imgsel/R$id;->ivBack:I

    if-ne p1, v0, :cond_2

    .line 158
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->onBackPressed()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 84
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sget p1, Lcom/yuyh/library/imgsel/R$layout;->activity_img_sel:I

    invoke-virtual {p0, p1}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->setContentView(I)V

    .line 87
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/yuyh/library/imgsel/config/ISListConfig;

    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 90
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->instance()Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->fragment:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    .line 96
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/yuyh/library/imgsel/R$id;->fmImageList:I

    iget-object v1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->fragment:Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p1, v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 101
    :goto_0
    invoke-direct {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->initView()V

    .line 102
    invoke-static {}, Lcom/yuyh/library/imgsel/utils/FileUtils;->isSdCardAvailable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 103
    sget p1, Lcom/yuyh/library/imgsel/R$string;->sd_disable:I

    invoke-virtual {p0, p1}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 318
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onImageSelected(Ljava/lang/String;)V
    .locals 4

    .line 174
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->btnConfirm:Landroid/widget/Button;

    sget v0, Lcom/yuyh/library/imgsel/R$string;->confirm_format:I

    invoke-virtual {p0, v0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-object v2, v2, Lcom/yuyh/library/imgsel/config/ISListConfig;->btnText:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v2, v2, Lcom/yuyh/library/imgsel/config/ISListConfig;->maxNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onImageUnselected(Ljava/lang/String;)V
    .locals 4

    .line 179
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->btnConfirm:Landroid/widget/Button;

    sget v0, Lcom/yuyh/library/imgsel/R$string;->confirm_format:I

    invoke-virtual {p0, v0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-object v2, v2, Lcom/yuyh/library/imgsel/config/ISListConfig;->btnText:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget v2, v2, Lcom/yuyh/library/imgsel/config/ISListConfig;->maxNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreviewChanged(IIZ)V
    .locals 1

    if-eqz p3, :cond_0

    .line 198
    iget-object p3, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->tvTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-object p2, p2, Lcom/yuyh/library/imgsel/config/ISListConfig;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 279
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    array-length p1, p3

    const/4 v0, 0x0

    if-lt p1, p2, :cond_1

    aget p1, p3, v0

    if-nez p1, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget p2, Lcom/yuyh/library/imgsel/R$id;->fmImageList:I

    .line 285
    invoke-static {}, Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;->instance()Lcom/yuyh/library/imgsel/ui/fragment/ImgSelFragment;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 286
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 288
    :cond_1
    sget p1, Lcom/yuyh/library/imgsel/R$string;->permission_storage_denied:I

    invoke-virtual {p0, p1}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 304
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "config"

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/yuyh/library/imgsel/config/ISListConfig;

    iput-object p1, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 298
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 299
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    const-string v1, "config"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public onSingleImageSelected(Ljava/lang/String;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/yuyh/library/imgsel/ui/ISListActivity;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCrop:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0, p1}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->crop(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_0
    sget-object v0, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/ui/ISListActivity;->exit()V

    :goto_0
    return-void
.end method
