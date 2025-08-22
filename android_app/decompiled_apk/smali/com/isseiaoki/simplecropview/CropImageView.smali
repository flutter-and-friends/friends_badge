.class public Lcom/isseiaoki/simplecropview/CropImageView;
.super Landroid/widget/ImageView;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isseiaoki/simplecropview/CropImageView$SavedState;,
        Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;,
        Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;,
        Lcom/isseiaoki/simplecropview/CropImageView$CropMode;,
        Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;
    }
.end annotation


# static fields
.field private static final DEBUG_TEXT_SIZE_IN_DP:I = 0xf

.field private static final DEFAULT_ANIMATION_DURATION_MILLIS:I = 0x64

.field private static final DEFAULT_INITIAL_FRAME_SCALE:F = 1.0f

.field private static final FRAME_STROKE_WEIGHT_IN_DP:I = 0x1

.field private static final GUIDE_STROKE_WEIGHT_IN_DP:I = 0x1

.field private static final HANDLE_SIZE_IN_DP:I = 0xe

.field private static final MIN_FRAME_SIZE_IN_DP:I = 0x32

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSLUCENT_BLACK:I = -0x45000000

.field private static final TRANSLUCENT_WHITE:I = -0x44000001

.field private static final TRANSPARENT:I = 0x0

.field private static final WHITE:I = -0x1


# instance fields
.field private final DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private mAngle:F

.field private mAnimationDurationMillis:I

.field private mAnimator:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

.field private mBackgroundColor:I

.field private mCenter:Landroid/graphics/PointF;

.field private mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mCompressQuality:I

.field private mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

.field private mCustomRatio:Landroid/graphics/PointF;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mExifRotation:I

.field private mFrameColor:I

.field private mFrameRect:Landroid/graphics/RectF;

.field private mFrameStrokeWeight:F

.field private mGuideColor:I

.field private mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field private mGuideStrokeWeight:F

.field private mHandleColor:I

.field private mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

.field private mHandleSize:I

.field private mHandler:Landroid/os/Handler;

.field private mImageRect:Landroid/graphics/RectF;

.field private mImgHeight:F

.field private mImgWidth:F

.field private mInitialFrameRect:Landroid/graphics/RectF;

.field private mInitialFrameScale:F

.field private mInputImageHeight:I

.field private mInputImageWidth:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsAnimating:Z

.field private mIsAnimationEnabled:Z

.field private mIsCropEnabled:Z

.field private mIsCropping:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsDebug:Z

.field private mIsEnabled:Z

.field private mIsHandleShadowEnabled:Z

.field private mIsInitialized:Z

.field private mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsRotating:Z

.field private mIsSaving:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastX:F

.field private mLastY:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMinFrameSize:F

.field private mOutputHeight:I

.field private mOutputImageHeight:I

.field private mOutputImageWidth:I

.field private mOutputMaxHeight:I

.field private mOutputMaxWidth:I

.field private mOutputWidth:I

.field private mOverlayColor:I

.field private mPaintBitmap:Landroid/graphics/Paint;

.field private mPaintDebug:Landroid/graphics/Paint;

.field private mPaintFrame:Landroid/graphics/Paint;

.field private mPaintTranslucent:Landroid/graphics/Paint;

.field private mSaveUri:Landroid/net/Uri;

.field private mScale:F

.field private mShowGuide:Z

.field private mShowHandle:Z

.field private mSourceUri:Landroid/net/Uri;

.field private mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

.field private mTouchPadding:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/isseiaoki/simplecropview/CropImageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, p1, p2, v0}, Lcom/isseiaoki/simplecropview/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 158
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewWidth:I

    .line 79
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 80
    iput v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    const/4 v2, 0x0

    .line 81
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    .line 82
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgWidth:F

    .line 83
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgHeight:F

    .line 85
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsInitialized:Z

    const/4 v2, 0x0

    .line 86
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 94
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCenter:Landroid/graphics/PointF;

    .line 96
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsRotating:Z

    .line 97
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimating:Z

    .line 98
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimator:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    .line 99
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 100
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->DEFAULT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 101
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandler:Landroid/os/Handler;

    .line 102
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    .line 103
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSaveUri:Landroid/net/Uri;

    .line 104
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExifRotation:I

    .line 107
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputWidth:I

    .line 108
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputHeight:I

    .line 109
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsDebug:Z

    .line 110
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    .line 111
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressQuality:I

    .line 112
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageWidth:I

    .line 113
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageHeight:I

    .line 114
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageWidth:I

    .line 115
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageHeight:I

    .line 116
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropping:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 118
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsSaving:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->OUT_OF_BOUNDS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 124
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 125
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ALWAYS:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 126
    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ALWAYS:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 129
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchPadding:I

    const/4 v3, 0x1

    .line 130
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    .line 131
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    .line 132
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropEnabled:Z

    .line 133
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsEnabled:Z

    .line 134
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCustomRatio:Landroid/graphics/PointF;

    const/high16 v4, 0x40000000    # 2.0f

    .line 135
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameStrokeWeight:F

    .line 136
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideStrokeWeight:F

    .line 143
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimationEnabled:Z

    .line 144
    iput v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimationDurationMillis:I

    .line 145
    iput-boolean v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsHandleShadowEnabled:Z

    .line 160
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 162
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v2

    const/high16 v4, 0x41600000    # 14.0f

    mul-float v4, v4, v2

    float-to-int v4, v4

    .line 163
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    const/high16 v4, 0x42480000    # 50.0f

    mul-float v4, v4, v2

    .line 164
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    mul-float v4, v2, v1

    .line 165
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameStrokeWeight:F

    .line 166
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideStrokeWeight:F

    .line 168
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    .line 169
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintTranslucent:Landroid/graphics/Paint;

    .line 170
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintBitmap:Landroid/graphics/Paint;

    .line 171
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintBitmap:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 172
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    .line 173
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 174
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    const/high16 v5, 0x41700000    # 15.0f

    mul-float v5, v5, v2

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 178
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    .line 179
    iput v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    .line 180
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    .line 181
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameColor:I

    const/high16 v0, -0x45000000    # -0.001953125f

    .line 182
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOverlayColor:I

    .line 183
    iput v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleColor:I

    const v0, -0x44000001

    .line 184
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideColor:I

    .line 187
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->handleStyleable(Landroid/content/Context;Landroid/util/AttributeSet;IF)V

    return-void
.end method

.method static synthetic access$002(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/callback/Callback;Ljava/lang/Throwable;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->postErrorOnMainThread(Lcom/isseiaoki/simplecropview/callback/Callback;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsRotating:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/isseiaoki/simplecropview/CropImageView;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    return p1
.end method

.method static synthetic access$1400(Lcom/isseiaoki/simplecropview/CropImageView;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->setMatrix()V

    return-void
.end method

.method static synthetic access$1500(Lcom/isseiaoki/simplecropview/CropImageView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewWidth:I

    return p0
.end method

.method static synthetic access$1600(Lcom/isseiaoki/simplecropview/CropImageView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewHeight:I

    return p0
.end method

.method static synthetic access$1700(Lcom/isseiaoki/simplecropview/CropImageView;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setupLayout(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropping:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/graphics/Bitmap;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->cropImage()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/isseiaoki/simplecropview/CropImageView;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsDebug:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->saveImage(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsSaving:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$402(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInitialFrameRect:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$500(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->applyThumbnail(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$702(Lcom/isseiaoki/simplecropview/CropImageView;F)F
    .locals 0

    .line 58
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    return p1
.end method

.method static synthetic access$800(Lcom/isseiaoki/simplecropview/CropImageView;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExifRotation:I

    return p0
.end method

.method static synthetic access$900(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private applyInitialFrameRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    .line 1936
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1937
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    mul-float v1, v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    mul-float v2, v2, v3

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    mul-float v3, v3, v4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    mul-float p1, p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1939
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 1940
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1941
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1942
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1943
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1944
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v0
.end method

.method private applyThumbnail(Landroid/net/Uri;)V
    .locals 2

    .line 1534
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->getThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isseiaoki/simplecropview/CropImageView$7;

    invoke-direct {v1, p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView$7;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private calcCropRect(II)Landroid/graphics/Rect;
    .locals 6

    .line 1253
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    int-to-float p1, p1

    int-to-float p2, p2

    .line 1254
    invoke-direct {p0, v0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedWidth(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 1255
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    mul-float v1, v1, v0

    .line 1256
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    mul-float v2, v2, v0

    .line 1257
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    mul-float v3, v3, v0

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 1258
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    mul-float v4, v4, v0

    sub-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1259
    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    mul-float v5, v5, v0

    sub-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1260
    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    mul-float v5, v5, v0

    sub-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1261
    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    invoke-direct {p0, v2, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedWidth(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1262
    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    invoke-direct {p0, v5, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedHeight(FFF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 1263
    new-instance p2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1264
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-direct {p2, v3, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private calcFrameRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 8

    .line 564
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX(F)F

    move-result v0

    .line 565
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY(F)F

    move-result v1

    .line 566
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    div-float/2addr v0, v1

    .line 568
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v7, v0, v2

    if-ltz v7, :cond_0

    .line 570
    iget v1, p1, Landroid/graphics/RectF;->left:F

    .line 571
    iget v4, p1, Landroid/graphics/RectF;->right:F

    .line 572
    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    mul-float v2, v2, v6

    .line 573
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr p1, v0

    mul-float p1, p1, v6

    sub-float v3, v2, p1

    add-float v5, v2, p1

    goto :goto_0

    :cond_0
    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    .line 577
    iget v3, p1, Landroid/graphics/RectF;->top:F

    .line 578
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    .line 579
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    mul-float v1, v1, v6

    .line 580
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float p1, p1, v0

    mul-float p1, p1, v6

    sub-float v0, v1, p1

    add-float v4, v1, p1

    move v1, v0

    :cond_1
    :goto_0
    sub-float/2addr v4, v1

    sub-float/2addr v5, v3

    const/high16 p1, 0x40000000    # 2.0f

    div-float v0, v4, p1

    add-float/2addr v1, v0

    div-float v0, v5, p1

    add-float/2addr v3, v0

    .line 588
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInitialFrameScale:F

    mul-float v4, v4, v0

    mul-float v5, v5, v0

    .line 590
    new-instance v0, Landroid/graphics/RectF;

    div-float/2addr v4, p1

    sub-float v2, v1, v4

    div-float/2addr v5, p1

    sub-float p1, v3, v5

    add-float/2addr v1, v4

    add-float/2addr v3, v5

    invoke-direct {v0, v2, p1, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private calcImageRect(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 1

    .line 558
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 559
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    return-object v0
.end method

.method private calcScale(IIF)F
    .locals 4

    .line 542
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgWidth:F

    .line 543
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgHeight:F

    .line 544
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgWidth:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    int-to-float v0, p1

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgWidth:F

    .line 545
    :cond_0
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgHeight:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    int-to-float v0, p2

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgHeight:F

    :cond_1
    int-to-float p1, p1

    int-to-float p2, p2

    div-float v0, p1, p2

    .line 547
    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedWidth(F)F

    move-result v1

    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedHeight(F)F

    move-result v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v0

    if-ltz v3, :cond_2

    .line 550
    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedWidth(F)F

    move-result p2

    div-float v2, p1, p2

    goto :goto_0

    :cond_2
    cmpg-float p1, v1, v0

    if-gez p1, :cond_3

    .line 552
    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedHeight(F)F

    move-result p1

    div-float v2, p2, p1

    :cond_3
    :goto_0
    return v2
.end method

.method private checkMoveBounds()V
    .locals 4

    .line 966
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    .line 968
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 969
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 973
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 974
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    .line 978
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 979
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 983
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 984
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method private checkScaleBounds()V
    .locals 7

    .line 946
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 947
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    .line 948
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    .line 949
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v5, v0, v4

    if-gez v5, :cond_0

    .line 952
    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v6, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v0

    iput v6, v5, Landroid/graphics/RectF;->left:F

    :cond_0
    cmpl-float v0, v1, v4

    if-lez v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v1

    iput v5, v0, Landroid/graphics/RectF;->right:F

    :cond_1
    cmpg-float v0, v2, v4

    if-gez v0, :cond_2

    .line 958
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    :cond_2
    cmpl-float v0, v3, v4

    if-lez v0, :cond_3

    .line 961
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    return-void
.end method

.method private checkTouchArea(FF)V
    .locals 2

    .line 675
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideCornerLeftTop(FF)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 676
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->LEFT_TOP:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 677
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_0

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    .line 678
    :cond_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_1

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    :cond_1
    return-void

    .line 681
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideCornerRightTop(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 682
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->RIGHT_TOP:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 683
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_3

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    .line 684
    :cond_3
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_4

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    :cond_4
    return-void

    .line 687
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideCornerLeftBottom(FF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 688
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->LEFT_BOTTOM:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 689
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_6

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    .line 690
    :cond_6
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_7

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    :cond_7
    return-void

    .line 693
    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideCornerRightBottom(FF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 694
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->RIGHT_BOTTOM:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 695
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_9

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    .line 696
    :cond_9
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_a

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    :cond_a
    return-void

    .line 699
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideFrame(FF)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 700
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, p2, :cond_c

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    .line 701
    :cond_c
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->CENTER:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    return-void

    .line 704
    :cond_d
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->OUT_OF_BOUNDS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    return-void
.end method

.method private constrain(FFFF)F
    .locals 0

    cmpg-float p2, p1, p2

    if-ltz p2, :cond_1

    cmpl-float p2, p1, p3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    return p4
.end method

.method private cropImage()Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1889
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1890
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getCroppedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1894
    :cond_0
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getCroppedBitmapFromUri()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1895
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v1, v2, :cond_2

    .line 1896
    invoke-virtual {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1897
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 1898
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object v0, v1

    .line 1904
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->scaleBitmapIfNeeded(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1906
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageWidth:I

    .line 1907
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageHeight:I

    return-object v0
.end method

.method private drawCropFrame(Landroid/graphics/Canvas;)V
    .locals 1

    .line 441
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 442
    :cond_0
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsRotating:Z

    if-eqz v0, :cond_1

    return-void

    .line 443
    :cond_1
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->drawOverlay(Landroid/graphics/Canvas;)V

    .line 444
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->drawFrame(Landroid/graphics/Canvas;)V

    .line 445
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->drawGuidelines(Landroid/graphics/Canvas;)V

    .line 446
    :cond_2
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->drawHandles(Landroid/graphics/Canvas;)V

    :cond_3
    return-void
.end method

.method private drawDebugInfo(Landroid/graphics/Canvas;)V
    .locals 7

    .line 382
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    const-string v2, "W"

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 384
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 385
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v4

    mul-float v2, v2, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 386
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v2, v4

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v3

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOADED FROM: "

    .line 388
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    const-string v4, "Uri"

    goto :goto_0

    :cond_0
    const-string v4, "Bitmap"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    const-string v5, "INPUT_IMAGE_SIZE: "

    const-string v6, "x"

    if-nez v4, :cond_1

    .line 393
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgWidth:F

    float-to-int v4, v4

    .line 394
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgHeight:F

    float-to-int v4, v4

    .line 396
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 398
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 401
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageWidth:I

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageHeight:I

    .line 404
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v4, "LOADED_IMAGE_SIZE: "

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 411
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 414
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 415
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageWidth:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageHeight:I

    if-lez v4, :cond_2

    const-string v4, "OUTPUT_IMAGE_SIZE: "

    .line 417
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageWidth:I

    .line 418
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageHeight:I

    .line 420
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 422
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXIF ROTATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExifRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 425
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CURRENT_ROTATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 428
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 430
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FRAME_RECT: "

    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 433
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v2

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTUAL_CROP_RECT: "

    .line 435
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getActualCropRect()Landroid/graphics/RectF;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getActualCropRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    const-string v4, ""

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v0

    .line 437
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintDebug:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawFrame(Landroid/graphics/Canvas;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 474
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 475
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 476
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameStrokeWeight:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 478
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawGuidelines(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    .line 482
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    iget v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 483
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    iget v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideStrokeWeight:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 484
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    add-float v7, v1, v2

    .line 485
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float v11, v1, v2

    .line 486
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    add-float v16, v1, v2

    .line 487
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    sub-float v21, v1, v2

    .line 488
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v9, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    move v5, v7

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 489
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v10, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v12, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v13, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v9, v11

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 490
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v13, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v15, v1, Landroid/graphics/RectF;->right:F

    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move/from16 v14, v16

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 491
    iget-object v1, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, v0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move/from16 v18, v1

    move/from16 v19, v21

    move/from16 v20, v2

    move-object/from16 v22, v3

    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHandleShadows(Landroid/graphics/Canvas;)V
    .locals 5

    .line 505
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 506
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    const/high16 v1, -0x45000000    # -0.001953125f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 507
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 508
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 509
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 510
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 511
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 512
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawHandles(Landroid/graphics/Canvas;)V
    .locals 4

    .line 495
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsHandleShadowEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->drawHandleShadows(Landroid/graphics/Canvas;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 497
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 498
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 499
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 500
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 501
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintFrame:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawOverlay(Landroid/graphics/Canvas;)V
    .locals 7

    .line 450
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintTranslucent:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 451
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintTranslucent:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 452
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintTranslucent:Landroid/graphics/Paint;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOverlayColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintTranslucent:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 454
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 455
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    float-to-double v2, v2

    .line 456
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    float-to-double v4, v4

    .line 457
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 458
    iget-boolean v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimating:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v3, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE_SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v2, v3, :cond_1

    .line 459
    :cond_0
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 460
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    invoke-direct {v1, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 462
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v4

    div-float/2addr v2, v3

    .line 463
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 464
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintTranslucent:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 466
    :cond_1
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 467
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 468
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintTranslucent:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private getAnimator()Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;
    .locals 1

    .line 1203
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->setupAnimatorIfNeeded()V

    .line 1204
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimator:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    return-object v0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 1172
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getCroppedBitmapFromUri()Landroid/graphics/Bitmap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1223
    :try_start_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    .line 1224
    invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    .line 1225
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    .line 1226
    invoke-virtual {v1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    .line 1227
    invoke-direct {p0, v2, v3}, Lcom/isseiaoki/simplecropview/CropImageView;->calcCropRect(II)Landroid/graphics/Rect;

    move-result-object v4

    .line 1228
    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 1229
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1230
    iget v7, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    neg-float v7, v7

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 1231
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 1232
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 1233
    iget v4, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_0

    int-to-float v2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget v4, v7, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_1

    int-to-float v3, v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v7, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 1235
    new-instance v4, Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v7, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v5, v7, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    invoke-direct {v4, v2, v3, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1238
    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v1, v4, v2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1239
    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_4

    .line 1240
    invoke-direct {p0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1241
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_3

    .line 1242
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move-object v1, v2

    .line 1247
    :cond_4
    invoke-static {v0}, Lcom/isseiaoki/simplecropview/util/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/util/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private getDensity()F
    .locals 3

    .line 1142
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1143
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1144
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1145
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private getFrameH()F
    .locals 2

    .line 2336
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private getFrameW()F
    .locals 2

    .line 2332
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    return v0
.end method

.method private getImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_1

    .line 1550
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/isseiaoki/simplecropview/util/Utils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExifRotation:I

    .line 1551
    invoke-static {}, Lcom/isseiaoki/simplecropview/util/Utils;->getMaxSize()I

    move-result p1

    .line 1552
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewWidth:I

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1556
    :goto_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/isseiaoki/simplecropview/util/Utils;->decodeSampledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1557
    sget v0, Lcom/isseiaoki/simplecropview/util/Utils;->sInputImageWidth:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageWidth:I

    .line 1558
    sget v0, Lcom/isseiaoki/simplecropview/util/Utils;->sInputImageHeight:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageHeight:I

    return-object p1

    .line 1547
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Source Uri must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRatioX()F
    .locals 2

    .line 1094
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    .line 1110
    :pswitch_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCustomRatio:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0

    :pswitch_2
    return v1

    :pswitch_3
    const/high16 v0, 0x41100000    # 9.0f

    return v0

    :pswitch_4
    const/high16 v0, 0x41800000    # 16.0f

    return v0

    :pswitch_5
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    :pswitch_6
    const/high16 v0, 0x40800000    # 4.0f

    return v0

    .line 1096
    :pswitch_7
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getRatioX(F)F
    .locals 2

    .line 1044
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return p1

    .line 1062
    :pswitch_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCustomRatio:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    return p1

    :pswitch_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :pswitch_2
    const/high16 p1, 0x41100000    # 9.0f

    return p1

    :pswitch_3
    const/high16 p1, 0x41800000    # 16.0f

    return p1

    :pswitch_4
    const/high16 p1, 0x40400000    # 3.0f

    return p1

    :pswitch_5
    const/high16 p1, 0x40800000    # 4.0f

    :pswitch_6
    return p1

    .line 1046
    :pswitch_7
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRatioY()F
    .locals 2

    .line 1117
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v1

    .line 1133
    :pswitch_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCustomRatio:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0

    :pswitch_2
    return v1

    :pswitch_3
    const/high16 v0, 0x41800000    # 16.0f

    return v0

    :pswitch_4
    const/high16 v0, 0x41100000    # 9.0f

    return v0

    :pswitch_5
    const/high16 v0, 0x40800000    # 4.0f

    return v0

    :pswitch_6
    const/high16 v0, 0x40400000    # 3.0f

    return v0

    .line 1119
    :pswitch_7
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getRatioY(F)F
    .locals 2

    .line 1069
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$CropMode:[I

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    invoke-virtual {v1}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return p1

    .line 1087
    :pswitch_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCustomRatio:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    return p1

    :pswitch_1
    const/high16 p1, 0x3f800000    # 1.0f

    return p1

    :pswitch_2
    const/high16 p1, 0x41800000    # 16.0f

    return p1

    :pswitch_3
    const/high16 p1, 0x41100000    # 9.0f

    return p1

    :pswitch_4
    const/high16 p1, 0x40800000    # 4.0f

    return p1

    :pswitch_5
    const/high16 p1, 0x40400000    # 3.0f

    :pswitch_6
    return p1

    .line 1071
    :pswitch_7
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRotatedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1194
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1195
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getRotatedHeight(F)F
    .locals 2

    .line 1186
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgWidth:F

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgHeight:F

    invoke-direct {p0, p1, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedHeight(FFF)F

    move-result p1

    return p1
.end method

.method private getRotatedHeight(FFF)F
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    move p2, p3

    :cond_0
    return p2
.end method

.method private getRotatedWidth(F)F
    .locals 2

    .line 1178
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgWidth:F

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgHeight:F

    invoke-direct {p0, p1, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedWidth(FFF)F

    move-result p1

    return p1
.end method

.method private getRotatedWidth(FFF)F
    .locals 1

    const/high16 v0, 0x43340000    # 180.0f

    rem-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    return p2
.end method

.method private getThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 2

    if-eqz p1, :cond_1

    .line 1568
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcom/isseiaoki/simplecropview/util/Utils;->getExifOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExifRotation:I

    .line 1569
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewWidth:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewHeight:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3dcccccd

    mul-float p1, p1, v0

    float-to-int p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1573
    :cond_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/isseiaoki/simplecropview/util/Utils;->decodeSampledBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1574
    sget v0, Lcom/isseiaoki/simplecropview/util/Utils;->sInputImageWidth:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageWidth:I

    .line 1575
    sget v0, Lcom/isseiaoki/simplecropview/util/Utils;->sInputImageHeight:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageHeight:I

    return-object p1

    .line 1565
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Source Uri must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private handleStyleable(Landroid/content/Context;Landroid/util/AttributeSet;IF)V
    .locals 6

    .line 316
    sget-object v0, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView:[I

    const/4 v1, 0x0

    .line 317
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 319
    sget-object p2, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->SQUARE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 321
    :try_start_0
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_img_src:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 322
    invoke-virtual {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    :cond_0
    invoke-static {}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->values()[Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    aget-object v2, p2, v0

    .line 324
    sget v3, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_crop_mode:I

    const/4 v4, 0x3

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v2}, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 325
    iput-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_2
    :goto_1
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_background_color:I

    .line 330
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    .line 331
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_overlay_color:I

    const/high16 p3, -0x45000000    # -0.001953125f

    .line 332
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOverlayColor:I

    .line 333
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_frame_color:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameColor:I

    .line 334
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_handle_color:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleColor:I

    .line 335
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_guide_color:I

    const p3, -0x44000001

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideColor:I

    .line 336
    invoke-static {}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->values()[Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_2
    const/4 v2, 0x1

    if-ge v0, p3, :cond_4

    aget-object v3, p2, v0

    .line 337
    sget v4, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_guide_show_mode:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v3}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->getId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 338
    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 343
    :cond_4
    :goto_3
    invoke-static {}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->values()[Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_4
    if-ge v0, p3, :cond_6

    aget-object v3, p2, v0

    .line 344
    sget v4, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_handle_show_mode:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v3}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->getId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 345
    iput-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 349
    :cond_6
    :goto_5
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setGuideShowMode(Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;)V

    .line 350
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    invoke-virtual {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setHandleShowMode(Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;)V

    .line 351
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_handle_size:I

    const/high16 p3, 0x41600000    # 14.0f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    .line 353
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_touch_padding:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchPadding:I

    .line 354
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_min_frame_size:I

    const/high16 p3, 0x42480000    # 50.0f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    .line 356
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_frame_stroke_weight:I

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float p4, p4, p3

    float-to-int p4, p4

    .line 357
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameStrokeWeight:F

    .line 359
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_guide_stroke_weight:I

    .line 360
    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideStrokeWeight:F

    .line 362
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_crop_enabled:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropEnabled:Z

    .line 363
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_initial_frame_scale:I

    .line 364
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    const p4, 0x3c23d70a

    .line 363
    invoke-direct {p0, p2, p4, p3, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->constrain(FFFF)F

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInitialFrameScale:F

    .line 366
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_animation_enabled:I

    .line 367
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimationEnabled:Z

    .line 368
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_animation_duration:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimationDurationMillis:I

    .line 370
    sget p2, Lcom/isseiaoki/simplecropview/R$styleable;->scv_CropImageView_scv_handle_shadow_enabled:I

    .line 371
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsHandleShadowEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p2

    goto :goto_7

    :catch_0
    move-exception p2

    .line 373
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :goto_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :goto_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method private isHeightTooSmall()Z
    .locals 2

    .line 1001
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result v0

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInsideCornerLeftBottom(FF)Z
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    .line 733
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    .line 735
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchPadding:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->sq(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInsideCornerLeftTop(FF)Z
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v0

    .line 719
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    .line 721
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchPadding:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->sq(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInsideCornerRightBottom(FF)Z
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    .line 740
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    .line 742
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchPadding:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->sq(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInsideCornerRightTop(FF)Z
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, v0

    .line 726
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v0

    mul-float p1, p1, p1

    mul-float p2, p2, p2

    add-float/2addr p1, p2

    .line 728
    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchPadding:I

    add-int/2addr p2, v0

    int-to-float p2, p2

    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->sq(F)F

    move-result p2

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInsideFrame(FF)Z
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    .line 709
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    .line 710
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->CENTER:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isInsideHorizontal(F)Z
    .locals 1

    .line 989
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isInsideVertical(F)Z
    .locals 1

    .line 993
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWidthTooSmall()Z
    .locals 2

    .line 997
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result v0

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveFrame(FF)V
    .locals 2

    .line 748
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 749
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 750
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 751
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 752
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->checkMoveBounds()V

    return-void
.end method

.method private moveHandleLB(FF)V
    .locals 2

    .line 851
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FREE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v1, :cond_2

    .line 852
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 853
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 854
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isWidthTooSmall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 855
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 856
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 858
    :cond_0
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isHeightTooSmall()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 859
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 860
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 862
    :cond_1
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->checkScaleBounds()V

    goto/16 :goto_0

    .line 865
    :cond_2
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p2, p2, p1

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 866
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 867
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 868
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isWidthTooSmall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 869
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 870
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 871
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 872
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 874
    :cond_3
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isHeightTooSmall()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 875
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 876
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 877
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 878
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 881
    :cond_4
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideHorizontal(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 882
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    .line 883
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 884
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 885
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 887
    :cond_5
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideVertical(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 888
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    .line 889
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 890
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 891
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    :cond_6
    :goto_0
    return-void
.end method

.method private moveHandleLT(FF)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FREE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v1, :cond_2

    .line 758
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 759
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 760
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isWidthTooSmall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 761
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 762
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 764
    :cond_0
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isHeightTooSmall()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 765
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 766
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 768
    :cond_1
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->checkScaleBounds()V

    goto/16 :goto_0

    .line 771
    :cond_2
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p2, p2, p1

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 772
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 773
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 774
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isWidthTooSmall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 775
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 776
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 777
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 778
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 780
    :cond_3
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isHeightTooSmall()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 781
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 782
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 783
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 784
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 787
    :cond_4
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideHorizontal(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 788
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, p2

    .line 789
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 790
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 791
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 793
    :cond_5
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideVertical(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 794
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    .line 795
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 796
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 797
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    :cond_6
    :goto_0
    return-void
.end method

.method private moveHandleRB(FF)V
    .locals 2

    .line 898
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FREE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v1, :cond_2

    .line 899
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 900
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 901
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isWidthTooSmall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 902
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 903
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 905
    :cond_0
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isHeightTooSmall()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 906
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 907
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 909
    :cond_1
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->checkScaleBounds()V

    goto/16 :goto_0

    .line 912
    :cond_2
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p2, p2, p1

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 913
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 914
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    .line 915
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isWidthTooSmall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 916
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 917
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 918
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 919
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 921
    :cond_3
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isHeightTooSmall()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 922
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 923
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 924
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 925
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 928
    :cond_4
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideHorizontal(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 929
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    .line 930
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 931
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 932
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 934
    :cond_5
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideVertical(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 935
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    .line 936
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 937
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 938
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    :cond_6
    :goto_0
    return-void
.end method

.method private moveHandleRT(FF)V
    .locals 2

    .line 804
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v1, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->FREE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v1, :cond_2

    .line 805
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 806
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 807
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isWidthTooSmall()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 808
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 809
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 811
    :cond_0
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isHeightTooSmall()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 812
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 813
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 815
    :cond_1
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->checkScaleBounds()V

    goto/16 :goto_0

    .line 818
    :cond_2
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p2, p2, p1

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result v0

    div-float/2addr p2, v0

    .line 819
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 820
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 821
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isWidthTooSmall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 822
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameW()F

    move-result p2

    sub-float/2addr p1, p2

    .line 823
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 824
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 825
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 827
    :cond_3
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->isHeightTooSmall()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 828
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getFrameH()F

    move-result p2

    sub-float/2addr p1, p2

    .line 829
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 830
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 831
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 834
    :cond_4
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideHorizontal(F)Z

    move-result p1

    if-nez p1, :cond_5

    .line 835
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p1, p2

    .line 836
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 837
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    div-float/2addr p1, p2

    .line 838
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 840
    :cond_5
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->isInsideVertical(F)Z

    move-result p1

    if-nez p1, :cond_6

    .line 841
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    .line 842
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 843
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX()F

    move-result p2

    mul-float p1, p1, p2

    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY()F

    move-result p2

    div-float/2addr p1, p2

    .line 844
    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    :cond_6
    :goto_0
    return-void
.end method

.method private onCancel()V
    .locals 1

    .line 668
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->OUT_OF_BOUNDS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 669
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method private onDown(Landroid/view/MotionEvent;)V
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    .line 628
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mLastX:F

    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mLastY:F

    .line 630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->checkTouchArea(FF)V

    return-void
.end method

.method private onMove(Landroid/view/MotionEvent;)V
    .locals 4

    .line 634
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mLastX:F

    sub-float/2addr v0, v1

    .line 635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mLastY:F

    sub-float/2addr v1, v2

    .line 636
    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$TouchArea:[I

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    invoke-virtual {v3}, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 650
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->moveHandleRB(FF)V

    goto :goto_0

    .line 647
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->moveHandleLB(FF)V

    goto :goto_0

    .line 644
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->moveHandleRT(FF)V

    goto :goto_0

    .line 641
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->moveHandleLT(FF)V

    goto :goto_0

    .line 638
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->moveFrame(FF)V

    .line 655
    :goto_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    .line 656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mLastX:F

    .line 657
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mLastY:F

    return-void
.end method

.method private onUp(Landroid/view/MotionEvent;)V
    .locals 2

    .line 661
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    .line 662
    :cond_0
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->SHOW_ON_TOUCH:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    if-ne p1, v0, :cond_1

    iput-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    .line 663
    :cond_1
    sget-object p1, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->OUT_OF_BOUNDS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    .line 664
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method private postErrorOnMainThread(Lcom/isseiaoki/simplecropview/callback/Callback;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1159
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1160
    invoke-interface {p1, p2}, Lcom/isseiaoki/simplecropview/callback/Callback;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1162
    :cond_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/isseiaoki/simplecropview/CropImageView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView$2;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/callback/Callback;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private recalculateFrameRect(I)V
    .locals 10

    .line 1007
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    return-void

    .line 1008
    :cond_0
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimating:Z

    if-eqz v0, :cond_1

    .line 1009
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getAnimator()Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    move-result-object v0

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;->cancelAnimation()V

    .line 1011
    :cond_1
    new-instance v3, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1012
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->calcFrameRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v8

    .line 1013
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, v3, Landroid/graphics/RectF;->left:F

    sub-float v4, v0, v1

    .line 1014
    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget v1, v3, Landroid/graphics/RectF;->top:F

    sub-float v5, v0, v1

    .line 1015
    iget v0, v8, Landroid/graphics/RectF;->right:F

    iget v1, v3, Landroid/graphics/RectF;->right:F

    sub-float v6, v0, v1

    .line 1016
    iget v0, v8, Landroid/graphics/RectF;->bottom:F

    iget v1, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v0, v1

    .line 1017
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimationEnabled:Z

    if-eqz v0, :cond_2

    .line 1018
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getAnimator()Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    move-result-object v0

    .line 1019
    new-instance v9, Lcom/isseiaoki/simplecropview/CropImageView$1;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/isseiaoki/simplecropview/CropImageView$1;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;FFFFLandroid/graphics/RectF;)V

    invoke-interface {v0, v9}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;->addAnimatorListener(Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;)V

    int-to-long v1, p1

    .line 1036
    invoke-interface {v0, v1, v2}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;->startAnimation(J)V

    goto :goto_0

    .line 1038
    :cond_2
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->calcFrameRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    .line 1039
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    :goto_0
    return-void
.end method

.method private resetImageInfo()V
    .locals 1

    .line 1391
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1392
    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    .line 1393
    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSaveUri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 1394
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageWidth:I

    .line 1395
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageHeight:I

    .line 1396
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageWidth:I

    .line 1397
    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageHeight:I

    .line 1398
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExifRotation:I

    int-to-float v0, v0

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    return-void
.end method

.method private saveImage(Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1307
    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSaveUri:Landroid/net/Uri;

    .line 1308
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1314
    :try_start_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v0

    .line 1315
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressQuality:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1316
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {v1, v2, p2, v3, p1}, Lcom/isseiaoki/simplecropview/util/Utils;->copyExifInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;II)V

    .line 1317
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/isseiaoki/simplecropview/util/Utils;->updateGalleryInfo(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1320
    invoke-static {v0}, Lcom/isseiaoki/simplecropview/util/Utils;->closeQuietly(Ljava/io/Closeable;)V

    return-object p2

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/util/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    .line 1309
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Save uri must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private scaleBitmapIfNeeded(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1268
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1269
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1272
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioX(F)F

    move-result v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v3}, Lcom/isseiaoki/simplecropview/CropImageView;->getRatioY(F)F

    move-result v3

    div-float/2addr v2, v3

    .line 1274
    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputWidth:I

    const/4 v4, 0x0

    if-lez v3, :cond_0

    int-to-float v0, v3

    div-float/2addr v0, v2

    .line 1276
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_0

    .line 1277
    :cond_0
    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputHeight:I

    if-lez v3, :cond_1

    int-to-float v0, v3

    mul-float v0, v0, v2

    .line 1279
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    move v4, v3

    move v3, v0

    goto :goto_0

    .line 1281
    :cond_1
    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxWidth:I

    if-lez v3, :cond_4

    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxHeight:I

    if-lez v5, :cond_4

    if-gt v0, v3, :cond_2

    if-le v1, v5, :cond_4

    .line 1283
    :cond_2
    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxWidth:I

    int-to-float v0, v3

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxHeight:I

    int-to-float v1, v4

    div-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_3

    int-to-float v0, v4

    mul-float v0, v0, v2

    .line 1286
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    :cond_3
    int-to-float v0, v3

    div-float/2addr v0, v2

    .line 1289
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    if-lez v3, :cond_6

    if-lez v4, :cond_6

    .line 1295
    invoke-static {p1, v3, v4}, Lcom/isseiaoki/simplecropview/util/Utils;->getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1296
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_5

    .line 1297
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    move-object p1, v0

    :cond_6
    return-object p1
.end method

.method private setCenter(Landroid/graphics/PointF;)V
    .locals 0

    .line 2328
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCenter:Landroid/graphics/PointF;

    return-void
.end method

.method private setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1368
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1369
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->updateLayout()V

    return-void
.end method

.method private setMatrix()V
    .locals 5

    .line 516
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 517
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgWidth:F

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgHeight:F

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 518
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 519
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-void
.end method

.method private setScale(F)V
    .locals 0

    .line 2324
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    return-void
.end method

.method private setupAnimatorIfNeeded()V
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimator:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    if-nez v0, :cond_1

    .line 1209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1210
    new-instance v0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV8;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimator:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    goto :goto_0

    .line 1212
    :cond_0
    new-instance v0, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/isseiaoki/simplecropview/animation/ValueAnimatorV14;-><init>(Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimator:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    :cond_1
    :goto_0
    return-void
.end method

.method private setupLayout(II)V
    .locals 5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 526
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    int-to-float v4, p2

    mul-float v4, v4, v3

    add-float/2addr v2, v4

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->setCenter(Landroid/graphics/PointF;)V

    .line 527
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    invoke-direct {p0, p1, p2, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->calcScale(IIF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->setScale(F)V

    .line 528
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->setMatrix()V

    .line 529
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgWidth:F

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImgHeight:F

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->calcImageRect(Landroid/graphics/RectF;Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    .line 531
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInitialFrameRect:Landroid/graphics/RectF;

    if-eqz p1, :cond_1

    .line 532
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->applyInitialFrameRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    goto :goto_0

    .line 534
    :cond_1
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->calcFrameRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    :goto_0
    const/4 p1, 0x1

    .line 537
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsInitialized:Z

    .line 538
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method private sq(F)F
    .locals 0

    mul-float p1, p1, p1

    return p1
.end method

.method private updateLayout()V
    .locals 2

    .line 1384
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1386
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewWidth:I

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewHeight:I

    invoke-direct {p0, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->setupLayout(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public crop(Landroid/net/Uri;)Lcom/isseiaoki/simplecropview/CropRequest;
    .locals 1

    .line 1817
    new-instance v0, Lcom/isseiaoki/simplecropview/CropRequest;

    invoke-direct {v0, p0, p1}, Lcom/isseiaoki/simplecropview/CropRequest;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V

    return-object v0
.end method

.method public cropAsSingle()Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Single<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1806
    invoke-virtual {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->cropAsSingle(Landroid/net/Uri;)Lio/reactivex/Single;

    move-result-object v0

    return-object v0
.end method

.method public cropAsSingle(Landroid/net/Uri;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1788
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$13;

    invoke-direct {v0, p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView$13;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$12;

    invoke-direct {v0, p0}, Lcom/isseiaoki/simplecropview/CropImageView$12;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;)V

    .line 1794
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$11;

    invoke-direct {v0, p0}, Lcom/isseiaoki/simplecropview/CropImageView$11;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;)V

    .line 1798
    invoke-virtual {p1, v0}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public cropAsync(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/CropCallback;)V
    .locals 2

    .line 1752
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/isseiaoki/simplecropview/CropImageView$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView$10;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/CropCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public cropAsync(Lcom/isseiaoki/simplecropview/callback/CropCallback;)V
    .locals 1

    const/4 v0, 0x0

    .line 1777
    invoke-virtual {p0, v0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->cropAsync(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/CropCallback;)V

    return-void
.end method

.method public getActualCropRect()Landroid/graphics/RectF;
    .locals 6

    .line 1921
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1922
    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v0, v1

    .line 1923
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v1, v2

    .line 1924
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v2, v3

    sub-float/2addr v2, v0

    .line 1925
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v3, v4

    sub-float/2addr v3, v1

    .line 1926
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v4, v5

    sub-float/2addr v4, v0

    .line 1927
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v0, v5

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 1928
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1929
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1930
    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1931
    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    div-float/2addr v4, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1932
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v2, v1, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1672
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1674
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1675
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1677
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 1678
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    .line 1680
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x1

    .line 1681
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1682
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    int-to-float v6, v3

    int-to-float v7, v4

    .line 1684
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v6, v7, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1685
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1686
    invoke-virtual {v2, p1, v1, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method public getCroppedBitmap()Landroid/graphics/Bitmap;
    .locals 9

    .line 1642
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1645
    :cond_0
    invoke-direct {p0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->getRotatedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1646
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->calcCropRect(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 1647
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1648
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    .line 1647
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v8, v1, :cond_1

    if-eq v8, v0, :cond_1

    .line 1650
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 1653
    :cond_1
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    sget-object v2, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CIRCLE:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne v0, v2, :cond_2

    .line 1654
    invoke-virtual {p0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1655
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 1656
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1332
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getSaveUri()Landroid/net/Uri;
    .locals 1

    .line 2311
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSourceUri()Landroid/net/Uri;
    .locals 1

    .line 2302
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isCropping()Z
    .locals 1

    .line 2293
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isSaving()Z
    .locals 1

    .line 2320
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsSaving:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public load(Landroid/net/Uri;)Lcom/isseiaoki/simplecropview/LoadRequest;
    .locals 1

    .line 1530
    new-instance v0, Lcom/isseiaoki/simplecropview/LoadRequest;

    invoke-direct {v0, p0, p1}, Lcom/isseiaoki/simplecropview/LoadRequest;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V

    return-object v0
.end method

.method public loadAsCompletable(Landroid/net/Uri;)Lio/reactivex/Completable;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1476
    invoke-virtual {p0, p1, v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->loadAsCompletable(Landroid/net/Uri;ZLandroid/graphics/RectF;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public loadAsCompletable(Landroid/net/Uri;ZLandroid/graphics/RectF;)Lio/reactivex/Completable;
    .locals 1

    .line 1490
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$6;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView$6;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;Landroid/net/Uri;Z)V

    invoke-static {v0}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance p2, Lcom/isseiaoki/simplecropview/CropImageView$5;

    invoke-direct {p2, p0}, Lcom/isseiaoki/simplecropview/CropImageView$5;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;)V

    .line 1511
    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Completable;

    move-result-object p1

    new-instance p2, Lcom/isseiaoki/simplecropview/CropImageView$4;

    invoke-direct {p2, p0}, Lcom/isseiaoki/simplecropview/CropImageView$4;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;)V

    .line 1515
    invoke-virtual {p1, p2}, Lio/reactivex/Completable;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method

.method public loadAsync(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1423
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->loadAsync(Landroid/net/Uri;ZLandroid/graphics/RectF;Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V

    return-void
.end method

.method public loadAsync(Landroid/net/Uri;ZLandroid/graphics/RectF;Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V
    .locals 8

    .line 1438
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/isseiaoki/simplecropview/CropImageView$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/isseiaoki/simplecropview/CropImageView$3;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;Landroid/graphics/RectF;ZLcom/isseiaoki/simplecropview/callback/LoadCallback;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 310
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 291
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 293
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsInitialized:Z

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->setMatrix()V

    .line 295
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mPaintBitmap:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->drawCropFrame(Landroid/graphics/Canvas;)V

    .line 302
    :cond_0
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsDebug:Z

    if-eqz v0, :cond_1

    .line 303
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->drawDebugInfo(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 287
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewWidth:I

    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewHeight:I

    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setupLayout(II)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 277
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 278
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setMeasuredDimension(II)V

    .line 282
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewWidth:I

    .line 283
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingTop()I

    move-result p1

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewHeight:I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .line 236
    check-cast p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;

    .line 237
    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 238
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->mode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 239
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->backgroundColor:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    .line 240
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->overlayColor:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOverlayColor:I

    .line 241
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->frameColor:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameColor:I

    .line 242
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 243
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 244
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->showGuide:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    .line 245
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->showHandle:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    .line 246
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleSize:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    .line 247
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->touchPadding:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchPadding:I

    .line 248
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->minFrameSize:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    .line 249
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->customRatioX:F

    iget v2, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->customRatioY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCustomRatio:Landroid/graphics/PointF;

    .line 250
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->frameStrokeWeight:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameStrokeWeight:F

    .line 251
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideStrokeWeight:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideStrokeWeight:F

    .line 252
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isCropEnabled:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropEnabled:Z

    .line 253
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleColor:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleColor:I

    .line 254
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideColor:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideColor:I

    .line 255
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->initialFrameScale:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInitialFrameScale:F

    .line 256
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->angle:F

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    .line 257
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isAnimationEnabled:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimationEnabled:Z

    .line 258
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->animationDuration:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimationDurationMillis:I

    .line 259
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->exifRotation:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExifRotation:I

    .line 260
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->sourceUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    .line 261
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->saveUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSaveUri:Landroid/net/Uri;

    .line 262
    iget-object v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 263
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->compressQuality:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressQuality:I

    .line 264
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isDebug:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsDebug:Z

    .line 265
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputMaxWidth:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxWidth:I

    .line 266
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputMaxHeight:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxHeight:I

    .line 267
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputWidth:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputWidth:I

    .line 268
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputHeight:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputHeight:I

    .line 269
    iget-boolean v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isHandleShadowEnabled:Z

    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsHandleShadowEnabled:Z

    .line 270
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->inputImageWidth:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageWidth:I

    .line 271
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->inputImageHeight:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageHeight:I

    .line 272
    iget v0, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputImageWidth:I

    iput v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageWidth:I

    .line 273
    iget p1, p1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputImageHeight:I

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageHeight:I

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 193
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;

    invoke-direct {v1, v0}, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 195
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->mode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 196
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->backgroundColor:I

    .line 197
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOverlayColor:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->overlayColor:I

    .line 198
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameColor:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->frameColor:I

    .line 199
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 200
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 201
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->showGuide:Z

    .line 202
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->showHandle:Z

    .line 203
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleSize:I

    .line 204
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchPadding:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->touchPadding:I

    .line 205
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->minFrameSize:F

    .line 206
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCustomRatio:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->customRatioX:F

    .line 207
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCustomRatio:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->customRatioY:F

    .line 208
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameStrokeWeight:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->frameStrokeWeight:F

    .line 209
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideStrokeWeight:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideStrokeWeight:F

    .line 210
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropEnabled:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isCropEnabled:Z

    .line 211
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleColor:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->handleColor:I

    .line 212
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideColor:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->guideColor:I

    .line 213
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInitialFrameScale:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->initialFrameScale:F

    .line 214
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->angle:F

    .line 215
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimationEnabled:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isAnimationEnabled:Z

    .line 216
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimationDurationMillis:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->animationDuration:I

    .line 217
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExifRotation:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->exifRotation:I

    .line 218
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSourceUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->sourceUri:Landroid/net/Uri;

    .line 219
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mSaveUri:Landroid/net/Uri;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->saveUri:Landroid/net/Uri;

    .line 220
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->compressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 221
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressQuality:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->compressQuality:I

    .line 222
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsDebug:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isDebug:Z

    .line 223
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxWidth:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputMaxWidth:I

    .line 224
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxHeight:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputMaxHeight:I

    .line 225
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputWidth:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputWidth:I

    .line 226
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputHeight:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputHeight:I

    .line 227
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsHandleShadowEnabled:Z

    iput-boolean v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->isHandleShadowEnabled:Z

    .line 228
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageWidth:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->inputImageWidth:I

    .line 229
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInputImageHeight:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->inputImageHeight:I

    .line 230
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageWidth:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputImageWidth:I

    .line 231
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputImageHeight:I

    iput v0, v1, Lcom/isseiaoki/simplecropview/CropImageView$SavedState;->outputImageHeight:I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 596
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsInitialized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 597
    :cond_0
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropEnabled:Z

    if-nez v0, :cond_1

    return v1

    .line 598
    :cond_1
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsEnabled:Z

    if-nez v0, :cond_2

    return v1

    .line 599
    :cond_2
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsRotating:Z

    if-eqz v0, :cond_3

    return v1

    .line 600
    :cond_3
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimating:Z

    if-eqz v0, :cond_4

    return v1

    .line 601
    :cond_4
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 602
    :cond_5
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropping:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 604
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 p1, 0x3

    if-eq v0, p1, :cond_7

    return v1

    .line 615
    :cond_7
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 616
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->onCancel()V

    return v2

    .line 609
    :cond_8
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->onMove(Landroid/view/MotionEvent;)V

    .line 610
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchArea:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;->OUT_OF_BOUNDS:Lcom/isseiaoki/simplecropview/CropImageView$TouchArea;

    if-eq p1, v0, :cond_9

    .line 611
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_9
    return v2

    .line 619
    :cond_a
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 620
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->onUp(Landroid/view/MotionEvent;)V

    return v2

    .line 606
    :cond_b
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->onDown(Landroid/view/MotionEvent;)V

    return v2
.end method

.method public rotateImage(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;)V
    .locals 1

    .line 1633
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimationDurationMillis:I

    invoke-virtual {p0, p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->rotateImage(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;I)V

    return-void
.end method

.method public rotateImage(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;I)V
    .locals 9

    .line 1586
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsRotating:Z

    if-eqz v0, :cond_0

    .line 1587
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getAnimator()Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    move-result-object v0

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;->cancelAnimation()V

    .line 1590
    :cond_0
    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    .line 1591
    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;->getValue()I

    move-result p1

    int-to-float p1, p1

    add-float v7, v3, p1

    sub-float v4, v7, v3

    .line 1593
    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    .line 1594
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewWidth:I

    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewHeight:I

    invoke-direct {p0, p1, v0, v7}, Lcom/isseiaoki/simplecropview/CropImageView;->calcScale(IIF)F

    move-result v8

    .line 1596
    iget-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimationEnabled:Z

    if-eqz p1, :cond_1

    sub-float v6, v8, v5

    .line 1598
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getAnimator()Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    move-result-object p1

    .line 1599
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$8;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/isseiaoki/simplecropview/CropImageView$8;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;FFFFFF)V

    invoke-interface {p1, v0}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;->addAnimatorListener(Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;)V

    int-to-long v0, p2

    .line 1619
    invoke-interface {p1, v0, v1}, Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;->startAnimation(J)V

    goto :goto_0

    :cond_1
    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr v7, p1

    .line 1621
    iput v7, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAngle:F

    .line 1622
    iput v8, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mScale:F

    .line 1623
    iget p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewWidth:I

    iget p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mViewHeight:I

    invoke-direct {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->setupLayout(II)V

    :goto_0
    return-void
.end method

.method public save(Landroid/graphics/Bitmap;)Lcom/isseiaoki/simplecropview/SaveRequest;
    .locals 1

    .line 1882
    new-instance v0, Lcom/isseiaoki/simplecropview/SaveRequest;

    invoke-direct {v0, p0, p1}, Lcom/isseiaoki/simplecropview/SaveRequest;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public saveAsSingle(Landroid/graphics/Bitmap;Landroid/net/Uri;)Lio/reactivex/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Landroid/net/Uri;",
            ")",
            "Lio/reactivex/Single<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1858
    new-instance v0, Lcom/isseiaoki/simplecropview/CropImageView$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView$17;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    invoke-static {v0}, Lio/reactivex/Single;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/isseiaoki/simplecropview/CropImageView$16;

    invoke-direct {p2, p0}, Lcom/isseiaoki/simplecropview/CropImageView$16;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;)V

    .line 1863
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->doOnSubscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/Single;

    move-result-object p1

    new-instance p2, Lcom/isseiaoki/simplecropview/CropImageView$15;

    invoke-direct {p2, p0}, Lcom/isseiaoki/simplecropview/CropImageView$15;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;)V

    .line 1867
    invoke-virtual {p1, p2}, Lio/reactivex/Single;->doFinally(Lio/reactivex/functions/Action;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public saveAsync(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/isseiaoki/simplecropview/callback/SaveCallback;)V
    .locals 2

    .line 1828
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/isseiaoki/simplecropview/CropImageView$14;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isseiaoki/simplecropview/CropImageView$14;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/SaveCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0

    .line 2190
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimationDurationMillis:I

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0

    .line 2181
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsAnimationEnabled:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 2042
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mBackgroundColor:I

    .line 2043
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setCompressFormat(Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    .line 2266
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public setCompressQuality(I)V
    .locals 0

    .line 2275
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCompressQuality:I

    return-void
.end method

.method public setCropEnabled(Z)V
    .locals 0

    .line 2152
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsCropEnabled:Z

    .line 2153
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setCropMode(Lcom/isseiaoki/simplecropview/CropImageView$CropMode;)V
    .locals 1

    .line 1969
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimationDurationMillis:I

    invoke-virtual {p0, p1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->setCropMode(Lcom/isseiaoki/simplecropview/CropImageView$CropMode;I)V

    return-void
.end method

.method public setCropMode(Lcom/isseiaoki/simplecropview/CropImageView$CropMode;I)V
    .locals 1

    .line 1955
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CUSTOM:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 1956
    invoke-virtual {p0, p1, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->setCustomRatio(II)V

    goto :goto_0

    .line 1958
    :cond_0
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 1959
    invoke-direct {p0, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->recalculateFrameRect(I)V

    :goto_0
    return-void
.end method

.method public setCustomRatio(II)V
    .locals 1

    .line 1993
    iget v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimationDurationMillis:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->setCustomRatio(III)V

    return-void
.end method

.method public setCustomRatio(III)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1981
    :cond_0
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$CropMode;->CUSTOM:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCropMode:Lcom/isseiaoki/simplecropview/CropImageView$CropMode;

    .line 1982
    new-instance v0, Landroid/graphics/PointF;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mCustomRatio:Landroid/graphics/PointF;

    .line 1983
    invoke-direct {p0, p3}, Lcom/isseiaoki/simplecropview/CropImageView;->recalculateFrameRect(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    .line 2211
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsDebug:Z

    const/4 p1, 0x1

    .line 2212
    sput-boolean p1, Lcom/isseiaoki/simplecropview/util/Logger;->enabled:Z

    .line 2213
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 2162
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 2163
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsEnabled:Z

    return-void
.end method

.method public setFrameColor(I)V
    .locals 0

    .line 2012
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameColor:I

    .line 2013
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setFrameStrokeWeightInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 2132
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mFrameStrokeWeight:F

    .line 2133
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setGuideColor(I)V
    .locals 0

    .line 2032
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideColor:I

    .line 2033
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setGuideShowMode(Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;)V
    .locals 1

    .line 2093
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 2094
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode:[I

    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2100
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    goto :goto_0

    .line 2096
    :cond_1
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowGuide:Z

    .line 2103
    :goto_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setGuideStrokeWeightInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 2142
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mGuideStrokeWeight:F

    .line 2143
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setHandleColor(I)V
    .locals 0

    .line 2022
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleColor:I

    .line 2023
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setHandleShadowEnabled(Z)V
    .locals 0

    .line 2284
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsHandleShadowEnabled:Z

    return-void
.end method

.method public setHandleShowMode(Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;)V
    .locals 1

    .line 2113
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleShowMode:Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;

    .line 2114
    sget-object v0, Lcom/isseiaoki/simplecropview/CropImageView$18;->$SwitchMap$com$isseiaoki$simplecropview$CropImageView$ShowMode:[I

    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView$ShowMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2120
    iput-boolean p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    goto :goto_0

    .line 2116
    :cond_1
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mShowHandle:Z

    .line 2123
    :goto_0
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setHandleSizeInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 2070
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mHandleSize:I

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1341
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 1362
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsInitialized:Z

    .line 1363
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->resetImageInfo()V

    .line 1364
    invoke-direct {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView;->setImageDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1350
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsInitialized:Z

    .line 1351
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->resetImageInfo()V

    .line 1352
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1353
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->updateLayout()V

    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    .line 1378
    iput-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mIsInitialized:Z

    .line 1379
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1380
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->updateLayout()V

    return-void
.end method

.method public setInitialFrameScale(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3c23d70a

    .line 2172
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->constrain(FFFF)F

    move-result p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInitialFrameScale:F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 2200
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x0

    .line 2201
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mAnimator:Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimator;

    .line 2202
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->setupAnimatorIfNeeded()V

    return-void
.end method

.method public setLoggingEnabled(Z)V
    .locals 0

    .line 2222
    sput-boolean p1, Lcom/isseiaoki/simplecropview/util/Logger;->enabled:Z

    return-void
.end method

.method public setMinFrameSizeInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 2052
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    return-void
.end method

.method public setMinFrameSizeInPx(I)V
    .locals 0

    int-to-float p1, p1

    .line 2061
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mMinFrameSize:F

    return-void
.end method

.method public setOutputHeight(I)V
    .locals 0

    .line 2243
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputHeight:I

    const/4 p1, 0x0

    .line 2244
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputWidth:I

    return-void
.end method

.method public setOutputMaxSize(II)V
    .locals 0

    .line 2256
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxWidth:I

    .line 2257
    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputMaxHeight:I

    return-void
.end method

.method public setOutputWidth(I)V
    .locals 0

    .line 2232
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputWidth:I

    const/4 p1, 0x0

    .line 2233
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOutputHeight:I

    return-void
.end method

.method public setOverlayColor(I)V
    .locals 0

    .line 2002
    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mOverlayColor:I

    .line 2003
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method

.method public setTouchPaddingInDp(I)V
    .locals 1

    int-to-float p1, p1

    .line 2083
    invoke-direct {p0}, Lcom/isseiaoki/simplecropview/CropImageView;->getDensity()F

    move-result v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mTouchPadding:I

    return-void
.end method

.method public startCrop(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/CropCallback;Lcom/isseiaoki/simplecropview/callback/SaveCallback;)V
    .locals 2

    .line 1705
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/isseiaoki/simplecropview/CropImageView$9;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/isseiaoki/simplecropview/CropImageView$9;-><init>(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/callback/CropCallback;Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/SaveCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public startLoad(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V
    .locals 0

    .line 1411
    invoke-virtual {p0, p1, p2}, Lcom/isseiaoki/simplecropview/CropImageView;->loadAsync(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V

    return-void
.end method
