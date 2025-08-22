.class public Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CardThemeSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ItemClickListener;,
        Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ItemClickListener;

.field private selectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private isContain(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)Z
    .locals 3

    .line 98
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    .line 99
    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$CardThemeSelectAdapter(ILandroid/view/View;)V
    .locals 0

    .line 64
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->listener:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ItemClickListener;

    if-eqz p2, :cond_0

    .line 65
    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ItemClickListener;->clickListener(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;I)V
    .locals 4

    .line 52
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapEnd()[B

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v1}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapEnd()[B

    move-result-object v1

    array-length v1, v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 53
    iget-object v1, p1, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->isContain(Lcn/highlight/work_card_write/greendao/table/BadgeBean;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->imgSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->imgUnSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->imgSelected:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->imgUnSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :goto_0
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeSelectAdapter$6O5-bgJBa8ZBBTDn5p2OeLdJYGw;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeSelectAdapter$6O5-bgJBa8ZBBTDn5p2OeLdJYGw;-><init>(Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;I)V

    invoke-virtual {p1, v0}, Landroidx/cardview/widget/CardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;
    .locals 2

    .line 45
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0033

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->dataList:Ljava/util/List;

    .line 33
    iput-object p2, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->selectList:Ljava/util/List;

    .line 34
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ItemClickListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;->listener:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ItemClickListener;

    return-void
.end method
