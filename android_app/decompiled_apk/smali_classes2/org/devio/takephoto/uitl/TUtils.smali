.class public Lorg/devio/takephoto/uitl/TUtils;
.super Ljava/lang/Object;
.source "TUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/devio/takephoto/uitl/IntentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/devio/takephoto/uitl/TUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static captureBySafely(Lorg/devio/takephoto/model/TContextWrap;Lorg/devio/takephoto/model/TIntentWap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/devio/takephoto/model/TException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TIntentWap;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    invoke-static {p0, p1}, Lorg/devio/takephoto/uitl/TUtils;->startActivityForResult(Lorg/devio/takephoto/model/TContextWrap;Lorg/devio/takephoto/model/TIntentWap;)V

    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lorg/devio/takephoto/R$string;->tip_no_camera:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 125
    new-instance p0, Lorg/devio/takephoto/model/TException;

    sget-object p1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_CAMERA:Lorg/devio/takephoto/model/TExceptionType;

    invoke-direct {p0, p1}, Lorg/devio/takephoto/model/TException;-><init>(Lorg/devio/takephoto/model/TExceptionType;)V

    throw p0
.end method

.method public static convertImageToUri(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/darsh/multipleimageselect/models/Image;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/devio/takephoto/model/TException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/darsh/multipleimageselect/models/Image;

    .line 49
    invoke-static {p0}, Lorg/devio/takephoto/uitl/TConstant;->getFileProviderName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Lcom/darsh/multipleimageselect/models/Image;->path:Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v3}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static cropWithOtherAppBySafely(Lorg/devio/takephoto/model/TContextWrap;Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    .locals 3

    .line 140
    invoke-static {p1, p2, p3}, Lorg/devio/takephoto/uitl/IntentUtils;->getCropIntentWithOtherApp(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)Landroid/content/Intent;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x20000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-static {p0, p1, p2, p3}, Lorg/devio/takephoto/uitl/TUtils;->cropWithOwnApp(Lorg/devio/takephoto/model/TContextWrap;Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lorg/devio/takephoto/model/TIntentWap;

    .line 151
    invoke-static {p1, p2, p3}, Lorg/devio/takephoto/uitl/IntentUtils;->getCropIntentWithOtherApp(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x3e9

    invoke-direct {v0, p1, p2}, Lorg/devio/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    .line 150
    invoke-static {p0, v0}, Lorg/devio/takephoto/uitl/TUtils;->startActivityForResult(Lorg/devio/takephoto/model/TContextWrap;Lorg/devio/takephoto/model/TIntentWap;)V

    :goto_0
    return-void
.end method

.method public static cropWithOwnApp(Lorg/devio/takephoto/model/TContextWrap;Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    .locals 2

    .line 164
    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getAspectX()I

    move-result v0

    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getAspectY()I

    move-result v1

    mul-int v0, v0, v1

    if-lez v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {p1, p2}, Lcom/soundcloud/android/crop/Crop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    .line 167
    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getAspectX()I

    move-result p2

    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getAspectY()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/soundcloud/android/crop/Crop;->withAspect(II)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    .line 168
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/content/Context;Landroid/app/Fragment;)V

    goto/16 :goto_0

    .line 170
    :cond_0
    invoke-static {p1, p2}, Lcom/soundcloud/android/crop/Crop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getAspectX()I

    move-result p2

    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getAspectY()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/soundcloud/android/crop/Crop;->withAspect(II)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/app/Activity;)V

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getOutputX()I

    move-result v0

    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getOutputY()I

    move-result v1

    mul-int v0, v0, v1

    if-lez v0, :cond_3

    .line 173
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 174
    invoke-static {p1, p2}, Lcom/soundcloud/android/crop/Crop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    .line 175
    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getOutputX()I

    move-result p2

    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getOutputY()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/soundcloud/android/crop/Crop;->withMaxSize(II)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    .line 176
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/content/Context;Landroid/app/Fragment;)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {p1, p2}, Lcom/soundcloud/android/crop/Crop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getOutputX()I

    move-result p2

    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->getOutputY()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/soundcloud/android/crop/Crop;->withMaxSize(II)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/app/Activity;)V

    goto :goto_0

    .line 181
    :cond_3
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 182
    invoke-static {p1, p2}, Lcom/soundcloud/android/crop/Crop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/soundcloud/android/crop/Crop;->asSquare()Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/content/Context;Landroid/app/Fragment;)V

    goto :goto_0

    .line 184
    :cond_4
    invoke-static {p1, p2}, Lcom/soundcloud/android/crop/Crop;->of(Landroid/net/Uri;Landroid/net/Uri;)Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/soundcloud/android/crop/Crop;->asSquare()Lcom/soundcloud/android/crop/Crop;

    move-result-object p1

    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/soundcloud/android/crop/Crop;->start(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public static getTImagesWithImages(Ljava/util/ArrayList;Lorg/devio/takephoto/model/TImage$FromType;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/darsh/multipleimageselect/models/Image;",
            ">;",
            "Lorg/devio/takephoto/model/TImage$FromType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/darsh/multipleimageselect/models/Image;

    .line 63
    iget-object v1, v1, Lcom/darsh/multipleimageselect/models/Image;->path:Ljava/lang/String;

    invoke-static {v1, p1}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getTImagesWithUris(Ljava/util/ArrayList;Lorg/devio/takephoto/model/TImage$FromType;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lorg/devio/takephoto/model/TImage$FromType;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 77
    invoke-static {v1, p1}, Lorg/devio/takephoto/model/TImage;->of(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isReturnData()Z
    .locals 5

    .line 193
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 194
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 195
    sget-object v2, Lorg/devio/takephoto/uitl/TUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "sdk:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lenovo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static sendIntentBySafely(Lorg/devio/takephoto/model/TContextWrap;Ljava/util/List;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/devio/takephoto/model/TContextWrap;",
            "Ljava/util/List<",
            "Lorg/devio/takephoto/model/TIntentWap;",
            ">;IZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/devio/takephoto/model/TException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 106
    new-instance p0, Lorg/devio/takephoto/model/TException;

    if-eqz p3, :cond_0

    sget-object p1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_MATCH_PICK_INTENT:Lorg/devio/takephoto/model/TExceptionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NO_MATCH_CROP_INTENT:Lorg/devio/takephoto/model/TExceptionType;

    :goto_0
    invoke-direct {p0, p1}, Lorg/devio/takephoto/model/TException;-><init>(Lorg/devio/takephoto/model/TExceptionType;)V

    throw p0

    .line 108
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/devio/takephoto/model/TIntentWap;

    .line 109
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TIntentWap;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 110
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-static {p0, p1, v0, p3}, Lorg/devio/takephoto/uitl/TUtils;->sendIntentBySafely(Lorg/devio/takephoto/model/TContextWrap;Ljava/util/List;IZ)V

    goto :goto_1

    .line 113
    :cond_2
    invoke-static {p0, p2}, Lorg/devio/takephoto/uitl/TUtils;->startActivityForResult(Lorg/devio/takephoto/model/TContextWrap;Lorg/devio/takephoto/model/TIntentWap;)V

    :goto_1
    return-void
.end method

.method public static varargs showProgressDialog(Landroid/app/Activity;[Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 3

    if-eqz p0, :cond_2

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/devio/takephoto/R$string;->tip_tips:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 222
    array-length v2, p1

    if-lez v2, :cond_1

    .line 223
    aget-object v0, p1, v1

    .line 225
    :cond_1
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 226
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {p1, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 228
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-object p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static startActivityForResult(Lorg/devio/takephoto/model/TContextWrap;Lorg/devio/takephoto/model/TIntentWap;)V
    .locals 1

    .line 87
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getFragment()Landroid/app/Fragment;

    move-result-object p0

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TIntentWap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TIntentWap;->getRequestCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TIntentWap;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TIntentWap;->getRequestCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method
