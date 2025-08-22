.class public abstract Lcom/geek/banner/transformer/complex/BasePageTransformer;
.super Ljava/lang/Object;
.source "BasePageTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field public static final DEFAULT_CENTER:F = 0.5f


# instance fields
.field protected mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/geek/banner/transformer/complex/NonPageTransformer;->INSTANCE:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    iput-object v0, p0, Lcom/geek/banner/transformer/complex/BasePageTransformer;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    return-void
.end method


# virtual methods
.method protected abstract pageTransform(Landroid/view/View;F)V
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/geek/banner/transformer/complex/BasePageTransformer;->mPageTransformer:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1, p2}, Landroidx/viewpager/widget/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 21
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/geek/banner/transformer/complex/BasePageTransformer;->pageTransform(Landroid/view/View;F)V

    return-void
.end method
