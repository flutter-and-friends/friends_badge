.class public Ldevlight/io/library/ntb/NavigationTabBar;
.super Landroid/view/View;
.source "NavigationTabBar.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;,
        Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;,
        Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;,
        Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;,
        Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;,
        Ldevlight/io/library/ntb/NavigationTabBar$ResizeViewPagerScroller;,
        Ldevlight/io/library/ntb/NavigationTabBar$Model;,
        Ldevlight/io/library/ntb/NavigationTabBar$SavedState;
    }
.end annotation


# static fields
.field protected static final ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final AUTO_COLOR:I = -0x3

.field public static final AUTO_SCALE:I = -0x4

.field public static final AUTO_SIZE:I = -0x2

.field protected static final BADGE_HORIZONTAL_FRACTION:F = 0.5f

.field protected static final BADGE_TITLE_SIZE_FRACTION:F = 0.9f

.field protected static final BADGE_VERTICAL_FRACTION:F = 0.75f

.field protected static final CENTER_FRACTION:F = 0.5f

.field protected static final DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field protected static final DEFAULT_ACTIVE_COLOR:I = -0x1

.field protected static final DEFAULT_ANIMATION_DURATION:I = 0x12c

.field protected static final DEFAULT_BADGE_ANIMATION_DURATION:I = 0xc8

.field protected static final DEFAULT_BADGE_REFRESH_ANIMATION_DURATION:I = 0x64

.field protected static final DEFAULT_BG_COLOR:I

.field protected static final DEFAULT_ICON_SIZE_FRACTION:F = 0.5f

.field protected static final DEFAULT_INACTIVE_COLOR:I

.field protected static final DEFAULT_TITLE_ICON_SIZE_FRACTION:F = 0.5f

.field protected static final FLAGS:I = 0x7

.field protected static final INVALID_INDEX:I = -0x1

.field protected static final LEFT_FRACTION:F = 0.25f

.field protected static final MAX_ALPHA:I = 0xff

.field protected static final MAX_FRACTION:F = 1.0f

.field protected static final MIN_ALPHA:I = 0x0

.field protected static final MIN_FRACTION:F = 0.0f

.field protected static final OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field protected static final PREVIEW_BADGE:Ljava/lang/String; = "0"

.field protected static final PREVIEW_TITLE:Ljava/lang/String; = "Title"

.field protected static final RIGHT_FRACTION:F = 0.75f

.field protected static final SCALED_FRACTION:F = 0.3f

.field protected static final TITLE_ACTIVE_ICON_SCALE_BY:F = 0.2f

.field protected static final TITLE_ACTIVE_SCALE_BY:F = 0.2f

.field protected static final TITLE_MARGIN_FRACTION:F = 0.15f

.field protected static final TITLE_MARGIN_SCALE_FRACTION:F = 0.25f

.field protected static final TITLE_SIZE_FRACTION:F = 0.2f


# instance fields
.field protected mActiveColor:I

.field protected mAnimateHide:Z

.field protected mAnimationDuration:I

.field protected final mAnimator:Landroid/animation/ValueAnimator;

.field protected mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field protected mBadgeBgColor:I

.field protected final mBadgeBounds:Landroid/graphics/Rect;

.field protected mBadgeGravity:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

.field protected mBadgeMargin:F

.field protected final mBadgePaint:Landroid/graphics/Paint;

.field protected mBadgePosition:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

.field protected mBadgeTitleColor:I

.field protected mBadgeTitleSize:F

.field protected mBehavior:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

.field protected mBehaviorEnabled:Z

.field protected final mBgBadgeBounds:Landroid/graphics/RectF;

.field protected final mBgBounds:Landroid/graphics/RectF;

.field protected mBgColor:I

.field protected final mBgPaint:Landroid/graphics/Paint;

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected final mBounds:Landroid/graphics/RectF;

.field protected final mCanvas:Landroid/graphics/Canvas;

.field protected mCornersRadius:F

.field protected mEndPointerX:F

.field protected mFraction:F

.field protected final mIconPaint:Landroid/graphics/Paint;

.field protected final mIconPointerPaint:Landroid/graphics/Paint;

.field protected mIconSize:F

.field protected mIconSizeFraction:F

.field protected mIconsBitmap:Landroid/graphics/Bitmap;

.field protected final mIconsCanvas:Landroid/graphics/Canvas;

.field protected mInactiveColor:I

.field protected mIndex:I

.field protected mIsActionDown:Z

.field protected mIsBadgeUseTypeface:Z

.field protected mIsBadged:Z

.field protected mIsBehaviorSet:Z

.field protected mIsHorizontalOrientation:Z

.field protected mIsPointerActionDown:Z

.field protected mIsResizeIn:Z

.field protected mIsScaled:Z

.field protected mIsSetIndexFromTabBar:Z

.field protected mIsSwiped:Z

.field protected mIsTinted:Z

.field protected mIsTitled:Z

.field protected mIsViewPagerMode:Z

.field protected mLastIndex:I

.field protected mModelSize:F

.field protected final mModelTitlePaint:Landroid/graphics/Paint;

.field protected mModelTitleSize:F

.field protected final mModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ldevlight/io/library/ntb/NavigationTabBar$Model;",
            ">;"
        }
    .end annotation
.end field

.field protected mNeedHide:Z

.field protected mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field protected mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

.field protected final mPaint:Landroid/graphics/Paint;

.field protected mPointerBitmap:Landroid/graphics/Bitmap;

.field protected final mPointerBounds:Landroid/graphics/RectF;

.field protected final mPointerCanvas:Landroid/graphics/Canvas;

.field protected mPointerLeftTop:F

.field protected final mPointerPaint:Landroid/graphics/Paint;

.field protected mPointerRightBottom:F

.field protected final mResizeInterpolator:Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;

.field protected mScrollState:I

.field protected final mSelectedIconPaint:Landroid/graphics/Paint;

.field protected mStartPointerX:F

.field protected mTitleMargin:F

.field protected mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

.field protected mTitlesBitmap:Landroid/graphics/Bitmap;

.field protected final mTitlesCanvas:Landroid/graphics/Canvas;

.field protected mTypeface:Landroid/graphics/Typeface;

.field protected mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#9f90af"

    .line 92
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldevlight/io/library/ntb/NavigationTabBar;->DEFAULT_INACTIVE_COLOR:I

    const-string v0, "#605271"

    .line 94
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Ldevlight/io/library/ntb/NavigationTabBar;->DEFAULT_BG_COLOR:I

    .line 117
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 118
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar;->ACCELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 119
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    sput-object v0, Ldevlight/io/library/ntb/NavigationTabBar;->OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0}, Ldevlight/io/library/ntb/NavigationTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 299
    invoke-direct {p0, p1, p2, v0}, Ldevlight/io/library/ntb/NavigationTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 304
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    .line 123
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBounds:Landroid/graphics/RectF;

    .line 124
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    .line 126
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBounds:Landroid/graphics/Rect;

    .line 127
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBadgeBounds:Landroid/graphics/RectF;

    .line 131
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3}, Landroid/graphics/Canvas;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mCanvas:Landroid/graphics/Canvas;

    .line 135
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3}, Landroid/graphics/Canvas;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsCanvas:Landroid/graphics/Canvas;

    .line 139
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3}, Landroid/graphics/Canvas;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesCanvas:Landroid/graphics/Canvas;

    .line 143
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3}, Landroid/graphics/Canvas;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerCanvas:Landroid/graphics/Canvas;

    .line 158
    new-instance p3, Ldevlight/io/library/ntb/NavigationTabBar$1;

    const/4 v0, 0x7

    invoke-direct {p3, p0, v0}, Ldevlight/io/library/ntb/NavigationTabBar$1;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;I)V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mPaint:Landroid/graphics/Paint;

    .line 164
    new-instance p3, Ldevlight/io/library/ntb/NavigationTabBar$2;

    invoke-direct {p3, p0, v0}, Ldevlight/io/library/ntb/NavigationTabBar$2;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;I)V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBgPaint:Landroid/graphics/Paint;

    .line 170
    new-instance p3, Ldevlight/io/library/ntb/NavigationTabBar$3;

    invoke-direct {p3, p0, v0}, Ldevlight/io/library/ntb/NavigationTabBar$3;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;I)V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerPaint:Landroid/graphics/Paint;

    .line 177
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    .line 178
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mSelectedIconPaint:Landroid/graphics/Paint;

    .line 181
    new-instance p3, Ldevlight/io/library/ntb/NavigationTabBar$4;

    invoke-direct {p3, p0, v0}, Ldevlight/io/library/ntb/NavigationTabBar$4;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;I)V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPointerPaint:Landroid/graphics/Paint;

    .line 189
    new-instance p3, Ldevlight/io/library/ntb/NavigationTabBar$5;

    invoke-direct {p3, p0, v0}, Ldevlight/io/library/ntb/NavigationTabBar$5;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;I)V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    .line 197
    new-instance p3, Ldevlight/io/library/ntb/NavigationTabBar$6;

    invoke-direct {p3, p0, v0}, Ldevlight/io/library/ntb/NavigationTabBar$6;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;I)V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    .line 205
    new-instance p3, Landroid/animation/ValueAnimator;

    invoke-direct {p3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 206
    new-instance p3, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;

    invoke-direct {p3, p0}, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;)V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mResizeInterpolator:Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;

    .line 210
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    const/high16 p3, -0x40000000    # -2.0f

    .line 229
    iput p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitleSize:F

    .line 234
    iput p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    const/4 v0, -0x3

    .line 246
    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleColor:I

    .line 247
    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBgColor:I

    const/4 v1, -0x1

    .line 250
    iput v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mLastIndex:I

    .line 251
    iput v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    const/4 v2, 0x0

    .line 308
    invoke-virtual {p0, v2}, Ldevlight/io/library/ntb/NavigationTabBar;->setWillNotDraw(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 310
    invoke-static {p0, v4, v3}, Landroidx/core/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 311
    invoke-virtual {p0, v4, v3}, Ldevlight/io/library/ntb/NavigationTabBar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 313
    sget-object v5, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 316
    :try_start_0
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_titled:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setIsTitled(Z)V

    .line 317
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_badged:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setIsBadged(Z)V

    .line 318
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_scaled:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setIsScaled(Z)V

    .line 319
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_tinted:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setIsTinted(Z)V

    .line 320
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_swiped:I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setIsSwiped(Z)V

    .line 321
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_title_size:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setTitleSize(F)V

    .line 324
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_badge_use_typeface:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setIsBadgeUseTypeface(Z)V

    .line 331
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_title_mode:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setTitleMode(I)V

    .line 336
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_badge_size:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgeSize(F)V

    .line 339
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_badge_position:I

    const/4 p3, 0x2

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgePosition(I)V

    .line 345
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_badge_gravity:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgeGravity(I)V

    .line 350
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_badge_bg_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgeBgColor(I)V

    .line 353
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_badge_title_color:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgeTitleColor(I)V

    .line 359
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_typeface:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setTypeface(Ljava/lang/String;)V

    .line 360
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_inactive_color:I

    sget v0, Ldevlight/io/library/ntb/NavigationTabBar;->DEFAULT_INACTIVE_COLOR:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setInactiveColor(I)V

    .line 365
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_active_color:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setActiveColor(I)V

    .line 370
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_bg_color:I

    sget v0, Ldevlight/io/library/ntb/NavigationTabBar;->DEFAULT_BG_COLOR:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setBgColor(I)V

    .line 375
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_animation_duration:I

    const/16 v0, 0x12c

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setAnimationDuration(I)V

    .line 381
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_corners_radius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setCornersRadius(F)V

    .line 384
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_icon_size_fraction:I

    const/high16 v1, -0x3f800000    # -4.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->setIconSizeFraction(F)V

    .line 392
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-array p3, p3, [F

    aput v0, p3, v2

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p3, v4

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 393
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 394
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Ldevlight/io/library/ntb/NavigationTabBar$7;

    invoke-direct {p3, p0}, Ldevlight/io/library/ntb/NavigationTabBar$7;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 402
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->isInEditMode()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p2, :cond_4

    .line 406
    :try_start_1
    sget p2, Lcom/gigamole/navigationtabbar/R$styleable;->NavigationTabBar_ntb_preview_colors:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-nez p2, :cond_0

    move-object p2, v3

    goto :goto_0

    .line 409
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-nez p2, :cond_1

    .line 416
    :try_start_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/gigamole/navigationtabbar/R$array;->default_preview:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 419
    :cond_1
    array-length p3, p2

    :goto_1
    if-ge v2, p3, :cond_2

    aget-object v0, p2, v2

    .line 420
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    new-instance v4, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, v3, v0}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v4}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->build()Ldevlight/io/library/ntb/NavigationTabBar$Model;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 421
    :cond_2
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception p2

    goto :goto_3

    :catch_0
    move-exception p2

    .line 413
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 416
    :try_start_4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/gigamole/navigationtabbar/R$array;->default_preview:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 419
    array-length p3, p2

    :goto_2
    if-ge v2, p3, :cond_2

    aget-object v0, p2, v2

    .line 420
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    new-instance v4, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, v3, v0}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v4}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->build()Ldevlight/io/library/ntb/NavigationTabBar$Model;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 416
    :goto_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/gigamole/navigationtabbar/R$array;->default_preview:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 419
    array-length v0, p3

    :goto_4
    if-ge v2, v0, :cond_3

    aget-object v1, p3, v2

    .line 420
    iget-object v4, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    new-instance v5, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v5, v3, v1}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model$Builder;->build()Ldevlight/io/library/ntb/NavigationTabBar$Model;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 421
    :cond_3
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 425
    :cond_4
    :goto_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_1
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method


# virtual methods
.method protected clampValue(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1656
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method public deselect()V
    .locals 2

    const/4 v0, -0x1

    .line 884
    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mLastIndex:I

    .line 885
    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    .line 886
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    const/high16 v1, -0x40800000    # -1.0f

    mul-float v0, v0, v1

    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    .line 887
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mEndPointerX:F

    const/4 v0, 0x0

    .line 888
    invoke-virtual {p0, v0}, Ldevlight/io/library/ntb/NavigationTabBar;->updateIndicatorPosition(F)V

    return-void
.end method

.method public getActiveColor()I
    .locals 1

    .line 649
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mActiveColor:I

    return v0
.end method

.method public getAnimationDuration()I
    .locals 1

    .line 430
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimationDuration:I

    return v0
.end method

.method public getBadgeBgColor()I
    .locals 1

    .line 592
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBgColor:I

    return v0
.end method

.method public getBadgeGravity()Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;
    .locals 1

    .line 571
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeGravity:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    return-object v0
.end method

.method public getBadgeMargin()F
    .locals 1

    .line 702
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeMargin:F

    return v0
.end method

.method public getBadgePosition()Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;
    .locals 1

    .line 547
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePosition:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    return-object v0
.end method

.method public getBadgeSize()F
    .locals 1

    .line 608
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    return v0
.end method

.method public getBadgeTitleColor()I
    .locals 1

    .line 600
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleColor:I

    return v0
.end method

.method public getBarHeight()F
    .locals 1

    .line 706
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    return v0
.end method

.method public getBgColor()I
    .locals 1

    .line 673
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBgColor:I

    return v0
.end method

.method public getCornersRadius()F
    .locals 1

    .line 683
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mCornersRadius:F

    return v0
.end method

.method public getIconSizeFraction()F
    .locals 1

    .line 692
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconSizeFraction:F

    return v0
.end method

.method public getInactiveColor()I
    .locals 1

    .line 661
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mInactiveColor:I

    return v0
.end method

.method public getModelIndex()I
    .locals 1

    .line 819
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    return v0
.end method

.method public getModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ldevlight/io/library/ntb/NavigationTabBar$Model;",
            ">;"
        }
    .end annotation

    .line 440
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    return-object v0
.end method

.method public getOnTabBarSelectedIndexListener()Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;
    .locals 1

    .line 710
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

    return-object v0
.end method

.method public getTitleMode()Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;
    .locals 1

    .line 526
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    return-object v0
.end method

.method public getTitleSize()F
    .locals 1

    .line 506
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitleSize:F

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 618
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .line 1663
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehavior:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getBarHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, p0, v2, v1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->hideView(Ldevlight/io/library/ntb/NavigationTabBar;IZ)V

    goto :goto_0

    .line 1664
    :cond_0
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 1665
    iput-boolean v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mNeedHide:Z

    .line 1666
    iput-boolean v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimateHide:Z

    goto :goto_0

    .line 1667
    :cond_1
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->scrollDown()V

    :goto_0
    return-void
.end method

.method public isBadgeUseTypeface()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadgeUseTypeface:Z

    return v0
.end method

.method public isBadged()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadged:Z

    return v0
.end method

.method public isBehaviorEnabled()Z
    .locals 1

    .line 798
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehaviorEnabled:Z

    return v0
.end method

.method public isScaled()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsScaled:Z

    return v0
.end method

.method public isSwiped()Z
    .locals 1

    .line 498
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsSwiped:Z

    return v0
.end method

.method public isTinted()Z
    .locals 1

    .line 489
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTinted:Z

    return v0
.end method

.method public isTitled()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    return v0
.end method

.method protected notifyDataSetChanged()V
    .locals 0

    .line 910
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    .line 911
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1640
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1641
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    .line 1644
    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    .line 1645
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->deselect()V

    .line 1646
    new-instance v0, Ldevlight/io/library/ntb/NavigationTabBar$10;

    invoke-direct {v0, p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar$10;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;I)V

    invoke-virtual {p0, v0}, Ldevlight/io/library/ntb/NavigationTabBar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 27

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1073
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeMargin:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1076
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1077
    :cond_0
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBitmap:Landroid/graphics/Bitmap;

    .line 1080
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1083
    :cond_1
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1084
    :cond_2
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBitmap:Landroid/graphics/Bitmap;

    .line 1087
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerCanvas:Landroid/graphics/Canvas;

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1090
    :cond_3
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1091
    :cond_4
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsBitmap:Landroid/graphics/Bitmap;

    .line 1094
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsCanvas:Landroid/graphics/Canvas;

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1097
    :cond_5
    iget-boolean v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    const/4 v13, 0x0

    if-eqz v1, :cond_7

    .line 1098
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1099
    :cond_6
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesBitmap:Landroid/graphics/Bitmap;

    .line 1102
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesCanvas:Landroid/graphics/Canvas;

    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1104
    :cond_7
    iput-object v13, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesBitmap:Landroid/graphics/Bitmap;

    .line 1107
    :cond_8
    :goto_0
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v14, 0x0

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1108
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1109
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1110
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz v0, :cond_9

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1112
    :cond_9
    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mCornersRadius:F

    const/4 v15, 0x0

    cmpl-float v1, v0, v15

    if-nez v1, :cond_a

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBounds:Landroid/graphics/RectF;

    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1113
    :cond_a
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBounds:Landroid/graphics/RectF;

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1116
    :goto_1
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeGravity:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    sget-object v1, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->TOP:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    if-ne v0, v1, :cond_b

    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeMargin:F

    move v10, v0

    goto :goto_2

    :cond_b
    const/4 v10, 0x0

    :goto_2
    const/4 v0, 0x0

    .line 1119
    :goto_3
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    .line 1120
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    invoke-virtual {v2}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1122
    iget-boolean v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsHorizontalOrientation:Z

    if-eqz v1, :cond_c

    .line 1123
    iget v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    int-to-float v2, v0

    mul-float v2, v2, v1

    add-float v4, v2, v1

    .line 1125
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mCanvas:Landroid/graphics/Canvas;

    iget-object v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float v5, v3, v10

    iget-object v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPaint:Landroid/graphics/Paint;

    move v3, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1129
    :cond_c
    iget v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    int-to-float v2, v0

    mul-float v5, v1, v2

    add-float v7, v5, v1

    .line 1131
    iget-object v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v8, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1136
    :cond_d
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsHorizontalOrientation:Z

    if-eqz v0, :cond_e

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    iget v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerLeftTop:F

    iget v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerRightBottom:F

    iget-object v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    add-float/2addr v3, v10

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_5

    .line 1142
    :cond_e
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    iget v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerLeftTop:F

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerRightBottom:F

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1145
    :goto_5
    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mCornersRadius:F

    cmpl-float v1, v0, v15

    if-nez v1, :cond_f

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerCanvas:Landroid/graphics/Canvas;

    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 1146
    :cond_f
    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerCanvas:Landroid/graphics/Canvas;

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    iget-object v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1149
    :goto_6
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v15, v15, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1152
    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconSize:F

    iget v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMargin:F

    add-float/2addr v0, v1

    iget v1, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitleSize:F

    add-float v16, v0, v1

    const/4 v9, 0x0

    .line 1155
    :goto_7
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000    # 0.5f

    if-ge v9, v0, :cond_1f

    .line 1156
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    .line 1165
    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    int-to-float v4, v9

    mul-float v5, v0, v4

    mul-float v0, v0, v3

    add-float v8, v5, v0

    .line 1166
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float v5, v5, v16

    mul-float v5, v5, v3

    sub-float v7, v0, v5

    .line 1169
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsHorizontalOrientation:Z

    if-eqz v0, :cond_10

    .line 1170
    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    mul-float v4, v4, v0

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    mul-float v0, v0, v3

    add-float/2addr v4, v0

    .line 1171
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    mul-float v0, v0, v3

    move v5, v0

    goto :goto_8

    .line 1173
    :cond_10
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v0, v5

    mul-float v0, v0, v3

    .line 1174
    iget v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    mul-float v4, v4, v5

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    move v5, v4

    move v4, v0

    .line 1177
    :goto_8
    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    add-float v6, v4, v0

    .line 1178
    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v3

    add-float v18, v5, v0

    .line 1181
    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v0, v0, v3

    sub-float v19, v5, v0

    .line 1185
    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-boolean v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz v3, :cond_11

    iget-object v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    sget-object v13, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ALL:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    if-ne v3, v13, :cond_11

    move/from16 v3, v19

    goto :goto_9

    :cond_11
    move v3, v5

    :goto_9
    invoke-virtual {v0, v4, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1191
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mResizeInterpolator:Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;

    iget v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mFraction:F

    invoke-static {v0, v3, v2}, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;->access$200(Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;FZ)F

    move-result v13

    .line 1193
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mResizeInterpolator:Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;

    iget v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mFraction:F

    invoke-static {v0, v2, v14}, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;->access$200(Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;FZ)F

    move-result v20

    .line 1197
    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$500(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v0

    mul-float v21, v0, v13

    .line 1198
    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$500(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v0

    mul-float v22, v0, v20

    mul-float v0, v13, v1

    float-to-int v3, v0

    mul-float v1, v1, v20

    float-to-int v0, v1

    const/16 v1, 0xff

    rsub-int v2, v0, 0xff

    .line 1204
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsScaled:Z

    const v23, 0x3e4ccccd

    const/high16 v24, 0x3f800000    # 1.0f

    if-eqz v0, :cond_12

    mul-float v0, v13, v23

    add-float v0, v0, v24

    move/from16 v24, v0

    .line 1206
    :cond_12
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsScaled:Z

    if-eqz v0, :cond_13

    const v0, 0x3f99999a

    mul-float v23, v23, v20

    sub-float v0, v0, v23

    move/from16 v23, v0

    goto :goto_a

    :cond_13
    move/from16 v23, v24

    .line 1209
    :goto_a
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1210
    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mSelectedIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1215
    :cond_14
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsSetIndexFromTabBar:Z

    if-eqz v0, :cond_17

    .line 1216
    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    if-ne v0, v9, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v4

    move/from16 v25, v3

    move v3, v5

    move/from16 v4, v19

    move v5, v13

    move v13, v7

    move/from16 v7, v18

    move v14, v8

    move/from16 v8, v21

    move v15, v9

    move/from16 v9, v24

    move/from16 v26, v10

    move/from16 v10, v25

    .line 1217
    invoke-virtual/range {v0 .. v10}, Ldevlight/io/library/ntb/NavigationTabBar;->updateCurrentModel(Ldevlight/io/library/ntb/NavigationTabBar$Model;FFFFFFFFI)V

    goto/16 :goto_b

    :cond_15
    move v13, v7

    move v14, v8

    move v15, v9

    move/from16 v26, v10

    .line 1229
    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mLastIndex:I

    if-ne v0, v15, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v10, v2

    move v2, v4

    move v3, v5

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v7, v18

    move/from16 v8, v22

    move/from16 v9, v23

    .line 1230
    invoke-virtual/range {v0 .. v10}, Ldevlight/io/library/ntb/NavigationTabBar;->updateLastModel(Ldevlight/io/library/ntb/NavigationTabBar$Model;FFFFFFFFI)V

    goto/16 :goto_b

    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v4

    move v3, v5

    move/from16 v4, v24

    move/from16 v5, v21

    move/from16 v7, v18

    .line 1243
    invoke-virtual/range {v0 .. v7}, Ldevlight/io/library/ntb/NavigationTabBar;->updateInactiveModel(Ldevlight/io/library/ntb/NavigationTabBar$Model;FFFFFF)V

    goto/16 :goto_b

    :cond_17
    move/from16 v25, v3

    move v14, v8

    move v15, v9

    move/from16 v26, v10

    move v10, v2

    move v9, v7

    .line 1253
    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    if-ne v15, v1, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v4

    move v3, v5

    move/from16 v4, v19

    move v5, v13

    move/from16 v7, v18

    move/from16 v8, v21

    move v13, v9

    move/from16 v9, v24

    move/from16 v10, v25

    .line 1254
    invoke-virtual/range {v0 .. v10}, Ldevlight/io/library/ntb/NavigationTabBar;->updateCurrentModel(Ldevlight/io/library/ntb/NavigationTabBar$Model;FFFFFFFFI)V

    goto :goto_b

    :cond_18
    move v13, v9

    if-ne v15, v0, :cond_19

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v4

    move v3, v5

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v7, v18

    move/from16 v8, v22

    move/from16 v9, v23

    .line 1267
    invoke-virtual/range {v0 .. v10}, Ldevlight/io/library/ntb/NavigationTabBar;->updateLastModel(Ldevlight/io/library/ntb/NavigationTabBar$Model;FFFFFFFFI)V

    goto :goto_b

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v4

    move v3, v5

    move/from16 v4, v24

    move/from16 v5, v21

    move/from16 v7, v18

    .line 1279
    invoke-virtual/range {v0 .. v7}, Ldevlight/io/library/ntb/NavigationTabBar;->updateInactiveModel(Ldevlight/io/library/ntb/NavigationTabBar$Model;FFFFFF)V

    .line 1291
    :goto_b
    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 1292
    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1293
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsCanvas:Landroid/graphics/Canvas;

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_c

    .line 1294
    :cond_1a
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1b

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1297
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsCanvas:Landroid/graphics/Canvas;

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1299
    :cond_1b
    :goto_c
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mSelectedIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1301
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsCanvas:Landroid/graphics/Canvas;

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mSelectedIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1302
    :cond_1c
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz v0, :cond_1e

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesCanvas:Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Ldevlight/io/library/ntb/NavigationTabBar;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "Title"

    goto :goto_d

    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_d
    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v14, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1e
    add-int/lit8 v9, v15, 0x1

    move/from16 v10, v26

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_7

    :cond_1f
    move/from16 v26, v10

    .line 1311
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsHorizontalOrientation:Z

    if-eqz v0, :cond_20

    .line 1312
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    iget v4, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerLeftTop:F

    iget v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerRightBottom:F

    iget-object v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_e

    :cond_20
    const/4 v7, 0x0

    .line 1313
    :goto_e
    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mCornersRadius:F

    cmpl-float v4, v0, v7

    if-nez v4, :cond_22

    .line 1314
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTinted:Z

    if-eqz v0, :cond_21

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsCanvas:Landroid/graphics/Canvas;

    iget-object v4, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    iget-object v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1315
    :cond_21
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz v0, :cond_24

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesCanvas:Landroid/graphics/Canvas;

    iget-object v4, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    iget-object v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_f

    .line 1317
    :cond_22
    iget-boolean v4, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTinted:Z

    if-eqz v4, :cond_23

    iget-object v4, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsCanvas:Landroid/graphics/Canvas;

    iget-object v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    iget-object v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v0, v0, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1320
    :cond_23
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz v0, :cond_24

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesCanvas:Landroid/graphics/Canvas;

    iget-object v4, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBounds:Landroid/graphics/RectF;

    iget v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mCornersRadius:F

    iget-object v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPointerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1326
    :cond_24
    :goto_f
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v12, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1328
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsBitmap:Landroid/graphics/Bitmap;

    move/from16 v15, v26

    invoke-virtual {v12, v0, v5, v15, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1330
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz v0, :cond_25

    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v0, v5, v15, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1333
    :cond_25
    iget-boolean v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadged:Z

    if-nez v0, :cond_26

    return-void

    .line 1336
    :cond_26
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeGravity:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    sget-object v4, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->TOP:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    if-ne v0, v4, :cond_27

    iget v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeMargin:F

    goto :goto_10

    :cond_27
    iget-object v0, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1338
    :goto_10
    iget-object v4, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeGravity:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    sget-object v5, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->TOP:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    if-ne v4, v5, :cond_28

    const/4 v15, 0x0

    goto :goto_11

    :cond_28
    iget-object v4, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeMargin:F

    sub-float v15, v4, v5

    :goto_11
    const/4 v4, 0x0

    .line 1341
    :goto_12
    iget-object v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_30

    .line 1342
    iget-object v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    .line 1345
    invoke-virtual/range {p0 .. p0}, Ldevlight/io/library/ntb/NavigationTabBar;->isInEditMode()Z

    move-result v6

    if-nez v6, :cond_29

    invoke-virtual {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->getBadgeTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2a

    :cond_29
    const-string v6, "0"

    .line 1346
    invoke-virtual {v5, v6}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->setBadgeTitle(Ljava/lang/String;)V

    .line 1349
    :cond_2a
    iget-object v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    iget v7, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    invoke-static {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$100(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v8

    mul-float v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1350
    iget-object v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->getBadgeTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->getBadgeTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBounds:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10, v8, v9}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1355
    iget v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    mul-float v6, v6, v3

    const/high16 v7, 0x3f400000    # 0.75f

    mul-float v7, v7, v6

    .line 1359
    iget v8, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    int-to-float v9, v4

    mul-float v9, v9, v8

    iget-object v10, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePosition:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    invoke-static {v10}, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->access$800(Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;)F

    move-result v10

    mul-float v8, v8, v10

    add-float/2addr v9, v8

    .line 1363
    iget v8, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeMargin:F

    invoke-static {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$100(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v10

    mul-float v8, v8, v10

    .line 1364
    invoke-virtual {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->getBadgeTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v2, :cond_2b

    .line 1365
    iget-object v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBadgeBounds:Landroid/graphics/RectF;

    sub-float v7, v9, v8

    sub-float v10, v0, v8

    add-float v13, v9, v8

    add-float/2addr v8, v0

    invoke-virtual {v6, v7, v10, v13, v8}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_13

    .line 1372
    :cond_2b
    iget-object v10, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBadgeBounds:Landroid/graphics/RectF;

    iget-object v13, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v6

    invoke-static {v8, v13}, Ljava/lang/Math;->max(FF)F

    move-result v13

    sub-float v13, v9, v13

    sub-float v14, v0, v8

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v6

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-float/2addr v2, v9

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v7, v6

    add-float/2addr v7, v15

    iget-object v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v7, v6

    invoke-virtual {v10, v13, v14, v2, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1382
    :goto_13
    invoke-static {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$100(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v2

    const/4 v6, -0x3

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-nez v2, :cond_2c

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_14

    .line 1383
    :cond_2c
    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    iget v7, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBgColor:I

    if-ne v7, v6, :cond_2d

    iget v7, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mActiveColor:I

    :cond_2d
    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1384
    :goto_14
    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$100(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v7

    mul-float v7, v7, v1

    float-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1387
    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBadgeBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v2, v2, v3

    .line 1388
    iget-object v7, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBadgeBounds:Landroid/graphics/RectF;

    iget-object v8, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v7, v2, v2, v8}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1391
    invoke-static {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$100(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-nez v2, :cond_2e

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_15

    :cond_2e
    const/4 v8, 0x0

    .line 1393
    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    iget v10, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleColor:I

    if-ne v10, v6, :cond_2f

    invoke-virtual {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->getColor()I

    move-result v10

    :cond_2f
    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1396
    :goto_15
    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    invoke-static {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$100(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v6

    mul-float v6, v6, v1

    float-to-int v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1399
    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v3

    .line 1400
    iget-object v6, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBadgeBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float v6, v6, v3

    add-float/2addr v6, v2

    iget-object v2, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float/2addr v6, v2

    add-float/2addr v6, v15

    .line 1402
    invoke-virtual {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->getBadgeTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v10, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    iget-object v10, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$100(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v5

    mul-float v10, v10, v5

    sub-float/2addr v6, v10

    iget-object v5, v11, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v2, v9, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x1

    goto/16 :goto_12

    :cond_30
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 965
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 968
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 969
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 971
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    if-nez p2, :cond_0

    goto/16 :goto_9

    :cond_0
    const/high16 v0, -0x3f800000    # -4.0f

    const v1, 0x3e4ccccd

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le p1, p2, :cond_6

    .line 975
    iput-boolean v3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsHorizontalOrientation:Z

    int-to-float v5, p1

    .line 978
    iget-object v6, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    .line 981
    iget v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    int-to-float v6, p2

    cmpl-float v7, v5, v6

    if-lez v7, :cond_1

    move v5, v6

    .line 982
    :cond_1
    iget-boolean v6, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadged:Z

    if-eqz v6, :cond_2

    mul-float v6, v5, v1

    sub-float/2addr v5, v6

    .line 984
    :cond_2
    iget v6, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconSizeFraction:F

    cmpl-float v0, v6, v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    const/high16 v6, 0x3f000000    # 0.5f

    :goto_0
    mul-float v6, v6, v5

    iput v6, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconSize:F

    .line 986
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitleSize:F

    const/high16 v6, -0x40000000    # -2.0f

    cmpl-float v0, v0, v6

    if-nez v0, :cond_4

    mul-float v0, v5, v1

    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitleSize:F

    :cond_4
    const v0, 0x3e19999a

    mul-float v0, v0, v5

    .line 987
    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMargin:F

    .line 990
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadged:Z

    if-eqz v0, :cond_9

    .line 991
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_5

    mul-float v5, v5, v1

    const v0, 0x3f666666

    mul-float v5, v5, v0

    .line 992
    iput v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    .line 994
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 995
    iget-object v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    iget v6, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 996
    iget-object v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    const-string v6, "0"

    invoke-virtual {v5, v6, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 997
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v2

    iget v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    mul-float v5, v5, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v5, v5, v2

    add-float/2addr v0, v5

    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeMargin:F

    goto :goto_2

    .line 1002
    :cond_6
    iput-boolean v4, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehaviorEnabled:Z

    .line 1004
    iput-boolean v4, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsHorizontalOrientation:Z

    .line 1005
    iput-boolean v4, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    .line 1006
    iput-boolean v4, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadged:Z

    int-to-float v5, p2

    .line 1008
    iget-object v6, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    .line 1009
    iget v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    int-to-float v6, p1

    cmpl-float v7, v5, v6

    if-lez v7, :cond_7

    move v5, v6

    :cond_7
    iget v6, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconSizeFraction:F

    cmpl-float v0, v6, v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    move v2, v6

    :goto_1
    mul-float v5, v5, v2

    float-to-int v0, v5

    int-to-float v0, v0

    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconSize:F

    .line 1015
    :cond_9
    :goto_2
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    iget v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeMargin:F

    sub-float/2addr p2, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1017
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeGravity:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    sget-object p2, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->TOP:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    if-ne p1, p2, :cond_a

    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeMargin:F

    goto :goto_3

    :cond_a
    const/4 p1, 0x0

    .line 1018
    :goto_3
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBgBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    add-float/2addr v5, p1

    invoke-virtual {p2, v2, p1, v0, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1021
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    .line 1022
    invoke-static {p2}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-static {p2}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-le v0, v5, :cond_b

    invoke-static {p2}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_5

    :cond_b
    invoke-static {p2}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$300(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_5
    int-to-float v0, v0

    .line 1024
    iget v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconSize:F

    div-float/2addr v5, v0

    invoke-static {p2, v5}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$402(Ldevlight/io/library/ntb/NavigationTabBar$Model;F)F

    .line 1025
    invoke-static {p2}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$400(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result v0

    iget-boolean v5, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz v5, :cond_c

    const v5, 0x3e4ccccd

    goto :goto_6

    :cond_c
    const v5, 0x3e99999a

    :goto_6
    mul-float v0, v0, v5

    invoke-static {p2, v0}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$502(Ldevlight/io/library/ntb/NavigationTabBar$Model;F)F

    goto :goto_4

    :cond_d
    const/4 p1, 0x0

    .line 1030
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBitmap:Landroid/graphics/Bitmap;

    .line 1031
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerBitmap:Landroid/graphics/Bitmap;

    .line 1032
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconsBitmap:Landroid/graphics/Bitmap;

    .line 1033
    iget-boolean p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz p2, :cond_e

    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitlesBitmap:Landroid/graphics/Bitmap;

    .line 1036
    :cond_e
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_f

    iget-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsViewPagerMode:Z

    if-nez p1, :cond_12

    .line 1037
    :cond_f
    iput-boolean v3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsSetIndexFromTabBar:Z

    .line 1040
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->isInEditMode()Z

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_11

    .line 1041
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    .line 1043
    iget-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadged:Z

    if-eqz p1, :cond_11

    .line 1044
    :goto_7
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_11

    .line 1045
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    .line 1047
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    if-ne v4, v0, :cond_10

    .line 1048
    invoke-static {p1, p2}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$102(Ldevlight/io/library/ntb/NavigationTabBar$Model;F)F

    .line 1049
    invoke-virtual {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->showBadge()V

    goto :goto_8

    .line 1051
    :cond_10
    invoke-static {p1, v2}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$102(Ldevlight/io/library/ntb/NavigationTabBar$Model;F)F

    .line 1052
    invoke-virtual {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->hideBadge()V

    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1057
    :cond_11
    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    int-to-float p1, p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    mul-float p1, p1, v0

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    .line 1058
    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mEndPointerX:F

    .line 1059
    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->updateIndicatorPosition(F)V

    .line 1063
    :cond_12
    iget-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBehaviorSet:Z

    if-nez p1, :cond_13

    .line 1064
    iget-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehaviorEnabled:Z

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setBehaviorEnabled(Z)V

    .line 1065
    iput-boolean v3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBehaviorSet:Z

    :cond_13
    :goto_9
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 1578
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mScrollState:I

    if-nez p1, :cond_1

    .line 1580
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    iget v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {v0, v1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1581
    :cond_0
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsViewPagerMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

    if-eqz v0, :cond_1

    .line 1582
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    iget v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    iget v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {v0, v1, v2}, Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;->onEndTabSelected(Ldevlight/io/library/ntb/NavigationTabBar$Model;I)V

    .line 1585
    :cond_1
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    :cond_2
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1549
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 1550
    invoke-interface {v0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1553
    :cond_0
    iget-boolean p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsSetIndexFromTabBar:Z

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 1554
    iget p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    if-ge p1, p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsResizeIn:Z

    .line 1555
    iget p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    iput p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mLastIndex:I

    .line 1556
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    int-to-float p1, p1

    .line 1558
    iget p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    mul-float p1, p1, p3

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    .line 1559
    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    add-float/2addr p1, p3

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mEndPointerX:F

    .line 1560
    invoke-virtual {p0, p2}, Ldevlight/io/library/ntb/NavigationTabBar;->updateIndicatorPosition(F)V

    .line 1564
    :cond_2
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsSetIndexFromTabBar:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 1565
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mFraction:F

    .line 1566
    iput-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsSetIndexFromTabBar:Z

    :cond_3
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1590
    check-cast p1, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;

    .line 1591
    invoke-virtual {p1}, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1592
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;->access$900(Ldevlight/io/library/ntb/NavigationTabBar$SavedState;)I

    move-result p1

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    .line 1593
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1598
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1599
    new-instance v1, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;

    invoke-direct {v1, v0}, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1600
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-static {v1, v0}, Ldevlight/io/library/ntb/NavigationTabBar$SavedState;->access$902(Ldevlight/io/library/ntb/NavigationTabBar$SavedState;I)I

    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 917
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 919
    :cond_0
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mScrollState:I

    if-eqz v0, :cond_1

    return v1

    .line 921
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 935
    :cond_2
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsPointerActionDown:Z

    if-eqz v0, :cond_4

    .line 936
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsHorizontalOrientation:Z

    if-eqz v0, :cond_3

    .line 937
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    div-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto/16 :goto_1

    .line 939
    :cond_3
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    div-float/2addr p1, v2

    float-to-int p1, p1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 942
    :cond_4
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsActionDown:Z

    if-eqz v0, :cond_5

    goto :goto_1

    .line 945
    :cond_5
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsActionDown:Z

    if-eqz v0, :cond_7

    .line 946
    invoke-virtual {p0, v2}, Ldevlight/io/library/ntb/NavigationTabBar;->playSoundEffect(I)V

    .line 947
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsHorizontalOrientation:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setModelIndex(I)V

    goto :goto_0

    .line 948
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setModelIndex(I)V

    .line 954
    :cond_7
    :goto_0
    iput-boolean v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsPointerActionDown:Z

    .line 955
    iput-boolean v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsActionDown:Z

    goto :goto_1

    .line 924
    :cond_8
    iput-boolean v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsActionDown:Z

    .line 925
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsViewPagerMode:Z

    if-nez v0, :cond_9

    goto :goto_1

    .line 926
    :cond_9
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsSwiped:Z

    if-nez v0, :cond_a

    goto :goto_1

    .line 928
    :cond_a
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsHorizontalOrientation:Z

    if-eqz v0, :cond_c

    .line 929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    if-ne p1, v0, :cond_b

    const/4 v2, 0x1

    :cond_b
    iput-boolean v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsPointerActionDown:Z

    goto :goto_1

    .line 931
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    if-ne p1, v0, :cond_d

    const/4 v2, 0x1

    :cond_d
    iput-boolean v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsPointerActionDown:Z

    :goto_1
    return v1
.end method

.method protected resetScroller()V
    .locals 3

    .line 781
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 783
    :cond_0
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 785
    new-instance v1, Ldevlight/io/library/ntb/NavigationTabBar$ResizeViewPagerScroller;

    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ldevlight/io/library/ntb/NavigationTabBar$ResizeViewPagerScroller;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;Landroid/content/Context;)V

    .line 786
    iget-object v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 788
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected scrollDown()V
    .locals 3

    .line 1678
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getBarHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method protected scrollUp()V
    .locals 3

    .line 1687
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    sget-object v1, Ldevlight/io/library/ntb/NavigationTabBar;->OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public setActiveColor(I)V
    .locals 1

    .line 653
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mActiveColor:I

    .line 656
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPointerPaint:Landroid/graphics/Paint;

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mActiveColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 657
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->updateTint()V

    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 2

    .line 434
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimationDuration:I

    .line 435
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimationDuration:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 436
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->resetScroller()V

    return-void
.end method

.method public setBadgeBgColor(I)V
    .locals 0

    .line 596
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeBgColor:I

    return-void
.end method

.method protected setBadgeGravity(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 581
    sget-object p1, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->TOP:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgeGravity(Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;)V

    goto :goto_0

    .line 577
    :cond_0
    sget-object p1, Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;->BOTTOM:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgeGravity(Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;)V

    :goto_0
    return-void
.end method

.method public setBadgeGravity(Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;)V
    .locals 0

    .line 587
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeGravity:Ldevlight/io/library/ntb/NavigationTabBar$BadgeGravity;

    .line 588
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    return-void
.end method

.method protected setBadgePosition(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 560
    sget-object p1, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->RIGHT:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgePosition(Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;)V

    goto :goto_0

    .line 556
    :cond_0
    sget-object p1, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->CENTER:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgePosition(Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;)V

    goto :goto_0

    .line 553
    :cond_1
    sget-object p1, Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;->LEFT:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgePosition(Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;)V

    :goto_0
    return-void
.end method

.method public setBadgePosition(Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;)V
    .locals 0

    .line 566
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePosition:Ldevlight/io/library/ntb/NavigationTabBar$BadgePosition;

    .line 567
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method

.method public setBadgeSize(F)V
    .locals 1

    .line 613
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    .line 614
    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleSize:F

    const/high16 v0, -0x40000000    # -2.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBadgeTitleColor(I)V
    .locals 0

    .line 604
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgeTitleColor:I

    return-void
.end method

.method protected setBadgeTypeface()V
    .locals 3

    .line 643
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBadgePaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadgeUseTypeface:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setBehaviorEnabled(Z)V
    .locals 2

    .line 803
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehaviorEnabled:Z

    .line 805
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 806
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 807
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehavior:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    if-nez v1, :cond_0

    new-instance v1, Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-direct {v1, p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;-><init>(Z)V

    iput-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehavior:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    goto :goto_0

    .line 808
    :cond_0
    invoke-virtual {v1, p1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->setBehaviorTranslationEnabled(Z)V

    .line 810
    :goto_0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehavior:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-virtual {v0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 811
    iget-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mNeedHide:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 812
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mNeedHide:Z

    .line 813
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehavior:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getBarHeight()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimateHide:Z

    invoke-virtual {p1, p0, v0, v1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->hideView(Ldevlight/io/library/ntb/NavigationTabBar;IZ)V

    :cond_1
    return-void
.end method

.method public setBgColor(I)V
    .locals 1

    .line 677
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBgColor:I

    .line 678
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBgPaint:Landroid/graphics/Paint;

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBgColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 679
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method

.method public setCornersRadius(F)V
    .locals 0

    .line 687
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mCornersRadius:F

    .line 688
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method

.method public setIconSizeFraction(F)V
    .locals 0

    .line 697
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconSizeFraction:F

    .line 698
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    return-void
.end method

.method public setInactiveColor(I)V
    .locals 1

    .line 665
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mInactiveColor:I

    .line 668
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mInactiveColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 669
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->updateTint()V

    return-void
.end method

.method public setIsBadgeUseTypeface(Z)V
    .locals 0

    .line 520
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadgeUseTypeface:Z

    .line 521
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgeTypeface()V

    .line 522
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method

.method public setIsBadged(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsBadged:Z

    .line 476
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    return-void
.end method

.method public setIsScaled(Z)V
    .locals 0

    .line 484
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsScaled:Z

    .line 485
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    return-void
.end method

.method public setIsSwiped(Z)V
    .locals 0

    .line 502
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsSwiped:Z

    return-void
.end method

.method public setIsTinted(Z)V
    .locals 0

    .line 493
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTinted:Z

    .line 494
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->updateTint()V

    return-void
.end method

.method public setIsTitled(Z)V
    .locals 0

    .line 466
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    .line 467
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    return-void
.end method

.method public setModelIndex(I)V
    .locals 1

    const/4 v0, 0x0

    .line 823
    invoke-virtual {p0, p1, v0}, Ldevlight/io/library/ntb/NavigationTabBar;->setModelIndex(IZ)V

    return-void
.end method

.method public setModelIndex(IZ)V
    .locals 3

    .line 828
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 835
    :cond_1
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    const/4 p2, 0x1

    .line 837
    :cond_2
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    if-ne p1, v0, :cond_3

    const/4 p2, 0x1

    .line 839
    :cond_3
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 841
    iget v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    if-ge p1, v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iput-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsResizeIn:Z

    .line 842
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mLastIndex:I

    .line 843
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    .line 845
    iput-boolean v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsSetIndexFromTabBar:Z

    .line 846
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsViewPagerMode:Z

    if-eqz v0, :cond_6

    .line 847
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_5

    xor-int/lit8 v1, p2, 0x1

    .line 848
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 847
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "ViewPager is null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_0
    if-eqz p2, :cond_7

    .line 854
    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    int-to-float p1, p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    mul-float p1, p1, v0

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    .line 855
    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mEndPointerX:F

    goto :goto_1

    .line 857
    :cond_7
    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerLeftTop:F

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    .line 858
    iget p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    int-to-float p1, p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    mul-float p1, p1, v0

    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mEndPointerX:F

    :goto_1
    if-eqz p2, :cond_c

    const/high16 p1, 0x3f800000    # 1.0f

    .line 865
    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->updateIndicatorPosition(F)V

    .line 867
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

    if-eqz p1, :cond_8

    .line 868
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {p1, p2, v0}, Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;->onStartTabSelected(Ldevlight/io/library/ntb/NavigationTabBar$Model;I)V

    .line 871
    :cond_8
    iget-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsViewPagerMode:Z

    if-eqz p1, :cond_b

    .line 872
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->beginFakeDrag()Z

    .line 873
    :cond_9
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    .line 874
    :cond_a
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    goto :goto_2

    .line 876
    :cond_b
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

    if-eqz p1, :cond_d

    .line 877
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    invoke-interface {p1, p2, v0}, Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;->onEndTabSelected(Ldevlight/io/library/ntb/NavigationTabBar$Model;I)V

    goto :goto_2

    .line 879
    :cond_c
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_d
    :goto_2
    return-void
.end method

.method public setModels(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldevlight/io/library/ntb/NavigationTabBar$Model;",
            ">;)V"
        }
    .end annotation

    .line 445
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldevlight/io/library/ntb/NavigationTabBar$Model;

    .line 446
    invoke-static {v1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$000(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 447
    invoke-static {v1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$000(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Ldevlight/io/library/ntb/NavigationTabBar$8;

    invoke-direct {v3, p0, v1}, Ldevlight/io/library/ntb/NavigationTabBar$8;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;Ldevlight/io/library/ntb/NavigationTabBar$Model;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 457
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModels:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 458
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    return-void
.end method

.method public setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V
    .locals 0

    .line 793
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    return-void
.end method

.method public setOnTabBarSelectedIndexListener(Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;)V
    .locals 1

    .line 717
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mOnTabBarSelectedIndexListener:Ldevlight/io/library/ntb/NavigationTabBar$OnTabBarSelectedIndexListener;

    .line 719
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    if-nez p1, :cond_0

    .line 720
    new-instance p1, Ldevlight/io/library/ntb/NavigationTabBar$9;

    invoke-direct {p1, p0}, Ldevlight/io/library/ntb/NavigationTabBar$9;-><init>(Ldevlight/io/library/ntb/NavigationTabBar;)V

    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 745
    :cond_0
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 746
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected setTitleMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 536
    sget-object p1, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ALL:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setTitleMode(Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;)V

    goto :goto_0

    .line 532
    :cond_0
    sget-object p1, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setTitleMode(Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;)V

    :goto_0
    return-void
.end method

.method public setTitleMode(Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;)V
    .locals 0

    .line 542
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    .line 543
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method

.method public setTitleSize(F)V
    .locals 1

    .line 511
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitleSize:F

    const/high16 v0, -0x40000000    # -2.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 512
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 636
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTypeface:Landroid/graphics/Typeface;

    .line 637
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 638
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->setBadgeTypeface()V

    .line 639
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 2

    .line 622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 626
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 628
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 629
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    .line 632
    :goto_0
    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 752
    iput-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsViewPagerMode:Z

    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 758
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 759
    :cond_2
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 762
    iput-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsViewPagerMode:Z

    .line 763
    iput-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 764
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 765
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 767
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->resetScroller()V

    .line 768
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void

    .line 760
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "ViewPager does not provide adapter instance."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setViewPager(Landroidx/viewpager/widget/ViewPager;I)V
    .locals 1

    .line 772
    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 774
    iput p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIndex:I

    .line 775
    iget-boolean p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsViewPagerMode:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 776
    :cond_0
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method

.method public show()V
    .locals 2

    .line 1672
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mBehavior:Ldevlight/io/library/behavior/NavigationTabBarBehavior;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ldevlight/io/library/behavior/NavigationTabBarBehavior;->resetOffset(Ldevlight/io/library/ntb/NavigationTabBar;Z)V

    goto :goto_0

    .line 1673
    :cond_0
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->scrollUp()V

    :goto_0
    return-void
.end method

.method protected updateCurrentModel(Ldevlight/io/library/ntb/NavigationTabBar$Model;FFFFFFFFI)V
    .locals 2

    .line 1423
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    sget-object v1, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object v0

    sub-float p4, p3, p4

    mul-float p4, p4, p5

    sub-float/2addr p3, p4

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1427
    :cond_0
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$400(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result p2

    iget-boolean p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsScaled:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p8, 0x0

    :goto_0
    add-float/2addr p2, p8

    .line 1428
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p3, p2, p2, p6, p7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1430
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    iget p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitleSize:F

    mul-float p3, p3, p9

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1431
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    sget-object p3, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1433
    :cond_2
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1434
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_3
    const p1, 0x3ef33333

    cmpg-float p1, p5, p1

    if-gtz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    const p2, 0x40066666

    mul-float p5, p5, p2

    sub-float/2addr p1, p5

    move p4, p1

    :cond_4
    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    const p1, 0x3f066666

    cmpl-float p1, p5, p1

    if-ltz p1, :cond_4

    const p1, 0x3f0ccccd

    sub-float/2addr p5, p1

    const p1, 0x3ff33333

    mul-float p1, p1, p5

    .line 1452
    :goto_1
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p4}, Ldevlight/io/library/ntb/NavigationTabBar;->clampValue(F)F

    move-result p3

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1453
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mSelectedIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->clampValue(F)F

    move-result p1

    mul-float p1, p1, p4

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected updateInactiveModel(Ldevlight/io/library/ntb/NavigationTabBar$Model;FFFFFF)V
    .locals 0

    .line 1513
    iget-boolean p4, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    sget-object p5, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    if-ne p4, p5, :cond_0

    .line 1514
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1515
    :cond_0
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$400(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result p3

    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$400(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result p4

    invoke-virtual {p2, p3, p4, p6, p7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1519
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    iget p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitleSize:F

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1520
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    sget-object p3, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    const/4 p4, 0x0

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1523
    :cond_1
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_2

    .line 1524
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    .line 1528
    :cond_2
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mSelectedIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected updateIndicatorPosition(F)V
    .locals 4

    .line 893
    iput p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mFraction:F

    .line 896
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mResizeInterpolator:Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;

    iget-boolean v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsResizeIn:Z

    invoke-static {v1, p1, v2}, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;->access$200(Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;FZ)F

    move-result v1

    iget v2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mEndPointerX:F

    iget v3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerLeftTop:F

    .line 900
    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelSize:F

    add-float/2addr v3, v0

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mResizeInterpolator:Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;

    iget-boolean v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsResizeIn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, p1, v1}, Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;->access$200(Ldevlight/io/library/ntb/NavigationTabBar$ResizeInterpolator;FZ)F

    move-result p1

    iget v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mEndPointerX:F

    iget v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mStartPointerX:F

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    add-float/2addr v3, p1

    iput v3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mPointerRightBottom:F

    .line 905
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method

.method protected updateLastModel(Ldevlight/io/library/ntb/NavigationTabBar$Model;FFFFFFFFI)V
    .locals 2

    .line 1469
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTitled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    sget-object v1, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object v0

    sub-float/2addr p3, p4

    mul-float p3, p3, p5

    add-float/2addr p4, p3

    invoke-virtual {v0, p2, p4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1473
    :cond_0
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$400(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result p2

    iget-boolean p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsScaled:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$500(Ldevlight/io/library/ntb/NavigationTabBar$Model;)F

    move-result p3

    sub-float/2addr p3, p8

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    add-float/2addr p2, p3

    .line 1475
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$600(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Matrix;

    move-result-object p3

    invoke-virtual {p3, p2, p2, p6, p7}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1477
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    iget p3, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitleSize:F

    mul-float p3, p3, p9

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1478
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mTitleMode:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    sget-object p3, Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;->ACTIVE:Ldevlight/io/library/ntb/NavigationTabBar$TitleMode;

    if-ne p2, p3, :cond_2

    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mModelTitlePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1480
    :cond_2
    invoke-static {p1}, Ldevlight/io/library/ntb/NavigationTabBar$Model;->access$700(Ldevlight/io/library/ntb/NavigationTabBar$Model;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1481
    iget-object p1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_3
    const p1, 0x3ef33333

    cmpg-float p1, p5, p1

    if-gtz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    const p2, 0x40066666

    mul-float p5, p5, p2

    sub-float/2addr p1, p5

    goto :goto_1

    :cond_4
    const p1, 0x3f066666

    cmpl-float p1, p5, p1

    if-ltz p1, :cond_5

    const p1, 0x3f0ccccd

    sub-float/2addr p5, p1

    const p1, 0x3ff33333

    mul-float p1, p1, p5

    move p4, p1

    :cond_5
    const/4 p1, 0x0

    .line 1499
    :goto_1
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p4}, Ldevlight/io/library/ntb/NavigationTabBar;->clampValue(F)F

    move-result p3

    const/high16 p4, 0x437f0000    # 255.0f

    mul-float p3, p3, p4

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1500
    iget-object p2, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mSelectedIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Ldevlight/io/library/ntb/NavigationTabBar;->clampValue(F)F

    move-result p1

    mul-float p1, p1, p4

    float-to-int p1, p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method protected updateTint()V
    .locals 3

    .line 1532
    iget-boolean v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIsTinted:Z

    if-eqz v0, :cond_0

    .line 1534
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mInactiveColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1536
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1537
    iget-object v1, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mSelectedIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 1540
    :cond_0
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1541
    iget-object v0, p0, Ldevlight/io/library/ntb/NavigationTabBar;->mSelectedIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1544
    :goto_0
    invoke-virtual {p0}, Ldevlight/io/library/ntb/NavigationTabBar;->postInvalidate()V

    return-void
.end method
