.class public Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModelimageLibraryIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$OnClickSelectViewBg;,
        Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$OnClickSelectViewBg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$ModelimageLibraryIconAdapter(ILandroid/view/View;)V
    .locals 1

    .line 53
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$OnClickSelectViewBg;

    if-eqz p2, :cond_0

    .line 54
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$OnClickSelectViewBg;->onClickSelectBg(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 17
    check-cast p1, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;I)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    const/16 v1, 0x14

    if-gt v0, v1, :cond_2

    .line 47
    :cond_1
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const-string v1, "#BDBDBD"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const-string v1, "#F7F7F7"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 51
    :goto_0
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelimageLibraryIconAdapter$xyoszDr9yJyKX7w-qH5j0iulasg;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelimageLibraryIconAdapter$xyoszDr9yJyKX7w-qH5j0iulasg;-><init>(Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;
    .locals 2

    .line 39
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->dataList:Ljava/util/List;

    .line 29
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$OnClickSelectViewBg;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$OnClickSelectViewBg;

    return-void
.end method
