.class Lcn/highlight/core/utils/banner/BannerView$2;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/core/utils/banner/BannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 113
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$2;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    .line 125
    iget-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$2;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {p1}, Lcn/highlight/core/utils/banner/BannerView;->access$700(Lcn/highlight/core/utils/banner/BannerView;)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$2;->this$0:Lcn/highlight/core/utils/banner/BannerView;

    invoke-static {p1}, Lcn/highlight/core/utils/banner/BannerView;->access$600(Lcn/highlight/core/utils/banner/BannerView;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
