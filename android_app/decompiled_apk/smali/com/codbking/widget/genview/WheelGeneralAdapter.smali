.class public Lcom/codbking/widget/genview/WheelGeneralAdapter;
.super Lcom/codbking/widget/adapters/AbstractWheelAdapter;
.source "WheelGeneralAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private data:Ljava/lang/Object;

.field private dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

.field private generator:Lcom/codbking/widget/genview/GenWheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codbking/widget/genview/GenWheelView;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/codbking/widget/adapters/AbstractWheelAdapter;-><init>()V

    .line 54
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->OTHERS:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    .line 71
    iput-object p2, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->generator:Lcom/codbking/widget/genview/GenWheelView;

    .line 72
    iput-object p1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCountWithoutHeader()I
    .locals 4

    .line 133
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$1;->$SwitchMap$com$codbking$widget$genview$WheelGeneralAdapter$DataType:[I

    iget-object v1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    invoke-virtual {v1}, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    goto :goto_1

    .line 162
    :pswitch_1
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_1

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    goto :goto_1

    .line 156
    :pswitch_3
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    goto :goto_1

    .line 153
    :pswitch_4
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    goto :goto_1

    .line 150
    :pswitch_5
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    goto :goto_1

    .line 147
    :pswitch_6
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_1

    .line 138
    :pswitch_7
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 139
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 135
    :pswitch_8
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_1
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getData()Ljava/lang/Object;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getDataType()Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    return-object v0
.end method

.method public getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 210
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->generator:Lcom/codbking/widget/genview/GenWheelView;

    iget-object v1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/codbking/widget/genview/GenWheelView;->setup(Landroid/content/Context;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItemsCount()I
    .locals 4

    .line 175
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$1;->$SwitchMap$com$codbking$widget$genview$WheelGeneralAdapter$DataType:[I

    iget-object v1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    invoke-virtual {v1}, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 202
    :pswitch_0
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0

    .line 196
    :pswitch_3
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    return v0

    .line 194
    :pswitch_4
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0

    .line 192
    :pswitch_5
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    return v0

    .line 190
    :pswitch_6
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    .line 181
    :pswitch_7
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 182
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 184
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/util/List;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 185
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1

    .line 177
    :pswitch_8
    iget-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setData(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "*>;)V"
        }
    .end annotation

    .line 122
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->SPARSE_ARRAY:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    .line 123
    iput-object p1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codbking/widget/genview/UnSupportedWheelViewException;
        }
    .end annotation

    .line 82
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->ARRAYLIST:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    goto :goto_0

    .line 84
    :cond_0
    instance-of v0, p1, Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->LINKEDHASHMAP:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    goto :goto_0

    .line 86
    :cond_1
    instance-of v0, p1, Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 87
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->CURSOR:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    goto :goto_0

    .line 88
    :cond_2
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 89
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->OBJECT_ARRAY:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    goto :goto_0

    .line 90
    :cond_3
    instance-of v0, p1, Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    .line 91
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->SPARSE_ARRAY:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    goto :goto_0

    .line 92
    :cond_4
    instance-of v0, p1, Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_5

    .line 93
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->SPARSE_BOOLEAN_ARRAY:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    goto :goto_0

    .line 94
    :cond_5
    instance-of v0, p1, Landroid/util/SparseIntArray;

    if-eqz v0, :cond_6

    .line 95
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->SPARSE_INT_ARRAY:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    goto :goto_0

    .line 96
    :cond_6
    instance-of v0, p1, Ljava/util/Vector;

    if-eqz v0, :cond_7

    .line 97
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->VECTOR:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    goto :goto_0

    .line 98
    :cond_7
    instance-of v0, p1, Ljava/util/LinkedList;

    if-eqz v0, :cond_8

    .line 99
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->LINKEDLIST:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    .line 103
    :goto_0
    iput-object p1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    return-void

    .line 101
    :cond_8
    new-instance p1, Lcom/codbking/widget/genview/UnSupportedWheelViewException;

    invoke-direct {p1}, Lcom/codbking/widget/genview/UnSupportedWheelViewException;-><init>()V

    throw p1
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "*>;)V"
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->ARRAYLIST:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    .line 113
    iput-object p1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    return-void
.end method

.method public setData(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "*>;)V"
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->LINKEDLIST:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    .line 128
    iput-object p1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    return-void
.end method

.method public setData(Ljava/util/Vector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "*>;)V"
        }
    .end annotation

    .line 117
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->VECTOR:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    .line 118
    iput-object p1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    return-void
.end method

.method public setData([Ljava/lang/Object;)V
    .locals 1

    .line 107
    sget-object v0, Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;->OBJECT_ARRAY:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    iput-object v0, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->dataType:Lcom/codbking/widget/genview/WheelGeneralAdapter$DataType;

    .line 108
    iput-object p1, p0, Lcom/codbking/widget/genview/WheelGeneralAdapter;->data:Ljava/lang/Object;

    return-void
.end method
