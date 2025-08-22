.class public Lorg/devio/takephoto/app/TakePhotoImpl;
.super Ljava/lang/Object;
.source "TakePhotoImpl.java"

# interfaces
.implements Lorg/devio/takephoto/app/TakePhoto;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private compressConfig:Lorg/devio/takephoto/compress/CompressConfig;

.field private contextWrap:Lorg/devio/takephoto/model/TContextWrap;

.field private cropOptions:Lorg/devio/takephoto/model/CropOptions;

.field private fromType:Lorg/devio/takephoto/model/TImage$FromType;

.field private listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

.field private multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

.field private outPutUri:Landroid/net/Uri;

.field private permissionType:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

.field private showCompressDialog:Z

.field private takePhotoOptions:Lorg/devio/takephoto/model/TakePhotoOptions;

.field private tempUri:Landroid/net/Uri;

.field private wailLoadDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lorg/devio/takephoto/uitl/IntentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/devio/takephoto/app/TakePhotoImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lorg/devio/takephoto/model/TContextWrap;->of(Landroid/app/Activity;)Lorg/devio/takephoto/model/TContextWrap;

    move-result-object p1

    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    .line 82
    iput-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lorg/devio/takephoto/model/TContextWrap;->of(Landroid/app/Fragment;)Lorg/devio/takephoto/model/TContextWrap;

    move-result-object p1

    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    .line 87
    iput-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    return-void
.end method

.method static synthetic access$000(Lorg/devio/takephoto/app/TakePhotoImpl;)Lorg/devio/takephoto/compress/CompressConfig;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->compressConfig:Lorg/devio/takephoto/compress/CompressConfig;

    return-object p0
.end method

.method static synthetic access$100(Lorg/devio/takephoto/app/TakePhotoImpl;Ljava/util/ArrayList;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->deleteRawFile(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lorg/devio/takephoto/app/TakePhotoImpl;Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->handleTakeCallBack(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/devio/takephoto/app/TakePhotoImpl;)Landroid/app/ProgressDialog;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->wailLoadDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$400(Lorg/devio/takephoto/app/TakePhotoImpl;)Lorg/devio/takephoto/model/TContextWrap;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    return-object p0
.end method

.method private clearParams()V
    .locals 1

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->compressConfig:Lorg/devio/takephoto/compress/CompressConfig;

    .line 513
    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lorg/devio/takephoto/model/TakePhotoOptions;

    .line 514
    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    .line 515
    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    return-void
.end method

.method private cropContinue(Z)V
    .locals 5

    .line 319
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Lorg/devio/takephoto/model/MultipleCrop;->setCropWithUri(Landroid/net/Uri;Z)Ljava/util/Map;

    move-result-object v0

    const-string v1, "index"

    .line 320
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "isLast"

    .line 321
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/MultipleCrop;->gettImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lorg/devio/takephoto/model/TResult;->of(Ljava/util/ArrayList;)Lorg/devio/takephoto/model/TResult;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/MultipleCrop;->gettImages()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lorg/devio/takephoto/model/TResult;->of(Ljava/util/ArrayList;)Lorg/devio/takephoto/model/TResult;

    move-result-object p1

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 328
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {v3}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/devio/takephoto/R$string;->msg_crop_canceled:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 327
    invoke-direct {p0, p1, v1}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/MultipleCrop;->getUris()Ljava/util/ArrayList;

    move-result-object p1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    invoke-virtual {v0}, Lorg/devio/takephoto/model/MultipleCrop;->getOutUris()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    invoke-direct {p0, p1, v0, v1}, Lorg/devio/takephoto/app/TakePhotoImpl;->cropWithNonException(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V

    :goto_0
    return-void
.end method

.method private cropWithNonException(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    .locals 1

    .line 310
    iput-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 311
    invoke-virtual {p3}, Lorg/devio/takephoto/model/CropOptions;->isWithOwnCrop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-static {v0, p1, p2, p3}, Lorg/devio/takephoto/uitl/TUtils;->cropWithOwnApp(Lorg/devio/takephoto/model/TContextWrap;Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-static {v0, p1, p2, p3}, Lorg/devio/takephoto/uitl/TUtils;->cropWithOtherAppBySafely(Lorg/devio/takephoto/model/TContextWrap;Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V

    :goto_0
    return-void
.end method

.method private deleteRawFile(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/devio/takephoto/model/TImage;",
            ">;)V"
        }
    .end annotation

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/devio/takephoto/model/TImage;

    .line 480
    sget-object v1, Lorg/devio/takephoto/model/TImage$FromType;->CAMERA:Lorg/devio/takephoto/model/TImage$FromType;

    iget-object v2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    if-ne v1, v2, :cond_0

    .line 481
    invoke-virtual {v0}, Lorg/devio/takephoto/model/TImage;->getOriginalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/devio/takephoto/uitl/TFileUtils;->delete(Ljava/lang/String;)V

    const-string v1, ""

    .line 482
    invoke-virtual {v0, v1}, Lorg/devio/takephoto/model/TImage;->setOriginalPath(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private varargs handleTakeCallBack(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V
    .locals 2

    .line 488
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 489
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    aget-object p2, p2, v1

    invoke-interface {v0, p1, p2}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_0
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    if-eqz p2, :cond_1

    iget-boolean p2, p2, Lorg/devio/takephoto/model/MultipleCrop;->hasFailed:Z

    if-eqz p2, :cond_1

    .line 491
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/devio/takephoto/R$string;->msg_crop_failed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_1
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->compressConfig:Lorg/devio/takephoto/compress/CompressConfig;

    if-eqz p2, :cond_6

    .line 494
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TResult;->getImages()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/devio/takephoto/model/TImage;

    if-eqz v0, :cond_3

    .line 495
    invoke-virtual {v0}, Lorg/devio/takephoto/model/TImage;->isCompressed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 501
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lorg/devio/takephoto/R$string;->msg_compress_failed:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lorg/devio/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_5
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p2, p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeSuccess(Lorg/devio/takephoto/model/TResult;)V

    goto :goto_0

    .line 506
    :cond_6
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p2, p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeSuccess(Lorg/devio/takephoto/model/TResult;)V

    .line 508
    :goto_0
    invoke-direct {p0}, Lorg/devio/takephoto/app/TakePhotoImpl;->clearParams()V

    return-void
.end method

.method private selectPicture(IZ)V
    .locals 5

    .line 346
    sget-object v0, Lorg/devio/takephoto/model/TImage$FromType;->OTHER:Lorg/devio/takephoto/model/TImage$FromType;

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    .line 347
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lorg/devio/takephoto/model/TakePhotoOptions;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/devio/takephoto/model/TakePhotoOptions;->isWithOwnGallery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0, v1}, Lorg/devio/takephoto/app/TakePhotoImpl;->onPickMultiple(I)V

    return-void

    .line 351
    :cond_0
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->permissionType:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v2}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 354
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    new-instance v2, Lorg/devio/takephoto/model/TIntentWap;

    invoke-static {}, Lorg/devio/takephoto/uitl/IntentUtils;->getPickIntentWithDocuments()Landroid/content/Intent;

    move-result-object v3

    if-eqz p2, :cond_2

    const/16 v4, 0x3ed

    goto :goto_0

    :cond_2
    const/16 v4, 0x3ec

    :goto_0
    invoke-direct {v2, v3, v4}, Lorg/devio/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v2, Lorg/devio/takephoto/model/TIntentWap;

    invoke-static {}, Lorg/devio/takephoto/uitl/IntentUtils;->getPickIntentWithGallery()Landroid/content/Intent;

    move-result-object v3

    if-eqz p2, :cond_3

    const/16 v4, 0x3ef

    goto :goto_1

    :cond_3
    const/16 v4, 0x3ee

    :goto_1
    invoke-direct {v2, v3, v4}, Lorg/devio/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :try_start_0
    iget-object v2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-static {v2, v0, p1, p2}, Lorg/devio/takephoto/uitl/TUtils;->sendIntentBySafely(Lorg/devio/takephoto/model/TContextWrap;Ljava/util/List;IZ)V
    :try_end_0
    .catch Lorg/devio/takephoto/model/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 362
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    const-string v0, ""

    invoke-static {v0, p2}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p2, v0}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 363
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private varargs takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V
    .locals 5

    .line 442
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->compressConfig:Lorg/devio/takephoto/compress/CompressConfig;

    if-nez v0, :cond_0

    .line 443
    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->handleTakeCallBack(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :cond_0
    iget-boolean v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->showCompressDialog:Z

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    .line 447
    invoke-virtual {v3}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lorg/devio/takephoto/R$string;->tip_compress:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 446
    invoke-static {v0, v1}, Lorg/devio/takephoto/uitl/TUtils;->showProgressDialog(Landroid/app/Activity;[Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->wailLoadDialog:Landroid/app/ProgressDialog;

    .line 450
    :cond_1
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->compressConfig:Lorg/devio/takephoto/compress/CompressConfig;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TResult;->getImages()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Lorg/devio/takephoto/app/TakePhotoImpl$1;

    invoke-direct {v3, p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl$1;-><init>(Lorg/devio/takephoto/app/TakePhotoImpl;Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lorg/devio/takephoto/compress/CompressImageImpl;->of(Landroid/content/Context;Lorg/devio/takephoto/compress/CompressConfig;Ljava/util/ArrayList;Lorg/devio/takephoto/compress/CompressImage$CompressListener;)Lorg/devio/takephoto/compress/CompressImage;

    move-result-object p1

    .line 474
    invoke-interface {p1}, Lorg/devio/takephoto/compress/CompressImage;->compress()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TakePhotoImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1a35

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_a

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    const-string p1, "images"

    .line 248
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 249
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    if-eqz p2, :cond_0

    .line 251
    :try_start_0
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/devio/takephoto/uitl/TUtils;->convertImageToUri(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p1, p2, p3}, Lorg/devio/takephoto/model/MultipleCrop;->of(Ljava/util/ArrayList;Landroid/app/Activity;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/MultipleCrop;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    invoke-virtual {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->onCrop(Lorg/devio/takephoto/model/MultipleCrop;Lorg/devio/takephoto/model/CropOptions;)V
    :try_end_0
    .catch Lorg/devio/takephoto/model/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception p1

    .line 254
    invoke-direct {p0, v3}, Lorg/devio/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    .line 255
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    goto/16 :goto_1

    .line 258
    :cond_0
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lorg/devio/takephoto/uitl/TUtils;->getTImagesWithImages(Ljava/util/ArrayList;Lorg/devio/takephoto/model/TImage$FromType;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lorg/devio/takephoto/model/TResult;->of(Ljava/util/ArrayList;)Lorg/devio/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 262
    :cond_1
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_1

    :pswitch_1
    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 120
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    invoke-virtual {p0, p1, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->onCrop(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    :try_end_1
    .catch Lorg/devio/takephoto/model/TException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 122
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lorg/devio/takephoto/model/TImage;->of(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    goto/16 :goto_1

    .line 126
    :cond_2
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_1

    :pswitch_2
    if-ne p2, v1, :cond_3

    .line 133
    :try_start_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/devio/takephoto/uitl/TUriParse;->getFilePathWithUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p1

    invoke-static {p1}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/devio/takephoto/model/TException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception p1

    .line 135
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lorg/devio/takephoto/model/TImage;->of(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    goto/16 :goto_1

    .line 139
    :cond_3
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_1

    :pswitch_3
    if-ne p2, v1, :cond_4

    .line 158
    :try_start_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    invoke-virtual {p0, p1, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->onCrop(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    :try_end_3
    .catch Lorg/devio/takephoto/model/TException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception p1

    .line 160
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lorg/devio/takephoto/model/TImage;->of(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    goto/16 :goto_1

    .line 164
    :cond_4
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_1

    :pswitch_4
    if-ne p2, v1, :cond_5

    .line 146
    :try_start_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/devio/takephoto/uitl/TUriParse;->getFilePathWithDocumentsUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p1

    .line 145
    invoke-static {p1}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/devio/takephoto/model/TException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception p1

    .line 148
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lorg/devio/takephoto/model/TImage;->of(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    goto/16 :goto_1

    .line 152
    :cond_5
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_1

    :pswitch_5
    if-ne p2, v1, :cond_7

    .line 184
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lorg/devio/takephoto/model/TakePhotoOptions;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TakePhotoOptions;->isCorrectImage()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 185
    invoke-static {}, Lorg/devio/takephoto/uitl/ImageRotateUtil;->of()Lorg/devio/takephoto/uitl/ImageRotateUtil;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, p3}, Lorg/devio/takephoto/uitl/ImageRotateUtil;->correctImage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 188
    :cond_6
    :try_start_5
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/devio/takephoto/uitl/TUriParse;->getFilePathWithUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p1

    invoke-static {p1}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/devio/takephoto/model/TException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception p1

    .line 190
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lorg/devio/takephoto/model/TImage;->of(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    goto/16 :goto_1

    .line 194
    :cond_7
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_1

    :pswitch_6
    if-ne p2, v1, :cond_9

    .line 169
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lorg/devio/takephoto/model/TakePhotoOptions;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TakePhotoOptions;->isCorrectImage()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 170
    invoke-static {}, Lorg/devio/takephoto/uitl/ImageRotateUtil;->of()Lorg/devio/takephoto/uitl/ImageRotateUtil;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, p3}, Lorg/devio/takephoto/uitl/ImageRotateUtil;->correctImage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 173
    :cond_8
    :try_start_6
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p3}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-static {p3, v0}, Lorg/devio/takephoto/uitl/TUriParse;->parseOwnUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    invoke-virtual {p0, p1, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->onCrop(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    :try_end_6
    .catch Lorg/devio/takephoto/model/TException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception p1

    .line 175
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lorg/devio/takephoto/model/TImage;->of(Landroid/net/Uri;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    goto/16 :goto_1

    .line 179
    :cond_9
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto/16 :goto_1

    :cond_a
    :pswitch_7
    if-ne p2, v1, :cond_d

    .line 200
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    if-eqz p1, :cond_b

    .line 201
    invoke-direct {p0, v2}, Lorg/devio/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    goto/16 :goto_1

    .line 205
    :cond_b
    :try_start_7
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    if-eqz p1, :cond_c

    .line 206
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/devio/takephoto/uitl/TUriParse;->getFilePathWithUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p3}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/devio/takephoto/uitl/TUriParse;->getFilePathWithUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p1, p2, p3}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p1

    goto :goto_0

    .line 208
    :cond_c
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/devio/takephoto/uitl/TUriParse;->getFilePathWithUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p1

    .line 210
    :goto_0
    invoke-virtual {p1, v2}, Lorg/devio/takephoto/model/TImage;->setCropped(Z)V

    .line 211
    invoke-static {p1}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/devio/takephoto/model/TException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_1

    :catch_7
    move-exception p1

    .line 213
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p2, p3}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p2

    new-array p3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v3

    invoke-direct {p0, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    goto :goto_1

    :cond_d
    if-nez p2, :cond_11

    .line 218
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    const-string p2, "data"

    if-eqz p1, :cond_f

    if-eqz p3, :cond_e

    .line 220
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 221
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Lorg/devio/takephoto/uitl/TImageFiles;->writeToFile(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 222
    invoke-direct {p0, v2}, Lorg/devio/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    goto :goto_1

    .line 224
    :cond_e
    invoke-direct {p0, v3}, Lorg/devio/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    goto :goto_1

    :cond_f
    if-eqz p3, :cond_10

    .line 228
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 229
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-static {p1, p2}, Lorg/devio/takephoto/uitl/TImageFiles;->writeToFile(Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    .line 231
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    invoke-static {p1, p2}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p1

    .line 232
    invoke-virtual {p1, v2}, Lorg/devio/takephoto/model/TImage;->setCropped(Z)V

    .line 233
    invoke-static {p1}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :cond_10
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    goto :goto_1

    .line 239
    :cond_11
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    if-eqz p1, :cond_12

    .line 240
    invoke-direct {p0, v3}, Lorg/devio/takephoto/app/TakePhotoImpl;->cropContinue(Z)V

    goto :goto_1

    .line 242
    :cond_12
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->listener:Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;

    invoke-interface {p1}, Lorg/devio/takephoto/app/TakePhoto$TakeResultListener;->takeCancel()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cropOptions"

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/devio/takephoto/model/CropOptions;

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    const-string v0, "takePhotoOptions"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/devio/takephoto/model/TakePhotoOptions;

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lorg/devio/takephoto/model/TakePhotoOptions;

    const-string v0, "showCompressDialog"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->showCompressDialog:Z

    const-string v0, "outPutUri"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    const-string v0, "tempUri"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    const-string v0, "compressConfig"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/devio/takephoto/compress/CompressConfig;

    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->compressConfig:Lorg/devio/takephoto/compress/CompressConfig;

    :cond_0
    return-void
.end method

.method public onCrop(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/devio/takephoto/model/TException;
        }
    .end annotation

    .line 291
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->permissionType:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v1}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 294
    :cond_0
    iput-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 295
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {v1}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/devio/takephoto/uitl/TImageFiles;->getMimeType(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/devio/takephoto/uitl/TImageFiles;->checkMimeType(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lorg/devio/takephoto/app/TakePhotoImpl;->cropWithNonException(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V

    return-void

    .line 296
    :cond_1
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p2}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lorg/devio/takephoto/R$string;->tip_type_not_image:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 297
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 298
    new-instance p1, Lorg/devio/takephoto/model/TException;

    sget-object p2, Lorg/devio/takephoto/model/TExceptionType;->TYPE_NOT_IMAGE:Lorg/devio/takephoto/model/TExceptionType;

    invoke-direct {p1, p2}, Lorg/devio/takephoto/model/TException;-><init>(Lorg/devio/takephoto/model/TExceptionType;)V

    throw p1
.end method

.method public onCrop(Lorg/devio/takephoto/model/MultipleCrop;Lorg/devio/takephoto/model/CropOptions;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/devio/takephoto/model/TException;
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->multipleCrop:Lorg/devio/takephoto/model/MultipleCrop;

    .line 306
    invoke-virtual {p1}, Lorg/devio/takephoto/model/MultipleCrop;->getUris()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/MultipleCrop;->getOutUris()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->onCrop(Landroid/net/Uri;Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V

    return-void
.end method

.method public onEnableCompress(Lorg/devio/takephoto/compress/CompressConfig;Z)V
    .locals 0

    .line 427
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->compressConfig:Lorg/devio/takephoto/compress/CompressConfig;

    .line 428
    iput-boolean p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->showCompressDialog:Z

    return-void
.end method

.method public onPickFromCapture(Landroid/net/Uri;)V
    .locals 4

    .line 383
    sget-object v0, Lorg/devio/takephoto/model/TImage$FromType;->CAMERA:Lorg/devio/takephoto/model/TImage$FromType;

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    .line 384
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->permissionType:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v1}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 387
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 388
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {v0}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/devio/takephoto/uitl/TUriParse;->convertFileUriToFileProviderUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    goto :goto_0

    .line 390
    :cond_1
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 394
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    new-instance v0, Lorg/devio/takephoto/model/TIntentWap;

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 395
    invoke-static {v1}, Lorg/devio/takephoto/uitl/IntentUtils;->getCaptureIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, v2}, Lorg/devio/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    .line 394
    invoke-static {p1, v0}, Lorg/devio/takephoto/uitl/TUtils;->captureBySafely(Lorg/devio/takephoto/model/TContextWrap;Lorg/devio/takephoto/model/TIntentWap;)V
    :try_end_0
    .catch Lorg/devio/takephoto/model/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 397
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    const-string v1, ""

    invoke-static {v1, v0}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object v0

    invoke-static {v0}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 398
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onPickFromCaptureWithCrop(Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    .locals 3

    .line 404
    sget-object v0, Lorg/devio/takephoto/model/TImage$FromType;->CAMERA:Lorg/devio/takephoto/model/TImage$FromType;

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    .line 405
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->permissionType:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v1}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 408
    :cond_0
    iput-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    .line 409
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    .line 410
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_1

    .line 411
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lorg/devio/takephoto/uitl/TUriParse;->getTempUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    goto :goto_0

    .line 413
    :cond_1
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    .line 417
    :goto_0
    :try_start_0
    iget-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    new-instance p2, Lorg/devio/takephoto/model/TIntentWap;

    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    .line 418
    invoke-static {v0}, Lorg/devio/takephoto/uitl/IntentUtils;->getCaptureIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-direct {p2, v0, v1}, Lorg/devio/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    .line 417
    invoke-static {p1, p2}, Lorg/devio/takephoto/uitl/TUtils;->captureBySafely(Lorg/devio/takephoto/model/TContextWrap;Lorg/devio/takephoto/model/TIntentWap;)V
    :try_end_0
    .catch Lorg/devio/takephoto/model/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 420
    iget-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    const-string v0, ""

    invoke-static {v0, p2}, Lorg/devio/takephoto/model/TImage;->of(Ljava/lang/String;Lorg/devio/takephoto/model/TImage$FromType;)Lorg/devio/takephoto/model/TImage;

    move-result-object p2

    invoke-static {p2}, Lorg/devio/takephoto/model/TResult;->of(Lorg/devio/takephoto/model/TImage;)Lorg/devio/takephoto/model/TResult;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->getDetailMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p2, v0}, Lorg/devio/takephoto/app/TakePhotoImpl;->takeResult(Lorg/devio/takephoto/model/TResult;[Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Lorg/devio/takephoto/model/TException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onPickFromDocuments()V
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, v0, v0}, Lorg/devio/takephoto/app/TakePhotoImpl;->selectPicture(IZ)V

    return-void
.end method

.method public onPickFromDocumentsWithCrop(Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    .locals 0

    .line 376
    iput-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    .line 377
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 378
    invoke-direct {p0, p1, p2}, Lorg/devio/takephoto/app/TakePhotoImpl;->selectPicture(IZ)V

    return-void
.end method

.method public onPickFromGallery()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0, v0, v1}, Lorg/devio/takephoto/app/TakePhotoImpl;->selectPicture(IZ)V

    return-void
.end method

.method public onPickFromGalleryWithCrop(Landroid/net/Uri;Lorg/devio/takephoto/model/CropOptions;)V
    .locals 0

    .line 369
    iput-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    .line 370
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    const/4 p1, 0x1

    .line 371
    invoke-direct {p0, p1, p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->selectPicture(IZ)V

    return-void
.end method

.method public onPickMultiple(I)V
    .locals 3

    .line 272
    sget-object v0, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    iget-object v1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->permissionType:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0, v1}, Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->contextWrap:Lorg/devio/takephoto/model/TContextWrap;

    new-instance v1, Lorg/devio/takephoto/model/TIntentWap;

    .line 276
    invoke-static {v0, p1}, Lorg/devio/takephoto/uitl/IntentUtils;->getPickMultipleIntent(Lorg/devio/takephoto/model/TContextWrap;I)Landroid/content/Intent;

    move-result-object p1

    const/16 v2, 0x3f0

    invoke-direct {v1, p1, v2}, Lorg/devio/takephoto/model/TIntentWap;-><init>(Landroid/content/Intent;I)V

    .line 275
    invoke-static {v0, v1}, Lorg/devio/takephoto/uitl/TUtils;->startActivityForResult(Lorg/devio/takephoto/model/TContextWrap;Lorg/devio/takephoto/model/TIntentWap;)V

    return-void
.end method

.method public onPickMultipleWithCrop(ILorg/devio/takephoto/model/CropOptions;)V
    .locals 1

    .line 281
    sget-object v0, Lorg/devio/takephoto/model/TImage$FromType;->OTHER:Lorg/devio/takephoto/model/TImage$FromType;

    iput-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->fromType:Lorg/devio/takephoto/model/TImage$FromType;

    .line 282
    invoke-virtual {p0, p1}, Lorg/devio/takephoto/app/TakePhotoImpl;->onPickMultiple(I)V

    .line 283
    iput-object p2, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->cropOptions:Lorg/devio/takephoto/model/CropOptions;

    const-string v1, "cropOptions"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lorg/devio/takephoto/model/TakePhotoOptions;

    const-string v1, "takePhotoOptions"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 106
    iget-boolean v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->showCompressDialog:Z

    const-string v1, "showCompressDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->outPutUri:Landroid/net/Uri;

    const-string v1, "outPutUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 108
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->tempUri:Landroid/net/Uri;

    const-string v1, "tempUri"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 109
    iget-object v0, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->compressConfig:Lorg/devio/takephoto/compress/CompressConfig;

    const-string v1, "compressConfig"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public permissionNotify(Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->permissionType:Lorg/devio/takephoto/permission/PermissionManager$TPermissionType;

    return-void
.end method

.method public setTakePhotoOptions(Lorg/devio/takephoto/model/TakePhotoOptions;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lorg/devio/takephoto/app/TakePhotoImpl;->takePhotoOptions:Lorg/devio/takephoto/model/TakePhotoOptions;

    return-void
.end method
