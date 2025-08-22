.class public Lcom/isseiaoki/simplecropview/CropImageView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isseiaoki/simplecropview/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field angle:F

.field animationDuration:I

.field backgroundColor:I

.field compressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field compressQuality:I

.field customRatioX:F

.field customRatioY:F

.field exifRotation:I

.field frameColor:I

.field frameStrokeWeight:F

.field guideColor:I

.field guideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field guideStrokeWeight:F

.field handleColor:I

.field handleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field handleSize:I

.field initialFrameScale:F

.field inputImageHeight:I

.field inputImageWidth:I

.field isAnimationEnabled:Z

.field isCropEnabled:Z

.field isDebug:Z

.field isHandleShadowEnabled:Z

.field minFrameSize:F

.field mode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field outputHeight:I

.field outputImageHeight:I

.field outputImageWidth:I

.field outputMaxHeight:I

.field outputMaxWidth:I

.field outputWidth:I

.field overlayColor:I

.field saveUri:Landroid/net/Uri;

.field showGuide:Z

.field showHandle:Z

.field sourceUri:Landroid/net/Uri;

.field touchPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2514
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState$1;

    invoke-direct {v0}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState$1;-><init>()V

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 2433
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2434
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->mode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 2435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->backgroundColor:I

    .line 2436
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->overlayColor:I

    .line 2437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->frameColor:I

    .line 2438
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 2439
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 2440
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->showGuide:Z

    .line 2441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->showHandle:Z

    .line 2442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleSize:I

    .line 2443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->touchPadding:I

    .line 2444
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->minFrameSize:F

    .line 2445
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->customRatioX:F

    .line 2446
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->customRatioY:F

    .line 2447
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->frameStrokeWeight:F

    .line 2448
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideStrokeWeight:F

    .line 2449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isCropEnabled:Z

    .line 2450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleColor:I

    .line 2451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideColor:I

    .line 2452
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->initialFrameScale:F

    .line 2453
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->angle:F

    .line 2454
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isAnimationEnabled:Z

    .line 2455
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->animationDuration:I

    .line 2456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->exifRotation:I

    .line 2457
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->sourceUri:Landroid/net/Uri;

    .line 2458
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->saveUri:Landroid/net/Uri;

    .line 2459
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 2460
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->compressQuality:I

    .line 2461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isDebug:Z

    .line 2462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputMaxWidth:I

    .line 2463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputMaxHeight:I

    .line 2464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputWidth:I

    .line 2465
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputHeight:I

    .line 2466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isHandleShadowEnabled:Z

    .line 2467
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->inputImageWidth:I

    .line 2468
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->inputImageHeight:I

    .line 2469
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputImageWidth:I

    .line 2470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputImageHeight:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/isseiaoki/simplecropview/CropImageView$1;)V
    .locals 0

    .line 2389
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2429
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 2474
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2475
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->mode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2476
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2477
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->overlayColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2478
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->frameColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2479
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2480
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2481
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->showGuide:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2482
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->showHandle:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2483
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2484
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->touchPadding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2485
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->minFrameSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2486
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->customRatioX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2487
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->customRatioY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2488
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->frameStrokeWeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2489
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideStrokeWeight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2490
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isCropEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2491
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2492
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2493
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->initialFrameScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2494
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2495
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isAnimationEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2496
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->animationDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2497
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->exifRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2498
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->sourceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2499
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->saveUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2500
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 2501
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->compressQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2502
    iget-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isDebug:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2503
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputMaxWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputMaxHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2505
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2506
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2507
    iget-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isHandleShadowEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2508
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->inputImageWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2509
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->inputImageHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2510
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputImageWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2511
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputImageHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
