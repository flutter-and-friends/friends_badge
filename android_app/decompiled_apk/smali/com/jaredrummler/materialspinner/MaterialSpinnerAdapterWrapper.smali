.class final Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;
.super Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;
.source "MaterialSpinnerAdapterWrapper.java"


# instance fields
.field private final listAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->listAdapter:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->isHintEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->isHintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->getSelectedIndex()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->listAdapter:Landroid/widget/ListAdapter;

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapterWrapper;->listAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
