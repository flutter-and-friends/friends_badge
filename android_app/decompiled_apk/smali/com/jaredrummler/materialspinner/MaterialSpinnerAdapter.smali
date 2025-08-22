.class public Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;
.super Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;
.source "MaterialSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;"
    }
.end annotation


# instance fields
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getCount()I
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 34
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->isHintEnabled()Z

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->isHintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->getSelectedIndex()I

    move-result v0

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->items:Ljava/util/List;

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerAdapter;->items:Ljava/util/List;

    return-object v0
.end method
