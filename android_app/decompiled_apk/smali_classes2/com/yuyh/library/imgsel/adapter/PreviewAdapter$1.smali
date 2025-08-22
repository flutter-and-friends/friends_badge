.class Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;
.super Ljava/lang/Object;
.source "PreviewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

.field final synthetic val$image:Lcom/yuyh/library/imgsel/bean/Image;

.field final synthetic val$ivChecked:Landroid/widget/ImageView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;ILcom/yuyh/library/imgsel/bean/Image;Landroid/widget/ImageView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->this$0:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    iput p2, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->val$image:Lcom/yuyh/library/imgsel/bean/Image;

    iput-object p4, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->val$ivChecked:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 62
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->this$0:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->access$000(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->this$0:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->access$000(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->val$image:Lcom/yuyh/library/imgsel/bean/Image;

    invoke-interface {p1, v0, v1}, Lcom/yuyh/library/imgsel/common/OnItemClickListener;->onCheckedClick(ILcom/yuyh/library/imgsel/bean/Image;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 65
    sget-object p1, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->val$image:Lcom/yuyh/library/imgsel/bean/Image;

    iget-object v0, v0, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->val$ivChecked:Landroid/widget/ImageView;

    sget v0, Lcom/yuyh/library/imgsel/R$drawable;->ic_checked:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;->val$ivChecked:Landroid/widget/ImageView;

    sget v0, Lcom/yuyh/library/imgsel/R$drawable;->ic_uncheck:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
