.class public abstract Lcom/geek/banner/loader/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/geek/banner/loader/BannerLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/geek/banner/loader/BannerLoader<",
        "TT;",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createView(Landroid/content/Context;I)Landroid/view/View;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/geek/banner/loader/ImageLoader;->createView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public createView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 0

    .line 16
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object p2
.end method
