.class public Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "PreviewAdapter.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private config:Lcom/yuyh/library/imgsel/config/ISListConfig;

.field private images:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yuyh/library/imgsel/bean/Image;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/yuyh/library/imgsel/common/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcom/yuyh/library/imgsel/config/ISListConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/yuyh/library/imgsel/bean/Image;",
            ">;",
            "Lcom/yuyh/library/imgsel/config/ISListConfig;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->activity:Landroid/app/Activity;

    .line 31
    iput-object p2, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->images:Ljava/util/List;

    .line 32
    iput-object p3, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->listener:Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;)Ljava/util/List;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->images:Ljava/util/List;

    return-object p0
.end method

.method private displayImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .line 96
    invoke-static {}, Lcom/yuyh/library/imgsel/ISNav;->getInstance()Lcom/yuyh/library/imgsel/ISNav;

    move-result-object v0

    iget-object v1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p2, p1}, Lcom/yuyh/library/imgsel/ISNav;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 106
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v0, v0, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    .line 45
    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->activity:Landroid/app/Activity;

    sget v1, Lcom/yuyh/library/imgsel/R$layout;->item_pager_img_sel:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    sget v1, Lcom/yuyh/library/imgsel/R$id;->ivImage:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 47
    sget v2, Lcom/yuyh/library/imgsel/R$id;->ivPhotoCheaked:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 49
    iget-object v3, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v3, v3, Lcom/yuyh/library/imgsel/config/ISListConfig;->multiSelect:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 51
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    iget-object v3, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->images:Ljava/util/List;

    iget-object v4, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v4, v4, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    if-eqz v4, :cond_0

    add-int/lit8 v4, p2, 0x1

    goto :goto_0

    :cond_0
    move v4, p2

    :goto_0
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yuyh/library/imgsel/bean/Image;

    .line 53
    sget-object v4, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 54
    sget v4, Lcom/yuyh/library/imgsel/R$drawable;->ic_checked:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 56
    :cond_1
    sget v4, Lcom/yuyh/library/imgsel/R$drawable;->ic_uncheck:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 59
    :goto_1
    new-instance v4, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;

    invoke-direct {v4, p0, p2, v3, v2}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$1;-><init>(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;ILcom/yuyh/library/imgsel/bean/Image;Landroid/widget/ImageView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v2, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter$2;-><init>(Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    const/16 v3, 0x8

    .line 84
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    const/4 v2, -0x1

    .line 87
    invoke-virtual {p1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 90
    iget-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->images:Ljava/util/List;

    iget-object v2, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    iget-boolean v2, v2, Lcom/yuyh/library/imgsel/config/ISListConfig;->needCamera:Z

    if-eqz v2, :cond_3

    add-int/lit8 p2, p2, 0x1

    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yuyh/library/imgsel/bean/Image;

    iget-object p1, p1, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->displayImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setListener(Lcom/yuyh/library/imgsel/common/OnItemClickListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/PreviewAdapter;->listener:Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    return-void
.end method
