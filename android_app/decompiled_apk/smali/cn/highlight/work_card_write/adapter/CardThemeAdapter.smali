.class public Lcn/highlight/work_card_write/adapter/CardThemeAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CardThemeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemLongClickListener;,
        Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemClickListener;,
        Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;",
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

.field private listener:Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemClickListener;

.field private longListener:Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$CardThemeAdapter(ILandroid/view/View;)V
    .locals 0

    .line 56
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->listener:Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemClickListener;

    if-eqz p2, :cond_0

    .line 57
    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemClickListener;->clickListener(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$CardThemeAdapter(ILandroid/view/View;)Z
    .locals 0

    .line 60
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->longListener:Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemLongClickListener;

    if-eqz p2, :cond_0

    .line 61
    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemLongClickListener;->longClickListener(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 19
    check-cast p1, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;I)V
    .locals 4

    .line 53
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapEnd()[B

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->dataList:Ljava/util/List;

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

    .line 54
    iget-object v1, p1, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 55
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    new-instance v1, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeAdapter$gX-l9-Y5HtDiyIrhfGXAGAfCcaM;

    invoke-direct {v1, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeAdapter$gX-l9-Y5HtDiyIrhfGXAGAfCcaM;-><init>(Lcn/highlight/work_card_write/adapter/CardThemeAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeAdapter$IEtRvg_KJzr8Ev-cBMqaC34nZVg;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$CardThemeAdapter$IEtRvg_KJzr8Ev-cBMqaC34nZVg;-><init>(Lcn/highlight/work_card_write/adapter/CardThemeAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;
    .locals 2

    .line 47
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c0032

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 48
    new-instance p2, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/CardThemeAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/highlight/work_card_write/greendao/table/BadgeBean;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->dataList:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener(Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemClickListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->listener:Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemClickListener;

    return-void
.end method

.method public setLongListener(Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemLongClickListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter;->longListener:Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ItemLongClickListener;

    return-void
.end method
