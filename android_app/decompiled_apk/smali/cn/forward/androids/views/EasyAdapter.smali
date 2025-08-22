.class public abstract Lcn/forward/androids/views/EasyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "EasyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/forward/androids/views/EasyAdapter$OnModeChangedListener;,
        Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;,
        Lcn/forward/androids/views/EasyAdapter$SelectionMode;,
        Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;,
        Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;,
        Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;,
        Lcn/forward/androids/views/EasyAdapter$SelectionItemView;,
        Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;,
        Lcn/forward/androids/views/EasyAdapter$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder<",
        "TVH;>;>;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private maxSelectionCount:I

.field private mode:Lcn/forward/androids/views/EasyAdapter$Mode;

.field private onItemClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;

.field private onItemLongClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;

.field private onModeChangedListener:Lcn/forward/androids/views/EasyAdapter$OnModeChangedListener;

.field private onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

.field private onSingleSelectListener:Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;

.field private selectedSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private singleSelectedPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 39
    sget-object v0, Lcn/forward/androids/views/EasyAdapter$Mode;->CLICK:Lcn/forward/androids/views/EasyAdapter$Mode;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/forward/androids/views/EasyAdapter;-><init>(Landroid/content/Context;Lcn/forward/androids/views/EasyAdapter$Mode;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/forward/androids/views/EasyAdapter$Mode;I)V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcn/forward/androids/views/EasyAdapter;->singleSelectedPosition:I

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onItemClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;

    .line 102
    iput-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onItemLongClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;

    .line 103
    iput-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onSingleSelectListener:Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;

    .line 104
    iput-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    .line 105
    iput-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onModeChangedListener:Lcn/forward/androids/views/EasyAdapter$OnModeChangedListener;

    .line 150
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    .line 33
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcn/forward/androids/views/EasyAdapter;->mode:Lcn/forward/androids/views/EasyAdapter$Mode;

    .line 35
    iput p3, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    return-void
.end method

.method static synthetic access$000(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$Mode;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/forward/androids/views/EasyAdapter;->mode:Lcn/forward/androids/views/EasyAdapter$Mode;

    return-object p0
.end method

.method static synthetic access$100(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/forward/androids/views/EasyAdapter;->onItemClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/forward/androids/views/EasyAdapter;)I
    .locals 0

    .line 16
    iget p0, p0, Lcn/forward/androids/views/EasyAdapter;->singleSelectedPosition:I

    return p0
.end method

.method static synthetic access$202(Lcn/forward/androids/views/EasyAdapter;I)I
    .locals 0

    .line 16
    iput p1, p0, Lcn/forward/androids/views/EasyAdapter;->singleSelectedPosition:I

    return p1
.end method

.method static synthetic access$300(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/forward/androids/views/EasyAdapter;->onSingleSelectListener:Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/forward/androids/views/EasyAdapter;)I
    .locals 0

    .line 16
    iget p0, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    return p0
.end method

.method static synthetic access$500(Lcn/forward/androids/views/EasyAdapter;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic access$600(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    return-object p0
.end method

.method static synthetic access$700(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/forward/androids/views/EasyAdapter;->onItemLongClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;

    return-object p0
.end method


# virtual methods
.method public getMaxSelectionCount()I
    .locals 1

    .line 63
    iget v0, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    return v0
.end method

.method public getOnItemClickedListener()Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onItemClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;

    return-object v0
.end method

.method public getOnItemLongClickedListener()Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;
    .locals 1

    .line 120
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onItemLongClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;

    return-object v0
.end method

.method public getOnModeChangedListener()Lcn/forward/androids/views/EasyAdapter$OnModeChangedListener;
    .locals 1

    .line 144
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onModeChangedListener:Lcn/forward/androids/views/EasyAdapter$OnModeChangedListener;

    return-object v0
.end method

.method public getOnMultiSelectListener()Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;
    .locals 1

    .line 136
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    return-object v0
.end method

.method public getSelectedSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 322
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getSingleSelectedPosition()I
    .locals 1

    .line 128
    iget v0, p0, Lcn/forward/androids/views/EasyAdapter;->singleSelectedPosition:I

    return v0
.end method

.method public isSelected(I)Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/forward/androids/views/EasyAdapter;->onBindViewHolder(Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder<",
            "TVH;>;I)V"
        }
    .end annotation

    .line 209
    iget-object v0, p1, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v0, p2}, Lcn/forward/androids/views/EasyAdapter;->whenBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 210
    sget-object v0, Lcn/forward/androids/views/EasyAdapter$3;->$SwitchMap$cn$forward$androids$views$EasyAdapter$Mode:[I

    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter;->mode:Lcn/forward/androids/views/EasyAdapter$Mode;

    invoke-virtual {v1}, Lcn/forward/androids/views/EasyAdapter$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p1, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;->itemView:Landroid/view/View;

    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object p1, p1, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;->itemView:Landroid/view/View;

    iget v0, p0, Lcn/forward/androids/views/EasyAdapter;->singleSelectedPosition:I

    if-ne v0, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 212
    :cond_3
    iget-object p1, p1, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcn/forward/androids/views/EasyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder<",
            "TVH;>;"
        }
    .end annotation

    .line 154
    invoke-virtual {p0, p1, p2}, Lcn/forward/androids/views/EasyAdapter;->whenCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 156
    new-instance p2, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;

    invoke-direct {p2, p1}, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 157
    iget-object p1, p2, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/forward/androids/views/EasyAdapter$1;

    invoke-direct {v0, p0, p2}, Lcn/forward/androids/views/EasyAdapter$1;-><init>(Lcn/forward/androids/views/EasyAdapter;Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p2, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcn/forward/androids/views/EasyAdapter$2;

    invoke-direct {v0, p0, p2}, Lcn/forward/androids/views/EasyAdapter$2;-><init>(Lcn/forward/androids/views/EasyAdapter;Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method

.method public reverseSelected()V
    .locals 4

    .line 253
    iget v0, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    if-lez v0, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 259
    iget-object v2, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_1
    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 262
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    if-eqz v0, :cond_2

    .line 263
    sget-object v1, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->REVERSE_SELECTED:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;->onSelected(Lcn/forward/androids/views/EasyAdapter$SelectionMode;Ljava/util/Set;)V

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public varargs select([I)V
    .locals 6

    .line 272
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->mode:Lcn/forward/androids/views/EasyAdapter$Mode;

    sget-object v1, Lcn/forward/androids/views/EasyAdapter$Mode;->SINGLE_SELECT:Lcn/forward/androids/views/EasyAdapter$Mode;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 273
    aget p1, p1, v2

    iput p1, p0, Lcn/forward/androids/views/EasyAdapter;->singleSelectedPosition:I

    .line 274
    iget-object p1, p0, Lcn/forward/androids/views/EasyAdapter;->onSingleSelectListener:Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;

    if-eqz p1, :cond_7

    .line 275
    iget v0, p0, Lcn/forward/androids/views/EasyAdapter;->singleSelectedPosition:I

    invoke-interface {p1, v0}, Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;->onSelected(I)V

    goto :goto_2

    .line 278
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget v3, p1, v1

    .line 279
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 282
    :cond_1
    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    if-eqz v4, :cond_3

    .line 283
    iget v4, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    if-lez v4, :cond_2

    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    iget v5, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    if-lt v4, v5, :cond_2

    .line 284
    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    invoke-interface {v4, v3}, Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;->onOutOfMax(I)V

    goto :goto_1

    .line 286
    :cond_2
    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    invoke-interface {v4, v3, v2}, Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;->onSelected(IZ)V

    goto :goto_1

    .line 290
    :cond_3
    iget v4, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    const/4 v5, 0x1

    if-lt v4, v5, :cond_4

    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->size()I

    move-result v4

    iget v5, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    if-lt v4, v5, :cond_4

    goto :goto_1

    .line 293
    :cond_4
    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 297
    :cond_6
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    :cond_7
    :goto_2
    return-void
.end method

.method public selectAll()V
    .locals 4

    .line 228
    iget v0, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 232
    :goto_0
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    if-eqz v0, :cond_2

    .line 236
    sget-object v1, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->SELECT_ALL:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;->onSelected(Lcn/forward/androids/views/EasyAdapter$SelectionMode;Ljava/util/Set;)V

    .line 238
    :cond_2
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMaxSelectionCount(I)V
    .locals 1

    .line 50
    iput p1, p0, Lcn/forward/androids/views/EasyAdapter;->maxSelectionCount:I

    if-lez p1, :cond_0

    .line 55
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 56
    iget-object p1, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->clear()V

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setMode(Lcn/forward/androids/views/EasyAdapter$Mode;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->mode:Lcn/forward/androids/views/EasyAdapter$Mode;

    if-ne v0, p1, :cond_0

    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter;->mode:Lcn/forward/androids/views/EasyAdapter$Mode;

    .line 77
    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter;->onModeChangedListener:Lcn/forward/androids/views/EasyAdapter$OnModeChangedListener;

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v1, v0, p1}, Lcn/forward/androids/views/EasyAdapter$OnModeChangedListener;->onModeChanged(Lcn/forward/androids/views/EasyAdapter$Mode;Lcn/forward/androids/views/EasyAdapter$Mode;)V

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickedListener(Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter;->onItemClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;

    return-void
.end method

.method public setOnItemLongClickedListener(Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter;->onItemLongClickedListener:Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;

    return-void
.end method

.method public setOnModeChangedListener(Lcn/forward/androids/views/EasyAdapter$OnModeChangedListener;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter;->onModeChangedListener:Lcn/forward/androids/views/EasyAdapter$OnModeChangedListener;

    return-void
.end method

.method public setOnMultiSelectListener(Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    return-void
.end method

.method public setOnSingleSelectListener(Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter;->onSingleSelectListener:Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;

    return-void
.end method

.method public setSingleSelectedPosition(I)V
    .locals 1

    .line 89
    iget v0, p0, Lcn/forward/androids/views/EasyAdapter;->singleSelectedPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 92
    :cond_0
    iput p1, p0, Lcn/forward/androids/views/EasyAdapter;->singleSelectedPosition:I

    .line 93
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onSingleSelectListener:Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;

    if-eqz v0, :cond_1

    .line 94
    invoke-interface {v0, p1}, Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;->onSelected(I)V

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public varargs unselect([I)V
    .locals 6

    .line 302
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget v3, p1, v2

    .line 303
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 306
    :cond_0
    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    if-eqz v4, :cond_1

    .line 307
    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 308
    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    invoke-interface {v4, v3, v1}, Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;->onSelected(IZ)V

    goto :goto_1

    .line 310
    :cond_1
    iget-object v4, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_3
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public unselectAll()V
    .locals 4

    .line 242
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 243
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter;->onMultiSelectListener:Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    if-eqz v0, :cond_0

    .line 244
    sget-object v1, Lcn/forward/androids/views/EasyAdapter$SelectionMode;->UNSELECT_ALL:Lcn/forward/androids/views/EasyAdapter$SelectionMode;

    new-instance v2, Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcn/forward/androids/views/EasyAdapter;->selectedSet:Ljava/util/LinkedHashSet;

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;->onSelected(Lcn/forward/androids/views/EasyAdapter$SelectionMode;Ljava/util/Set;)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public abstract whenBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation
.end method

.method public abstract whenCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation
.end method
