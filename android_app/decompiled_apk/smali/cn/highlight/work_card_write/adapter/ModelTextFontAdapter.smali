.class public Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModelTextFontAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$OnClickSelectViewTextFont;,
        Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;",
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

.field private onClickSelectViewTextFont:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$OnClickSelectViewTextFont;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->type:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$ModelTextFontAdapter(ILandroid/view/View;)V
    .locals 1

    .line 54
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->onClickSelectViewTextFont:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$OnClickSelectViewTextFont;

    if-eqz p2, :cond_0

    .line 55
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$OnClickSelectViewTextFont;->onClickSelectFont(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;I)V
    .locals 2

    .line 49
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;->item_font:Landroid/widget/TextView;

    const v1, 0x7f080127

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 50
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->type:Ljava/lang/String;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;->item_font:Landroid/widget/TextView;

    const v1, 0x7f0800ea

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 53
    :cond_0
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelTextFontAdapter$IYvQ8zCNdOL8JDqvGr713usd8Zo;

    invoke-direct {v1, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelTextFontAdapter$IYvQ8zCNdOL8JDqvGr713usd8Zo;-><init>(Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/highlight/lib_doodle/ViewEditUtil;->getViewTextFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 59
    iget-object v1, p1, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;->item_font:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;->item_font_tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;
    .locals 2

    .line 43
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003d

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;Landroid/view/View;)V

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

    .line 32
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->dataList:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnClickSelectViewTextFont(Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$OnClickSelectViewTextFont;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->onClickSelectViewTextFont:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$OnClickSelectViewTextFont;

    return-void
.end method
