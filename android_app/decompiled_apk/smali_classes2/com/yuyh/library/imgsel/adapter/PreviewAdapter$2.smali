.class Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;I)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;->this$0:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    iput p2, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 78
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;->this$0:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->access$000(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;->this$0:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->access$000(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;->val$position:I

    iget-object v1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;->this$0:Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;

    invoke-static {v1}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->access$100(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yuyh/library/imgsel/bean/Image;

    invoke-interface {p1, v0, v1}, Lcom/yuyh/library/imgsel/common/OnItemClickListener;->onImageClick(ILcom/yuyh/library/imgsel/bean/Image;)V

    :cond_0
    return-void
.end method
