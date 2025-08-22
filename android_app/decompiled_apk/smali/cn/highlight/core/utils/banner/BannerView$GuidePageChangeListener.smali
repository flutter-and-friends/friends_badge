.class final Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/core/utils/banner/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GuidePageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/utils/banner/BannerView;


# direct methods
.method private constructor <init>(Lcn/highlight/core/utils/banner/BannerView;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/highlight/core/utils/banner/BannerView;Lcn/highlight/core/utils/banner/BannerView$1;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1}, Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;-><init>(Lcn/highlight/core/utils/banner/BannerView;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 256
    iget-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {p1}, Lcn/highlight/core/utils/banner/BannerView;->access$600(Lcn/highlight/core/utils/banner/BannerView;)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .line 266
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v0, p1}, Lcn/highlight/core/utils/banner/BannerView;->access$102(Lcn/highlight/core/utils/banner/BannerView;I)I

    .line 267
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v0}, Lcn/highlight/core/utils/banner/BannerView;->access$000(Lcn/highlight/core/utils/banner/BannerView;)[Landroid/widget/ImageView;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 271
    rem-int v2, p1, v0

    if-eq v2, v1, :cond_0

    .line 272
    iget-object v2, p0, Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v2}, Lcn/highlight/core/utils/banner/BannerView;->access$000(Lcn/highlight/core/utils/banner/BannerView;)[Landroid/widget/ImageView;

    move-result-object v2

    rem-int v3, v1, v0

    aget-object v2, v2, v3

    sget v3, Lcn/highlight/core/R$drawable;->dot_b:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 274
    :cond_0
    iget-object v2, p0, Lcn/highlight/core/utils/banner/BannerView$GuidePageChangeListener;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v2}, Lcn/highlight/core/utils/banner/BannerView;->access$000(Lcn/highlight/core/utils/banner/BannerView;)[Landroid/widget/ImageView;

    move-result-object v2

    rem-int v3, v1, v0

    aget-object v2, v2, v3

    sget v3, Lcn/highlight/core/R$drawable;->dot_h:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
