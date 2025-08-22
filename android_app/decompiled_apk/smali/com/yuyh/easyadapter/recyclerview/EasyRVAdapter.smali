.class public abstract Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EasyRVAdapter.java"

# interfaces
.implements Lcom/yuyh/easyadapter/helper/DataHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemLongClickListener;,
        Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;",
        ">;",
        "Lcom/yuyh/easyadapter/helper/DataHelper<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final TYPE_FOOTER:I = -0x2

.field public static final TYPE_HEADER:I = -0x1


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private footerViewId:I

.field private headerViewId:I

.field private itemClickListener:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private itemLongClickListener:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemLongClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemLongClickListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected layoutIds:[I

.field private longClickListener:Landroid/view/View$OnLongClickListener;

.field protected mContext:Landroid/content/Context;

.field private mConvertViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field protected mLInflater:Landroid/view/LayoutInflater;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;Ljava/util/List;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->headerViewId:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->footerViewId:I

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mConvertViews:Landroid/util/SparseArray;

    .line 299
    new-instance v0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$2;

    invoke-direct {v0, p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$2;-><init>(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;)V

    iput-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->clickListener:Landroid/view/View$OnClickListener;

    .line 311
    new-instance v0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$3;

    invoke-direct {v0, p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$3;-><init>(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;)V

    iput-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->longClickListener:Landroid/view/View$OnLongClickListener;

    .line 42
    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->layoutIds:[I

    .line 45
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mLInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;)Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->itemClickListener:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;)Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemLongClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->itemLongClickListener:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemLongClickListener;

    return-object p0
.end method

.method private getPosition(I)I
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 256
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addAll(ILjava/util/List;)Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 243
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyDataSetChanged()V

    return p1
.end method

.method public addAll(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 236
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyDataSetChanged()V

    return p1
.end method

.method public clear()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 262
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFooterView()Landroid/view/View;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getImageLoader()Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemCount()I
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    const/4 v1, 0x2

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    :goto_1
    return v1

    .line 101
    :cond_3
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v1, v0

    :goto_2
    return v1
.end method

.method public getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 p1, -0x2

    return p1

    .line 113
    :cond_1
    invoke-direct {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getPosition(I)I

    move-result p1

    .line 114
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getLayoutIndex(ILjava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getLayoutIndex(ILjava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public modify(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 283
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public modify(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->modify(ILjava/lang/Object;)V

    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 124
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 125
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 126
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 127
    new-instance v0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$1;-><init>(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_0
    return-void
.end method

.method protected abstract onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    invoke-virtual {p0, p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onBindViewHolder(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;I)V
    .locals 4

    .line 77
    invoke-virtual {p0, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p0, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    return-void

    .line 82
    :cond_1
    invoke-direct {p0, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getPosition(I)I

    move-result p2

    .line 83
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getItemView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yuyh/library/easyadapter/R$id;->tag_position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 86
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getItemView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/yuyh/library/easyadapter/R$id;->tag_item:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getItemView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getItemView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->longClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 91
    invoke-virtual {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 51
    new-instance p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    iget-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->headerViewId:I

    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getImageLoader()Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    move-result-object v2

    invoke-direct {p1, p2, v1, v0, v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;-><init>(Landroid/content/Context;ILandroid/view/View;Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)V

    return-object p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 54
    new-instance p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    iget-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->footerViewId:I

    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getImageLoader()Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    move-result-object v2

    invoke-direct {p1, p2, v1, v0, v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;-><init>(Landroid/content/Context;ILandroid/view/View;Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)V

    return-object p1

    :cond_1
    if-ltz p2, :cond_6

    .line 56
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->layoutIds:[I

    array-length v1, v0

    if-gt p2, v1, :cond_6

    .line 59
    array-length v1, v0

    if-eqz v1, :cond_5

    .line 62
    aget p2, v0, p2

    .line 63
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mConvertViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mLInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    if-eqz p1, :cond_4

    .line 68
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getLayoutId()I

    move-result v1

    if-eq v1, p2, :cond_3

    goto :goto_0

    :cond_3
    return-object p1

    .line 69
    :cond_4
    :goto_0
    new-instance p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->getImageLoader()Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    move-result-object v2

    invoke-direct {p1, v1, p2, v0, v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;-><init>(Landroid/content/Context;ILandroid/view/View;Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)V

    return-object p1

    .line 60
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "not layoutId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_6
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "layoutIndex"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 22
    check-cast p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->onViewAttachedToWindow(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;)V
    .locals 2

    .line 142
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 143
    iget-object v0, p1, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 144
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_1

    .line 145
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 146
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getLayoutPosition()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_1
    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 296
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 289
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyDataSetChanged()V

    return p1
.end method

.method public removeFooterView()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    const/4 v0, -0x2

    .line 214
    iput v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->footerViewId:I

    .line 215
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public removeHeaderView()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    const/4 v0, -0x1

    .line 195
    iput v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->headerViewId:I

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public setFooterView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->setFooterView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setFooterView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mLInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    .line 206
    iput p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->footerViewId:I

    .line 207
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyItemInserted(I)V

    .line 208
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mFooterView:Landroid/view/View;

    return-object p1
.end method

.method public setHeaderView(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->setHeaderView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setHeaderView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mLInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    .line 187
    iput p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->headerViewId:I

    .line 188
    invoke-virtual {p0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->notifyItemInserted(I)V

    .line 189
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mHeaderView:Landroid/view/View;

    return-object p1
.end method

.method public setOnItemClickListener(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->itemClickListener:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemLongClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemLongClickListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 331
    iput-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->itemLongClickListener:Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter$OnItemLongClickListener;

    return-void
.end method
