.class public Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;
.super Landroid/widget/FrameLayout;
.source "ProgressLayout.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/IHeaderView;


# static fields
.field private static final CIRCLE_BG_LIGHT:I = -0x50506

.field private static final CIRCLE_DIAMETER:I = 0x28

.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38

.field public static final DEFAULT:I = 0x1

.field private static final DEFAULT_CIRCLE_TARGET:I = 0x40

.field public static final LARGE:I = 0x0

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_PROGRESS_ANGLE:F = 0.8f

.field private static final STARTING_PROGRESS_ALPHA:I = 0x4c


# instance fields
.field private mCircleHeight:I

.field private mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

.field private mCircleWidth:I

.field private mIsBeingDragged:Z

.field private mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mIsBeingDragged:Z

    .line 57
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 58
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x42200000    # 40.0f

    mul-float p2, p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleWidth:I

    .line 59
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p3

    float-to-int p1, p1

    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleHeight:I

    .line 60
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->createProgressView()V

    const/4 p1, 0x1

    .line 61
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method private createProgressView()V
    .locals 4

    .line 66
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, -0x50506

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;-><init>(Landroid/content/Context;IF)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    .line 67
    new-instance v0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    .line 68
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, v2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setBackgroundColor(I)V

    .line 69
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setVisibility(I)V

    .line 71
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 72
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onFinish(Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;

    invoke-direct {v1, p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout$1;-><init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 225
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 0

    const/4 p2, 0x0

    .line 196
    iput-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mIsBeingDragged:Z

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p3, p1, p2

    if-ltz p3, :cond_0

    .line 198
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 199
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 202
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p2, p1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method public onPullingDown(FFF)V
    .locals 4

    .line 165
    iget-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mIsBeingDragged:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 166
    iput-boolean p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mIsBeingDragged:Z

    .line 167
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    const/16 p3, 0x4c

    invoke-virtual {p2, p3}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_1

    .line 171
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setVisibility(I)V

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p3, p1, p2

    if-ltz p3, :cond_2

    .line 175
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p3, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 176
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p3, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 178
    :cond_2
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p3, p1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 179
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p3, p1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    :goto_0
    cmpg-float p3, p1, p2

    if-gtz p3, :cond_3

    .line 183
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    const/high16 v0, 0x42980000    # 76.0f

    const/high16 v1, 0x43330000    # 179.0f

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p3, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setAlpha(I)V

    :cond_3
    float-to-double v0, p1

    const-wide v2, 0x3fd999999999999aL    # 0.4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    .line 186
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const/high16 p3, 0x40a00000    # 5.0f

    mul-float p1, p1, p3

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p1, p3

    const p3, 0x3f4ccccd

    mul-float v0, p1, p3

    .line 188
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    const/4 v2, 0x0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-virtual {v1, v2, p3}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setStartEndTrim(FF)V

    .line 189
    iget-object p3, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-virtual {p3, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setArrowScale(F)V

    const/high16 p2, -0x41800000    # -0.25f

    const p3, 0x3ecccccd

    mul-float p1, p1, p3

    add-float/2addr p1, p2

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float p1, p1, p2

    .line 191
    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p2, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setProgressRotation(F)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->clearAnimation()V

    .line 146
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->stop()V

    .line 147
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 150
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 151
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 152
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 153
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setColorSchemeColors([I)V

    return-void
.end method

.method public varargs setColorSchemeResources([I)V
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 105
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 106
    aget v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->setColorSchemeColors([I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeColor(I)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setBackgroundColor(I)V

    .line 92
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setBackgroundColor(I)V

    return-void
.end method

.method public setProgressBackgroundColorSchemeResource(I)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->setProgressBackgroundColorSchemeColor(I)V

    return-void
.end method

.method public setSize(I)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez p1, :cond_1

    const/high16 v1, 0x42600000    # 56.0f

    .line 131
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleWidth:I

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleHeight:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x42200000    # 40.0f

    .line 133
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleWidth:I

    iput v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleHeight:I

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {v0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->updateSizes(I)V

    .line 140
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public startAnim(FF)V
    .locals 0

    .line 208
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setVisibility(I)V

    .line 209
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 210
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setAlpha(I)V

    .line 211
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 212
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mCircleView:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 213
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->setArrowScale(F)V

    .line 214
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/ProgressLayout;->mProgress:Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;

    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/MaterialProgressDrawable;->start()V

    return-void
.end method
