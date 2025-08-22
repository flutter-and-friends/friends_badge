.class Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;
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

.field final synthetic val$viewHolder:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;


# direct methods
.method constructor <init>(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;ILcom/yuyh/library/imgsel/bean/Image;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->this$0:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    iput p2, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->val$position:I

    iput-object p3, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->val$item:Lcom/yuyh/library/imgsel/bean/Image;

    iput-object p4, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->val$viewHolder:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 57
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->this$0:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->access$000(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->this$0:Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;

    invoke-static {p1}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->access$000(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->val$position:I

    iget-object v1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->val$item:Lcom/yuyh/library/imgsel/bean/Image;

    invoke-interface {p1, v0, v1}, Lcom/yuyh/library/imgsel/common/OnItemClickListener;->onCheckedClick(ILcom/yuyh/library/imgsel/bean/Image;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 60
    sget-object p1, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->val$item:Lcom/yuyh/library/imgsel/bean/Image;

    iget-object v0, v0, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->val$viewHolder:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    sget v0, Lcom/yuyh/library/imgsel/R$id;->ivPhotoCheaked:I

    sget v1, Lcom/yuyh/library/imgsel/R$drawable;->ic_checked:I

    invoke-virtual {p1, v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;->val$viewHolder:Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    sget v0, Lcom/yuyh/library/imgsel/R$id;->ivPhotoCheaked:I

    sget v1, Lcom/yuyh/library/imgsel/R$drawable;->ic_uncheck:I

    invoke-virtual {p1, v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :cond_1
    :goto_0
    return-void
.end method
