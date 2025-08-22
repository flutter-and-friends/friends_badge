.class public Lcom/geek/banner/Banner;
.super Landroid/widget/RelativeLayout;
.source "Banner.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geek/banner/Banner$OnBannerSimplePagerListener;,
        Lcom/geek/banner/Banner$OnBannerPagerChangedListener;,
        Lcom/geek/banner/Banner$OnBannerClickListener;,
        Lcom/geek/banner/Banner$BannerPagerAdapter;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MULTIPAGE_EXTRA_NUM:I = 0x4

.field public static final NORMAL_EXTRA_NUM:I = 0x2

.field public static final TAG:Ljava/lang/String; = "banner"


# instance fields
.field private mBannerEntry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geek/banner/loader/BannerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerLoader:Lcom/geek/banner/loader/BannerLoader;

.field private mBannerPagerAdapter:Lcom/geek/banner/Banner$BannerPagerAdapter;

.field private mBannerPagerChangedListener:Lcom/geek/banner/Banner$OnBannerPagerChangedListener;

.field private final mBannerPlayRunnable:Ljava/lang/Runnable;

.field private mBannerText:Landroid/widget/TextView;

.field private mCanAutoPlay:Z

.field private mCurIndicatorIndex:I

.field private mCurrentIndex:I

.field private mDefaultBanner:I

.field private mDefaultImg:Landroid/widget/ImageView;

.field private mExposeWidth:I

.field private mIndicatorDefaultD:I

.field private mIndicatorDefaultH:I

.field private mIndicatorDefaultW:I

.field private mIndicatorLl:Landroid/widget/LinearLayout;

.field private mIndicatorMarginBottom:I

.field private mIndicatorSelectD:I

.field private mIndicatorSelectedH:I

.field private mIndicatorSelectedW:I

.field private mIndicatorSpacing:I

.field private mIntervalTime:I

.field private mMultiTransform:I

.field private mMzTransform:I

.field private mNeedPagers:I

.field private mOnBannerClickListener:Lcom/geek/banner/Banner$OnBannerClickListener;

.field private mOverlapSize:I

.field private mPageSpacing:I

.field private mPagerScrollTime:I

.field private mRealPagers:I

.field private mShowIndicator:Z

.field private mShowModel:I

.field private mSingleTransform:I

.field private mViewPager:Lcom/geek/banner/widget/BannerViewPager;

.field private mWeakHandler:Lcom/geek/banner/widget/WeakHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, v0}, Lcom/geek/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0, p1, p2, v0}, Lcom/geek/banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance v0, Lcom/geek/banner/widget/WeakHandler;

    invoke-direct {v0}, Lcom/geek/banner/widget/WeakHandler;-><init>()V

    iput-object v0, p0, Lcom/geek/banner/Banner;->mWeakHandler:Lcom/geek/banner/widget/WeakHandler;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geek/banner/Banner;->mBannerItems:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    const/4 v0, 0x1

    .line 121
    iput v0, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/geek/banner/Banner;->mCurIndicatorIndex:I

    .line 624
    new-instance v0, Lcom/geek/banner/Banner$1;

    invoke-direct {v0, p0}, Lcom/geek/banner/Banner$1;-><init>(Lcom/geek/banner/Banner;)V

    iput-object v0, p0, Lcom/geek/banner/Banner;->mBannerPlayRunnable:Ljava/lang/Runnable;

    .line 141
    sget v0, Lcom/geek/banner/R$layout;->merge_banner:I

    invoke-static {p1, v0, p0}, Lcom/geek/banner/Banner;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/geek/banner/Banner;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    invoke-direct {p0}, Lcom/geek/banner/Banner;->initView()V

    .line 144
    invoke-direct {p0}, Lcom/geek/banner/Banner;->initViewPagerScroll()V

    return-void
.end method

.method static synthetic access$100(Lcom/geek/banner/Banner;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    return p0
.end method

.method static synthetic access$1000(Lcom/geek/banner/Banner;)Ljava/util/ArrayList;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/geek/banner/Banner;->mBannerItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$108(Lcom/geek/banner/Banner;)I
    .locals 2

    .line 60
    iget v0, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$1100(Lcom/geek/banner/Banner;I)I
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/geek/banner/Banner;->findRealPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/geek/banner/Banner;)Lcom/geek/banner/Banner$OnBannerClickListener;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/geek/banner/Banner;->mOnBannerClickListener:Lcom/geek/banner/Banner$OnBannerClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geek/banner/Banner;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/geek/banner/Banner;->mShowModel:I

    return p0
.end method

.method static synthetic access$300(Lcom/geek/banner/Banner;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    return p0
.end method

.method static synthetic access$400(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/BannerViewPager;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/geek/banner/Banner;)Ljava/lang/Runnable;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/geek/banner/Banner;->mBannerPlayRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/WeakHandler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/geek/banner/Banner;->mWeakHandler:Lcom/geek/banner/widget/WeakHandler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/geek/banner/Banner;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/geek/banner/Banner;->mIntervalTime:I

    return p0
.end method

.method static synthetic access$800(Lcom/geek/banner/Banner;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/geek/banner/Banner;)Lcom/geek/banner/loader/BannerLoader;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/geek/banner/Banner;->mBannerLoader:Lcom/geek/banner/loader/BannerLoader;

    return-object p0
.end method

.method private createDefaultIndicator(I)V
    .locals 4

    .line 806
    iget-boolean v0, p0, Lcom/geek/banner/Banner;->mShowIndicator:Z

    if-nez v0, :cond_0

    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/geek/banner/Banner;->mIndicatorLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_0
    if-lez p1, :cond_1

    .line 809
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/geek/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 810
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/geek/banner/Banner;->mIndicatorDefaultW:I

    iget v3, p0, Lcom/geek/banner/Banner;->mIndicatorDefaultH:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 811
    iget v2, p0, Lcom/geek/banner/Banner;->mIndicatorSpacing:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 812
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    iget v1, p0, Lcom/geek/banner/Banner;->mIndicatorDefaultD:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 814
    iget-object v1, p0, Lcom/geek/banner/Banner;->mIndicatorLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createOnlyOnePager(Lcom/geek/banner/loader/BannerEntry;)V
    .locals 4

    .line 849
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerLoader:Lcom/geek/banner/loader/BannerLoader;

    iget-object v1, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v1}, Lcom/geek/banner/widget/BannerViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/geek/banner/loader/BannerLoader;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    .line 850
    iget-object v1, p0, Lcom/geek/banner/Banner;->mBannerLoader:Lcom/geek/banner/loader/BannerLoader;

    iget-object v3, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v3}, Lcom/geek/banner/widget/BannerViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v3, p1, v2, v0}, Lcom/geek/banner/loader/BannerLoader;->loadView(Landroid/content/Context;Lcom/geek/banner/loader/BannerEntry;ILandroid/view/View;)V

    .line 851
    new-instance p1, Lcom/geek/banner/Banner$2;

    invoke-direct {p1, p0}, Lcom/geek/banner/Banner$2;-><init>(Lcom/geek/banner/Banner;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 859
    sget p1, Lcom/geek/banner/R$id;->only_one_pager:I

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 861
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 863
    invoke-virtual {p0, v0, p1}, Lcom/geek/banner/Banner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 870
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private findRealPosition(I)I
    .locals 5

    .line 575
    iget v0, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_3

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 588
    iget p1, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    :goto_0
    sub-int/2addr p1, v3

    return p1

    .line 589
    :cond_1
    iget v0, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    sub-int/2addr p1, v3

    return p1

    :cond_3
    :goto_1
    if-ne p1, v3, :cond_4

    .line 578
    iget p1, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    goto :goto_0

    :cond_4
    if-eq p1, v2, :cond_6

    .line 579
    iget v0, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    sub-int/2addr v0, v2

    if-ne v0, p1, :cond_5

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v2

    return p1

    :cond_6
    :goto_2
    return v1
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 156
    sget-object p3, Lcom/geek/banner/R$styleable;->Banner:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 157
    sget p3, Lcom/geek/banner/R$styleable;->Banner_banner_auto_play:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/geek/banner/Banner;->mCanAutoPlay:Z

    .line 158
    sget p3, Lcom/geek/banner/R$styleable;->Banner_banner_show_model:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/geek/banner/Banner;->mShowModel:I

    .line 159
    sget p3, Lcom/geek/banner/R$styleable;->Banner_banner_show_indicator:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/geek/banner/Banner;->mShowIndicator:Z

    .line 160
    sget p3, Lcom/geek/banner/R$styleable;->Banner_banner_default_image:I

    sget v0, Lcom/geek/banner/R$drawable;->no_banner:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/geek/banner/Banner;->mDefaultBanner:I

    .line 161
    sget p3, Lcom/geek/banner/R$styleable;->Banner_banner_interval_time:I

    const/16 v0, 0xbb8

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/geek/banner/Banner;->mIntervalTime:I

    .line 162
    sget p3, Lcom/geek/banner/R$styleable;->Banner_banner_scroll_time:I

    const/16 v0, 0x320

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/geek/banner/Banner;->mPagerScrollTime:I

    .line 163
    sget p3, Lcom/geek/banner/R$styleable;->Banner_banner_expose_width:I

    const/high16 v0, 0x42200000    # 40.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/geek/banner/Banner;->mExposeWidth:I

    .line 164
    sget p3, Lcom/geek/banner/R$styleable;->Banner_banner_mz_overlap:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/geek/banner/Banner;->mOverlapSize:I

    .line 165
    sget p3, Lcom/geek/banner/R$styleable;->Banner_banner_page_spacing:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/geek/banner/Banner;->mPageSpacing:I

    .line 166
    sget p3, Lcom/geek/banner/R$styleable;->Banner_indicator_select_width:I

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/geek/banner/Banner;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/geek/banner/Banner;->mIndicatorSelectedW:I

    .line 167
    sget p3, Lcom/geek/banner/R$styleable;->Banner_indicator_default_width:I

    invoke-static {p1, v1}, Lcom/geek/banner/Banner;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/geek/banner/Banner;->mIndicatorDefaultW:I

    .line 168
    sget p3, Lcom/geek/banner/R$styleable;->Banner_indicator_select_height:I

    invoke-static {p1, v1}, Lcom/geek/banner/Banner;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/geek/banner/Banner;->mIndicatorSelectedH:I

    .line 169
    sget p3, Lcom/geek/banner/R$styleable;->Banner_indicator_default_height:I

    invoke-static {p1, v1}, Lcom/geek/banner/Banner;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/geek/banner/Banner;->mIndicatorDefaultH:I

    .line 170
    sget p3, Lcom/geek/banner/R$styleable;->Banner_indicator_space:I

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p1, v1}, Lcom/geek/banner/Banner;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lcom/geek/banner/Banner;->mIndicatorSpacing:I

    .line 171
    sget p3, Lcom/geek/banner/R$styleable;->Banner_indicator_margin_bottom:I

    invoke-static {p1, v0}, Lcom/geek/banner/Banner;->dip2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/geek/banner/Banner;->mIndicatorMarginBottom:I

    .line 172
    sget p1, Lcom/geek/banner/R$styleable;->Banner_indicator_select_drawable:I

    sget p3, Lcom/geek/banner/R$drawable;->shape_banner_select_indicator:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/geek/banner/Banner;->mIndicatorSelectD:I

    .line 173
    sget p1, Lcom/geek/banner/R$styleable;->Banner_indicator_default_drawable:I

    sget p3, Lcom/geek/banner/R$drawable;->shape_banner_default_indicator:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/geek/banner/Banner;->mIndicatorDefaultD:I

    .line 174
    sget p1, Lcom/geek/banner/R$styleable;->Banner_banner_single_anim:I

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/geek/banner/Banner;->mSingleTransform:I

    .line 175
    sget p1, Lcom/geek/banner/R$styleable;->Banner_banner_multi_anim:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/geek/banner/Banner;->mMultiTransform:I

    .line 176
    sget p1, Lcom/geek/banner/R$styleable;->Banner_banner_mz_anim:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    iput p1, p0, Lcom/geek/banner/Banner;->mMzTransform:I

    .line 177
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initBannerTransformer()V
    .locals 5

    .line 271
    iget v0, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v0, v4, :cond_10

    .line 272
    iget v0, p0, Lcom/geek/banner/Banner;->mSingleTransform:I

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/geek/banner/transformer/simple/DefaultTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/DefaultTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    .line 275
    new-instance v0, Lcom/geek/banner/transformer/simple/AccordionTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/AccordionTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 277
    new-instance v0, Lcom/geek/banner/transformer/simple/BackgroundToForegroundTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/BackgroundToForegroundTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 279
    new-instance v0, Lcom/geek/banner/transformer/simple/ForegroundToBackgroundTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/ForegroundToBackgroundTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 281
    new-instance v0, Lcom/geek/banner/transformer/simple/CubeInTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/CubeInTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 283
    new-instance v0, Lcom/geek/banner/transformer/simple/CubeOutTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/CubeOutTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 285
    new-instance v0, Lcom/geek/banner/transformer/simple/DepthPageTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/DepthPageTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 287
    new-instance v0, Lcom/geek/banner/transformer/simple/FlipHorizontalTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/FlipHorizontalTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 289
    new-instance v0, Lcom/geek/banner/transformer/simple/FlipVerticalTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/FlipVerticalTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 291
    new-instance v0, Lcom/geek/banner/transformer/simple/RotateDownTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/RotateDownTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 293
    new-instance v0, Lcom/geek/banner/transformer/simple/RotateUpTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/RotateUpTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    .line 295
    new-instance v0, Lcom/geek/banner/transformer/simple/ScaleInOutTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/ScaleInOutTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    .line 297
    new-instance v0, Lcom/geek/banner/transformer/simple/StackTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/StackTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_d

    .line 299
    new-instance v0, Lcom/geek/banner/transformer/simple/TabletTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/TabletTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xe

    if-ne v0, v1, :cond_e

    .line 301
    new-instance v0, Lcom/geek/banner/transformer/simple/ZoomInTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/ZoomInTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xf

    if-ne v0, v1, :cond_f

    .line 303
    new-instance v0, Lcom/geek/banner/transformer/simple/ZoomOutTranformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/ZoomOutTranformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto/16 :goto_0

    .line 305
    :cond_f
    new-instance v0, Lcom/geek/banner/transformer/simple/ZoomOutSlideTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/simple/ZoomOutSlideTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto :goto_0

    :cond_10
    if-ne v0, v3, :cond_16

    .line 308
    iget v0, p0, Lcom/geek/banner/Banner;->mMultiTransform:I

    if-nez v0, :cond_11

    .line 309
    new-instance v0, Lcom/geek/banner/transformer/complex/AlphaPageTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/AlphaPageTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto :goto_0

    :cond_11
    if-ne v0, v4, :cond_12

    .line 311
    new-instance v0, Lcom/geek/banner/transformer/complex/NonPageTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/NonPageTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto :goto_0

    :cond_12
    if-ne v0, v3, :cond_13

    .line 313
    new-instance v0, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/RotateDownPageTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto :goto_0

    :cond_13
    if-ne v0, v2, :cond_14

    .line 315
    new-instance v0, Lcom/geek/banner/transformer/complex/RotateUpPageTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/RotateUpPageTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto :goto_0

    :cond_14
    if-ne v0, v1, :cond_15

    .line 317
    new-instance v0, Lcom/geek/banner/transformer/complex/RotateYTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/RotateYTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto :goto_0

    .line 319
    :cond_15
    new-instance v0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/ScaleInTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto :goto_0

    .line 322
    :cond_16
    iget v0, p0, Lcom/geek/banner/Banner;->mMzTransform:I

    if-nez v0, :cond_17

    .line 323
    new-instance v0, Lcom/geek/banner/transformer/complex/RotateYTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/RotateYTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto :goto_0

    :cond_17
    if-ne v0, v4, :cond_18

    .line 325
    new-instance v0, Lcom/geek/banner/transformer/complex/ScaleInTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/ScaleInTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    goto :goto_0

    .line 327
    :cond_18
    new-instance v0, Lcom/geek/banner/transformer/complex/ScaleYTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/ScaleYTransformer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;

    :goto_0
    return-void
.end method

.method private initIndicator()V
    .locals 5

    .line 231
    iget-boolean v0, p0, Lcom/geek/banner/Banner;->mShowIndicator:Z

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/geek/banner/Banner;->mIndicatorLl:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/geek/banner/Banner;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/geek/banner/Banner;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/geek/banner/Banner;->mIndicatorLl:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 236
    iget v2, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 237
    iget v2, p0, Lcom/geek/banner/Banner;->mExposeWidth:I

    iget v3, p0, Lcom/geek/banner/Banner;->mPageSpacing:I

    add-int v4, v2, v3

    add-int/2addr v4, v0

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    .line 238
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 239
    iget v0, p0, Lcom/geek/banner/Banner;->mIndicatorMarginBottom:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 241
    iget v2, p0, Lcom/geek/banner/Banner;->mExposeWidth:I

    add-int v3, v2, v0

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    .line 242
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 243
    iget v0, p0, Lcom/geek/banner/Banner;->mIndicatorMarginBottom:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 245
    :cond_2
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 246
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 247
    iget v0, p0, Lcom/geek/banner/Banner;->mIndicatorMarginBottom:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 249
    :goto_0
    iget-object v0, p0, Lcom/geek/banner/Banner;->mIndicatorLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initMultiPage()V
    .locals 5

    .line 199
    iget v0, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 201
    :cond_0
    iget v0, p0, Lcom/geek/banner/Banner;->mExposeWidth:I

    const/4 v2, 0x0

    if-gez v0, :cond_1

    iput v2, p0, Lcom/geek/banner/Banner;->mExposeWidth:I

    .line 202
    :cond_1
    iget v0, p0, Lcom/geek/banner/Banner;->mPageSpacing:I

    if-gez v0, :cond_2

    iput v2, p0, Lcom/geek/banner/Banner;->mPageSpacing:I

    .line 203
    :cond_2
    iget v0, p0, Lcom/geek/banner/Banner;->mOverlapSize:I

    if-gez v0, :cond_3

    iput v2, p0, Lcom/geek/banner/Banner;->mOverlapSize:I

    .line 208
    :cond_3
    invoke-virtual {p0, v2}, Lcom/geek/banner/Banner;->setClipChildren(Z)V

    .line 209
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v0}, Lcom/geek/banner/widget/BannerViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 211
    iget v2, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/geek/banner/Banner;->mExposeWidth:I

    iget v4, p0, Lcom/geek/banner/Banner;->mPageSpacing:I

    add-int/2addr v2, v4

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/geek/banner/Banner;->mExposeWidth:I

    .line 212
    :goto_0
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 213
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 214
    iget-object v2, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v2, v0}, Lcom/geek/banner/widget/BannerViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget v0, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 218
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v0, v1}, Lcom/geek/banner/widget/BannerViewPager;->setEnableMzEffects(Z)V

    .line 222
    :cond_5
    iget v0, p0, Lcom/geek/banner/Banner;->mShowModel:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/geek/banner/Banner;->mPageSpacing:I

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/geek/banner/Banner;->mOverlapSize:I

    neg-int v0, v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->setPagerMargin(I)V

    .line 224
    invoke-virtual {p0, v3}, Lcom/geek/banner/Banner;->setOffscreenPageLimit(I)Lcom/geek/banner/Banner;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 184
    sget v0, Lcom/geek/banner/R$id;->banner_vp:I

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geek/banner/widget/BannerViewPager;

    iput-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    .line 185
    sget v0, Lcom/geek/banner/R$id;->indicator_ll:I

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/geek/banner/Banner;->mIndicatorLl:Landroid/widget/LinearLayout;

    .line 186
    sget v0, Lcom/geek/banner/R$id;->default_iv:I

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geek/banner/Banner;->mDefaultImg:Landroid/widget/ImageView;

    .line 188
    iget-object v0, p0, Lcom/geek/banner/Banner;->mDefaultImg:Landroid/widget/ImageView;

    iget v1, p0, Lcom/geek/banner/Banner;->mDefaultBanner:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    invoke-direct {p0}, Lcom/geek/banner/Banner;->initIndicator()V

    .line 190
    invoke-direct {p0}, Lcom/geek/banner/Banner;->initMultiPage()V

    .line 191
    invoke-direct {p0}, Lcom/geek/banner/Banner;->initBannerTransformer()V

    return-void
.end method

.method private initViewPagerScroll()V
    .locals 3

    .line 257
    :try_start_0
    const-class v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 259
    new-instance v1, Lcom/geek/banner/widget/BannerScroller;

    iget-object v2, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v2}, Lcom/geek/banner/widget/BannerViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/geek/banner/widget/BannerScroller;-><init>(Landroid/content/Context;)V

    .line 260
    iget v2, p0, Lcom/geek/banner/Banner;->mPagerScrollTime:I

    invoke-virtual {v1, v2}, Lcom/geek/banner/widget/BannerScroller;->setDuration(I)V

    .line 261
    iget-object v2, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "banner"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private notifyBannerData()V
    .locals 4

    .line 535
    iget v0, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 538
    :cond_0
    iput v1, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    goto :goto_1

    .line 536
    :cond_1
    :goto_0
    iput v2, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    .line 541
    :goto_1
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerPagerAdapter:Lcom/geek/banner/Banner$BannerPagerAdapter;

    if-nez v0, :cond_2

    .line 542
    new-instance v0, Lcom/geek/banner/Banner$BannerPagerAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/geek/banner/Banner$BannerPagerAdapter;-><init>(Lcom/geek/banner/Banner;Lcom/geek/banner/Banner$1;)V

    iput-object v0, p0, Lcom/geek/banner/Banner;->mBannerPagerAdapter:Lcom/geek/banner/Banner$BannerPagerAdapter;

    .line 543
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v0, p0}, Lcom/geek/banner/widget/BannerViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    iget-object v2, p0, Lcom/geek/banner/Banner;->mBannerPagerAdapter:Lcom/geek/banner/Banner$BannerPagerAdapter;

    invoke-virtual {v0, v2}, Lcom/geek/banner/widget/BannerViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 556
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v0, v1}, Lcom/geek/banner/widget/BannerViewPager;->setFocusable(Z)V

    .line 557
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    iget v1, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/geek/banner/widget/BannerViewPager;->setCurrentItem(IZ)V

    .line 559
    iget-boolean v0, p0, Lcom/geek/banner/Banner;->mCanAutoPlay:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/geek/banner/Banner;->startAutoPlay()V

    :cond_3
    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private setSelectedIndicator(I)V
    .locals 3

    .line 825
    iget-boolean v0, p0, Lcom/geek/banner/Banner;->mShowIndicator:Z

    if-nez v0, :cond_0

    return-void

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/geek/banner/Banner;->mIndicatorLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_2

    .line 827
    iget v1, p0, Lcom/geek/banner/Banner;->mCurIndicatorIndex:I

    if-le v1, v0, :cond_1

    goto :goto_0

    .line 828
    :cond_1
    iget-object v0, p0, Lcom/geek/banner/Banner;->mIndicatorLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 830
    iget v2, p0, Lcom/geek/banner/Banner;->mIndicatorDefaultW:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 831
    iget v2, p0, Lcom/geek/banner/Banner;->mIndicatorDefaultH:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 832
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 833
    iget v1, p0, Lcom/geek/banner/Banner;->mIndicatorDefaultD:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 834
    iget-object v0, p0, Lcom/geek/banner/Banner;->mIndicatorLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 836
    iget v2, p0, Lcom/geek/banner/Banner;->mIndicatorSelectedW:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 837
    iget v2, p0, Lcom/geek/banner/Banner;->mIndicatorSelectedH:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 838
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 839
    iget v1, p0, Lcom/geek/banner/Banner;->mIndicatorSelectD:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 840
    iput p1, p0, Lcom/geek/banner/Banner;->mCurIndicatorIndex:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 334
    iget-boolean v0, p0, Lcom/geek/banner/Banner;->mCanAutoPlay:Z

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    .line 346
    invoke-virtual {p0}, Lcom/geek/banner/Banner;->stopAutoPlay()V

    goto :goto_1

    .line 341
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/geek/banner/Banner;->startAutoPlay()V

    .line 352
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getBannerCurrentIndex()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/geek/banner/Banner;->findRealPosition(I)I

    move-result v0

    return v0
.end method

.method public loadImagePaths(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/geek/banner/loader/BannerEntry;",
            ">;)V"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/geek/banner/Banner;->mWeakHandler:Lcom/geek/banner/widget/WeakHandler;

    iget-object v2, p0, Lcom/geek/banner/Banner;->mBannerPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/geek/banner/widget/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 461
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 462
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 463
    iput v1, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    .line 464
    iput v1, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    .line 465
    iput v1, p0, Lcom/geek/banner/Banner;->mCurIndicatorIndex:I

    .line 467
    iget v0, p0, Lcom/geek/banner/Banner;->mIntervalTime:I

    const/16 v2, 0xbb8

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerPagerAdapter:Lcom/geek/banner/Banner$BannerPagerAdapter;

    if-eqz v0, :cond_0

    .line 468
    iget-object v2, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v2, v0}, Lcom/geek/banner/widget/BannerViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 472
    :cond_0
    sget v0, Lcom/geek/banner/R$id;->only_one_pager:I

    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0, v0}, Lcom/geek/banner/Banner;->removeView(Landroid/view/View;)V

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/geek/banner/Banner;->mDefaultImg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_7

    .line 475
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_2

    .line 479
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    .line 481
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 482
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geek/banner/loader/BannerEntry;

    invoke-direct {p0, p1}, Lcom/geek/banner/Banner;->createOnlyOnePager(Lcom/geek/banner/loader/BannerEntry;)V

    .line 483
    iget-object p1, p0, Lcom/geek/banner/Banner;->mBannerPagerAdapter:Lcom/geek/banner/Banner$BannerPagerAdapter;

    if-eqz p1, :cond_3

    .line 489
    invoke-virtual {p1}, Lcom/geek/banner/Banner$BannerPagerAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void

    .line 498
    :cond_4
    iget v0, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    invoke-direct {p0, v0}, Lcom/geek/banner/Banner;->createDefaultIndicator(I)V

    .line 500
    iget v0, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    goto :goto_0

    .line 514
    :cond_5
    iget v0, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    add-int/lit8 v3, v0, 0x2

    iput v3, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    .line 517
    iget-object v3, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 521
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 502
    :cond_6
    :goto_0
    iget v0, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    add-int/lit8 v4, v0, 0x4

    iput v4, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    .line 504
    iget-object v4, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    sub-int/2addr v0, v3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    iget v3, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    sub-int/2addr v3, v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 509
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    :goto_1
    invoke-direct {p0}, Lcom/geek/banner/Banner;->notifyBannerData()V

    return-void

    .line 476
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/geek/banner/Banner;->mDefaultImg:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4

    .line 661
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerPagerChangedListener:Lcom/geek/banner/Banner$OnBannerPagerChangedListener;

    if-eqz v0, :cond_0

    .line 662
    invoke-interface {v0, p1}, Lcom/geek/banner/Banner$OnBannerPagerChangedListener;->onPageScrollStateChanged(I)V

    :cond_0
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 683
    :cond_1
    iget p1, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_2

    goto :goto_0

    .line 693
    :cond_2
    iget p1, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    if-nez p1, :cond_3

    .line 696
    iget-object p1, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    iget v0, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v3}, Lcom/geek/banner/widget/BannerViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 697
    :cond_3
    iget v1, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_6

    .line 700
    iget-object p1, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {p1, v0, v3}, Lcom/geek/banner/widget/BannerViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 684
    :cond_4
    :goto_0
    iget p1, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    if-ne p1, v0, :cond_5

    .line 686
    iget-object p1, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    iget v0, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v0, v3}, Lcom/geek/banner/widget/BannerViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    .line 687
    :cond_5
    iget v0, p0, Lcom/geek/banner/Banner;->mNeedPagers:I

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_6

    .line 690
    iget-object p1, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {p1, v1, v3}, Lcom/geek/banner/widget/BannerViewPager;->setCurrentItem(IZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerPagerChangedListener:Lcom/geek/banner/Banner$OnBannerPagerChangedListener;

    if-eqz v0, :cond_0

    .line 722
    invoke-direct {p0, p1}, Lcom/geek/banner/Banner;->findRealPosition(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/geek/banner/Banner$OnBannerPagerChangedListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 730
    iput p1, p0, Lcom/geek/banner/Banner;->mCurrentIndex:I

    .line 731
    invoke-direct {p0, p1}, Lcom/geek/banner/Banner;->findRealPosition(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/geek/banner/Banner;->setSelectedIndicator(I)V

    .line 738
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerPagerChangedListener:Lcom/geek/banner/Banner$OnBannerPagerChangedListener;

    if-eqz v0, :cond_0

    .line 739
    invoke-direct {p0, p1}, Lcom/geek/banner/Banner;->findRealPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geek/banner/Banner$OnBannerPagerChangedListener;->onPageSelected(I)V

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/geek/banner/Banner;->mBannerText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 742
    iget-object v1, p0, Lcom/geek/banner/Banner;->mBannerEntry:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geek/banner/loader/BannerEntry;

    invoke-interface {p1}, Lcom/geek/banner/loader/BannerEntry;->getIndicatorText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setAutoPlay(Z)Lcom/geek/banner/Banner;
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcom/geek/banner/Banner;->mCanAutoPlay:Z

    return-object p0
.end method

.method public setBannerLoader(Lcom/geek/banner/loader/BannerLoader;)Lcom/geek/banner/Banner;
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/geek/banner/Banner;->mBannerLoader:Lcom/geek/banner/loader/BannerLoader;

    return-object p0
.end method

.method public setBannerPagerChangedListener(Lcom/geek/banner/Banner$OnBannerPagerChangedListener;)V
    .locals 0

    .line 933
    iput-object p1, p0, Lcom/geek/banner/Banner;->mBannerPagerChangedListener:Lcom/geek/banner/Banner$OnBannerPagerChangedListener;

    return-void
.end method

.method public setBannerText(Landroid/widget/TextView;)Lcom/geek/banner/Banner;
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/geek/banner/Banner;->mBannerText:Landroid/widget/TextView;

    return-object p0
.end method

.method public setBannerTransformer(Landroidx/viewpager/widget/ViewPager$PageTransformer;)Lcom/geek/banner/Banner;
    .locals 2

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/geek/banner/widget/BannerViewPager;->setPageTransformer(ZLandroidx/viewpager/widget/ViewPager$PageTransformer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "banner"

    const-string v0, "Please set the PageTransformer class"

    .line 437
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object p0
.end method

.method public setIntervalTime(I)Lcom/geek/banner/Banner;
    .locals 0

    .line 386
    iput p1, p0, Lcom/geek/banner/Banner;->mIntervalTime:I

    return-object p0
.end method

.method public setOffscreenPageLimit(I)Lcom/geek/banner/Banner;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/BannerViewPager;->setOffscreenPageLimit(I)V

    :cond_0
    return-object p0
.end method

.method public setOnBannerClickListener(Lcom/geek/banner/Banner$OnBannerClickListener;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/geek/banner/Banner;->mOnBannerClickListener:Lcom/geek/banner/Banner$OnBannerClickListener;

    return-void
.end method

.method public setPagerMargin(I)V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget v0, p0, Lcom/geek/banner/Banner;->mShowModel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 364
    :cond_1
    iget-object v0, p0, Lcom/geek/banner/Banner;->mViewPager:Lcom/geek/banner/widget/BannerViewPager;

    invoke-virtual {v0, p1}, Lcom/geek/banner/widget/BannerViewPager;->setPageMargin(I)V

    :cond_2
    return-void
.end method

.method public startAutoPlay()V
    .locals 4

    .line 604
    iget-boolean v0, p0, Lcom/geek/banner/Banner;->mCanAutoPlay:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/geek/banner/Banner;->mWeakHandler:Lcom/geek/banner/widget/WeakHandler;

    iget-object v1, p0, Lcom/geek/banner/Banner;->mBannerPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/geek/banner/widget/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 606
    iget-object v0, p0, Lcom/geek/banner/Banner;->mWeakHandler:Lcom/geek/banner/widget/WeakHandler;

    iget-object v1, p0, Lcom/geek/banner/Banner;->mBannerPlayRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/geek/banner/Banner;->mIntervalTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/geek/banner/widget/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public stopAutoPlay()V
    .locals 2

    .line 616
    iget-boolean v0, p0, Lcom/geek/banner/Banner;->mCanAutoPlay:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/geek/banner/Banner;->mRealPagers:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/geek/banner/Banner;->mWeakHandler:Lcom/geek/banner/widget/WeakHandler;

    iget-object v1, p0, Lcom/geek/banner/Banner;->mBannerPlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/geek/banner/widget/WeakHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
