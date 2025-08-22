.class public Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;
.super Landroid/widget/ImageView;
.source "LoadingView.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/IBottomView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x42080000    # 34.0f

    .line 31
    invoke-static {p1, p2}, Lcom/lcodecore/tkrefreshlayout/utils/DensityUtil;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 32
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    .line 33
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 34
    invoke-virtual {p0, p2}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    sget p1, Lcom/lcodecore/tkrefreshlayout/R$drawable;->anim_loading_view:I

    invoke-virtual {p0, p1}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 0

    return-void
.end method

.method public onPullingUp(FFF)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public startAnim(FF)V
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/footer/LoadingView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
