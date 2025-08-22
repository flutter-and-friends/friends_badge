.class public Lcom/geek/banner/transformer/complex/NonPageTransformer;
.super Ljava/lang/Object;
.source "NonPageTransformer.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$PageTransformer;


# static fields
.field public static final INSTANCE:Landroidx/viewpager/widget/ViewPager$PageTransformer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/geek/banner/transformer/complex/NonPageTransformer;

    invoke-direct {v0}, Lcom/geek/banner/transformer/complex/NonPageTransformer;-><init>()V

    sput-object v0, Lcom/geek/banner/transformer/complex/NonPageTransformer;->INSTANCE:Landroidx/viewpager/widget/ViewPager$PageTransformer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 0

    const p2, 0x3f7fbe77

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    return-void
.end method
