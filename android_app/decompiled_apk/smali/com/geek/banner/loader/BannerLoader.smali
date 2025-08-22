.class public interface abstract Lcom/geek/banner/loader/BannerLoader;
.super Ljava/lang/Object;
.source "BannerLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createView(Landroid/content/Context;I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)TV;"
        }
    .end annotation
.end method

.method public abstract loadView(Landroid/content/Context;Lcom/geek/banner/loader/BannerEntry;ILandroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/geek/banner/loader/BannerEntry;",
            "ITV;)V"
        }
    .end annotation
.end method
