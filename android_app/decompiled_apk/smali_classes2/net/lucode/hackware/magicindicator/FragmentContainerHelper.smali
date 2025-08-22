.class public Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;
.super Ljava/lang/Object;
.source "FragmentContainerHelper.java"


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mDuration:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastSelectedIndex:I

.field private mMagicIndicators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/MagicIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mMagicIndicators:Ljava/util/List;

    const/16 v0, 0x96

    .line 27
    iput v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mDuration:I

    .line 28
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$1;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$1;-><init>(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 38
    new-instance v0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$2;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$2;-><init>(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mMagicIndicators:Ljava/util/List;

    const/16 v0, 0x96

    .line 27
    iput v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mDuration:I

    .line 28
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 30
    new-instance v0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$1;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$1;-><init>(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 38
    new-instance v0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$2;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper$2;-><init>(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 56
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mMagicIndicators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$000(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->dispatchPageScrollStateChanged(I)V

    return-void
.end method

.method static synthetic access$102(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 23
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;IFI)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->dispatchPageScrolled(IFI)V

    return-void
.end method

.method private dispatchPageScrollStateChanged(I)V
    .locals 2

    .line 152
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mMagicIndicators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 153
    invoke-virtual {v1, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchPageScrolled(IFI)V
    .locals 2

    .line 158
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mMagicIndicators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 159
    invoke-virtual {v1, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchPageSelected(I)V
    .locals 2

    .line 146
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mMagicIndicators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/lucode/hackware/magicindicator/MagicIndicator;

    .line 147
    invoke-virtual {v1, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getImitativePositionData(Ljava/util/List;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;",
            ">;I)",
            "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;"
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 67
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 68
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    return-object p0

    .line 70
    :cond_0
    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    invoke-direct {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;-><init>()V

    if-gez p1, :cond_1

    const/4 v1, 0x0

    .line 75
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 78
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    .line 80
    :goto_0
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    .line 81
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mTop:I

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mTop:I

    .line 82
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    .line 83
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mBottom:I

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mBottom:I

    .line 84
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v2

    mul-int v2, v2, p1

    add-int/2addr v1, v2

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    .line 85
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentTop:I

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentTop:I

    .line 86
    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->width()I

    move-result v2

    mul-int p1, p1, v2

    add-int/2addr v1, p1

    iput v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    .line 87
    iget p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentBottom:I

    iput p0, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentBottom:I

    return-object v0
.end method


# virtual methods
.method public attachMagicIndicator(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mMagicIndicators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public handlePageSelected(I)V
    .locals 1

    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, p1, v0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->handlePageSelected(IZ)V

    return-void
.end method

.method public handlePageSelected(IZ)V
    .locals 3

    .line 97
    iget v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mLastSelectedIndex:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 101
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_2

    .line 102
    :cond_1
    invoke-direct {p0, v1}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->dispatchPageScrollStateChanged(I)V

    .line 104
    :cond_2
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->dispatchPageSelected(I)V

    .line 105
    iget p2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mLastSelectedIndex:I

    int-to-float p2, p2

    .line 106
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 108
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    .line 109
    iput-object v2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 111
    :cond_3
    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    .line 112
    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    aput p2, v1, v0

    const/4 p2, 0x1

    int-to-float v0, p1

    aput v0, v1, p2

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 113
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 114
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 116
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    iget v0, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mDuration:I

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 117
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 119
    :cond_4
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->dispatchPageSelected(I)V

    .line 120
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mScrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 121
    iget p2, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mLastSelectedIndex:I

    invoke-direct {p0, p2, v1, v0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->dispatchPageScrolled(IFI)V

    .line 123
    :cond_5
    invoke-direct {p0, v0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->dispatchPageScrollStateChanged(I)V

    .line 124
    invoke-direct {p0, p1, v1, v0}, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->dispatchPageScrolled(IFI)V

    .line 126
    :goto_0
    iput p1, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mLastSelectedIndex:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 130
    iput p1, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mDuration:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-nez p1, :cond_0

    .line 135
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_0

    .line 137
    :cond_0
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/FragmentContainerHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_0
    return-void
.end method
