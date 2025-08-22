.class Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/core/utils/banner/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageCycleAdapter"
.end annotation


# instance fields
.field private mAdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/core/utils/banner/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mImageCycleViewListener:Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;

.field private mImageViewCacheList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/highlight/core/utils/banner/BannerView;


# direct methods
.method public constructor <init>(Lcn/highlight/core/utils/banner/BannerView;Landroid/content/Context;Ljava/util/List;Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/highlight/core/utils/banner/BannerBean;",
            ">;",
            "Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;",
            ")V"
        }
    .end annotation

    .line 299
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 300
    iput-object p2, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mContext:Landroid/content/Context;

    .line 301
    iput-object p3, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mAdList:Ljava/util/List;

    .line 302
    iput-object p4, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mImageCycleViewListener:Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;

    .line 303
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mImageViewCacheList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$800(Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;I)I
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->getPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;)Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;
    .locals 0

    .line 280
    iget-object p0, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mImageCycleViewListener:Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;

    return-object p0
.end method

.method private getPosition(I)I
    .locals 1

    .line 312
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 348
    check-cast p3, Landroid/widget/ImageView;

    .line 349
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 350
    iget-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mImageViewCacheList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v0}, Lcn/highlight/core/utils/banner/BannerView;->access$200(Lcn/highlight/core/utils/banner/BannerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mAdList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 322
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mAdList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->getPosition(I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/core/utils/banner/BannerBean;

    invoke-virtual {v0}, Lcn/highlight/core/utils/banner/BannerBean;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mImageViewCacheList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 326
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 330
    :cond_0
    iget-object v1, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mImageViewCacheList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 333
    :goto_0
    new-instance v2, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter$1;

    invoke-direct {v2, p0, p2}, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter$1;-><init>(Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    sget p2, Lcn/highlight/core/R$id;->img_url_banner:I

    invoke-virtual {v1, p2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 341
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 342
    iget-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->mImageCycleViewListener:Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;

    invoke-interface {p1, v0, v1}, Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
