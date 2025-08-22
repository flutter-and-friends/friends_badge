.class public abstract Lcom/codbking/widget/genview/GenWheelView;
.super Ljava/lang/Object;
.source "GenWheelView.java"

# interfaces
.implements Lcom/codbking/widget/genview/IGenWheelView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;
.end method

.method public setup(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;
    .locals 2

    .line 25
    instance-of p4, p5, [Ljava/lang/Object;

    if-eqz p4, :cond_0

    .line 26
    check-cast p5, [Ljava/lang/Object;

    check-cast p5, [Ljava/lang/Object;

    aget-object p4, p5, p2

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/codbking/widget/genview/GenWheelView;->genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 27
    :cond_0
    instance-of p4, p5, Ljava/util/ArrayList;

    if-eqz p4, :cond_1

    .line 28
    check-cast p5, Ljava/util/ArrayList;

    invoke-virtual {p5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/codbking/widget/genview/GenWheelView;->genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 29
    :cond_1
    instance-of p4, p5, Ljava/util/LinkedHashMap;

    if-eqz p4, :cond_5

    .line 30
    check-cast p5, Ljava/util/LinkedHashMap;

    .line 31
    invoke-virtual {p5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move p5, p2

    .line 33
    :cond_2
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt p5, v1, :cond_3

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/List;

    add-int/lit8 p5, p5, -0x1

    invoke-interface {p4, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/codbking/widget/genview/GenWheelView;->genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 39
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p5, v0

    add-int/lit8 p5, p5, -0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_5
    instance-of p4, p5, Landroid/database/Cursor;

    if-eqz p4, :cond_6

    .line 45
    move-object p4, p5

    check-cast p4, Landroid/database/Cursor;

    invoke-interface {p4, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 46
    invoke-virtual {p0, p1, p3, p5, p2}, Lcom/codbking/widget/genview/GenWheelView;->genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 47
    :cond_6
    instance-of p4, p5, Landroid/util/SparseArray;

    if-eqz p4, :cond_7

    .line 48
    check-cast p5, Landroid/util/SparseArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/codbking/widget/genview/GenWheelView;->genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 49
    :cond_7
    instance-of p4, p5, Landroid/util/SparseBooleanArray;

    if-eqz p4, :cond_8

    .line 50
    check-cast p5, Landroid/util/SparseBooleanArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p4

    invoke-virtual {p5, p4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 51
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/codbking/widget/genview/GenWheelView;->genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 52
    :cond_8
    instance-of p4, p5, Landroid/util/SparseIntArray;

    if-eqz p4, :cond_9

    .line 53
    check-cast p5, Landroid/util/SparseIntArray;

    invoke-virtual {p5, p2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/codbking/widget/genview/GenWheelView;->genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 54
    :cond_9
    instance-of p4, p5, Ljava/util/Vector;

    if-eqz p4, :cond_a

    .line 55
    check-cast p5, Ljava/util/Vector;

    invoke-virtual {p5, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/codbking/widget/genview/GenWheelView;->genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 56
    :cond_a
    instance-of p4, p5, Ljava/util/LinkedList;

    if-eqz p4, :cond_b

    .line 57
    check-cast p5, Ljava/util/LinkedList;

    invoke-virtual {p5, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/codbking/widget/genview/GenWheelView;->genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_b
    return-object p3
.end method
