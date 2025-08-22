.class public Lcn/highlight/lib_doodle/DoodleView;
.super Landroid/widget/FrameLayout;
.source "DoodleView.java"

# interfaces
.implements Lcn/highlight/lib_doodle/IDoodle;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/lib_doodle/DoodleView$ForegroundView;,
        Lcn/highlight/lib_doodle/DoodleView$BackgroundView;
    }
.end annotation


# static fields
.field public static final DEFAULT_SIZE:I = 0x6

.field private static final FLAG_DRAW_PENDINGS_TO_BACKGROUND:I = 0x4

.field private static final FLAG_REFRESH_BACKGROUND:I = 0x8

.field private static final FLAG_RESET_BACKGROUND:I = 0x2

.field public static final MAX_SCALE:F = 2.0f

.field public static final MIN_SCALE:F = 0.5f

.field public static final TAG:Ljava/lang/String; = "DoodleView"


# instance fields
.field private allRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/DoodleRecord;",
            ">;"
        }
    .end annotation
.end field

.field private isJustDrawOriginal:Z

.field private mBackgroundView:Lcn/highlight/lib_doodle/DoodleView$BackgroundView;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCenterHeight:I

.field private mCenterScale:F

.field private mCenterWidth:I

.field private mCentreTranX:F

.field private mCentreTranY:F

.field private mColor:Lcn/highlight/lib_doodle/IDoodleColor;

.field private mDefaultTouchDetector:Lcn/highlight/lib_doodle/IDoodleTouchDetector;

.field public mDoodleBitmap:Landroid/graphics/Bitmap;

.field private mDoodleBitmapCanvas:Landroid/graphics/Canvas;

.field private mDoodleBound:Landroid/graphics/RectF;

.field private mDoodleListener:Lcn/highlight/lib_doodle/IDoodleListener;

.field private mDoodleRotateDegree:I

.field private mDoodleSizeUnit:F

.field private mEnableOverview:Z

.field private mEnableZoomer:Z

.field private mFlags:I

.field private mForegroundView:Lcn/highlight/lib_doodle/DoodleView$ForegroundView;

.field private mIsDrawableOutside:Z

.field private mIsEditMode:Z

.field private mIsSaving:Z

.field private mIsScrollingDoodle:Z

.field private mItemStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mItemStackOnViewCanvas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLastZoomerY:F

.field private mMaxScale:F

.field private mMinScale:F

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private final mOptimizeDrawing:Z

.field private mPen:Lcn/highlight/lib_doodle/IDoodlePen;

.field private mPendingItemsDrawToBitmap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mReady:Z

.field private mRedoItemStack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateScale:F

.field private mRotateTranX:F

.field private mRotateTranY:F

.field private mScale:F

.field private mShape:Lcn/highlight/lib_doodle/IDoodleShape;

.field private mSize:F

.field private mTempPoint:Landroid/graphics/PointF;

.field private mTouchDetectorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/highlight/lib_doodle/IDoodlePen;",
            "Lcn/highlight/lib_doodle/IDoodleTouchDetector;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchEventMatrix:Landroid/graphics/Matrix;

.field private mTouchX:F

.field private mTouchY:F

.field private mTransX:F

.field private mTransY:F

.field private mZoomerHorizonX:I

.field private mZoomerPath:Landroid/graphics/Path;

.field private mZoomerRadius:F

.field private mZoomerScale:F

.field private mZoomerTouchPaint:Landroid/graphics/Paint;

.field private mZooomerPaint:Landroid/graphics/Paint;

.field private redoRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/DoodleRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcn/highlight/lib_doodle/IDoodleListener;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 146
    invoke-direct/range {v0 .. v5}, Lcn/highlight/lib_doodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;Lcn/highlight/lib_doodle/IDoodleTouchDetector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcn/highlight/lib_doodle/IDoodleListener;Lcn/highlight/lib_doodle/IDoodleTouchDetector;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 150
    invoke-direct/range {v0 .. v5}, Lcn/highlight/lib_doodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;Lcn/highlight/lib_doodle/IDoodleTouchDetector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 154
    invoke-direct/range {v0 .. v5}, Lcn/highlight/lib_doodle/DoodleView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;Lcn/highlight/lib_doodle/IDoodleTouchDetector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;Lcn/highlight/lib_doodle/IDoodleTouchDetector;)V
    .locals 4

    .line 170
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateScale:F

    .line 82
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    const/4 v1, 0x0

    .line 83
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    const/high16 v2, 0x3f000000    # 0.5f

    .line 84
    iput v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mMinScale:F

    const/high16 v2, 0x40000000    # 2.0f

    .line 85
    iput v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mMaxScale:F

    const/4 v2, 0x0

    .line 92
    iput-boolean v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsDrawableOutside:Z

    .line 93
    iput-boolean v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mReady:Z

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    .line 103
    iput-boolean v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mEnableZoomer:Z

    const/4 v3, 0x1

    .line 104
    iput-boolean v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mEnableOverview:Z

    .line 108
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerScale:F

    .line 111
    iput-boolean v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsScrollingDoodle:Z

    .line 113
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleSizeUnit:F

    .line 114
    iput v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    .line 121
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    .line 122
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    .line 124
    iput-boolean v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsEditMode:Z

    .line 125
    iput-boolean v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsSaving:Z

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStackOnViewCanvas:Ljava/util/List;

    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mPendingItemsDrawToBitmap:Ljava/util/List;

    .line 141
    iput v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mFlags:I

    .line 228
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchEventMatrix:Landroid/graphics/Matrix;

    .line 171
    invoke-virtual {p0, v2}, Lcn/highlight/lib_doodle/DoodleView;->setClipChildren(Z)V

    .line 173
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    .line 174
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    .line 178
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p2

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p2, v1, :cond_0

    const-string p2, "DoodleView"

    const-string v1, "the bitmap may contain alpha, which will cause eraser don\'t work well."

    .line 180
    invoke-static {p2, v1}, Lcn/forward/androids/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    iput-object p4, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleListener:Lcn/highlight/lib_doodle/IDoodleListener;

    .line 183
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleListener:Lcn/highlight/lib_doodle/IDoodleListener;

    if-eqz p2, :cond_1

    .line 188
    iput-boolean p3, p0, Lcn/highlight/lib_doodle/DoodleView;->mOptimizeDrawing:Z

    .line 190
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    .line 191
    new-instance p2, Lcn/highlight/lib_doodle/DoodleColor;

    const/high16 p3, -0x10000

    invoke-direct {p2, p3}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mColor:Lcn/highlight/lib_doodle/IDoodleColor;

    .line 193
    sget-object p2, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    .line 194
    sget-object p2, Lcn/highlight/lib_doodle/DoodleShape;->HAND_WRITE:Lcn/highlight/lib_doodle/DoodleShape;

    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mShape:Lcn/highlight/lib_doodle/IDoodleShape;

    .line 196
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    .line 197
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    const p3, -0x55000001

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 200
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 201
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 202
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getContext()Landroid/content/Context;

    move-result-object p3

    const/high16 p4, 0x41200000    # 10.0f

    invoke-static {p3, p4}, Lcn/forward/androids/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 204
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    .line 205
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 206
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 208
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 210
    iput-object p5, p0, Lcn/highlight/lib_doodle/DoodleView;->mDefaultTouchDetector:Lcn/highlight/lib_doodle/IDoodleTouchDetector;

    .line 212
    new-instance p2, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;

    invoke-direct {p2, p0, p1}, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;-><init>(Lcn/highlight/lib_doodle/DoodleView;Landroid/content/Context;)V

    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mForegroundView:Lcn/highlight/lib_doodle/DoodleView$ForegroundView;

    .line 213
    new-instance p2, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;

    invoke-direct {p2, p0, p1}, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;-><init>(Lcn/highlight/lib_doodle/DoodleView;Landroid/content/Context;)V

    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mBackgroundView:Lcn/highlight/lib_doodle/DoodleView$BackgroundView;

    .line 214
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mBackgroundView:Lcn/highlight/lib_doodle/DoodleView$BackgroundView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcn/highlight/lib_doodle/DoodleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mForegroundView:Lcn/highlight/lib_doodle/DoodleView$ForegroundView;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Lcn/highlight/lib_doodle/DoodleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 184
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "IDoodleListener is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 175
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Bitmap is null!!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcn/highlight/lib_doodle/DoodleView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mOptimizeDrawing:Z

    return p0
.end method

.method static synthetic access$100(Lcn/highlight/lib_doodle/DoodleView;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->refreshDoodleBitmap(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodleTouchDetector;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDefaultTouchDetector:Lcn/highlight/lib_doodle/IDoodleTouchDetector;

    return-object p0
.end method

.method static synthetic access$1100(Lcn/highlight/lib_doodle/DoodleView;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStackOnViewCanvas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/highlight/lib_doodle/DoodleView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsDrawableOutside:Z

    return p0
.end method

.method static synthetic access$1300(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodleShape;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mShape:Lcn/highlight/lib_doodle/IDoodleShape;

    return-object p0
.end method

.method static synthetic access$200(Lcn/highlight/lib_doodle/DoodleView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$300(Lcn/highlight/lib_doodle/DoodleView;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcn/highlight/lib_doodle/DoodleView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    return p0
.end method

.method static synthetic access$502(Lcn/highlight/lib_doodle/DoodleView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsSaving:Z

    return p1
.end method

.method static synthetic access$600(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodleListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleListener:Lcn/highlight/lib_doodle/IDoodleListener;

    return-object p0
.end method

.method static synthetic access$700(Lcn/highlight/lib_doodle/DoodleView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/highlight/lib_doodle/DoodleView;->isJustDrawOriginal:Z

    return p0
.end method

.method static synthetic access$800(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodlePen;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    return-object p0
.end method

.method static synthetic access$900(Lcn/highlight/lib_doodle/DoodleView;)Ljava/util/Map;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    return-object p0
.end method

.method private addFlag(I)V
    .locals 1

    .line 493
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mFlags:I

    return-void
.end method

.method private addItemInner(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1480
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getDoodle()Lcn/highlight/lib_doodle/IDoodle;

    move-result-object v0

    if-ne p0, v0, :cond_1

    .line 1483
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1488
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->onAdd()V

    .line 1490
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mPendingItemsDrawToBitmap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x4

    .line 1491
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 1493
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void

    .line 1484
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "the item has been added"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1481
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "the object Doodle is illegal"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1477
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private clearFlag(I)V
    .locals 1

    .line 497
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mFlags:I

    return-void
.end method

.method private drawToDoodleBitmap(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;)V"
        }
    .end annotation

    .line 609
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mOptimizeDrawing:Z

    if-nez v0, :cond_0

    return-void

    .line 613
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 614
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmapCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hasFlag(I)Z
    .locals 1

    .line 489
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mFlags:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private init()V
    .locals 6

    .line 262
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v3, v0, v2

    .line 264
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float v4, v1, v2

    .line 265
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    div-float v0, v2, v3

    .line 267
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterScale:F

    .line 268
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterWidth:I

    .line 269
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterScale:F

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterHeight:I

    goto :goto_0

    :cond_0
    div-float v1, v2, v4

    .line 271
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterScale:F

    .line 272
    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterScale:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterWidth:I

    .line 273
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterHeight:I

    .line 276
    :goto_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCentreTranX:F

    .line 277
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v0

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterHeight:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCentreTranY:F

    .line 279
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerRadius:F

    .line 280
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerPath:Landroid/graphics/Path;

    .line 281
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerPath:Landroid/graphics/Path;

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v1, v1, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 282
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerRadius:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerHorizonX:I

    .line 284
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcn/forward/androids/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleSizeUnit:F

    .line 286
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mReady:Z

    if-nez v0, :cond_1

    const/high16 v0, 0x40c00000    # 6.0f

    .line 287
    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleSizeUnit:F

    mul-float v1, v1, v0

    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mSize:F

    :cond_1
    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    .line 291
    iput v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    .line 293
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodleView;->initDoodleBitmap()V

    .line 295
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodleView;->refreshWithBackground()V

    return-void
.end method

.method private initDoodleBitmap()V
    .locals 3

    .line 299
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mOptimizeDrawing:Z

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 305
    :cond_1
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    .line 306
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmapCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method private refreshDoodleBitmap(Z)V
    .locals 2

    .line 619
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mOptimizeDrawing:Z

    if-nez v0, :cond_0

    return-void

    .line 623
    :cond_0
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodleView;->initDoodleBitmap()V

    if-eqz p1, :cond_1

    .line 626
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    goto :goto_0

    .line 628
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 629
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStackOnViewCanvas:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 631
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 632
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmapCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private refreshWithBackground()V
    .locals 1

    const/16 v0, 0x8

    .line 637
    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 638
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method


# virtual methods
.method public addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 0

    .line 1471
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addItemInner(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 1472
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method public addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1515
    :cond_0
    new-instance v0, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-direct {v0}, Lcn/highlight/lib_doodle/DoodleRecord;-><init>()V

    .line 1516
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleRecord;->setIdentity(I)V

    .line 1517
    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setType(I)V

    .line 1518
    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleRecord;->setDoodleItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 1519
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getSize()F

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmSize(F)V

    .line 1520
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleColor;->getColor()I

    move-result p2

    :goto_0
    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmColor(I)V

    .line 1521
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmLocationX(F)V

    .line 1522
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getLocation()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmLocationY(F)V

    .line 1523
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPivotX()F

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmPivotX(F)V

    .line 1524
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPivotY()F

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmPivotY(F)V

    .line 1525
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getItemRotate()F

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmRotate(F)V

    .line 1526
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->isNeedClipOutside()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmIsNeedClipOutside(Z)V

    .line 1527
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getScale()F

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmScale(F)V

    .line 1528
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p2

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p2, v1, :cond_2

    const/4 p2, 0x0

    .line 1529
    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmIDoodlePen(I)V

    .line 1530
    check-cast p1, Lcn/highlight/lib_doodle/DoodleBg;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleBg;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 1531
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleBg;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleRecord;->setmText0(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1532
    :cond_2
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p2

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p2, v1, :cond_3

    const/4 p2, 0x1

    .line 1533
    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmIDoodlePen(I)V

    .line 1534
    check-cast p1, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleText;->getText0()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmText0(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleText;->getText1()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmText1(Ljava/lang/String;)V

    .line 1536
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleText;->getTypeface()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmTextStyle(Ljava/lang/String;)V

    .line 1537
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleText;->getBgColor()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmTextBgColor(I)V

    .line 1538
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleText;->getBold()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmTextBold(I)V

    .line 1539
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleText;->getItalic()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmTextItalic(I)V

    .line 1540
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleText;->getUnderline()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleRecord;->setmTextUnderline(I)V

    goto/16 :goto_1

    .line 1541
    :cond_3
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p2

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p2, v1, :cond_4

    const/4 p2, 0x2

    .line 1542
    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmIDoodlePen(I)V

    .line 1543
    check-cast p1, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleRecord;->setmBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 1544
    :cond_4
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p2

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p2, v1, :cond_5

    const/4 p2, 0x3

    .line 1545
    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmIDoodlePen(I)V

    .line 1546
    check-cast p1, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleQRCode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 1547
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleQRCode;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmText1(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleQRCode;->getBgColor()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setBgColor(I)V

    .line 1549
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleQRCode;->getFgColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleRecord;->setFgColor(I)V

    goto :goto_1

    .line 1550
    :cond_5
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p2

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p2, v1, :cond_6

    const/4 p2, 0x4

    .line 1551
    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmIDoodlePen(I)V

    .line 1552
    check-cast p1, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 1553
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmText1(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->getBgColor()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setBgColor(I)V

    .line 1555
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->getFgColor()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleRecord;->setFgColor(I)V

    goto :goto_1

    .line 1556
    :cond_6
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object p2

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne p2, v1, :cond_7

    const/4 p2, 0x5

    .line 1557
    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmIDoodlePen(I)V

    .line 1558
    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setmBitmap(Landroid/graphics/Bitmap;)V

    .line 1559
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getFgColor()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setFgColor(I)V

    .line 1560
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getShape1()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setShape1(I)V

    .line 1561
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getWidth()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setWidth(I)V

    .line 1562
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getHeight()I

    move-result p2

    invoke-virtual {v0, p2}, Lcn/highlight/lib_doodle/DoodleRecord;->setHeight(I)V

    .line 1563
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getEffects()I

    move-result p1

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleRecord;->setEffects(I)V

    .line 1565
    :cond_7
    :goto_1
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindTouchDetector(Lcn/highlight/lib_doodle/IDoodlePen;Lcn/highlight/lib_doodle/IDoodleTouchDetector;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 566
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bottomItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1390
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1391
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 1393
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 1395
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void

    .line 1387
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 816
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 817
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 818
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 819
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStackOnViewCanvas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 820
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mPendingItemsDrawToBitmap:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 822
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 823
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 824
    invoke-interface {v2}, Lcn/highlight/lib_doodle/IDoodleItem;->onRemove()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 827
    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 829
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public clearRedoRecord()V
    .locals 1

    .line 1087
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 378
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 382
    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->hasFlag(I)Z

    move-result v1

    const-string v2, "DoodleView"

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    const-string v1, "FLAG_RESET_BACKGROUND"

    .line 383
    invoke-static {v2, v1}, Lcn/forward/androids/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->clearFlag(I)V

    .line 385
    invoke-direct {p0, v3}, Lcn/highlight/lib_doodle/DoodleView;->clearFlag(I)V

    .line 386
    invoke-direct {p0, v4}, Lcn/highlight/lib_doodle/DoodleView;->clearFlag(I)V

    const/4 v0, 0x0

    .line 387
    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->refreshDoodleBitmap(Z)V

    .line 388
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mPendingItemsDrawToBitmap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 389
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mBackgroundView:Lcn/highlight/lib_doodle/DoodleView$BackgroundView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->invalidate()V

    goto :goto_0

    .line 390
    :cond_1
    invoke-direct {p0, v3}, Lcn/highlight/lib_doodle/DoodleView;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FLAG_DRAW_PENDINGS_TO_BACKGROUND"

    .line 391
    invoke-static {v2, v0}, Lcn/forward/androids/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, v3}, Lcn/highlight/lib_doodle/DoodleView;->clearFlag(I)V

    .line 393
    invoke-direct {p0, v4}, Lcn/highlight/lib_doodle/DoodleView;->clearFlag(I)V

    .line 394
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mPendingItemsDrawToBitmap:Ljava/util/List;

    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->drawToDoodleBitmap(Ljava/util/List;)V

    .line 395
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mPendingItemsDrawToBitmap:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 396
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mBackgroundView:Lcn/highlight/lib_doodle/DoodleView$BackgroundView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->invalidate()V

    goto :goto_0

    .line 397
    :cond_2
    invoke-direct {p0, v4}, Lcn/highlight/lib_doodle/DoodleView;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "FLAG_REFRESH_BACKGROUND"

    .line 398
    invoke-static {v2, v0}, Lcn/forward/androids/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, v4}, Lcn/highlight/lib_doodle/DoodleView;->clearFlag(I)V

    .line 400
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mBackgroundView:Lcn/highlight/lib_doodle/DoodleView$BackgroundView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->invalidate()V

    .line 403
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 404
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 405
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 413
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsScrollingDoodle:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mEnableZoomer:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 415
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 417
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getUnitSize()F

    move-result v0

    .line 418
    iget v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchY:F

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4

    .line 419
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerRadius:F

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mLastZoomerY:F

    goto :goto_1

    .line 420
    :cond_4
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v5, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerRadius:F

    mul-float v5, v5, v4

    sub-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 421
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mLastZoomerY:F

    .line 423
    :cond_5
    :goto_1
    iget v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerHorizonX:I

    int-to-float v2, v2

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mLastZoomerY:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 424
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    const/high16 v2, -0x1000000

    .line 425
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 427
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 428
    iget v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerScale:F

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    div-float/2addr v2, v3

    .line 429
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 430
    iget v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchX:F

    neg-float v3, v3

    iget v5, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerRadius:F

    div-float v6, v5, v2

    add-float/2addr v3, v6

    iget v6, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchY:F

    neg-float v6, v6

    div-float/2addr v5, v2

    add-float/2addr v6, v5

    invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 432
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 434
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranX()F

    move-result v2

    .line 435
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranY()F

    move-result v3

    .line 437
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 438
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v2

    .line 439
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 440
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 441
    iget v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mSize:F

    div-float v3, v2, v4

    sub-float/2addr v3, v0

    sub-float v0, v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v5

    if-gtz v6, :cond_6

    const/high16 v0, 0x3f000000    # 0.5f

    .line 446
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v3, 0x3f800000    # 1.0f

    .line 448
    :cond_6
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x56000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchX:F

    invoke-virtual {p0, v2}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v2

    iget v7, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchY:F

    invoke-virtual {p0, v7}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v7

    iget-object v8, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2, v7, v3, v8}, Lcn/highlight/lib_doodle/DrawUtil;->drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 450
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    const v7, -0x55000001

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    iget v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchX:F

    invoke-virtual {p0, v2}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v2

    iget v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchY:F

    invoke-virtual {p0, v3}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v3

    iget-object v8, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2, v3, v0, v8}, Lcn/highlight/lib_doodle/DrawUtil;->drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 455
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerRadius:F

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mZooomerPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v0, v0, v2}, Lcn/highlight/lib_doodle/DrawUtil;->drawCircle(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V

    .line 457
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 461
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerHorizonX:I

    int-to-float v0, v0

    iget v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mLastZoomerY:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 462
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerRadius:F

    div-float/2addr v0, v4

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 463
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    div-float v8, v5, v0

    neg-float v0, v8

    .line 465
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v8

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const v0, -0x77777778

    .line 466
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 468
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    .line 469
    iget v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    .line 470
    iget v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    .line 471
    iput v5, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    .line 472
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    .line 473
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 474
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    .line 475
    iput v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    .line 476
    iput v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    .line 477
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 478
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 479
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 480
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcn/highlight/lib_doodle/DrawUtil;->drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 481
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 482
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float v3, v0, v8

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v4, v0, v8

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerTouchPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v2, v8

    invoke-static/range {v0 .. v5}, Lcn/highlight/lib_doodle/DrawUtil;->drawRect(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    .line 483
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_7
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 233
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 238
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchX:F

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchY:F

    .line 242
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 246
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchEventMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 247
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchEventMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 248
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchEventMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 249
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mForegroundView:Lcn/highlight/lib_doodle/DoodleView$ForegroundView;

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return v0
.end method

.method public downItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 1404
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 1406
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    .line 1414
    :cond_1
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sub-int/2addr v0, v1

    .line 1418
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 1419
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 1420
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    :cond_2
    :goto_0
    return-void

    .line 1401
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public enableOverview(Z)V
    .locals 0

    .line 1297
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mEnableOverview:Z

    return-void
.end method

.method public enableZoomer(Z)V
    .locals 0

    .line 1281
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mEnableZoomer:Z

    return-void
.end method

.method public getAllItem()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation

    .line 1585
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllItem(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation

    .line 1590
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    return-object p1
.end method

.method public getAllRedoItem()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation

    .line 1600
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllRedoItem(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;"
        }
    .end annotation

    .line 1604
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    return-object p1
.end method

.method public getAllScale()F
    .locals 2

    .line 501
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterScale:F

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateScale:F

    mul-float v0, v0, v1

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    mul-float v0, v0, v1

    return v0
.end method

.method public getAllTranX()F
    .locals 2

    .line 505
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCentreTranX:F

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getAllTranY()F
    .locals 2

    .line 509
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCentreTranY:F

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranY:F

    add-float/2addr v0, v1

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1609
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getCenterHeight()I
    .locals 1

    .line 1622
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterHeight:I

    return v0
.end method

.method public getCenterScale()F
    .locals 1

    .line 1626
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterScale:F

    return v0
.end method

.method public getCenterWidth()I
    .locals 1

    .line 1618
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterWidth:I

    return v0
.end method

.method public getCentreTranX()F
    .locals 1

    .line 1630
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCentreTranX:F

    return v0
.end method

.method public getCentreTranY()F
    .locals 1

    .line 1634
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mCentreTranY:F

    return v0
.end method

.method public getColor()Lcn/highlight/lib_doodle/IDoodleColor;
    .locals 1

    .line 1120
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mColor:Lcn/highlight/lib_doodle/IDoodleColor;

    return-object v0
.end method

.method public getDefaultTouchDetector()Lcn/highlight/lib_doodle/IDoodleTouchDetector;
    .locals 1

    .line 605
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDefaultTouchDetector:Lcn/highlight/lib_doodle/IDoodleTouchDetector;

    return-object v0
.end method

.method public getDefaultTouchDetector(Lcn/highlight/lib_doodle/IDoodlePen;)Lcn/highlight/lib_doodle/IDoodleTouchDetector;
    .locals 1

    .line 575
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/IDoodleTouchDetector;

    return-object p1
.end method

.method public getDoodleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1614
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDoodleBound()Landroid/graphics/RectF;
    .locals 26

    move-object/from16 v0, p0

    .line 315
    iget v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mCenterWidth:I

    int-to-float v1, v1

    iget v2, v0, Lcn/highlight/lib_doodle/DoodleView;->mRotateScale:F

    mul-float v1, v1, v2

    iget v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    mul-float v1, v1, v3

    .line 316
    iget v4, v0, Lcn/highlight/lib_doodle/DoodleView;->mCenterHeight:I

    int-to-float v4, v4

    mul-float v4, v4, v2

    mul-float v2, v4, v3

    .line 317
    iget v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    rem-int/lit8 v4, v3, 0x5a

    const/4 v5, 0x0

    if-nez v4, :cond_4

    if-nez v3, :cond_0

    .line 319
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 320
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_0
    const/16 v4, 0x5a

    if-ne v3, v4, :cond_1

    .line 322
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 323
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_0

    :cond_1
    const/16 v4, 0xb4

    if-ne v3, v4, :cond_2

    .line 328
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 329
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    :cond_2
    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3

    .line 331
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget-object v4, v0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 332
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v5}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    :goto_0
    move/from16 v25, v2

    move v2, v1

    move/from16 v1, v25

    .line 337
    :cond_3
    :goto_1
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v4, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v4, v4

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-static/range {v3 .. v8}, Lcn/highlight/lib_doodle/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 338
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    iget-object v4, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v1

    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_2

    .line 342
    :cond_4
    invoke-virtual {v0, v5}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result v9

    .line 343
    invoke-virtual {v0, v5}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v10

    .line 345
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result v13

    .line 346
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v14

    .line 348
    invoke-virtual {v0, v5}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result v17

    .line 349
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v18

    .line 351
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result v21

    .line 352
    invoke-virtual {v0, v5}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v22

    .line 355
    iget-object v7, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v8, v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v11, v1

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v12, v1

    invoke-static/range {v7 .. v12}, Lcn/highlight/lib_doodle/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 356
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 357
    iget-object v2, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 358
    iget-object v11, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v12, v3

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v15, v3

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move/from16 v16, v3

    invoke-static/range {v11 .. v16}, Lcn/highlight/lib_doodle/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 359
    iget-object v3, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    .line 360
    iget-object v4, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    .line 361
    iget-object v15, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v5, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move/from16 v16, v5

    move/from16 v19, v6

    move/from16 v20, v7

    invoke-static/range {v15 .. v20}, Lcn/highlight/lib_doodle/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 362
    iget-object v5, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    .line 363
    iget-object v6, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 364
    iget-object v7, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v8, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    move-object/from16 v19, v7

    move/from16 v20, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-static/range {v19 .. v24}, Lcn/highlight/lib_doodle/DrawUtil;->rotatePoint(Landroid/graphics/PointF;FFFFF)Landroid/graphics/PointF;

    .line 365
    iget-object v7, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 366
    iget-object v8, v0, Lcn/highlight/lib_doodle/DoodleView;->mTempPoint:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    .line 368
    iget-object v9, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->left:F

    .line 369
    iget-object v9, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v9, Landroid/graphics/RectF;->top:F

    .line 370
    iget-object v9, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v5, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v9, Landroid/graphics/RectF;->right:F

    .line 371
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 373
    :goto_2
    iget-object v1, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBound:Landroid/graphics/RectF;

    return-object v1
.end method

.method public getDoodleMaxScale()F
    .locals 1

    .line 1461
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mMaxScale:F

    return v0
.end method

.method public getDoodleMinScale()F
    .locals 1

    .line 1450
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mMinScale:F

    return v0
.end method

.method public getDoodleRotation()I
    .locals 1

    .line 661
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    return v0
.end method

.method public getDoodleScale()F
    .locals 1

    .line 1153
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    return v0
.end method

.method public getDoodleTranslationX()F
    .locals 1

    .line 1215
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    return v0
.end method

.method public getDoodleTranslationY()F
    .locals 1

    .line 1226
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1580
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemRecord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/DoodleRecord;",
            ">;"
        }
    .end annotation

    .line 1570
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    return-object v0
.end method

.method public getItemRedoRecord()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/DoodleRecord;",
            ">;"
        }
    .end annotation

    .line 1575
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    return-object v0
.end method

.method public getPen()Lcn/highlight/lib_doodle/IDoodlePen;
    .locals 1

    .line 1173
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    return-object v0
.end method

.method public getRedoItemCount()I
    .locals 1

    .line 1595
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRotateScale()F
    .locals 1

    .line 1638
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateScale:F

    return v0
.end method

.method public getRotateTranX()F
    .locals 1

    .line 1642
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranX:F

    return v0
.end method

.method public getRotateTranY()F
    .locals 1

    .line 1646
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranY:F

    return v0
.end method

.method public getShape()Lcn/highlight/lib_doodle/IDoodleShape;
    .locals 1

    .line 1192
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mShape:Lcn/highlight/lib_doodle/IDoodleShape;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .line 1238
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mSize:F

    return v0
.end method

.method public getUnitSize()F
    .locals 1

    .line 1466
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleSizeUnit:F

    return v0
.end method

.method public getZoomerScale()F
    .locals 1

    .line 1272
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerScale:F

    return v0
.end method

.method public invalidate()V
    .locals 0

    .line 645
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public isDown(Lcn/highlight/lib_doodle/IDoodleItem;)Z
    .locals 3

    if-eqz p1, :cond_3

    .line 1430
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_1

    .line 1432
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    return v0

    .line 1427
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isDrawableOutside()Z
    .locals 1

    .line 1256
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsDrawableOutside:Z

    return v0
.end method

.method public isEditMode()Z
    .locals 1

    .line 1655
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsEditMode:Z

    return v0
.end method

.method public isEnableOverview()Z
    .locals 1

    .line 1306
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mEnableOverview:Z

    return v0
.end method

.method public isEnableZoomer()Z
    .locals 1

    .line 1288
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mEnableZoomer:Z

    return v0
.end method

.method public isOptimizeDrawing()Z
    .locals 1

    .line 714
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mOptimizeDrawing:Z

    return v0
.end method

.method public isScrollingDoodle()Z
    .locals 1

    .line 1315
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsScrollingDoodle:Z

    return v0
.end method

.method public isShowOriginal()Z
    .locals 1

    .line 1104
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->isJustDrawOriginal:Z

    return v0
.end method

.method public isUp(Lcn/highlight/lib_doodle/IDoodleItem;)Z
    .locals 4

    if-eqz p1, :cond_3

    .line 1372
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_1

    .line 1374
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 1378
    :goto_1
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    return v0

    .line 1369
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public markItemToOptimizeDrawing(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 1

    .line 724
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mOptimizeDrawing:Z

    if-nez v0, :cond_0

    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStackOnViewCanvas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 732
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStackOnViewCanvas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 735
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void

    .line 729
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "The item has been added"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyItemFinishedDrawing(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 1

    .line 747
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mOptimizeDrawing:Z

    if-nez v0, :cond_0

    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStackOnViewCanvas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 753
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    goto :goto_0

    .line 755
    :cond_1
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 758
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 221
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodleView;->init()V

    .line 222
    iget-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mReady:Z

    if-nez p1, :cond_0

    .line 223
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleListener:Lcn/highlight/lib_doodle/IDoodleListener;

    invoke-interface {p1, p0}, Lcn/highlight/lib_doodle/IDoodleListener;->onReady(Lcn/highlight/lib_doodle/IDoodle;)V

    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mReady:Z

    :cond_0
    return-void
.end method

.method public redo(I)Z
    .locals 3

    .line 848
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 852
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 853
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/IDoodleItem;

    invoke-direct {p0, v2}, Lcn/highlight/lib_doodle/DoodleView;->addItemInner(Lcn/highlight/lib_doodle/IDoodleItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public redoRecord()V
    .locals 11

    .line 988
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 989
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 991
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleRecord;

    .line 993
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getType()I

    move-result v1

    if-nez v1, :cond_5

    .line 996
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v1

    .line 997
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_0

    .line 998
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setText0(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setText1(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/highlight/lib_doodle/DoodleText;->setTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextBgColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setBgColor(I)V

    .line 1002
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextBold()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setBold(I)V

    .line 1003
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextItalic()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setItalic(I)V

    .line 1004
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextUnderline()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setUnderline(I)V

    goto/16 :goto_0

    .line 1005
    :cond_0
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_1

    .line 1006
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1007
    :cond_1
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_2

    .line 1008
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getBgColor()I

    move-result v5

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/highlight/lib_doodle/DoodleQRCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    goto :goto_0

    .line 1009
    :cond_2
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_3

    .line 1010
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getBgColor()I

    move-result v5

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/highlight/lib_doodle/DoodleBarCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    goto :goto_0

    .line 1011
    :cond_3
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_4

    .line 1012
    move-object v4, v1

    check-cast v4, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v6

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getShape1()I

    move-result v7

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getWidth()I

    move-result v8

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getHeight()I

    move-result v9

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getEffects()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Lcn/highlight/lib_doodle/DoodleShape1;->setBitmap(Landroid/graphics/Bitmap;IIIII)V

    .line 1014
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmSize()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setSize(F)V

    .line 1015
    new-instance v2, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmColor()I

    move-result v3

    invoke-direct {v2, v3}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 1016
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmLocationX()F

    move-result v2

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmLocationY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcn/highlight/lib_doodle/IDoodleItem;->setLocation(FF)V

    .line 1017
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmPivotX()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setPivotX(F)V

    .line 1018
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmPivotY()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setPivotY(F)V

    .line 1019
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmRotate()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setItemRotate(F)V

    .line 1020
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->ismIsNeedClipOutside()Z

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setNeedClipOutside(Z)V

    .line 1021
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmScale()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setScale(F)V

    .line 1022
    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleView;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto/16 :goto_4

    :cond_5
    if-ne v1, v2, :cond_d

    .line 1024
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getIdentity()I

    move-result v1

    .line 1026
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v3

    invoke-interface {v3}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v3

    sget-object v4, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v3, v4, :cond_6

    .line 1027
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBg;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcn/highlight/lib_doodle/DoodleBg;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1028
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBg;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleBg;->setText(Ljava/lang/String;)V

    .line 1029
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1030
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 1034
    :cond_6
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 1035
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_8

    .line 1036
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getIdentity()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 1037
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleView;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1042
    :cond_8
    :goto_2
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v1

    .line 1043
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_9

    .line 1044
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setText0(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setText1(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/highlight/lib_doodle/DoodleText;->setTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextBgColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setBgColor(I)V

    .line 1048
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextBold()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setBold(I)V

    .line 1049
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextItalic()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setItalic(I)V

    .line 1050
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextUnderline()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setUnderline(I)V

    goto :goto_3

    .line 1051
    :cond_9
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_a

    .line 1052
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/highlight/lib_doodle/DoodleBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 1053
    :cond_a
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_b

    .line 1054
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getBgColor()I

    move-result v5

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/highlight/lib_doodle/DoodleQRCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    goto :goto_3

    .line 1055
    :cond_b
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v3, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v3, :cond_c

    .line 1056
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getBgColor()I

    move-result v5

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/highlight/lib_doodle/DoodleBarCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 1058
    :cond_c
    :goto_3
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmSize()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setSize(F)V

    .line 1059
    new-instance v2, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmColor()I

    move-result v3

    invoke-direct {v2, v3}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 1060
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmLocationX()F

    move-result v2

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmLocationY()F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcn/highlight/lib_doodle/IDoodleItem;->setLocation(FF)V

    .line 1061
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmPivotX()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setPivotX(F)V

    .line 1062
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmPivotY()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setPivotY(F)V

    .line 1063
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmRotate()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setItemRotate(F)V

    .line 1064
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->ismIsNeedClipOutside()Z

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setNeedClipOutside(Z)V

    .line 1065
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmScale()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setScale(F)V

    .line 1066
    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleView;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto :goto_4

    :cond_d
    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 1069
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleView;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto :goto_4

    :cond_e
    const/4 v2, 0x3

    if-ne v1, v2, :cond_f

    .line 1072
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleView;->upItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto :goto_4

    :cond_f
    const/4 v2, 0x4

    if-ne v1, v2, :cond_10

    .line 1075
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleView;->downItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 1077
    :cond_10
    :goto_4
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1078
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_11
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 650
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 651
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 652
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mForegroundView:Lcn/highlight/lib_doodle/DoodleView$ForegroundView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->invalidate()V

    goto :goto_0

    .line 654
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->postInvalidate()V

    .line 655
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mForegroundView:Lcn/highlight/lib_doodle/DoodleView$ForegroundView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->postInvalidate()V

    :goto_0
    return-void
.end method

.method public removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 1

    .line 1498
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1502
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStackOnViewCanvas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1503
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mPendingItemsDrawToBitmap:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1504
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->onRemove()V

    const/4 p1, 0x2

    .line 1506
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 1508
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public removeTouchDetector(Lcn/highlight/lib_doodle/IDoodlePen;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mTouchDetectorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public replace(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/lib_doodle/IDoodleItem;",
            ">;)V"
        }
    .end annotation

    .line 859
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 860
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 862
    :goto_1
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 863
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/IDoodleItem;

    invoke-direct {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->addItemInner(Lcn/highlight/lib_doodle/IDoodleItem;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public save()V
    .locals 2

    .line 767
    iget-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsSaving:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 771
    iput-boolean v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsSaving:Z

    .line 773
    new-instance v0, Lcn/highlight/lib_doodle/DoodleView$1;

    invoke-direct {v0, p0}, Lcn/highlight/lib_doodle/DoodleView$1;-><init>(Lcn/highlight/lib_doodle/DoodleView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 808
    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mColor:Lcn/highlight/lib_doodle/IDoodleColor;

    .line 1115
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public setDefaultTouchDetector(Lcn/highlight/lib_doodle/IDoodleTouchDetector;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDefaultTouchDetector:Lcn/highlight/lib_doodle/IDoodleTouchDetector;

    return-void
.end method

.method public setDoodleMaxScale(F)V
    .locals 1

    .line 1455
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mMaxScale:F

    .line 1456
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcn/highlight/lib_doodle/DoodleView;->setDoodleScale(FFF)V

    return-void
.end method

.method public setDoodleMinScale(F)V
    .locals 1

    .line 1444
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mMinScale:F

    .line 1445
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcn/highlight/lib_doodle/DoodleView;->setDoodleScale(FFF)V

    return-void
.end method

.method public setDoodleRotation(I)V
    .locals 5

    .line 672
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    .line 673
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    .line 674
    iget p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    if-gez p1, :cond_0

    add-int/lit16 p1, p1, 0x168

    .line 675
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleRotateDegree:I

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getDoodleBound()Landroid/graphics/RectF;

    move-result-object p1

    .line 680
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 681
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    .line 682
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    int-to-float p1, p1

    mul-float p1, p1, v1

    .line 683
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p1, v2

    cmpl-float v2, v0, p1

    if-lez v2, :cond_1

    div-float p1, v1, v0

    goto :goto_0

    :cond_1
    div-float p1, v1, p1

    .line 692
    :goto_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 693
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    .line 695
    iput v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    iput v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    .line 696
    iput v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranY:F

    iput v3, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranX:F

    .line 697
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    .line 698
    iput v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateScale:F

    int-to-float v0, v0

    .line 699
    invoke-virtual {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result v1

    int-to-float v2, v2

    .line 700
    invoke-virtual {p0, v2}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v3

    .line 701
    iget v4, p0, Lcn/highlight/lib_doodle/DoodleView;->mCenterScale:F

    div-float/2addr p1, v4

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateScale:F

    .line 704
    invoke-virtual {p0, v1, v0}, Lcn/highlight/lib_doodle/DoodleView;->toTransX(FF)F

    move-result p1

    .line 705
    invoke-virtual {p0, v3, v2}, Lcn/highlight/lib_doodle/DoodleView;->toTransY(FF)F

    move-result v0

    .line 707
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranX:F

    .line 708
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranY:F

    .line 710
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodleView;->refreshWithBackground()V

    return-void
.end method

.method public setDoodleScale(FFF)V
    .locals 2

    .line 1133
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mMinScale:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mMaxScale:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 1139
    :goto_0
    invoke-virtual {p0, p2}, Lcn/highlight/lib_doodle/DoodleView;->toTouchX(F)F

    move-result p1

    .line 1140
    invoke-virtual {p0, p3}, Lcn/highlight/lib_doodle/DoodleView;->toTouchY(F)F

    move-result v1

    .line 1141
    iput v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mScale:F

    .line 1144
    invoke-virtual {p0, p1, p2}, Lcn/highlight/lib_doodle/DoodleView;->toTransX(FF)F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    .line 1145
    invoke-virtual {p0, v1, p3}, Lcn/highlight/lib_doodle/DoodleView;->toTransY(FF)F

    move-result p1

    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    const/16 p1, 0x8

    .line 1147
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 1148
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public setDoodleTranslation(FF)V
    .locals 0

    .line 1197
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    .line 1198
    iput p2, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    .line 1199
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodleView;->refreshWithBackground()V

    return-void
.end method

.method public setDoodleTranslationX(F)V
    .locals 0

    .line 1209
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransX:F

    .line 1210
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodleView;->refreshWithBackground()V

    return-void
.end method

.method public setDoodleTranslationY(F)V
    .locals 0

    .line 1220
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mTransY:F

    .line 1221
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodleView;->refreshWithBackground()V

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 1659
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsEditMode:Z

    .line 1660
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public setIsDrawableOutside(Z)V
    .locals 0

    .line 1248
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsDrawableOutside:Z

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 258
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1166
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    .line 1167
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mPen:Lcn/highlight/lib_doodle/IDoodlePen;

    .line 1168
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void

    .line 1164
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Pen can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScrollingDoodle(Z)V
    .locals 0

    .line 1322
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mIsScrollingDoodle:Z

    .line 1323
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public setShape(Lcn/highlight/lib_doodle/IDoodleShape;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1186
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mShape:Lcn/highlight/lib_doodle/IDoodleShape;

    .line 1187
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void

    .line 1184
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Shape can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowOriginal(Z)V
    .locals 0

    .line 1098
    iput-boolean p1, p0, Lcn/highlight/lib_doodle/DoodleView;->isJustDrawOriginal:Z

    .line 1099
    invoke-direct {p0}, Lcn/highlight/lib_doodle/DoodleView;->refreshWithBackground()V

    return-void
.end method

.method public setSize(F)V
    .locals 0

    .line 1232
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mSize:F

    .line 1233
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public setZoomerScale(F)V
    .locals 0

    .line 1266
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mZoomerScale:F

    .line 1267
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void
.end method

.method public final toTouchX(F)F
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranX()F

    move-result v0

    add-float/2addr p1, v0

    return p1
.end method

.method public final toTouchY(F)F
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float p1, p1, v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranY()F

    move-result v0

    add-float/2addr p1, v0

    return p1
.end method

.method public final toTransX(FF)F
    .locals 1

    neg-float p2, p2

    .line 549
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float p2, p2, v0

    add-float/2addr p2, p1

    iget p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mCentreTranX:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranX:F

    sub-float/2addr p2, p1

    return p2
.end method

.method public final toTransY(FF)F
    .locals 1

    neg-float p2, p2

    .line 553
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v0

    mul-float p2, p2, v0

    add-float/2addr p2, p1

    iget p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mCentreTranY:F

    sub-float/2addr p2, p1

    iget p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mRotateTranY:F

    sub-float/2addr p2, p1

    return p2
.end method

.method public final toX(F)F
    .locals 1

    .line 516
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranX()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v0

    div-float/2addr p1, v0

    return p1
.end method

.method public final toY(F)F
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranY()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v0

    div-float/2addr p1, v0

    return p1
.end method

.method public topItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1332
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1333
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    .line 1335
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 1337
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    return-void

    .line 1329
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public undo()Z
    .locals 1

    const/4 v0, 0x1

    .line 872
    invoke-virtual {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->undo(I)Z

    move-result v0

    return v0
.end method

.method public undo(I)Z
    .locals 4

    .line 834
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 835
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 836
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, p1

    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v2, v3, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 837
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 838
    invoke-virtual {p0, v0}, Lcn/highlight/lib_doodle/DoodleView;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 839
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->mRedoItemStack:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public undoRecord(I)V
    .locals 12

    .line 880
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_13

    .line 881
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 883
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleRecord;

    .line 885
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 888
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto/16 :goto_6

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b

    .line 890
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getIdentity()I

    move-result v1

    .line 892
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v4

    invoke-interface {v4}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v4

    sget-object v5, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_3

    sub-int/2addr p1, v2

    :goto_0
    if-ltz p1, :cond_2

    .line 894
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getIdentity()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 895
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBg;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleBg;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 896
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBg;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcn/highlight/lib_doodle/DoodleBg;->setText(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 900
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_3
    sub-int/2addr p1, v2

    :goto_2
    if-ltz p1, :cond_a

    .line 907
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getIdentity()I

    move-result v2

    if-ne v2, v1, :cond_9

    .line 909
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleView;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 910
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object v1

    .line 911
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v4, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v4, :cond_4

    .line 912
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/highlight/lib_doodle/DoodleText;->setText0(Ljava/lang/String;)V

    .line 913
    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/highlight/lib_doodle/DoodleText;->setText1(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v5}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextStyle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcn/highlight/lib_doodle/DoodleText;->setTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 915
    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextBgColor()I

    move-result v4

    invoke-virtual {v2, v4}, Lcn/highlight/lib_doodle/DoodleText;->setBgColor(I)V

    .line 916
    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextBold()I

    move-result v4

    invoke-virtual {v2, v4}, Lcn/highlight/lib_doodle/DoodleText;->setBold(I)V

    .line 917
    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextItalic()I

    move-result v4

    invoke-virtual {v2, v4}, Lcn/highlight/lib_doodle/DoodleText;->setItalic(I)V

    .line 918
    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextUnderline()I

    move-result v4

    invoke-virtual {v2, v4}, Lcn/highlight/lib_doodle/DoodleText;->setUnderline(I)V

    goto/16 :goto_3

    .line 919
    :cond_4
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v4, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v4, :cond_5

    .line 920
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleBitmap;

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/highlight/lib_doodle/DoodleBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 921
    :cond_5
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v4, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v4, :cond_6

    .line 922
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleQRCode;

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v5}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleRecord;->getBgColor()I

    move-result v6

    iget-object v7, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v7}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcn/highlight/lib_doodle/DoodleQRCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 923
    :cond_6
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v4, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v4, :cond_7

    .line 924
    move-object v2, v1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleBarCode;

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v5}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleRecord;->getBgColor()I

    move-result v6

    iget-object v7, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v7}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcn/highlight/lib_doodle/DoodleBarCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    goto :goto_3

    .line 925
    :cond_7
    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v2

    sget-object v4, Lcn/highlight/lib_doodle/DoodlePen;->SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v2, v4, :cond_8

    .line 926
    move-object v5, v1

    check-cast v5, Lcn/highlight/lib_doodle/DoodleShape1;

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v7

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getShape1()I

    move-result v8

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getWidth()I

    move-result v9

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getHeight()I

    move-result v10

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getEffects()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcn/highlight/lib_doodle/DoodleShape1;->setBitmap(Landroid/graphics/Bitmap;IIIII)V

    .line 928
    :cond_8
    :goto_3
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getmSize()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setSize(F)V

    .line 929
    new-instance v2, Lcn/highlight/lib_doodle/DoodleColor;

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmColor()I

    move-result v4

    invoke-direct {v2, v4}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 930
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getmLocationX()F

    move-result v2

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v4}, Lcn/highlight/lib_doodle/DoodleRecord;->getmLocationY()F

    move-result v4

    invoke-interface {v1, v2, v4}, Lcn/highlight/lib_doodle/IDoodleItem;->setLocation(FF)V

    .line 931
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getmPivotX()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setPivotX(F)V

    .line 932
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getmPivotY()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setPivotY(F)V

    .line 933
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->getmRotate()F

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setItemRotate(F)V

    .line 934
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleRecord;->ismIsNeedClipOutside()Z

    move-result v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setNeedClipOutside(Z)V

    .line 935
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleRecord;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleRecord;->getmScale()F

    move-result p1

    invoke-interface {v1, p1}, Lcn/highlight/lib_doodle/IDoodleItem;->setScale(F)V

    .line 936
    invoke-virtual {p0, v1}, Lcn/highlight/lib_doodle/DoodleView;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto :goto_4

    :cond_9
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_2

    :cond_a
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_12

    return-void

    :cond_b
    if-ne v1, v2, :cond_10

    .line 945
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object p1

    .line 946
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v1, v2, :cond_c

    .line 947
    move-object v1, p1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->setText0(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->setText1(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/highlight/lib_doodle/DoodleText;->setTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextBgColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->setBgColor(I)V

    .line 951
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextBold()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->setBold(I)V

    .line 952
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextItalic()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->setItalic(I)V

    .line 953
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmTextUnderline()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleText;->setUnderline(I)V

    goto :goto_5

    .line 954
    :cond_c
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v1, v2, :cond_d

    .line 955
    move-object v1, p1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_5

    .line 956
    :cond_d
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v1, v2, :cond_e

    .line 957
    move-object v1, p1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getBgColor()I

    move-result v4

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/highlight/lib_doodle/DoodleQRCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    goto :goto_5

    .line 958
    :cond_e
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleItem;->getPen()Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    sget-object v2, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    if-ne v1, v2, :cond_f

    .line 959
    move-object v1, p1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmText1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getBgColor()I

    move-result v4

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getFgColor()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/highlight/lib_doodle/DoodleBarCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 961
    :cond_f
    :goto_5
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmSize()F

    move-result v1

    invoke-interface {p1, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->setSize(F)V

    .line 962
    new-instance v1, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmColor()I

    move-result v2

    invoke-direct {v1, v2}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {p1, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 963
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmLocationX()F

    move-result v1

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmLocationY()F

    move-result v2

    invoke-interface {p1, v1, v2}, Lcn/highlight/lib_doodle/IDoodleItem;->setLocation(FF)V

    .line 964
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmPivotX()F

    move-result v1

    invoke-interface {p1, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->setPivotX(F)V

    .line 965
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmPivotY()F

    move-result v1

    invoke-interface {p1, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->setPivotY(F)V

    .line 966
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmRotate()F

    move-result v1

    invoke-interface {p1, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->setItemRotate(F)V

    .line 967
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->ismIsNeedClipOutside()Z

    move-result v1

    invoke-interface {p1, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->setNeedClipOutside(Z)V

    .line 968
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getmScale()F

    move-result v1

    invoke-interface {p1, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->setScale(F)V

    .line 969
    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto :goto_6

    :cond_10
    const/4 p1, 0x3

    if-ne v1, p1, :cond_11

    .line 972
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->downItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto :goto_6

    :cond_11
    const/4 p1, 0x4

    if-ne v1, p1, :cond_12

    .line 975
    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleRecord;->getDoodleItem()Lcn/highlight/lib_doodle/IDoodleItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->upItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 977
    :cond_12
    :goto_6
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->redoRecord:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleView;->allRecord:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public upItem(Lcn/highlight/lib_doodle/IDoodleItem;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1346
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 1348
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1352
    :cond_0
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 1356
    :cond_1
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    .line 1360
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView;->mItemStack:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x2

    .line 1361
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView;->addFlag(I)V

    .line 1362
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView;->refresh()V

    :cond_2
    :goto_0
    return-void

    .line 1343
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "item is null"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
