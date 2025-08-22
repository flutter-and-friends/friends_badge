.class public Lnet/lucode/hackware/magicindicator/NavigatorHelper;
.super Ljava/lang/Object;
.source "NavigatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;
    }
.end annotation


# instance fields
.field private mCurrentIndex:I

.field private mDeselectedItems:Landroid/util/SparseBooleanArray;

.field private mLastIndex:I

.field private mLastPositionOffsetSum:F

.field private mLeavedPercents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

.field private mScrollState:I

.field private mSkimOver:Z

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    return-void
.end method

.method private dispatchOnDeselected(I)V
    .locals 2

    .line 110
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    if-eqz v0, :cond_0

    .line 111
    iget v1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    invoke-interface {v0, p1, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;->onDeselected(II)V

    .line 113
    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private dispatchOnEnter(IFZZ)V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mSkimOver:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz p4, :cond_2

    .line 86
    :cond_0
    iget-object p4, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    if-eqz p4, :cond_1

    .line 87
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    invoke-interface {p4, p1, v0, p2, p3}, Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;->onEnter(IIFZ)V

    .line 89
    :cond_1
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private dispatchOnLeave(IFZZ)V
    .locals 3

    .line 94
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mSkimOver:Z

    if-nez v0, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastIndex:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    add-int/lit8 v2, v0, -0x1

    if-eq p1, v2, :cond_0

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    :cond_1
    if-eqz p4, :cond_4

    .line 95
    :cond_2
    iget-object p4, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    if-eqz p4, :cond_3

    .line 96
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    invoke-interface {p4, p1, v0, p2, p3}, Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;->onLeave(IIFZ)V

    .line 98
    :cond_3
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private dispatchOnSelected(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    if-eqz v0, :cond_0

    .line 104
    iget v1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    invoke-interface {v0, p1, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;->onSelected(II)V

    .line 106
    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 154
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .line 158
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    return v0
.end method

.method public getTotalCount()I
    .locals 1

    .line 144
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 132
    iput p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 10

    int-to-float p3, p1

    add-float/2addr p3, p2

    .line 28
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastPositionOffsetSum:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    cmpg-float v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iget v3, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mScrollState:I

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v3, :cond_8

    .line 32
    iget v3, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastPositionOffsetSum:F

    cmpl-float v3, p3, v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, p1, 0x1

    cmpl-float v6, p2, v4

    if-nez v6, :cond_2

    if-eqz v0, :cond_2

    add-int/lit8 v3, p1, -0x1

    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    .line 43
    :goto_2
    iget v8, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    if-ge v7, v8, :cond_5

    if-eq v7, p1, :cond_4

    if-ne v7, v3, :cond_3

    goto :goto_3

    .line 47
    :cond_3
    iget-object v8, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    .line 48
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_4

    .line 49
    invoke-direct {p0, v7, v5, v0, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v0, :cond_6

    .line 54
    invoke-direct {p0, p1, p2, v1, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    .line 55
    invoke-direct {p0, v3, p2, v1, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnEnter(IFZZ)V

    goto :goto_6

    :cond_6
    sub-float/2addr v5, p2

    .line 57
    invoke-direct {p0, v3, v5, v2, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    .line 58
    invoke-direct {p0, p1, v5, v2, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnEnter(IFZZ)V

    goto :goto_6

    :cond_7
    sub-float/2addr v5, p2

    .line 61
    invoke-direct {p0, v3, v5, v1, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    .line 62
    invoke-direct {p0, p1, v5, v1, v2}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnEnter(IFZZ)V

    goto :goto_6

    :cond_8
    const/4 p1, 0x0

    .line 65
    :goto_4
    iget p2, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    if-ge p1, p2, :cond_c

    .line 66
    iget p2, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    if-ne p1, p2, :cond_9

    goto :goto_5

    .line 69
    :cond_9
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p2

    if-nez p2, :cond_a

    .line 71
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnDeselected(I)V

    .line 73
    :cond_a
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    .line 74
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    cmpl-float p2, p2, v5

    if-eqz p2, :cond_b

    .line 75
    invoke-direct {p0, p1, v5, v2, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnLeave(IFZZ)V

    :cond_b
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 78
    :cond_c
    iget p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    invoke-direct {p0, p1, v5, v2, v1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnEnter(IFZZ)V

    .line 79
    iget p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnSelected(I)V

    .line 81
    :goto_6
    iput p3, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastPositionOffsetSum:F

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 117
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    iput v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLastIndex:I

    .line 118
    iput p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    .line 119
    iget p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnSelected(I)V

    const/4 p1, 0x0

    .line 120
    :goto_0
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    if-ge p1, v0, :cond_2

    .line 121
    iget v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mCurrentIndex:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 124
    :cond_0
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->dispatchOnDeselected(I)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setNavigatorScrollListener(Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mNavigatorScrollListener:Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;

    return-void
.end method

.method public setSkimOver(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mSkimOver:Z

    return-void
.end method

.method public setTotalCount(I)V
    .locals 0

    .line 148
    iput p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mTotalCount:I

    .line 149
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mDeselectedItems:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 150
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->mLeavedPercents:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
