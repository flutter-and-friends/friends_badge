.class Lcn/highlight/core/utils/banner/BannerView$1;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/core/utils/banner/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/core/utils/banner/BannerView;


# direct methods
.method constructor <init>(Lcn/highlight/core/utils/banner/BannerView;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$1;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$1;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v0}, Lcn/highlight/core/utils/banner/BannerView;->access$000(Lcn/highlight/core/utils/banner/BannerView;)[Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$1;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v0}, Lcn/highlight/core/utils/banner/BannerView;->access$108(Lcn/highlight/core/utils/banner/BannerView;)I

    .line 84
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$1;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v0}, Lcn/highlight/core/utils/banner/BannerView;->access$200(Lcn/highlight/core/utils/banner/BannerView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$1;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v0}, Lcn/highlight/core/utils/banner/BannerView;->access$100(Lcn/highlight/core/utils/banner/BannerView;)I

    move-result v0

    iget-object v1, p0, Lcn/highlight/core/utils/banner/BannerView$1;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v1}, Lcn/highlight/core/utils/banner/BannerView;->access$300(Lcn/highlight/core/utils/banner/BannerView;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$1;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/highlight/core/utils/banner/BannerView;->access$102(Lcn/highlight/core/utils/banner/BannerView;I)I

    .line 90
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$1;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v0}, Lcn/highlight/core/utils/banner/BannerView;->access$400(Lcn/highlight/core/utils/banner/BannerView;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/core/utils/banner/BannerView$1;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {v1}, Lcn/highlight/core/utils/banner/BannerView;->access$100(Lcn/highlight/core/utils/banner/BannerView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method
