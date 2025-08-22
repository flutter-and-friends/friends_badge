.class Lcom/geek/banner/Banner$BannerPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geek/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geek/banner/Banner;


# direct methods
.method private constructor <init>(Lcom/geek/banner/Banner;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/geek/banner/Banner;Lcom/geek/banner/Banner$1;)V
    .locals 0

    .line 754
    invoke-direct {p0, p1}, Lcom/geek/banner/Banner$BannerPagerAdapter;-><init>(Lcom/geek/banner/Banner;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 796
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 758
    iget-object v0, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$800(Lcom/geek/banner/Banner;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 769
    iget-object v0, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$900(Lcom/geek/banner/Banner;)Lcom/geek/banner/loader/BannerLoader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 772
    :goto_0
    iget-object v0, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$1000(Lcom/geek/banner/Banner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 773
    iget-object v0, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$1000(Lcom/geek/banner/Banner;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$1000(Lcom/geek/banner/Banner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0, p2}, Lcom/geek/banner/Banner;->access$1100(Lcom/geek/banner/Banner;I)I

    move-result v0

    .line 778
    iget-object v1, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v1}, Lcom/geek/banner/Banner;->access$900(Lcom/geek/banner/Banner;)Lcom/geek/banner/loader/BannerLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v2}, Lcom/geek/banner/Banner;->access$400(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/BannerViewPager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/geek/banner/widget/BannerViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/geek/banner/loader/BannerLoader;->createView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 779
    iget-object v2, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v2}, Lcom/geek/banner/Banner;->access$900(Lcom/geek/banner/Banner;)Lcom/geek/banner/loader/BannerLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v3}, Lcom/geek/banner/Banner;->access$400(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/BannerViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/geek/banner/widget/BannerViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v4}, Lcom/geek/banner/Banner;->access$800(Lcom/geek/banner/Banner;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/geek/banner/loader/BannerEntry;

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/geek/banner/loader/BannerLoader;->loadView(Landroid/content/Context;Lcom/geek/banner/loader/BannerEntry;ILandroid/view/View;)V

    .line 780
    iget-object v2, p0, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v2}, Lcom/geek/banner/Banner;->access$1000(Lcom/geek/banner/Banner;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 781
    new-instance p2, Lcom/geek/banner/Banner$BannerPagerAdapter$1;

    invoke-direct {p2, p0, v0}, Lcom/geek/banner/Banner$BannerPagerAdapter$1;-><init>(Lcom/geek/banner/Banner$BannerPagerAdapter;I)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 790
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    .line 770
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "[Banner] --> The mBannerLoader is not null"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
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
