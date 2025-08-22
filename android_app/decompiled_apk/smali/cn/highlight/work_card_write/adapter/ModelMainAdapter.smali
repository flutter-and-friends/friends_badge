.class public Lcn/highlight/work_card_write/adapter/ModelMainAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModelMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/ModelMainAdapter$OnItemClickListener;,
        Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;",
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

.field private onItemClickListener:Lcn/highlight/work_card_write/adapter/ModelMainAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$ModelMainAdapter(ILandroid/view/View;)V
    .locals 0

    .line 72
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->onItemClickListener:Lcn/highlight/work_card_write/adapter/ModelMainAdapter$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 73
    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$OnItemClickListener;->onClick(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;I)V
    .locals 2

    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 64
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_1
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_3
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_4
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_5
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 69
    :goto_0
    iget-object v1, p1, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;->item_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;->item_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelMainAdapter$371h2A1AmEYseE9fRzsR3NU8k8I;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelMainAdapter$371h2A1AmEYseE9fRzsR3NU8k8I;-><init>(Lcn/highlight/work_card_write/adapter/ModelMainAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;
    .locals 2

    .line 40
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 41
    new-instance p2, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/ModelMainAdapter;Landroid/view/View;)V

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

    .line 29
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->dataList:Ljava/util/List;

    .line 30
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcn/highlight/work_card_write/adapter/ModelMainAdapter$OnItemClickListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->onItemClickListener:Lcn/highlight/work_card_write/adapter/ModelMainAdapter$OnItemClickListener;

    return-void
.end method
