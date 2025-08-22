.class public abstract Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;
.super Landroid/widget/BaseAdapter;
.source "EasyLVAdapter.java"

# interfaces
.implements Lcom/yuyh/easyadapter/helper/DataHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/yuyh/easyadapter/helper/DataHelper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected layoutIds:[I

.field protected mContext:Landroid/content/Context;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    .line 35
    iget-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mLInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Ljava/util/List;[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;[I)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    .line 28
    iput-object p3, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->layoutIds:[I

    .line 29
    iget-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mLInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private getViewCheckLayoutId(I)I
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->layoutIds:[I

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->getLayoutIndex(ILjava/lang/Object;)I

    move-result p1

    aget p1, v0, p1

    goto :goto_1

    .line 65
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->getLayoutId(ILjava/lang/Object;)I

    move-result p1

    :goto_1
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

    .line 127
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addAll(ILjava/util/List;)Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 115
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->notifyDataSetChanged()V

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

    .line 107
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 108
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->notifyDataSetChanged()V

    return p1
.end method

.method public clear()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;",
            "ITT;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getImageLoader()Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLayoutId(ILjava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)I"
        }
    .end annotation

    const/4 p1, 0x0

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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 56
    invoke-direct {p0, p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->getViewCheckLayoutId(I)I

    move-result v6

    .line 57
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->getImageLoader()Lcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;

    move-result-object v5

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, v6

    invoke-static/range {v0 .. v5}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->get(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;ILcom/yuyh/easyadapter/AdapterImageLoader$ImageLoader;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    move-result-object p2

    .line 58
    iget-object p3, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILjava/lang/Object;)V

    .line 59
    invoke-virtual {p2, v6}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getConvertView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public modify(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public modify(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->modify(ILjava/lang/Object;)V

    return-void
.end method

.method public remove(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 161
    invoke-virtual {p0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;->notifyDataSetChanged()V

    return p1
.end method
