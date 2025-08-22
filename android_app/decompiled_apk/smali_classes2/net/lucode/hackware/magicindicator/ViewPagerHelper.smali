.class public Lnet/lucode/hackware/magicindicator/ViewPagerHelper;
.super Ljava/lang/Object;
.source "ViewPagerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    .line 12
    new-instance v0, Lnet/lucode/hackware/magicindicator/ViewPagerHelper$1;

    invoke-direct {v0, p0}, Lnet/lucode/hackware/magicindicator/ViewPagerHelper$1;-><init>(Lnet/lucode/hackware/magicindicator/MagicIndicator;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method
