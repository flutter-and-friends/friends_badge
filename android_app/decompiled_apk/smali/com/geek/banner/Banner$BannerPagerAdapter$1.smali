.class Lcom/geek/banner/Banner$BannerPagerAdapter$1;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geek/banner/Banner$BannerPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geek/banner/Banner$BannerPagerAdapter;

.field final synthetic val$realPosition:I


# direct methods
.method constructor <init>(Lcom/geek/banner/Banner$BannerPagerAdapter;I)V
    .locals 0

    .line 781
    iput-object p1, p0, Lcom/geek/banner/Banner$BannerPagerAdapter$1;->this$1:Lcom/geek/banner/Banner$BannerPagerAdapter;

    iput p2, p0, Lcom/geek/banner/Banner$BannerPagerAdapter$1;->val$realPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 784
    iget-object p1, p0, Lcom/geek/banner/Banner$BannerPagerAdapter$1;->this$1:Lcom/geek/banner/Banner$BannerPagerAdapter;

    iget-object p1, p1, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {p1}, Lcom/geek/banner/Banner;->access$1200(Lcom/geek/banner/Banner;)Lcom/geek/banner/Banner$OnBannerClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 785
    iget-object p1, p0, Lcom/geek/banner/Banner$BannerPagerAdapter$1;->this$1:Lcom/geek/banner/Banner$BannerPagerAdapter;

    iget-object p1, p1, Lcom/geek/banner/Banner$BannerPagerAdapter;->this$0:Lcom/geek/banner/Banner;

    invoke-static {p1}, Lcom/geek/banner/Banner;->access$1200(Lcom/geek/banner/Banner;)Lcom/geek/banner/Banner$OnBannerClickListener;

    move-result-object p1

    iget v0, p0, Lcom/geek/banner/Banner$BannerPagerAdapter$1;->val$realPosition:I

    invoke-interface {p1, v0}, Lcom/geek/banner/Banner$OnBannerClickListener;->onBannerClick(I)V

    :cond_0
    return-void
.end method
