.class public Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;,
        Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_OFFSET_ANGLE:F = 5.0f

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 8.75f

.field private static final CENTER_RADIUS_LARGE:F = 12.5f

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field private static final COLOR_START_DELAY_OFFSET:F = 0.75f

.field static final DEFAULT:I = 0x1

.field private static final END_TRIM_START_DELAY_OFFSET:F = 0.5f

.field private static final FULL_ROTATION:F = 1080.0f

.field static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final NUM_POINTS:F = 5.0f

.field private static final START_TRIM_DURATION_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private final COLORS:[I

.field private mAnimation:Landroid/view/animation/Animation;

.field private final mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;

.field mFinishing:Z

.field private mHeight:D

.field private mParent:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

.field private mRotation:F

.field private mRotationCount:F

.field private mWidth:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 37
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 102
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    aput v3, v1, v2

    .line 58
    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->COLORS:[I

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 433
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$3;

    invoke-direct {v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$3;-><init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;)V

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    .line 103
    iput-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mParent:Landroid/view/View;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 106
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 107
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->COLORS:[I

    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->updateSizes(I)V

    .line 110
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setupAnimators()V

    return-void
.end method

.method static synthetic access$000(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;FLcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->applyFinishTranslation(FLcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$100(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)F
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->getMinProgressArc(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;FLcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->updateRingColor(FLcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V

    return-void
.end method

.method static synthetic access$300()Landroid/view/animation/Interpolator;
    .locals 1

    .line 35
    sget-object v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;)F
    .locals 0

    .line 35
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRotationCount:F

    return p0
.end method

.method static synthetic access$402(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;F)F
    .locals 0

    .line 35
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRotationCount:F

    return p1
.end method

.method private applyFinishTranslation(FLcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 4

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->updateRingColor(FLcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V

    .line 332
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 334
    invoke-direct {p0, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->getMinProgressArc(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)F

    move-result v1

    .line 335
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    .line 336
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v3

    sub-float/2addr v3, v1

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    .line 338
    invoke-virtual {p2, v2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 339
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 340
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    .line 341
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    .line 342
    invoke-virtual {p2, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 6

    .line 293
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    .line 299
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method private getMinProgressArc(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)F
    .locals 6

    .line 288
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v2, v2, v4

    div-double/2addr v0, v2

    .line 287
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private getRotation()F
    .locals 1

    .line 239
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRotation:F

    return v0
.end method

.method private setSizeParameters(DDDDFF)V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 116
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 117
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double p1, p1, v2

    .line 119
    iput-wide p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mWidth:D

    mul-double p3, p3, v2

    .line 120
    iput-wide p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mHeight:D

    double-to-float p1, p7

    mul-float p1, p1, v1

    .line 121
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V

    mul-double p5, p5, v2

    .line 122
    invoke-virtual {v0, p5, p6}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setCenterRadius(D)V

    const/4 p1, 0x0

    .line 123
    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    mul-float p9, p9, v1

    mul-float p10, p10, v1

    .line 124
    invoke-virtual {v0, p9, p10}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 125
    iget-wide p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mWidth:D

    double-to-int p1, p1

    iget-wide p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mHeight:D

    double-to-int p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setInsets(II)V

    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    .line 347
    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$1;

    invoke-direct {v1, p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$1;-><init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V

    const/4 v2, -0x1

    .line 399
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 400
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 401
    sget-object v2, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 402
    new-instance v2, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$2;-><init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 430
    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method private updateRingColor(FLcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 322
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    .line 323
    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getNextColor()I

    move-result v1

    .line 321
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->evaluateColorChange(FII)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setColor(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 210
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 212
    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 213
    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v2, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 214
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 200
    iget-wide v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mHeight:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 205
    iget-wide v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mWidth:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    .line 249
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 252
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 253
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public setAlpha(I)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setAlpha(I)V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setArrowScale(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setColors([I)V

    .line 195
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method setRotation(F)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRotation:F

    .line 234
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    .line 167
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    return-void
.end method

.method public showArrow(Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 263
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->storeOriginals()V

    .line 265
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mFinishing:Z

    .line 267
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 268
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 271
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->resetOriginals()V

    .line 272
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 273
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setRotation(F)V

    .line 281
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setShowArrow(Z)V

    .line 282
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->setColorIndex(I)V

    .line 283
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->mRing:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable$Ring;->resetOriginals()V

    return-void
.end method

.method public updateSizes(I)V
    .locals 22

    if-nez p1, :cond_0

    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    .line 137
    invoke-direct/range {v0 .. v10}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    goto :goto_0

    :cond_0
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    const-wide v16, 0x4021800000000000L    # 8.75

    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v11, p0

    .line 140
    invoke-direct/range {v11 .. v21}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V

    :goto_0
    return-void
.end method
