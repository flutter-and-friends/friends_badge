.class public Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;
.super Landroid/widget/FrameLayout;
.source "SinaRefreshView.java"

# interfaces
.implements Lcom/lcodecore/tkrefreshlayout/IHeaderView;


# instance fields
.field private loadingView:Landroid/widget/ImageView;

.field private pullDownStr:Ljava/lang/String;

.field private refreshArrow:Landroid/widget/ImageView;

.field private refreshTextView:Landroid/widget/TextView;

.field private refreshingStr:Ljava/lang/String;

.field private releaseRefreshStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "\u4e0b\u62c9\u5237\u65b0"

    .line 68
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    const-string p1, "\u91ca\u653e\u5237\u65b0"

    .line 69
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->releaseRefreshStr:Ljava/lang/String;

    const-string p1, "\u6b63\u5728\u5237\u65b0"

    .line 70
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshingStr:Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/lcodecore/tkrefreshlayout/R$layout;->view_sinaheader:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    sget v1, Lcom/lcodecore/tkrefreshlayout/R$id;->iv_arrow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    .line 43
    sget v1, Lcom/lcodecore/tkrefreshlayout/R$id;->tv:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    .line 44
    sget v1, Lcom/lcodecore/tkrefreshlayout/R$id;->iv_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {p0, v0}, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onFinish(Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;)V
    .locals 0

    .line 106
    invoke-interface {p1}, Lcom/lcodecore/tkrefreshlayout/OnAnimEndListener;->onAnimEnd()V

    return-void
.end method

.method public onPullReleasing(FFF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    mul-float p1, p1, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 89
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    .line 90
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPullingDown(FFF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->releaseRefreshStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    mul-float p1, p1, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x43340000    # 180.0f

    mul-float p1, p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setArrowResource(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setPullDownStr(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->pullDownStr:Ljava/lang/String;

    return-void
.end method

.method public setRefreshingStr(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshingStr:Ljava/lang/String;

    return-void
.end method

.method public setReleaseRefreshStr(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->releaseRefreshStr:Ljava/lang/String;

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public startAnim(FF)V
    .locals 0

    .line 98
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshTextView:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshingStr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->refreshArrow:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/lcodecore/tkrefreshlayout/header/SinaRefreshView;->loadingView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
