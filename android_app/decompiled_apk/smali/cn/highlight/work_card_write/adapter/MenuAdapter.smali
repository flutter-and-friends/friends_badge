.class public Lcn/highlight/work_card_write/adapter/MenuAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;,
        Lcn/highlight/work_card_write/adapter/MenuAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/entity/Menu;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcn/highlight/work_card_write/adapter/MenuAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/entity/Menu;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    return p1
.end method

.method public synthetic lambda$onBindViewHolder$0$MenuAdapter(ILandroid/view/View;)V
    .locals 0

    .line 62
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->mListener:Lcn/highlight/work_card_write/adapter/MenuAdapter$OnItemClickListener;

    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/MenuAdapter$OnItemClickListener;->onItemClick(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    .line 47
    instance-of v0, p1, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/entity/Menu;

    .line 50
    move-object v1, p1

    check-cast v1, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;

    iget-object v2, v1, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;->tv_content:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/entity/Menu;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0}, Lcn/highlight/work_card_write/entity/Menu;->isSelected()Z

    move-result v0

    const v2, 0x7f0600dd

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, v1, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;->tv_content:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060056

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 54
    iget-object v0, v1, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;->tv_content:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, v1, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;->tv_content:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 57
    iget-object v0, v1, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;->tv_content:Landroid/widget/TextView;

    const v1, -0x919192

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    :goto_0
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->mListener:Lcn/highlight/work_card_write/adapter/MenuAdapter$OnItemClickListener;

    if-nez v0, :cond_1

    return-void

    .line 62
    :cond_1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$MenuAdapter$zxE9DdGBXQFauhKPPz8tzXv-_Hw;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$MenuAdapter$zxE9DdGBXQFauhKPPz8tzXv-_Hw;-><init>(Lcn/highlight/work_card_write/adapter/MenuAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0074

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;-><init>(Lcn/highlight/work_card_write/adapter/MenuAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcn/highlight/work_card_write/adapter/MenuAdapter$OnItemClickListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->mListener:Lcn/highlight/work_card_write/adapter/MenuAdapter$OnItemClickListener;

    return-void
.end method

.method public sign(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    :goto_0
    iget-object v2, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 94
    iget-object v2, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->mData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/work_card_write/entity/Menu;

    .line 95
    invoke-virtual {v2, v0}, Lcn/highlight/work_card_write/entity/Menu;->setSelected(Z)V

    .line 96
    iget-object v3, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/highlight/work_card_write/entity/Menu;

    invoke-virtual {v3}, Lcn/highlight/work_card_write/entity/Menu;->getId()I

    move-result v3

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    .line 97
    invoke-virtual {v2, v3}, Lcn/highlight/work_card_write/entity/Menu;->setSelected(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
