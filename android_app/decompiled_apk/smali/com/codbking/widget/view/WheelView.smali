.class public Lcom/codbking/widget/view/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field private static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0xa

.field private static final PADDING:I = 0xa

.field private static final SHADOWS_COLORS:[I

.field private static final TAG:Ljava/lang/String; = "WheelView"


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private centerDrawable:Landroid/graphics/drawable/Drawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codbking/widget/view/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codbking/widget/view/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private recycle:Lcom/codbking/widget/view/WheelRecycle;

.field private scroller:Lcom/codbking/widget/view/WheelScroller;

.field scrollingListener:Lcom/codbking/widget/view/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codbking/widget/view/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field selectTextColor:I

.field textColor:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 51
    fill-array-data v0, :array_0

    sput-object v0, Lcom/codbking/widget/view/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0xeeeeef
        0xaaaaaa
        0xaaaaaa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 129
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    const/4 v1, 0x5

    .line 66
    iput v1, p0, Lcom/codbking/widget/view/WheelView;->visibleItems:I

    .line 69
    iput v0, p0, Lcom/codbking/widget/view/WheelView;->itemHeight:I

    .line 90
    iput-boolean v0, p0, Lcom/codbking/widget/view/WheelView;->isCyclic:Z

    .line 102
    new-instance v0, Lcom/codbking/widget/view/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/codbking/widget/view/WheelRecycle;-><init>(Lcom/codbking/widget/view/WheelView;)V

    iput-object v0, p0, Lcom/codbking/widget/view/WheelView;->recycle:Lcom/codbking/widget/view/WheelRecycle;

    .line 105
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/codbking/widget/view/WheelView;->changingListeners:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingListeners:Ljava/util/List;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/codbking/widget/view/WheelView;->clickingListeners:Ljava/util/List;

    .line 144
    new-instance v0, Lcom/codbking/widget/view/WheelView$1;

    invoke-direct {v0, p0}, Lcom/codbking/widget/view/WheelView$1;-><init>(Lcom/codbking/widget/view/WheelView;)V

    iput-object v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingListener:Lcom/codbking/widget/view/WheelScroller$ScrollingListener;

    .line 221
    new-instance v0, Lcom/codbking/widget/view/WheelView$2;

    invoke-direct {v0, p0}, Lcom/codbking/widget/view/WheelView$2;-><init>(Lcom/codbking/widget/view/WheelView;)V

    iput-object v0, p0, Lcom/codbking/widget/view/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 130
    invoke-direct {p0, p1}, Lcom/codbking/widget/view/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 121
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    const/4 v0, 0x5

    .line 66
    iput v0, p0, Lcom/codbking/widget/view/WheelView;->visibleItems:I

    .line 69
    iput p2, p0, Lcom/codbking/widget/view/WheelView;->itemHeight:I

    .line 90
    iput-boolean p2, p0, Lcom/codbking/widget/view/WheelView;->isCyclic:Z

    .line 102
    new-instance p2, Lcom/codbking/widget/view/WheelRecycle;

    invoke-direct {p2, p0}, Lcom/codbking/widget/view/WheelRecycle;-><init>(Lcom/codbking/widget/view/WheelView;)V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->recycle:Lcom/codbking/widget/view/WheelRecycle;

    .line 105
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->changingListeners:Ljava/util/List;

    .line 106
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->scrollingListeners:Ljava/util/List;

    .line 107
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->clickingListeners:Ljava/util/List;

    .line 144
    new-instance p2, Lcom/codbking/widget/view/WheelView$1;

    invoke-direct {p2, p0}, Lcom/codbking/widget/view/WheelView$1;-><init>(Lcom/codbking/widget/view/WheelView;)V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->scrollingListener:Lcom/codbking/widget/view/WheelScroller$ScrollingListener;

    .line 221
    new-instance p2, Lcom/codbking/widget/view/WheelView$2;

    invoke-direct {p2, p0}, Lcom/codbking/widget/view/WheelView$2;-><init>(Lcom/codbking/widget/view/WheelView;)V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 122
    invoke-direct {p0, p1}, Lcom/codbking/widget/view/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    const/4 p3, 0x5

    .line 66
    iput p3, p0, Lcom/codbking/widget/view/WheelView;->visibleItems:I

    .line 69
    iput p2, p0, Lcom/codbking/widget/view/WheelView;->itemHeight:I

    .line 90
    iput-boolean p2, p0, Lcom/codbking/widget/view/WheelView;->isCyclic:Z

    .line 102
    new-instance p2, Lcom/codbking/widget/view/WheelRecycle;

    invoke-direct {p2, p0}, Lcom/codbking/widget/view/WheelRecycle;-><init>(Lcom/codbking/widget/view/WheelView;)V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->recycle:Lcom/codbking/widget/view/WheelRecycle;

    .line 105
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->changingListeners:Ljava/util/List;

    .line 106
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->scrollingListeners:Ljava/util/List;

    .line 107
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->clickingListeners:Ljava/util/List;

    .line 144
    new-instance p2, Lcom/codbking/widget/view/WheelView$1;

    invoke-direct {p2, p0}, Lcom/codbking/widget/view/WheelView$1;-><init>(Lcom/codbking/widget/view/WheelView;)V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->scrollingListener:Lcom/codbking/widget/view/WheelScroller$ScrollingListener;

    .line 221
    new-instance p2, Lcom/codbking/widget/view/WheelView$2;

    invoke-direct {p2, p0}, Lcom/codbking/widget/view/WheelView$2;-><init>(Lcom/codbking/widget/view/WheelView;)V

    iput-object p2, p0, Lcom/codbking/widget/view/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 114
    invoke-direct {p0, p1}, Lcom/codbking/widget/view/WheelView;->initData(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codbking/widget/view/WheelView;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/codbking/widget/view/WheelView;->isScrollingPerformed:Z

    return p0
.end method

.method static synthetic access$002(Lcom/codbking/widget/view/WheelView;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/codbking/widget/view/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/codbking/widget/view/WheelView;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/codbking/widget/view/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/codbking/widget/view/WheelView;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    return p0
.end method

.method static synthetic access$202(Lcom/codbking/widget/view/WheelView;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/codbking/widget/view/WheelView;)Lcom/codbking/widget/view/WheelScroller;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/codbking/widget/view/WheelView;->scroller:Lcom/codbking/widget/view/WheelScroller;

    return-object p0
.end method

.method private addViewItem(IZ)Z
    .locals 1

    .line 922
    invoke-direct {p0, p1}, Lcom/codbking/widget/view/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 923
    invoke-direct {p0, v0, p1}, Lcom/codbking/widget/view/WheelView;->refreshTextStatus(Landroid/view/View;I)V

    const/4 p1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 927
    iget-object p2, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 929
    :cond_0
    iget-object p1, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method private buildViewForMeasuring()V
    .locals 4

    .line 897
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 898
    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->recycle:Lcom/codbking/widget/view/WheelRecycle;

    iget v2, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    new-instance v3, Lcom/codbking/widget/view/ItemsRange;

    invoke-direct {v3}, Lcom/codbking/widget/view/ItemsRange;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Lcom/codbking/widget/view/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/codbking/widget/view/ItemsRange;)I

    goto :goto_0

    .line 900
    :cond_0
    invoke-direct {p0}, Lcom/codbking/widget/view/WheelView;->createItemsLayout()V

    .line 904
    :goto_0
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->visibleItems:I

    div-int/lit8 v0, v0, 0x2

    .line 905
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    add-int/2addr v1, v0

    :goto_1
    iget v2, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2

    const/4 v2, 0x1

    .line 906
    invoke-direct {p0, v1, v2}, Lcom/codbking/widget/view/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 907
    iput v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .locals 4

    .line 554
    invoke-direct {p0}, Lcom/codbking/widget/view/WheelView;->initResourcesIfNecessary()V

    .line 557
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 559
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x14

    .line 567
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v0

    .line 574
    :goto_0
    iget-object p2, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v0, p1, -0x14

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    return p1
.end method

.method private createItemsLayout()V
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 888
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method private doScroll(I)V
    .locals 7

    .line 727
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    .line 729
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result p1

    .line 730
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    div-int/2addr v0, p1

    .line 732
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    sub-int/2addr v1, v0

    .line 733
    iget-object v2, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    invoke-interface {v2}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 735
    iget v3, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    rem-int/2addr v3, p1

    .line 736
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, p1, 0x2

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    const/4 v3, 0x0

    .line 739
    :cond_0
    iget-boolean v4, p0, Lcom/codbking/widget/view/WheelView;->isCyclic:Z

    if-eqz v4, :cond_4

    if-lez v2, :cond_4

    if-lez v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    if-gez v1, :cond_3

    add-int/2addr v1, v2

    goto :goto_0

    .line 751
    :cond_3
    rem-int/2addr v1, v2

    goto :goto_1

    :cond_4
    if-gez v1, :cond_5

    .line 755
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    if-lt v1, v2, :cond_6

    .line 758
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v2, -0x1

    goto :goto_1

    :cond_6
    if-lez v1, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_8

    if-gez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    .line 769
    :cond_8
    :goto_1
    iget v2, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    .line 770
    iget v3, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    if-eq v1, v3, :cond_9

    .line 771
    invoke-virtual {p0, v1, v6}, Lcom/codbking/widget/view/WheelView;->setCurrentItem(IZ)V

    goto :goto_2

    .line 773
    :cond_9
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->invalidate()V

    :goto_2
    mul-int v0, v0, p1

    sub-int/2addr v2, v0

    .line 777
    iput v2, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    .line 778
    iget p1, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v0

    if-le p1, v0, :cond_a

    .line 779
    iget p1, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v0

    rem-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    :cond_a
    return-void
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .locals 0

    .line 676
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    .line 677
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .locals 3

    .line 659
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 661
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    iget v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v1

    mul-int v0, v0, v1

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    neg-int v0, v0

    .line 662
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 664
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 666
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .locals 5

    .line 644
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    mul-double v0, v0, v2

    double-to-int v0, v0

    .line 645
    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 646
    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 648
    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 649
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 518
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/codbking/widget/view/WheelView;->itemHeight:I

    .line 521
    :cond_0
    iget p1, p0, Lcom/codbking/widget/view/WheelView;->itemHeight:I

    iget v0, p0, Lcom/codbking/widget/view/WheelView;->visibleItems:I

    mul-int v0, v0, p1

    mul-int/lit8 p1, p1, 0xa

    div-int/lit8 p1, p1, 0x32

    sub-int/2addr v0, p1

    .line 523
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getSuggestedMinimumHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private getItemView(I)Landroid/view/View;
    .locals 3

    .line 957
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 960
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 961
    invoke-direct {p0, p1}, Lcom/codbking/widget/view/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 962
    iget-object p1, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->recycle:Lcom/codbking/widget/view/WheelRecycle;

    invoke-virtual {v0}, Lcom/codbking/widget/view/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {p1, v0, v1}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 969
    :cond_2
    rem-int/2addr p1, v0

    .line 970
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->recycle:Lcom/codbking/widget/view/WheelRecycle;

    invoke-virtual {v1}, Lcom/codbking/widget/view/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1, v2}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getItemsRange()Lcom/codbking/widget/view/ItemsRange;
    .locals 5

    .line 802
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 806
    :cond_0
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    const/4 v1, 0x1

    .line 809
    :goto_0
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v2

    mul-int v2, v2, v1

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 814
    :cond_1
    iget v2, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    if-eqz v2, :cond_3

    if-lez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 821
    iget v2, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v0, v2

    int-to-double v3, v1

    int-to-double v1, v2

    .line 823
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    add-double/2addr v3, v1

    double-to-int v1, v3

    .line 825
    :cond_3
    new-instance v2, Lcom/codbking/widget/view/ItemsRange;

    invoke-direct {v2, v0, v1}, Lcom/codbking/widget/view/ItemsRange;-><init>(II)V

    return-object v2
.end method

.method private initData(Landroid/content/Context;)V
    .locals 2

    .line 140
    new-instance p1, Lcom/codbking/widget/view/WheelScroller;

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->scrollingListener:Lcom/codbking/widget/view/WheelScroller$ScrollingListener;

    invoke-direct {p1, v0, v1}, Lcom/codbking/widget/view/WheelScroller;-><init>(Landroid/content/Context;Lcom/codbking/widget/view/WheelScroller$ScrollingListener;)V

    iput-object p1, p0, Lcom/codbking/widget/view/WheelView;->scroller:Lcom/codbking/widget/view/WheelScroller;

    return-void
.end method

.method private initResourcesIfNecessary()V
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/codbking/widget/view/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/codbking/widget/view/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1

    .line 503
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/codbking/widget/view/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/codbking/widget/view/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    :cond_1
    return-void
.end method

.method private isValidItemIndex(I)Z
    .locals 1

    .line 946
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/codbking/widget/view/WheelView;->isCyclic:Z

    if-nez v0, :cond_0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private layout(II)V
    .locals 2

    add-int/lit8 p1, p1, -0x14

    .line 620
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    return-void
.end method

.method private rebuildItems()Z
    .locals 6

    .line 835
    invoke-direct {p0}, Lcom/codbking/widget/view/WheelView;->getItemsRange()Lcom/codbking/widget/view/ItemsRange;

    move-result-object v0

    .line 836
    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 837
    iget-object v4, p0, Lcom/codbking/widget/view/WheelView;->recycle:Lcom/codbking/widget/view/WheelRecycle;

    iget v5, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    invoke-virtual {v4, v1, v5, v0}, Lcom/codbking/widget/view/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/codbking/widget/view/ItemsRange;)I

    move-result v1

    .line 838
    iget v4, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    if-eq v4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 839
    :goto_0
    iput v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    goto :goto_1

    .line 841
    :cond_1
    invoke-direct {p0}, Lcom/codbking/widget/view/WheelView;->createItemsLayout()V

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_4

    .line 846
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/codbking/widget/view/ItemsRange;->getFirst()I

    move-result v4

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/codbking/widget/view/ItemsRange;->getCount()I

    move-result v4

    if-eq v1, v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v4, 0x1

    .line 849
    :cond_4
    :goto_3
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/codbking/widget/view/ItemsRange;->getFirst()I

    move-result v5

    if-le v1, v5, :cond_6

    iget v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    invoke-virtual {v0}, Lcom/codbking/widget/view/ItemsRange;->getLast()I

    move-result v5

    if-gt v1, v5, :cond_6

    .line 850
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    sub-int/2addr v1, v3

    :goto_4
    invoke-virtual {v0}, Lcom/codbking/widget/view/ItemsRange;->getFirst()I

    move-result v5

    if-lt v1, v5, :cond_7

    .line 851
    invoke-direct {p0, v1, v3}, Lcom/codbking/widget/view/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_5

    .line 854
    :cond_5
    iput v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 857
    :cond_6
    invoke-virtual {v0}, Lcom/codbking/widget/view/ItemsRange;->getFirst()I

    move-result v1

    iput v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    .line 860
    :cond_7
    :goto_5
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    .line 861
    iget-object v3, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    :goto_6
    invoke-virtual {v0}, Lcom/codbking/widget/view/ItemsRange;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_9

    .line 862
    iget v5, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    add-int/2addr v5, v3

    invoke-direct {p0, v5, v2}, Lcom/codbking/widget/view/WheelView;->addViewItem(IZ)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-nez v5, :cond_8

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 866
    :cond_9
    iput v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    return v4
.end method

.method private refreshTextStatus(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 429
    :cond_0
    sget v0, Lcom/codbking/widget/R$id;->text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 430
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    if-ne p2, v0, :cond_1

    .line 431
    iget p2, p0, Lcom/codbking/widget/view/WheelView;->selectTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 433
    :cond_1
    iget p2, p0, Lcom/codbking/widget/view/WheelView;->textColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private updateView()V
    .locals 2

    .line 876
    invoke-direct {p0}, Lcom/codbking/widget/view/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/codbking/widget/view/WheelView;->calculateLayoutWidth(II)I

    .line 878
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/codbking/widget/view/WheelView;->layout(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/codbking/widget/view/OnWheelChangedListener;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addClickingListener(Lcom/codbking/widget/view/OnWheelClickedListener;)V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addScrollingListener(Lcom/codbking/widget/view/OnWheelScrollListener;)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCurrentItem()I
    .locals 1

    .line 376
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    return v0
.end method

.method public getItemHeight()I
    .locals 2

    .line 532
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->itemHeight:I

    if-eqz v0, :cond_0

    return v0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/codbking/widget/view/WheelView;->itemHeight:I

    .line 538
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->itemHeight:I

    return v0

    .line 541
    :cond_1
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/codbking/widget/view/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getViewAdapter()Lcom/codbking/widget/adapters/WheelViewAdapter;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/codbking/widget/view/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 477
    iget-object p1, p0, Lcom/codbking/widget/view/WheelView;->recycle:Lcom/codbking/widget/view/WheelRecycle;

    invoke-virtual {p1}, Lcom/codbking/widget/view/WheelRecycle;->clearAll()V

    .line 478
    iget-object p1, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    .line 479
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    const/4 p1, 0x0

    .line 481
    iput p1, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    goto :goto_0

    .line 482
    :cond_1
    iget-object p1, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    .line 484
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->recycle:Lcom/codbking/widget/view/WheelRecycle;

    iget v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    new-instance v2, Lcom/codbking/widget/view/ItemsRange;

    invoke-direct {v2}, Lcom/codbking/widget/view/ItemsRange;-><init>()V

    invoke-virtual {v0, p1, v1, v2}, Lcom/codbking/widget/view/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/codbking/widget/view/ItemsRange;)I

    .line 487
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->invalidate()V

    return-void
.end method

.method public isCyclic()Z
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/codbking/widget/view/WheelView;->isCyclic:Z

    return v0
.end method

.method public isScrollingPerformed()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/codbking/widget/view/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codbking/widget/view/OnWheelChangedListener;

    .line 289
    invoke-interface {v1, p0, p1, p2}, Lcom/codbking/widget/view/OnWheelChangedListener;->onChanged(Lcom/codbking/widget/view/WheelView;II)V

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    .line 292
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    goto :goto_1

    .line 295
    :cond_1
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/codbking/widget/view/WheelView;->firstItem:I

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 298
    invoke-direct {p0, v0, p1}, Lcom/codbking/widget/view/WheelView;->refreshTextStatus(Landroid/view/View;I)V

    .line 299
    invoke-direct {p0, v1, p2}, Lcom/codbking/widget/view/WheelView;->refreshTextStatus(Landroid/view/View;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codbking/widget/view/OnWheelClickedListener;

    .line 366
    invoke-interface {v1, p0, p1}, Lcom/codbking/widget/view/OnWheelClickedListener;->onItemClicked(Lcom/codbking/widget/view/WheelView;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .locals 2

    .line 336
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codbking/widget/view/OnWheelScrollListener;

    .line 337
    invoke-interface {v1, p0}, Lcom/codbking/widget/view/OnWheelScrollListener;->onScrollingFinished(Lcom/codbking/widget/view/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codbking/widget/view/OnWheelScrollListener;

    .line 328
    invoke-interface {v1, p0}, Lcom/codbking/widget/view/OnWheelScrollListener;->onScrollingStarted(Lcom/codbking/widget/view/WheelView;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 625
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 627
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/codbking/widget/view/WheelView;->updateView()V

    .line 630
    invoke-direct {p0, p1}, Lcom/codbking/widget/view/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 606
    invoke-direct {p0, p4, p5}, Lcom/codbking/widget/view/WheelView;->layout(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 581
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 582
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 583
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 584
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 586
    invoke-direct {p0}, Lcom/codbking/widget/view/WheelView;->buildViewForMeasuring()V

    .line 588
    invoke-direct {p0, p1, v0}, Lcom/codbking/widget/view/WheelView;->calculateLayoutWidth(II)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/codbking/widget/view/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_1

    .line 597
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, v0

    .line 601
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/codbking/widget/view/WheelView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 690
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getViewAdapter()Lcom/codbking/widget/adapters/WheelViewAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 694
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 696
    :cond_1
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 697
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 702
    :cond_2
    iget-boolean v0, p0, Lcom/codbking/widget/view/WheelView;->isScrollingPerformed:Z

    if-nez v0, :cond_4

    .line 703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_3

    .line 705
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    .line 707
    :cond_3
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 709
    :goto_0
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v1

    div-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 710
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/codbking/widget/view/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 711
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/codbking/widget/view/WheelView;->notifyClickListenersAboutClick(I)V

    .line 717
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->scroller:Lcom/codbking/widget/view/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/codbking/widget/view/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v1
.end method

.method public removeChangingListener(Lcom/codbking/widget/view/OnWheelChangedListener;)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeClickingListener(Lcom/codbking/widget/view/OnWheelClickedListener;)V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeScrollingListener(Lcom/codbking/widget/view/OnWheelScrollListener;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public scroll(II)V
    .locals 1

    .line 792
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v0

    mul-int p1, p1, v0

    iget v0, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    sub-int/2addr p1, v0

    .line 793
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->scroller:Lcom/codbking/widget/view/WheelScroller;

    invoke-virtual {v0, p1, p2}, Lcom/codbking/widget/view/WheelScroller;->scroll(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x0

    .line 445
    invoke-virtual {p0, p1, v0}, Lcom/codbking/widget/view/WheelView;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 4

    .line 388
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    invoke-interface {v0}, Lcom/codbking/widget/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_3

    .line 394
    :cond_1
    iget-boolean v1, p0, Lcom/codbking/widget/view/WheelView;->isCyclic:Z

    if-eqz v1, :cond_7

    :goto_0
    if-gez p1, :cond_2

    add-int/2addr p1, v0

    goto :goto_0

    .line 398
    :cond_2
    rem-int/2addr p1, v0

    .line 403
    :cond_3
    iget v1, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    if-eq p1, v1, :cond_7

    const/4 v2, 0x0

    if-eqz p2, :cond_6

    sub-int p2, p1, v1

    .line 406
    iget-boolean v3, p0, Lcom/codbking/widget/view/WheelView;->isCyclic:Z

    if-eqz v3, :cond_5

    .line 407
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr v0, p1

    .line 408
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge v0, p1, :cond_5

    if-gez p2, :cond_4

    move p2, v0

    goto :goto_1

    :cond_4
    neg-int p1, v0

    move p2, p1

    .line 412
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, v2}, Lcom/codbking/widget/view/WheelView;->scroll(II)V

    goto :goto_2

    .line 414
    :cond_6
    iput v2, p0, Lcom/codbking/widget/view/WheelView;->scrollingOffset:I

    .line 418
    iput p1, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    .line 419
    iget p1, p0, Lcom/codbking/widget/view/WheelView;->currentItem:I

    invoke-virtual {p0, v1, p1}, Lcom/codbking/widget/view/WheelView;->notifyChangingListeners(II)V

    .line 420
    invoke-virtual {p0}, Lcom/codbking/widget/view/WheelView;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method

.method public setCyclic(Z)V
    .locals 0

    .line 465
    iput-boolean p1, p0, Lcom/codbking/widget/view/WheelView;->isCyclic:Z

    const/4 p1, 0x0

    .line 466
    invoke-virtual {p0, p1}, Lcom/codbking/widget/view/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->scroller:Lcom/codbking/widget/view/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/codbking/widget/view/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setSelectTextColor(II)V
    .locals 0

    .line 254
    iput p2, p0, Lcom/codbking/widget/view/WheelView;->selectTextColor:I

    .line 255
    iput p1, p0, Lcom/codbking/widget/view/WheelView;->textColor:I

    return-void
.end method

.method public setViewAdapter(Lcom/codbking/widget/adapters/WheelViewAdapter;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    if-eqz v0, :cond_0

    .line 242
    iget-object v1, p0, Lcom/codbking/widget/view/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/codbking/widget/adapters/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    .line 245
    iget-object p1, p0, Lcom/codbking/widget/view/WheelView;->viewAdapter:Lcom/codbking/widget/adapters/WheelViewAdapter;

    if-eqz p1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Lcom/codbking/widget/adapters/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    const/4 p1, 0x1

    .line 249
    invoke-virtual {p0, p1}, Lcom/codbking/widget/view/WheelView;->invalidateWheel(Z)V

    return-void
.end method

.method public setVisibleItems(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/codbking/widget/view/WheelView;->visibleItems:I

    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/codbking/widget/view/WheelView;->scroller:Lcom/codbking/widget/view/WheelScroller;

    invoke-virtual {v0}, Lcom/codbking/widget/view/WheelScroller;->stopScrolling()V

    return-void
.end method
