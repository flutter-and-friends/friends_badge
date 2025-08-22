.class Lcom/geek/banner/Banner$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geek/banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geek/banner/Banner;


# direct methods
.method constructor <init>(Lcom/geek/banner/Banner;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 627
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$108(Lcom/geek/banner/Banner;)I

    .line 628
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$200(Lcom/geek/banner/Banner;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$200(Lcom/geek/banner/Banner;)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$100(Lcom/geek/banner/Banner;)I

    move-result v0

    iget-object v3, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v3}, Lcom/geek/banner/Banner;->access$300(Lcom/geek/banner/Banner;)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 646
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$400(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/geek/banner/widget/BannerViewPager;->setCurrentItem(IZ)V

    .line 647
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$600(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v1}, Lcom/geek/banner/Banner;->access$500(Lcom/geek/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geek/banner/widget/WeakHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 649
    :cond_1
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$400(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v1}, Lcom/geek/banner/Banner;->access$100(Lcom/geek/banner/Banner;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geek/banner/widget/BannerViewPager;->setCurrentItem(I)V

    .line 650
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$600(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v1}, Lcom/geek/banner/Banner;->access$500(Lcom/geek/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v2}, Lcom/geek/banner/Banner;->access$700(Lcom/geek/banner/Banner;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/geek/banner/widget/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 630
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$100(Lcom/geek/banner/Banner;)I

    move-result v0

    iget-object v4, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v4}, Lcom/geek/banner/Banner;->access$300(Lcom/geek/banner/Banner;)I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v0, v4, :cond_3

    .line 633
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$400(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/BannerViewPager;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/geek/banner/widget/BannerViewPager;->setCurrentItem(IZ)V

    .line 634
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$600(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v1}, Lcom/geek/banner/Banner;->access$500(Lcom/geek/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geek/banner/widget/WeakHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 636
    :cond_3
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$400(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/BannerViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v1}, Lcom/geek/banner/Banner;->access$100(Lcom/geek/banner/Banner;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geek/banner/widget/BannerViewPager;->setCurrentItem(I)V

    .line 637
    iget-object v0, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v0}, Lcom/geek/banner/Banner;->access$600(Lcom/geek/banner/Banner;)Lcom/geek/banner/widget/WeakHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v1}, Lcom/geek/banner/Banner;->access$500(Lcom/geek/banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/geek/banner/Banner$1;->this$0:Lcom/geek/banner/Banner;

    invoke-static {v2}, Lcom/geek/banner/Banner;->access$700(Lcom/geek/banner/Banner;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/geek/banner/widget/WeakHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
