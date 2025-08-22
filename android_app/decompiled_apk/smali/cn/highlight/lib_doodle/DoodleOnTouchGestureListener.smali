.class public Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;
.super Lcn/forward/androids/TouchGestureDetector$OnTouchGestureListener;
.source "DoodleOnTouchGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;
    }
.end annotation


# static fields
.field private static final VALUE:F = 1.0f


# instance fields
.field private mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

.field private mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

.field private mCurrPath:Landroid/graphics/Path;

.field private mDoodle:Lcn/highlight/lib_doodle/DoodleView;

.field private mLastFocusX:Ljava/lang/Float;

.field private mLastFocusY:Ljava/lang/Float;

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mRotateDiff:F

.field private mScaleAnimTranY:F

.field private mScaleAnimTransX:F

.field private mScaleAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

.field private mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

.field private mStartX:F

.field private mStartY:F

.field private mSupportScaleItem:Z

.field private mTouchCentreX:F

.field private mTouchCentreY:F

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchX:F

.field private mTouchY:F

.field private mTransAnimOldY:F

.field private mTransAnimY:F

.field private mTranslateAnimator:Landroid/animation/ValueAnimator;

.field private pendingScale:F

.field private pendingX:F

.field private pendingY:F


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/DoodleView;Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcn/forward/androids/TouchGestureDetector$OnTouchGestureListener;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSupportScaleItem:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 311
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingScale:F

    .line 57
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    .line 58
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodlePen;->getCopyLocation()Lcn/highlight/lib_doodle/CopyLocation;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    .line 59
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/CopyLocation;->reset()V

    .line 60
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcn/highlight/lib_doodle/CopyLocation;->updateLocation(FF)V

    .line 61
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 21
    iget p0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    return p0
.end method

.method static synthetic access$100(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)Lcn/highlight/lib_doodle/DoodleView;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 21
    iget p0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    return p0
.end method

.method static synthetic access$300(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 21
    iget p0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimTransX:F

    return p0
.end method

.method static synthetic access$400(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 21
    iget p0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimTranY:F

    return p0
.end method

.method static synthetic access$500(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 21
    iget p0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTransAnimOldY:F

    return p0
.end method

.method static synthetic access$600(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)F
    .locals 0

    .line 21
    iget p0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTransAnimY:F

    return p0
.end method

.method private isPenEditable(Lcn/highlight/lib_doodle/IDoodlePen;)Z
    .locals 2

    .line 243
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-eq p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    .line 244
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-eq p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    .line 245
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v0, v1, :cond_3

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public center()V
    .locals 6

    .line 414
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleScale()F

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 415
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    .line 417
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 418
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$1;

    invoke-direct {v3, p0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$1;-><init>(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 429
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationX()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimTransX:F

    .line 430
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationY()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimTranY:F

    .line 431
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v5}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleScale()F

    move-result v5

    aput v5, v3, v4

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 432
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 434
    :cond_1
    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->limitBound(Z)V

    :goto_0
    return-void
.end method

.method public getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;
    .locals 1

    .line 86
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    return-object v0
.end method

.method public getSelectionListener()Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;
    .locals 1

    .line 563
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

    return-object v0
.end method

.method public isSupportScaleItem()Z
    .locals 1

    .line 571
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSupportScaleItem:Z

    return v0
.end method

.method public limitBound(Z)V
    .locals 14

    .line 444
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v0

    const/16 v1, 0x5a

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationX()F

    move-result v0

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationY()F

    move-result v2

    .line 449
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleBound()Landroid/graphics/RectF;

    move-result-object v3

    .line 450
    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationX()F

    move-result v4

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v5}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationY()F

    move-result v5

    .line 451
    iget-object v6, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleView;->getCenterWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v7}, Lcn/highlight/lib_doodle/DoodleView;->getRotateScale()F

    move-result v7

    mul-float v6, v6, v7

    iget-object v7, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v7}, Lcn/highlight/lib_doodle/DoodleView;->getCenterHeight()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v8}, Lcn/highlight/lib_doodle/DoodleView;->getRotateScale()F

    move-result v8

    mul-float v7, v7, v8

    .line 454
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v8

    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/16 v12, 0xb4

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 455
    iget-object v8, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v8}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v8}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v8

    if-ne v8, v12, :cond_1

    goto :goto_0

    .line 458
    :cond_1
    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleScale()F

    move-result v4

    mul-float v4, v4, v6

    sub-float v4, v6, v4

    div-float/2addr v4, v10

    goto/16 :goto_5

    .line 456
    :cond_2
    :goto_0
    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v5}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleScale()F

    move-result v5

    mul-float v5, v5, v7

    sub-float v5, v7, v5

    div-float/2addr v5, v10

    goto/16 :goto_5

    .line 461
    :cond_3
    iget v8, v3, Landroid/graphics/RectF;->top:F

    .line 463
    iget v9, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v9, v9, v11

    if-lez v9, :cond_a

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v13, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v13}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v9, v9, v13

    if-ltz v9, :cond_a

    .line 464
    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-ne v9, v12, :cond_4

    goto :goto_2

    .line 471
    :cond_4
    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-ne v9, v1, :cond_6

    :cond_5
    sub-float/2addr v4, v8

    goto :goto_5

    :cond_6
    :goto_1
    add-float/2addr v4, v8

    goto :goto_5

    .line 465
    :cond_7
    :goto_2
    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-nez v9, :cond_9

    :cond_8
    sub-float/2addr v5, v8

    goto :goto_5

    :cond_9
    :goto_3
    add-float/2addr v5, v8

    goto :goto_5

    .line 477
    :cond_a
    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_d

    iget v8, v3, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, v11

    if-gtz v8, :cond_d

    .line 478
    iget-object v8, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v8}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    .line 479
    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-ne v9, v12, :cond_b

    goto :goto_4

    .line 486
    :cond_b
    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-ne v9, v1, :cond_5

    goto :goto_1

    .line 480
    :cond_c
    :goto_4
    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    .line 496
    :cond_d
    :goto_5
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    iget-object v9, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_10

    .line 497
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-ne v1, v12, :cond_e

    goto :goto_6

    .line 500
    :cond_e
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleScale()F

    move-result v1

    mul-float v1, v1, v7

    sub-float/2addr v7, v1

    div-float v5, v7, v10

    goto/16 :goto_b

    .line 498
    :cond_f
    :goto_6
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleScale()F

    move-result v1

    mul-float v1, v1, v6

    sub-float/2addr v6, v1

    div-float v4, v6, v10

    goto/16 :goto_b

    .line 503
    :cond_10
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 505
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_17

    iget v7, v3, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v8}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_17

    .line 506
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v12, :cond_11

    goto :goto_8

    .line 513
    :cond_11
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v1, :cond_13

    :cond_12
    add-float/2addr v5, v6

    goto :goto_b

    :cond_13
    :goto_7
    sub-float/2addr v5, v6

    goto :goto_b

    .line 507
    :cond_14
    :goto_8
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-nez v1, :cond_16

    :cond_15
    sub-float/2addr v4, v6

    goto :goto_b

    :cond_16
    :goto_9
    add-float/2addr v4, v6

    goto :goto_b

    .line 519
    :cond_17
    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v7}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1a

    iget v6, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v6, v6, v11

    if-gtz v6, :cond_1a

    .line 520
    iget-object v6, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v3

    .line 521
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v12, :cond_18

    goto :goto_a

    .line 528
    :cond_18
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v3

    if-ne v3, v1, :cond_12

    goto :goto_7

    .line 522
    :cond_19
    :goto_a
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleRotation()I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_9

    :cond_1a
    :goto_b
    if-eqz p1, :cond_1c

    .line 537
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_1b

    .line 538
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 539
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {p1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 540
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$2;

    invoke-direct {v1, p0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$2;-><init>(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 549
    :cond_1b
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v0, v1, v3

    const/4 v0, 0x1

    aput v4, v1, v0

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 550
    iput v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTransAnimOldY:F

    .line 551
    iput v5, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTransAnimY:F

    .line 552
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_c

    .line 554
    :cond_1c
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1, v4, v5}, Lcn/highlight/lib_doodle/DoodleView;->setDoodleTranslation(FF)V

    :goto_c
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownX:F

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownY:F

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    const/4 p1, 0x1

    return p1
.end method

.method public onScale(Lcn/forward/androids/ScaleGestureDetectorApi27;)Z
    .locals 5

    .line 316
    invoke-virtual {p1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->getFocusX()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    .line 317
    invoke-virtual {p1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->getFocusY()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    .line 319
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastFocusX:Ljava/lang/Float;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastFocusY:Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 320
    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v2, v0

    .line 321
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastFocusY:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v0, v3

    .line 323
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_0

    goto :goto_0

    .line 330
    :cond_0
    iget v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingX:F

    add-float/2addr v3, v2

    iput v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingX:F

    .line 331
    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingY:F

    add-float/2addr v2, v0

    iput v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingY:F

    goto :goto_1

    .line 324
    :cond_1
    :goto_0
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    if-eqz v3, :cond_2

    iget-boolean v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSupportScaleItem:Z

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v3

    sget-object v4, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v3, v4, :cond_3

    .line 325
    :cond_2
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationX()F

    move-result v4

    add-float/2addr v4, v2

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingX:F

    add-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcn/highlight/lib_doodle/DoodleView;->setDoodleTranslationX(F)V

    .line 326
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationY()F

    move-result v3

    add-float/2addr v3, v0

    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingY:F

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleView;->setDoodleTranslationY(F)V

    :cond_3
    const/4 v0, 0x0

    .line 328
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingY:F

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingX:F

    .line 335
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->getScaleFactor()F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3ba3d70a

    cmpl-float v0, v0, v2

    if-lez v0, :cond_7

    .line 336
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    if-eqz v0, :cond_6

    iget-boolean v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSupportScaleItem:Z

    if-eqz v2, :cond_6

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v0, v2, :cond_5

    goto :goto_2

    .line 341
    :cond_5
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v2

    invoke-virtual {p1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->getScaleFactor()F

    move-result p1

    mul-float v2, v2, p1

    iget p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingScale:F

    mul-float v2, v2, p1

    invoke-interface {v0, v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    goto :goto_3

    .line 338
    :cond_6
    :goto_2
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleScale()F

    move-result v0

    invoke-virtual {p1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->getScaleFactor()F

    move-result p1

    mul-float v0, v0, p1

    iget p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingScale:F

    mul-float v0, v0, p1

    .line 339
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    invoke-virtual {p1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    invoke-virtual {v3, v4}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Lcn/highlight/lib_doodle/DoodleView;->setDoodleScale(FFF)V

    .line 343
    :goto_3
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingScale:F

    goto :goto_4

    .line 345
    :cond_7
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingScale:F

    invoke-virtual {p1}, Lcn/forward/androids/ScaleGestureDetectorApi27;->getScaleFactor()F

    move-result p1

    mul-float v0, v0, p1

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->pendingScale:F

    .line 348
    :goto_4
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreX:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastFocusX:Ljava/lang/Float;

    .line 349
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchCentreY:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastFocusY:Ljava/lang/Float;

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Lcn/forward/androids/ScaleGestureDetectorApi27;)Z
    .locals 0

    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastFocusX:Ljava/lang/Float;

    .line 307
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastFocusY:Ljava/lang/Float;

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Lcn/forward/androids/ScaleGestureDetectorApi27;)V
    .locals 20

    move-object/from16 v0, p0

    .line 356
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    instance-of v3, v1, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v3, :cond_3

    .line 357
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotX()F

    move-result v1

    .line 358
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v3}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotY()F

    move-result v3

    .line 360
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    check-cast v6, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleText;->getText0()Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-static {v6}, Lcn/highlight/lib_doodle/Tools;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 366
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_2

    .line 367
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    const-string v12, "\n"

    if-ne v10, v11, :cond_0

    .line 369
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x0

    const/4 v9, 0x0

    goto :goto_1

    .line 374
    :cond_0
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v9, v2

    .line 376
    new-instance v11, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v14, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget-object v13, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v13}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getSize()F

    move-result v16

    new-instance v13, Lcn/highlight/lib_doodle/DoodleColor;

    const/high16 v7, -0x1000000

    invoke-direct {v13, v7}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    iget-object v7, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v7}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object v7

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v17, v13

    move-object v13, v11

    move/from16 v18, v7

    move/from16 v19, v2

    invoke-direct/range {v13 .. v19}, Lcn/highlight/lib_doodle/DoodleText;-><init>(Lcn/highlight/lib_doodle/IDoodle;Ljava/lang/String;FLcn/highlight/lib_doodle/IDoodleColor;FF)V

    .line 377
    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v2

    invoke-interface {v11, v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    .line 378
    invoke-interface {v11}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v7, 0x44800000    # 1024.0f

    cmpl-float v2, v2, v7

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    if-eq v9, v2, :cond_1

    .line 380
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 381
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 383
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 386
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x1

    const/4 v7, 0x0

    goto :goto_0

    .line 389
    :cond_2
    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    check-cast v2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/highlight/lib_doodle/DoodleText;->setText1(Ljava/lang/String;)V

    .line 390
    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotX()F

    move-result v2

    .line 391
    iget-object v4, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v4}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotY()F

    move-result v4

    .line 392
    iget-object v5, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v5}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 393
    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v6}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 394
    iget-object v7, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    sub-float/2addr v1, v2

    add-float/2addr v5, v1

    sub-float/2addr v3, v4

    add-float/2addr v6, v3

    invoke-interface {v7, v5, v6}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setLocation(FF)V

    .line 400
    :cond_3
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 401
    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->limitBound(Z)V

    .line 402
    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-virtual {v2, v3, v1}, Lcn/highlight/lib_doodle/DoodleView;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 403
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz v1, :cond_4

    .line 404
    invoke-interface {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;->onOperationItem()V

    :cond_4
    return-void

    .line 409
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->center()V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 194
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 195
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 196
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 197
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    .line 199
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->isPenEditable(Lcn/highlight/lib_doodle/IDoodlePen;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 217
    :cond_0
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    sget-object p2, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/CopyLocation;->isRelocating()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {p2, p3}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result p2

    iget-object p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {p3, p4}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcn/highlight/lib_doodle/CopyLocation;->updateLocation(FF)V

    goto/16 :goto_1

    .line 221
    :cond_1
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    sget-object p2, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, p2, :cond_2

    .line 222
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/CopyLocation;->getCopyStartX()F

    move-result p2

    iget-object p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {p3, p4}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/CopyLocation;->getTouchStartX()F

    move-result p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    .line 223
    invoke-virtual {p3}, Lcn/highlight/lib_doodle/CopyLocation;->getCopyStartY()F

    move-result p3

    iget-object p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {p4, v0}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result p4

    add-float/2addr p3, p4

    iget-object p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/CopyLocation;->getTouchStartY()F

    move-result p4

    sub-float/2addr p3, p4

    .line 222
    invoke-virtual {p1, p2, p3}, Lcn/highlight/lib_doodle/CopyLocation;->updateLocation(FF)V

    .line 225
    :cond_2
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object p1

    sget-object p2, Lcn/highlight/lib_doodle/DoodleShape;->HAND_WRITE:Lcn/highlight/lib_doodle/DoodleShape;

    if-ne p1, p2, :cond_3

    .line 226
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrPath:Landroid/graphics/Path;

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 227
    invoke-virtual {p2, p3}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result p2

    iget-object p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 228
    invoke-virtual {p3, p4}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result p3

    iget-object p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 229
    invoke-virtual {p4, v0}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result p4

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    .line 230
    invoke-virtual {v0, v2}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v0

    .line 226
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 231
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodlePath;->updatePath(Landroid/graphics/Path;)V

    goto/16 :goto_1

    .line 233
    :cond_3
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownX:F

    invoke-virtual {p2, p3}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result p2

    iget-object p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownY:F

    invoke-virtual {p3, p4}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result p3

    iget-object p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {p4, v0}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result p4

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v0

    invoke-virtual {p1, p2, p3, p4, v0}, Lcn/highlight/lib_doodle/DoodlePath;->updateXY(FFFF)V

    goto/16 :goto_1

    .line 200
    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    sget-object p2, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    if-eq p1, p2, :cond_6

    .line 201
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    instance-of p2, p1, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;

    if-eqz p2, :cond_5

    check-cast p1, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->isRotating()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 202
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    iget p2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mRotateDiff:F

    .line 203
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotX()F

    move-result p3

    iget-object p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {p4}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotY()F

    move-result p4

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v1

    .line 202
    invoke-static {p3, p4, v0, v1}, Lcn/highlight/lib_doodle/DrawUtil;->computeAngle(FFFF)F

    move-result p3

    add-float/2addr p2, p3

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_1

    .line 206
    :cond_5
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    iget p2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartX:F

    iget-object p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 207
    invoke-virtual {p3, p4}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownX:F

    invoke-virtual {p3, p4}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result p3

    sub-float/2addr p2, p3

    iget p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartY:F

    iget-object p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    .line 208
    invoke-virtual {p4, v0}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result p4

    add-float/2addr p3, p4

    iget-object p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownY:F

    invoke-virtual {p4, v0}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result p4

    sub-float/2addr p3, p4

    .line 206
    invoke-interface {p1, p2, p3}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setLocation(FF)V

    goto :goto_1

    .line 211
    :cond_6
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 212
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget p2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartX:F

    iget p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    add-float/2addr p2, p3

    iget p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownX:F

    sub-float/2addr p2, p3

    iget p3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartY:F

    iget p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    add-float/2addr p3, p4

    iget p4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownY:F

    sub-float/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Lcn/highlight/lib_doodle/DoodleView;->setDoodleTranslation(FF)V

    .line 237
    :cond_7
    :goto_1
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    const/4 p1, 0x1

    return p1
.end method

.method public onScrollBegin(Landroid/view/MotionEvent;)V
    .locals 5

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 105
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->setScrollingDoodle(Z)V

    .line 107
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->isEditMode()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_5

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->isPenEditable(Lcn/highlight/lib_doodle/IDoodlePen;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 129
    :cond_0
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v3, v4}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v3

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleView;->getSize()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Lcn/highlight/lib_doodle/CopyLocation;->contains(FFF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/CopyLocation;->setRelocating(Z)V

    .line 131
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/CopyLocation;->setCopying(Z)V

    goto/16 :goto_2

    .line 133
    :cond_1
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->COPY:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p1, v2, :cond_2

    .line 134
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/CopyLocation;->setRelocating(Z)V

    .line 135
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/CopyLocation;->isCopying()Z

    move-result p1

    if-nez p1, :cond_2

    .line 136
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/CopyLocation;->setCopying(Z)V

    .line 137
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCopyLocation:Lcn/highlight/lib_doodle/CopyLocation;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/highlight/lib_doodle/CopyLocation;->setStartPosition(FF)V

    .line 142
    :cond_2
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrPath:Landroid/graphics/Path;

    .line 143
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 144
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getShape()Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object p1

    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->HAND_WRITE:Lcn/highlight/lib_doodle/DoodleShape;

    if-ne p1, v0, :cond_3

    .line 145
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrPath:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lcn/highlight/lib_doodle/DoodlePath;->toPath(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Path;)Lcn/highlight/lib_doodle/DoodlePath;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

    goto :goto_0

    .line 147
    :cond_3
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownX:F

    .line 148
    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchDownY:F

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v1

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v3, v4}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v3

    .line 147
    invoke-static {p1, v0, v1, v2, v3}, Lcn/highlight/lib_doodle/DoodlePath;->toShape(Lcn/highlight/lib_doodle/IDoodle;FFFF)Lcn/highlight/lib_doodle/DoodlePath;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

    .line 150
    :goto_0
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->isOptimizeDrawing()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 151
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->markItemToOptimizeDrawing(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto/16 :goto_2

    .line 153
    :cond_4
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto/16 :goto_2

    .line 108
    :cond_5
    :goto_1
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    if-eqz p1, :cond_8

    .line 109
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    .line 110
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iput v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartX:F

    .line 111
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartY:F

    .line 112
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    instance-of v2, p1, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;

    if-eqz v2, :cond_9

    check-cast p1, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 113
    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v3, v4}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->canRotate(FF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 114
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    check-cast p1, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->setIsRotating(Z)V

    .line 115
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    instance-of v0, p1, Lcn/highlight/lib_doodle/DoodleQRCode;

    if-nez v0, :cond_6

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleBarCode;

    if-eqz p1, :cond_7

    .line 116
    :cond_6
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    check-cast p1, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->setIsRotating(Z)V

    .line 118
    :cond_7
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getItemRotate()F

    move-result p1

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    .line 119
    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotX()F

    move-result v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getPivotY()F

    move-result v1

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v3, v4}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcn/highlight/lib_doodle/DrawUtil;->computeAngle(FFFF)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mRotateDiff:F

    goto :goto_2

    .line 122
    :cond_8
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 123
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationX()F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartX:F

    .line 124
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleTranslationY()F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartY:F

    .line 157
    :cond_9
    :goto_2
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 3

    .line 162
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 163
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    .line 166
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->setScrollingDoodle(Z)V

    .line 168
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->isEditMode()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->isPenEditable(Lcn/highlight/lib_doodle/IDoodlePen;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 169
    :cond_0
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    instance-of v2, p1, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;

    if-eqz v2, :cond_1

    .line 170
    check-cast p1, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;->setIsRotating(Z)V

    .line 172
    :cond_1
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->limitBound(Z)V

    .line 177
    :cond_2
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

    if-eqz p1, :cond_4

    .line 178
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->isOptimizeDrawing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 179
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->notifyItemFinishedDrawing(Lcn/highlight/lib_doodle/IDoodleItem;)V

    :cond_3
    const/4 p1, 0x0

    .line 181
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mCurrDoodlePath:Lcn/highlight/lib_doodle/DoodlePath;

    .line 183
    :cond_4
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    if-eqz p1, :cond_5

    instance-of v0, p1, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;

    if-eqz v0, :cond_5

    .line 184
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0, p1, v1}, Lcn/highlight/lib_doodle/DoodleView;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 186
    :cond_5
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    .line 187
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz p1, :cond_6

    .line 188
    invoke-interface {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;->onOperationItem()V

    :cond_6
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 250
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchX:F

    .line 251
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mLastTouchY:F

    .line 252
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    .line 255
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->isEditMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 258
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->getAllItem()Ljava/util/List;

    move-result-object p1

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 260
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 261
    invoke-interface {v3}, Lcn/highlight/lib_doodle/IDoodleItem;->isDoodleEditable()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    instance-of v4, v3, Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    if-nez v4, :cond_1

    goto :goto_1

    .line 269
    :cond_1
    check-cast v3, Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    .line 271
    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v5, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v4, v5}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v4

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v6, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v5, v6}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    invoke-virtual {p0, v3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 274
    invoke-interface {v3}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    .line 275
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartX:F

    .line 276
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mStartY:F

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_6

    .line 281
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 283
    invoke-virtual {p0, v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 284
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz v0, :cond_6

    .line 285
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-interface {v0, v3, p1, v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;->onSelectedItem(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/IDoodleSelectableItem;Z)V

    goto :goto_3

    .line 289
    :cond_4
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->isPenEditable(Lcn/highlight/lib_doodle/IDoodlePen;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz p1, :cond_6

    .line 291
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchX:F

    invoke-virtual {v0, v2}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget v4, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mTouchY:F

    invoke-virtual {v3, v4}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;->onCreateSelectableItem(Lcn/highlight/lib_doodle/IDoodle;FF)V

    goto :goto_3

    .line 295
    :cond_5
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->onScrollBegin(Landroid/view/MotionEvent;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 296
    invoke-virtual {p1, v0, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 297
    invoke-virtual {p0, p1, p1, v0, v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 298
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 300
    :cond_6
    :goto_3
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return v1
.end method

.method public setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    .line 66
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 69
    invoke-interface {v0, p1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setSelected(Z)V

    .line 70
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz v1, :cond_0

    .line 71
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-interface {v1, v2, v0, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;->onSelectedItem(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/IDoodleSelectableItem;Z)V

    .line 73
    :cond_0
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->notifyItemFinishedDrawing(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 75
    :cond_1
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    .line 76
    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setSelected(Z)V

    .line 77
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

    if-eqz p1, :cond_2

    .line 78
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-interface {p1, v1, v2, v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;->onSelectedItem(Lcn/highlight/lib_doodle/IDoodle;Lcn/highlight/lib_doodle/IDoodleSelectableItem;Z)V

    .line 80
    :cond_2
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mDoodle:Lcn/highlight/lib_doodle/DoodleView;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectedItem:Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleView;->markItemToOptimizeDrawing(Lcn/highlight/lib_doodle/IDoodleItem;)V

    :cond_3
    return-void
.end method

.method public setSelectionListener(Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSelectionListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;

    return-void
.end method

.method public setSupportScaleItem(Z)V
    .locals 0

    .line 567
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->mSupportScaleItem:Z

    return-void
.end method
