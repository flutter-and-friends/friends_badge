.class Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "EasyRVAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;

.field final synthetic val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;->this$0:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;

    iput-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;->this$0:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;

    invoke-virtual {v0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;->this$0:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;

    invoke-virtual {v0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;->val$gridManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    :goto_1
    return p1
.end method
