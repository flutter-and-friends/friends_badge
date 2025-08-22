.class Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;
.super Ljava/lang/Object;
.source "ImageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/yuyh/library/imgsel/bean/Image;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

.field final synthetic val$item:Lcom/yuyh/library/imgsel/bean/Image;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;ILcom/yuyh/library/imgsel/bean/Image;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;->this$0:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    iput p2, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;->val$item:Lcom/yuyh/library/imgsel/bean/Image;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 46
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;->this$0:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->access$000(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;->this$0:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->access$000(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;->val$position:I

    iget-object v1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;->val$item:Lcom/yuyh/library/imgsel/bean/Image;

    invoke-interface {p1, v0, v1}, Lcom/yuyh/library/imgsel/common/OnItemClickListener;->onImageClick(ILcom/yuyh/library/imgsel/bean/Image;)V

    :cond_0
    return-void
.end method
