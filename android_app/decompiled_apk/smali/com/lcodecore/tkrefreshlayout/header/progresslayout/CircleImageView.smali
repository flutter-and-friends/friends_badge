.class public Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;
.super Landroid/widget/ImageView;
.source "CircleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView$OvalShadow;
    }
.end annotation


# static fields
.field private static final FILL_SHADOW_COLOR:I = 0x3d000000

.field private static final KEY_SHADOW_COLOR:I = 0x1e000000

.field private static final SHADOW_ELEVATION:I = 0x4

.field private static final SHADOW_RADIUS:F = 3.5f

.field private static final X_OFFSET:F = 0.0f

.field private static final Y_OFFSET:F = 1.75f


# instance fields
.field private mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mShadowRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IF)V
    .locals 4

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p3, p3, p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p3, p3, v0

    float-to-int p3, p3

    const/high16 v0, 0x3fe00000    # 1.75f

    mul-float v0, v0, p1

    float-to-int v0, v0

    const/4 v1, 0x0

    mul-float v1, v1, p1

    float-to-int v1, v1

    const/high16 v2, 0x40600000    # 3.5f

    mul-float v2, v2, p1

    float-to-int v2, v2

    .line 41
    iput v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mShadowRadius:I

    .line 44
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->elevationSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p3, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/high16 v0, 0x40800000    # 4.0f

    mul-float p1, p1, v0

    .line 46
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView$OvalShadow;

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mShadowRadius:I

    invoke-direct {p1, p0, v2, p3}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView$OvalShadow;-><init>(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;II)V

    .line 49
    new-instance p3, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 p1, 0x1

    .line 50
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-static {p0, p1, v2}, Landroidx/core/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 51
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mShadowRadius:I

    int-to-float v2, v2

    int-to-float v1, v1

    int-to-float v0, v0

    const/high16 v3, 0x1e000000

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 53
    iget p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mShadowRadius:I

    .line 55
    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setPadding(IIII)V

    .line 57
    :goto_0
    invoke-virtual {p3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    invoke-virtual {p0, p3}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;)I
    .locals 0

    .line 21
    iget p0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mShadowRadius:I

    return p0
.end method

.method static synthetic access$002(Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;I)I
    .locals 0

    .line 21
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mShadowRadius:I

    return p1
.end method

.method private elevationSupported()Z
    .locals 2

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .line 88
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationEnd()V

    .line 89
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/widget/ImageView;->onAnimationStart()V

    .line 81
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 68
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->elevationSupported()Z

    move-result p1

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mShadowRadius:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getMeasuredHeight()I

    move-result p2

    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mShadowRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->mListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColorRes(I)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/header/progresslayout/CircleImageView;->setBackgroundColor(I)V

    return-void
.end method
