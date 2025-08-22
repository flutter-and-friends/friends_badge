.class public Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;
.super Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;
.source "FolderListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter<",
        "Lcom/yuyh/library/imgsel/bean/Folder;",
        ">;"
    }
.end annotation


# instance fields
.field private config:Lcom/yuyh/library/imgsel/config/ISListConfig;

.field private context:Landroid/content/Context;

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yuyh/library/imgsel/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/yuyh/library/imgsel/common/OnFolderChangeListener;

.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/yuyh/library/imgsel/config/ISListConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/yuyh/library/imgsel/bean/Folder;",
            ">;",
            "Lcom/yuyh/library/imgsel/config/ISListConfig;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 31
    sget v1, Lcom/yuyh/library/imgsel/R$layout;->item_img_sel_folder:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 27
    iput v2, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->selected:I

    .line 32
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    .line 34
    iput-object p3, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->config:Lcom/yuyh/library/imgsel/config/ISListConfig;

    return-void
.end method

.method private getTotalImageSize()I
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yuyh/library/imgsel/bean/Folder;

    .line 83
    iget-object v2, v2, Lcom/yuyh/library/imgsel/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILcom/yuyh/library/imgsel/bean/Folder;)V
    .locals 5

    const-string v0, "\u5f20"

    const-string v1, "\u5171"

    if-nez p2, :cond_0

    .line 40
    sget v2, Lcom/yuyh/library/imgsel/R$id;->tvFolderName:I

    const-string v3, "\u6240\u6709\u56fe\u7247"

    invoke-virtual {p1, v2, v3}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    move-result-object v2

    sget v3, Lcom/yuyh/library/imgsel/R$id;->tvImageNum:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {p0}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->getTotalImageSize()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 42
    sget v0, Lcom/yuyh/library/imgsel/R$id;->ivFolder:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 43
    iget-object v1, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 44
    invoke-static {}, Lcom/yuyh/library/imgsel/ISNav;->getInstance()Lcom/yuyh/library/imgsel/ISNav;

    move-result-object v1

    iget-object v2, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->context:Landroid/content/Context;

    iget-object p3, p3, Lcom/yuyh/library/imgsel/bean/Folder;->cover:Lcom/yuyh/library/imgsel/bean/Image;

    iget-object p3, p3, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, p3, v0}, Lcom/yuyh/library/imgsel/ISNav;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 47
    :cond_0
    sget v2, Lcom/yuyh/library/imgsel/R$id;->tvFolderName:I

    iget-object v3, p3, Lcom/yuyh/library/imgsel/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    move-result-object v2

    sget v3, Lcom/yuyh/library/imgsel/R$id;->tvImageNum:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/yuyh/library/imgsel/bean/Folder;->images:Ljava/util/List;

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 49
    sget v0, Lcom/yuyh/library/imgsel/R$id;->ivFolder:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 50
    iget-object v1, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 51
    invoke-static {}, Lcom/yuyh/library/imgsel/ISNav;->getInstance()Lcom/yuyh/library/imgsel/ISNav;

    move-result-object v1

    iget-object v2, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->context:Landroid/content/Context;

    iget-object p3, p3, Lcom/yuyh/library/imgsel/bean/Folder;->cover:Lcom/yuyh/library/imgsel/bean/Image;

    iget-object p3, p3, Lcom/yuyh/library/imgsel/bean/Image;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, p3, v0}, Lcom/yuyh/library/imgsel/ISNav;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 55
    :cond_1
    :goto_0
    sget p3, Lcom/yuyh/library/imgsel/R$id;->viewLine:I

    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, p3, v0}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 57
    iget p3, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->selected:I

    if-ne p3, p2, :cond_3

    .line 58
    sget p3, Lcom/yuyh/library/imgsel/R$id;->indicator:I

    invoke-virtual {p1, p3, v1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    goto :goto_2

    .line 60
    :cond_3
    sget p3, Lcom/yuyh/library/imgsel/R$id;->indicator:I

    invoke-virtual {p1, p3, v2}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;

    .line 63
    :goto_2
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;->getConvertView()Landroid/view/View;

    move-result-object p1

    new-instance p3, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter$1;

    invoke-direct {p3, p0, p2}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter$1;-><init>(Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILjava/lang/Object;)V
    .locals 0

    .line 21
    check-cast p3, Lcom/yuyh/library/imgsel/bean/Folder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->convert(Lcom/yuyh/easyadapter/abslistview/EasyLVHolder;ILcom/yuyh/library/imgsel/bean/Folder;)V

    return-void
.end method

.method public getSelectIndex()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->selected:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/yuyh/library/imgsel/bean/Folder;",
            ">;)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnFloderChangeListener(Lcom/yuyh/library/imgsel/common/OnFolderChangeListener;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->listener:Lcom/yuyh/library/imgsel/common/OnFolderChangeListener;

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 2

    .line 90
    iget v0, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->selected:I

    if-ne v0, p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->listener:Lcom/yuyh/library/imgsel/common/OnFolderChangeListener;

    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->folderList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yuyh/library/imgsel/bean/Folder;

    invoke-interface {v0, p1, v1}, Lcom/yuyh/library/imgsel/common/OnFolderChangeListener;->onChange(ILcom/yuyh/library/imgsel/bean/Folder;)V

    .line 94
    :cond_1
    iput p1, p0, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->selected:I

    .line 95
    invoke-virtual {p0}, Lcom/yuyh/library/imgsel/adapter/FolderListAdapter;->notifyDataSetChanged()V

    return-void
.end method
