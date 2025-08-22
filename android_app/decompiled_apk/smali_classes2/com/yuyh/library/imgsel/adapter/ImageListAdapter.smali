.class public Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;
.super Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.source "ImageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter<",
        "Lcom/yuyh/library/imgsel/bean/Image;",
        ">;"
    }
.end annotation


# instance fields
.field private config:Lcom/yuyh/library/imgsel/config/ISListConfig;

.field private context:Landroid/content/Context;

.field private listener:Lcom/yuyh/library/imgsel/common/OnItemClickListener;

.field private mutiSelect:Z

.field private showCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yuyh/library/imgsel/config/ISListConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yuyh/library/imgsel/bean/Image;",
            ">;",
            "Lcom/yuyh/library/imgsel/config/ISListConfig;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 32
    sget v1, Lcom/yuyh/library/imgsel/R$layout;->item_img_sel:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/yuyh/library/imgsel/R$layout;->item_img_sel_take_photo:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 33
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->context:Landroid/content/Context;

    .line 34
    iput-object p3, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    return-void
.end method

.method static synthetic access$000(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;)Lcom/yuyh/library/imgsel/common/OnItemClickListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->listener:Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 0

    if-nez p1, :cond_0

    .line 104
    iget-boolean p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->showCamera:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/yuyh/library/imgsel/bean/Image;)V
    .locals 3

    if-nez p2, :cond_0

    .line 40
    iget-boolean v0, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->showCamera:Z

    if-eqz v0, :cond_0

    .line 41
    sget v0, Lcom/yuyh/library/imgsel/R$id;->ivTakePhoto:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/yuyh/library/imgsel/R$drawable;->ic_take_photo:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 43
    new-instance v0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$1;-><init>(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;ILcom/yuyh/library/imgsel/bean/Image;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->mutiSelect:Z

    if-eqz v0, :cond_1

    .line 54
    sget v0, Lcom/yuyh/library/imgsel/R$id;->ivPhotoCheaked:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$2;-><init>(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;ILcom/yuyh/library/imgsel/bean/Image;Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_1
    new-instance v0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter$3;-><init>(Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;ILcom/yuyh/library/imgsel/bean/Image;)V

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setOnItemViewClickListener(Landroid/view/View$OnClickListener;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    .line 79
    sget p2, Lcom/yuyh/library/imgsel/R$id;->ivImage:I

    invoke-virtual {p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 80
    invoke-static {}, Lcom/yuyh/library/imgsel/ISNav;->getInstance()Lcom/yuyh/library/imgsel/ISNav;

    move-result-object v0

    iget-object v1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->context:Landroid/content/Context;

    iget-object v2, p3, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/yuyh/library/imgsel/ISNav;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 82
    iget-boolean p2, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->mutiSelect:Z

    if-eqz p2, :cond_3

    .line 83
    sget p2, Lcom/yuyh/library/imgsel/R$id;->ivPhotoCheaked:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    .line 84
    sget-object p2, Lcom/yuyh/library/imgsel/common/Constant;->imageList:Ljava/util/ArrayList;

    iget-object p3, p3, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 85
    sget p2, Lcom/yuyh/library/imgsel/R$id;->ivPhotoCheaked:I

    sget p3, Lcom/yuyh/library/imgsel/R$drawable;->ic_checked:I

    invoke-virtual {p1, p2, p3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    goto :goto_0

    .line 87
    :cond_2
    sget p2, Lcom/yuyh/library/imgsel/R$id;->ivPhotoCheaked:I

    sget p3, Lcom/yuyh/library/imgsel/R$drawable;->ic_uncheck:I

    invoke-virtual {p1, p2, p3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    goto :goto_0

    .line 90
    :cond_3
    sget p2, Lcom/yuyh/library/imgsel/R$id;->ivPhotoCheaked:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :goto_0
    return-void
.end method

.method protected bridge synthetic onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .locals 0

    .line 22
    check-cast p3, Lcom/yuyh/library/imgsel/bean/Image;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/yuyh/library/imgsel/bean/Image;)V

    return-void
.end method

.method public setMutiSelect(Z)V
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->mutiSelect:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/yuyh/library/imgsel/common/OnItemClickListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->listener:Lcom/yuyh/library/imgsel/common/OnItemClickListener;

    return-void
.end method

.method public setShowCamera(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/yuyh/library/imgsel/adapter/ImageListAdapter;->showCamera:Z

    return-void
.end method
