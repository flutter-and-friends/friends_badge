.class public Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModelBgLibraryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$OnClickSelectViewBg;,
        Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;",
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

.field private onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$OnClickSelectViewBg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$ModelBgLibraryAdapter(ILandroid/view/View;)V
    .locals 1

    .line 46
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$OnClickSelectViewBg;

    if-eqz p2, :cond_0

    .line 47
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$OnClickSelectViewBg;->onClickSelectBg(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;I)V
    .locals 2

    .line 44
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 45
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelBgLibraryAdapter$l2qmsJ_f27guVb3bVsHsbUJswe4;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelBgLibraryAdapter$l2qmsJ_f27guVb3bVsHsbUJswe4;-><init>(Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;
    .locals 2

    .line 38
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0037

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    new-instance p2, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;Landroid/view/View;)V

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

    .line 27
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->dataList:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$OnClickSelectViewBg;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$OnClickSelectViewBg;

    return-void
.end method
