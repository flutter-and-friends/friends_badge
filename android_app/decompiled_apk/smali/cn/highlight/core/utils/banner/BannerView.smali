.class public Lcn/highlight/core/utils/banner/BannerView;
.super Landroid/widget/LinearLayout;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;,
        Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;,
        Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;
    }
.end annotation


# instance fields
.field private isManualLoop:Z

.field private isZidongLunbo:Z

.field private mAdvAdapter:Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;

.field private mAdvPager:Landroidx/viewpager/widget/ViewPager;

.field private mContext:Landroid/content/Context;

.field private mGroup:Landroid/view/ViewGroup;

.field private mHandler:Landroid/os/Handler;

.field private mImageIndex:I

.field private mImageTimerTask:Ljava/lang/Runnable;

.field private mImageView:Landroid/widget/ImageView;

.field private mImageViews:[Landroid/widget/ImageView;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvPager:Landroidx/viewpager/widget/ViewPager;

    .line 54
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageView:Landroid/widget/ImageView;

    .line 59
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageViews:[Landroid/widget/ImageView;

    const/4 p1, 0x0

    .line 64
    iput p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageIndex:I

    .line 69
    iput-boolean p1, p0, Lcn/highlight/core/utils/banner/BannerView;->isManualLoop:Z

    .line 71
    iput-boolean p1, p0, Lcn/highlight/core/utils/banner/BannerView;->isZidongLunbo:Z

    .line 74
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance p1, Lcn/highlight/core/utils/banner/BannerView$1;

    invoke-direct {p1, p0}, Lcn/highlight/core/utils/banner/BannerView$1;-><init>(Lcn/highlight/core/utils/banner/BannerView;)V

    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageTimerTask:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 39
    iput-object p2, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvPager:Landroidx/viewpager/widget/ViewPager;

    .line 54
    iput-object p2, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageView:Landroid/widget/ImageView;

    .line 59
    iput-object p2, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageViews:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageIndex:I

    .line 69
    iput-boolean v0, p0, Lcn/highlight/core/utils/banner/BannerView;->isManualLoop:Z

    .line 71
    iput-boolean v0, p0, Lcn/highlight/core/utils/banner/BannerView;->isZidongLunbo:Z

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcn/highlight/core/utils/banner/BannerView$1;

    invoke-direct {v0, p0}, Lcn/highlight/core/utils/banner/BannerView$1;-><init>(Lcn/highlight/core/utils/banner/BannerView;)V

    iput-object v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageTimerTask:Ljava/lang/Runnable;

    .line 109
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcn/highlight/core/R$layout;->banner_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    sget p1, Lcn/highlight/core/R$id;->adv_pager:I

    invoke-virtual {p0, p1}, Lcn/highlight/core/utils/banner/BannerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvPager:Landroidx/viewpager/widget/ViewPager;

    .line 112
    iget-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;

    invoke-direct {v0, p0, p2}, Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;-><init>(Lcn/highlight/core/utils/banner/BannerView;Lcn/highlight/core/utils/banner/BannerView$1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 113
    iget-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p2, Lcn/highlight/core/utils/banner/BannerView$2;

    invoke-direct {p2, p0}, Lcn/highlight/core/utils/banner/BannerView$2;-><init>(Lcn/highlight/core/utils/banner/BannerView;)V

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    sget p1, Lcn/highlight/core/R$id;->viewGroup:I

    invoke-virtual {p0, p1}, Lcn/highlight/core/utils/banner/BannerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mGroup:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/core/utils/banner/BannerView;)[Landroid/widget/ImageView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageViews:[Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcn/highlight/core/utils/banner/BannerView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageIndex:I

    return p0
.end method

.method static synthetic access$102(Lcn/highlight/core/utils/banner/BannerView;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageIndex:I

    return p1
.end method

.method static synthetic access$108(Lcn/highlight/core/utils/banner/BannerView;)I
    .locals 2

    .line 29
    iget v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageIndex:I

    return v0
.end method

.method static synthetic access$200(Lcn/highlight/core/utils/banner/BannerView;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcn/highlight/core/utils/banner/BannerView;->isManualLoop:Z

    return p0
.end method

.method static synthetic access$300(Lcn/highlight/core/utils/banner/BannerView;)I
    .locals 0

    .line 29
    iget p0, p0, Lcn/highlight/core/utils/banner/BannerView;->size:I

    return p0
.end method

.method static synthetic access$400(Lcn/highlight/core/utils/banner/BannerView;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$600(Lcn/highlight/core/utils/banner/BannerView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/highlight/core/utils/banner/BannerView;->startImageTimerTask()V

    return-void
.end method

.method static synthetic access$700(Lcn/highlight/core/utils/banner/BannerView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcn/highlight/core/utils/banner/BannerView;->stopImageTimerTask()V

    return-void
.end method

.method private startImageTimerTask()V
    .locals 4

    .line 206
    iget-boolean v0, p0, Lcn/highlight/core/utils/banner/BannerView;->isZidongLunbo:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcn/highlight/core/utils/banner/BannerView;->stopImageTimerTask()V

    .line 209
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageTimerTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private stopImageTimerTask()V
    .locals 2

    .line 217
    iget-boolean v0, p0, Lcn/highlight/core/utils/banner/BannerView;->isZidongLunbo:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageTimerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public pushImageCycle()V
    .locals 0

    .line 199
    invoke-direct {p0}, Lcn/highlight/core/utils/banner/BannerView;->stopImageTimerTask()V

    return-void
.end method

.method public setImageResources(Ljava/util/List;Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/core/utils/banner/BannerBean;",
            ">;",
            "Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;",
            ")V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcn/highlight/core/utils/banner/BannerView;->size:I

    .line 145
    iget v0, p0, Lcn/highlight/core/utils/banner/BannerView;->size:I

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageViews:[Landroid/widget/ImageView;

    .line 147
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    invoke-virtual {p0}, Lcn/highlight/core/utils/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcn/highlight/core/utils/ScreenUtil;->DPtoPX(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 151
    invoke-virtual {p0}, Lcn/highlight/core/utils/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/highlight/core/utils/ScreenUtil;->DPtoPX(ILandroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 152
    invoke-virtual {p0}, Lcn/highlight/core/utils/banner/BannerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/highlight/core/utils/ScreenUtil;->DPtoPX(ILandroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/4 v1, 0x0

    .line 155
    :goto_0
    iget v3, p0, Lcn/highlight/core/utils/banner/BannerView;->size:I

    if-ge v1, v3, :cond_1

    .line 156
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/highlight/core/utils/banner/BannerView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageView:Landroid/widget/ImageView;

    .line 157
    iget-object v3, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v3, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageViews:[Landroid/widget/ImageView;

    iget-object v4, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageView:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    if-nez v1, :cond_0

    .line 160
    aget-object v3, v3, v1

    sget v4, Lcn/highlight/core/R$drawable;->dot_b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 162
    :cond_0
    aget-object v3, v3, v1

    sget v4, Lcn/highlight/core/R$drawable;->dot_h:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 164
    :goto_1
    iget-object v3, p0, Lcn/highlight/core/utils/banner/BannerView;->mGroup:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageViews:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_2

    .line 169
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mGroup:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 170
    invoke-virtual {p0, v2}, Lcn/highlight/core/utils/banner/BannerView;->setIsManualLoop(Z)V

    .line 172
    :cond_2
    new-instance v0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;

    iget-object v1, p0, Lcn/highlight/core/utils/banner/BannerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1, p2}, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;-><init>(Lcn/highlight/core/utils/banner/BannerView;Landroid/content/Context;Ljava/util/List;Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;)V

    iput-object v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvAdapter:Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;

    .line 173
    iget-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvPager:Landroidx/viewpager/widget/ViewPager;

    iget-object p2, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvAdapter:Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 174
    iget-boolean p1, p0, Lcn/highlight/core/utils/banner/BannerView;->isManualLoop:Z

    if-eqz p1, :cond_3

    .line 175
    iget-object p1, p0, Lcn/highlight/core/utils/banner/BannerView;->mAdvPager:Landroidx/viewpager/widget/ViewPager;

    const p2, 0x186a0

    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView;->mImageViews:[Landroid/widget/ImageView;

    array-length v0, v0

    mul-int v0, v0, p2

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 177
    :cond_3
    invoke-direct {p0}, Lcn/highlight/core/utils/banner/BannerView;->startImageTimerTask()V

    return-void
.end method

.method public setIsManualLoop(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcn/highlight/core/utils/banner/BannerView;->isManualLoop:Z

    return-void
.end method

.method public setIsZidongLunbo(Z)V
    .locals 0

    .line 185
    iput-boolean p1, p0, Lcn/highlight/core/utils/banner/BannerView;->isZidongLunbo:Z

    return-void
.end method

.method public startImageCycle()V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcn/highlight/core/utils/banner/BannerView;->startImageTimerTask()V

    return-void
.end method
