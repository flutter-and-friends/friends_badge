.class public Lcn/highlight/core/view/FullyGridLayoutManager;
.super Landroidx/recyclerview/widget/GridLayoutManager;
.source "FullyGridLayoutManager.java"


# instance fields
.field private mMeasuredDimension:[I

.field final mState:Landroidx/recyclerview/widget/RecyclerView$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 20
    iput-object p1, p0, Lcn/highlight/core/view/FullyGridLayoutManager;->mMeasuredDimension:[I

    .line 73
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    iput-object p1, p0, Lcn/highlight/core/view/FullyGridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 20
    iput-object p1, p0, Lcn/highlight/core/view/FullyGridLayoutManager;->mMeasuredDimension:[I

    .line 73
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {p1}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    iput-object p1, p0, Lcn/highlight/core/view/FullyGridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    return-void
.end method

.method private measureScrapChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;III[I)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcn/highlight/core/view/FullyGridLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    const/4 p2, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 84
    invoke-virtual {p0}, Lcn/highlight/core/view/FullyGridLayoutManager;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcn/highlight/core/view/FullyGridLayoutManager;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->width:I

    .line 83
    invoke-static {p3, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 86
    invoke-virtual {p0}, Lcn/highlight/core/view/FullyGridLayoutManager;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcn/highlight/core/view/FullyGridLayoutManager;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->height:I

    .line 85
    invoke-static {p4, v2, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p4

    .line 87
    invoke-virtual {v0, p3, p4}, Landroid/view/View;->measure(II)V

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    iget p4, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    const/4 p2, 0x1

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    iget p4, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr p3, p4

    iget p4, v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr p3, p4

    aput p3, p5, p2

    .line 90
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onMeasure(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;II)V
    .locals 17

    move-object/from16 v6, p0

    .line 24
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 25
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 26
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 27
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/core/view/FullyGridLayoutManager;->getItemCount()I

    move-result v11

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/core/view/FullyGridLayoutManager;->getSpanCount()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v14, v11, :cond_4

    .line 35
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 36
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    iget-object v5, v6, Lcn/highlight/core/view/FullyGridLayoutManager;->mMeasuredDimension:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    .line 34
    invoke-direct/range {v0 .. v5}, Lcn/highlight/core/view/FullyGridLayoutManager;->measureScrapChild(Landroidx/recyclerview/widget/RecyclerView$Recycler;III[I)V

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/core/view/FullyGridLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 40
    rem-int v0, v14, v12

    if-nez v0, :cond_0

    .line 41
    iget-object v0, v6, Lcn/highlight/core/view/FullyGridLayoutManager;->mMeasuredDimension:[I

    aget v0, v0, v13

    add-int/2addr v15, v0

    :cond_0
    if-nez v14, :cond_3

    .line 44
    iget-object v0, v6, Lcn/highlight/core/view/FullyGridLayoutManager;->mMeasuredDimension:[I

    aget v16, v0, v1

    goto :goto_1

    .line 47
    :cond_1
    rem-int v0, v14, v12

    if-nez v0, :cond_2

    .line 48
    iget-object v0, v6, Lcn/highlight/core/view/FullyGridLayoutManager;->mMeasuredDimension:[I

    aget v0, v0, v1

    add-int v16, v16, v0

    :cond_2
    if-nez v14, :cond_3

    .line 51
    iget-object v0, v6, Lcn/highlight/core/view/FullyGridLayoutManager;->mMeasuredDimension:[I

    aget v15, v0, v13

    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v7, v0, :cond_5

    goto :goto_2

    :cond_5
    move v15, v9

    :goto_2
    if-eq v8, v0, :cond_6

    move/from16 v10, v16

    .line 70
    :cond_6
    invoke-virtual {v6, v15, v10}, Lcn/highlight/core/view/FullyGridLayoutManager;->setMeasuredDimension(II)V

    return-void
.end method
