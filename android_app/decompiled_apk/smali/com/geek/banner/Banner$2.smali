.class Lcom/geek/banner/Banner$2;
.super Ljava/lang/Object;
.source "Banner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geek/banner/Banner;->createOnlyOnePager(Lcom/geek/banner/loader/BannerEntry;)V
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

    .line 851
    iput-object p1, p0, Lcom/geek/banner/Banner$2;->this$0:Lcom/geek/banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 854
    iget-object p1, p0, Lcom/geek/banner/Banner$2;->this$0:Lcom/geek/banner/Banner;

    invoke-static {p1}, Lcom/geek/banner/Banner;->access$1200(Lcom/geek/banner/Banner;)Lcom/geek/banner/Banner$OnBannerClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 855
    iget-object p1, p0, Lcom/geek/banner/Banner$2;->this$0:Lcom/geek/banner/Banner;

    invoke-static {p1}, Lcom/geek/banner/Banner;->access$1200(Lcom/geek/banner/Banner;)Lcom/geek/banner/Banner$OnBannerClickListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/geek/banner/Banner$OnBannerClickListener;->onBannerClick(I)V

    :cond_0
    return-void
.end method
