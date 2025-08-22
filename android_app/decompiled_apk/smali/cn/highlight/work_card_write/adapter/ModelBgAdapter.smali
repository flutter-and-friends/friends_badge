.class public Lcn/highlight/work_card_write/adapter/ModelBgAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModelBgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/ModelBgAdapter$OnClickSelectViewBg;,
        Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelBgAdapter$OnClickSelectViewBg;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->type:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 72
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$ModelBgAdapter(ILandroid/view/View;)V
    .locals 1

    .line 64
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelBgAdapter$OnClickSelectViewBg;

    if-eqz p2, :cond_0

    .line 65
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$OnClickSelectViewBg;->onClickSelectBg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;I)V
    .locals 2

    .line 47
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const v1, 0x7f080127

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 48
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->type:Ljava/lang/String;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const v1, 0x7f0800e8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->context:Landroid/content/Context;

    const v1, 0x7f080137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->context:Landroid/content/Context;

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->context:Landroid/content/Context;

    const v1, 0x7f08013b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 59
    :cond_3
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->context:Landroid/content/Context;

    const v1, 0x7f08012d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 61
    iget-object v1, p1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;->item_bg:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_4
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;->item_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelBgAdapter$r1KB7qgrE1iXU0SQXfIY79uc_Js;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelBgAdapter$r1KB7qgrE1iXU0SQXfIY79uc_Js;-><init>(Lcn/highlight/work_card_write/adapter/ModelBgAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;
    .locals 2

    .line 41
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0036

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/ModelBgAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->dataList:Ljava/util/List;

    .line 31
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelBgAdapter$OnClickSelectViewBg;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelBgAdapter$OnClickSelectViewBg;

    return-void
.end method
