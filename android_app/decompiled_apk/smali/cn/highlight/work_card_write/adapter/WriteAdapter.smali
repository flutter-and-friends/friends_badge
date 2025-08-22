.class public Lcn/highlight/work_card_write/adapter/WriteAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "WriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/WriteAdapter$OnItemClickListener;,
        Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;",
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

.field private onItemClickListener:Lcn/highlight/work_card_write/adapter/WriteAdapter$OnItemClickListener;

.field public selectColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, ""

    .line 25
    iput-object v0, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->selectColor:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private getIdByName(Ljava/lang/String;)I
    .locals 6

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x13b1cc

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x2630656

    if-eq v0, v1, :cond_1

    const v1, 0x49fe632e    # 2083941.8f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\u9ed1\u767d\u7ea2\u9ec4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "\u9ed1\u767d\u7ea2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "\u9ed1\u767d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    const/4 v2, -0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    :cond_5
    const/4 v2, 0x1

    :cond_6
    :goto_2
    return v2
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$WriteAdapter(ILandroid/view/View;)V
    .locals 0

    .line 75
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->onItemClickListener:Lcn/highlight/work_card_write/adapter/WriteAdapter$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 76
    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/WriteAdapter$OnItemClickListener;->onClick(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$WriteAdapter(ILandroid/view/View;)V
    .locals 0

    .line 80
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->onItemClickListener:Lcn/highlight/work_card_write/adapter/WriteAdapter$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 81
    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/WriteAdapter$OnItemClickListener;->onClick(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/WriteAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;I)V
    .locals 4

    .line 51
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    sget-object v1, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\u9ed1\u767d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_black:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_white:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_red:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_yellow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "\u9ed1\u767d\u7ea2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_black:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_white:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_red:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_yellow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_black:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_white:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_red:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_yellow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :goto_0
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->selectColor:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/adapter/WriteAdapter;->getIdByName(Ljava/lang/String;)I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 71
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 74
    :cond_2
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    new-instance v1, Lcn/highlight/work_card_write/adapter/-$$Lambda$WriteAdapter$yKtg2ZBkJ34kqpB2LNoeLUp2Vtw;

    invoke-direct {v1, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$WriteAdapter$yKtg2ZBkJ34kqpB2LNoeLUp2Vtw;-><init>(Lcn/highlight/work_card_write/adapter/WriteAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->linear:Landroid/widget/LinearLayout;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$WriteAdapter$0LWlwinhDrvx6f0yCg9Z32s-Wa4;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$WriteAdapter$0LWlwinhDrvx6f0yCg9Z32s-Wa4;-><init>(Lcn/highlight/work_card_write/adapter/WriteAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/WriteAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;
    .locals 2

    .line 43
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003f

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/WriteAdapter;Landroid/view/View;)V

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
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->dataList:Ljava/util/List;

    .line 33
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/WriteAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcn/highlight/work_card_write/adapter/WriteAdapter$OnItemClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter;->onItemClickListener:Lcn/highlight/work_card_write/adapter/WriteAdapter$OnItemClickListener;

    return-void
.end method
