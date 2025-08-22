.class public Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ModelTextStyleBgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$OnClickSelectViewBg;,
        Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;",
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

.field private onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$OnClickSelectViewBg;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string v0, "\u900f\u660e"

    .line 25
    iput-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->type:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->dataList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$ModelTextStyleBgAdapter(ILandroid/view/View;)V
    .locals 1

    .line 73
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$OnClickSelectViewBg;

    if-eqz p2, :cond_0

    .line 74
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$OnClickSelectViewBg;->onClickSelectBg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;I)V
    .locals 3

    .line 51
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 52
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->type:Ljava/lang/String;

    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const v1, 0x7f0800e9

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\u900f\u660e"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0088

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 58
    iget-object v2, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v1

    const/high16 v2, 0x41f00000    # 30.0f

    .line 59
    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    const/4 v2, 0x1

    .line 60
    invoke-virtual {v1, v2}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 61
    iget-object v2, p1, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;->item_bg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u9ed1\u8272"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->context:Landroid/content/Context;

    const v1, 0x7f080136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u9ec4\u8272"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->context:Landroid/content/Context;

    const v1, 0x7f08013e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_3
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u7ea2\u8272"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->context:Landroid/content/Context;

    const v1, 0x7f08013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_4
    iget-object v0, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->context:Landroid/content/Context;

    const v1, 0x7f08012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 71
    iget-object v1, p1, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;->item_bg:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 72
    :cond_5
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    new-instance v0, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelTextStyleBgAdapter$aPVMVhlKbUziaDVJ_PFck2MTP5w;

    invoke-direct {v0, p0, p2}, Lcn/highlight/work_card_write/adapter/-$$Lambda$ModelTextStyleBgAdapter$aPVMVhlKbUziaDVJ_PFck2MTP5w;-><init>(Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;
    .locals 2

    .line 45
    iget-object p2, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c003e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 46
    new-instance p2, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$ViewHolder;-><init>(Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;Landroid/view/View;)V

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

    .line 34
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->dataList:Ljava/util/List;

    .line 35
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$OnClickSelectViewBg;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->onClickSelectViewBg:Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$OnClickSelectViewBg;

    return-void
.end method
