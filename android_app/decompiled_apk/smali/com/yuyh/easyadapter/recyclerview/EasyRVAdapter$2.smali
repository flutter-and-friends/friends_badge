.class Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$2;
.super Ljava/lang/Object;
.source "EasyRVAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;


# direct methods
.method constructor <init>(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$2;->this$0:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 302
    sget v0, Lcom/yuyh/library/easyadapter/R$id;->tag_position:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 303
    sget v1, Lcom/yuyh/library/easyadapter/R$id;->tag_item:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$2;->this$0:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;

    invoke-static {v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->access$000(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;)Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$2;->this$0:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;

    invoke-static {v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->access$000(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;)Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
