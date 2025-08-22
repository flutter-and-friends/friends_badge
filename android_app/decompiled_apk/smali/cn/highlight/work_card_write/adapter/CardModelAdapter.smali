.class public Lcn/highlight/work_card_write/adapter/CardModelAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CardModelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/CardModelAdapter$ItemClickListener;,
        Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcn/highlight/work_card_write/adapter/CardModelAdapter$ItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$CardModelAdapter(ILandroid/view/View;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->listener:Lcn/highlight/work_card_write/adapter/CardModelAdapter$ItemClickListener;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p2, p1}, Lcn/highlight/work_card_write/adapter/CardModelAdapter$ItemClickListener;->OnItemClickListener(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;I)V
    .locals 2

    .line 45
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardModelAdapter$gQDIsa_hkaHpvcd1EqInBwIJwBM;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardModelAdapter$gQDIsa_hkaHpvcd1EqInBwIJwBM;-><init>(Lcn/highlight/work_card_write/adapter/CardModelAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;
    .locals 2

    .line 39
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0032

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 40
    new-instance p2, Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/CardModelAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/CardModelAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 27
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->dataList:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcn/highlight/work_card_write/adapter/CardModelAdapter$ItemClickListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardModelAdapter;->listener:Lcn/highlight/work_card_write/adapter/CardModelAdapter$ItemClickListener;

    return-void
.end method
