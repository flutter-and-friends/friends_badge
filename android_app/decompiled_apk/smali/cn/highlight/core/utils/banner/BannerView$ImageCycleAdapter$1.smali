.class Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter$1;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;I)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter$1;->this$1:Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;

    iput p2, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 336
    iget-object v0, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter$1;->this$1:Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;

    invoke-static {v0}, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->access$900(Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;)Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter$1;->this$1:Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;

    iget v2, p0, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter$1;->val$position:I

    invoke-static {v1, v2}, Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;->access$800(Lcn/highlight/core/utils/banner/BannerView$ImageCycleAdapter;I)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcn/highlight/core/utils/banner/BannerView$ImageCycleViewListener;->onImageClick(ILandroid/view/View;)V

    return-void
.end method
