.class final Lnet/lucode/hackware/magicindicator/ViewPagerHelper$1;
.super Ljava/lang/Object;
.source "ViewPagerHelper.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/lucode/hackware/magicindicator/ViewPagerHelper;->bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/ViewPagerHelper$1;->val$magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 26
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/ViewPagerHelper$1;->val$magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 16
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/ViewPagerHelper$1;->val$magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/ViewPagerHelper$1;->val$magicIndicator:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    return-void
.end method
