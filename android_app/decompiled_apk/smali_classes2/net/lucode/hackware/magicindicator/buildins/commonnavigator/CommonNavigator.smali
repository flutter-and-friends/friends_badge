.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;
.super Landroid/widget/FrameLayout;
.source "CommonNavigator.java"

# interfaces
.implements Lnet/lucode/hackware/magicindicator/abs/IPagerNavigator;
.implements Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;


# instance fields
.field private mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

.field private mAdjustMode:Z

.field private mEnablePivotScroll:Z

.field private mFollowTouch:Z

.field private mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

.field private mIndicatorContainer:Landroid/widget/LinearLayout;

.field private mIndicatorOnTop:Z

.field private mLeftPadding:I

.field private mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPositionDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;",
            ">;"
        }
    .end annotation
.end field

.field private mReselectWhenLayout:Z

.field private mRightPadding:I

.field private mScrollPivotX:F

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mSkimOver:Z

.field private mSmoothScroll:Z

.field private mTitleContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 45
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    .line 47
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mFollowTouch:Z

    .line 52
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mReselectWhenLayout:Z

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    .line 58
    new-instance p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$1;

    invoke-direct {p1, p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator$1;-><init>(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mObserver:Landroid/database/DataSetObserver;

    .line 74
    new-instance p1, Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-direct {p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    .line 75
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {p1, p0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->setNavigatorScrollListener(Lnet/lucode/hackware/magicindicator/NavigatorHelper$OnNavigatorScrollListener;)V

    return-void
.end method

.method static synthetic access$000(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)Lnet/lucode/hackware/magicindicator/NavigatorHelper;
    .locals 0

    .line 30
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    return-object p0
.end method

.method static synthetic access$200(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 118
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->removeAllViews()V

    .line 121
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdjustMode:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout_no_scroll:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 127
    :goto_0
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 129
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 130
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    iget v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mLeftPadding:I

    iget v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mRightPadding:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 132
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->indicator_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorContainer:Landroid/widget/LinearLayout;

    .line 133
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorOnTop:Z

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 137
    :cond_1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->initTitlesAndIndicator()V

    return-void
.end method

.method private initTitlesAndIndicator()V
    .locals 7

    .line 144
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getTotalCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_2

    .line 145
    iget-object v4, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    move-result-object v4

    .line 146
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 147
    check-cast v4, Landroid/view/View;

    .line 149
    iget-boolean v5, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdjustMode:Z

    if-eqz v5, :cond_0

    .line 150
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getTitleWeight(Landroid/content/Context;I)F

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 153
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 155
    :goto_1
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getIndicator(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    move-result-object v0

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    .line 160
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 161
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 162
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private preparePositionData()V
    .locals 5

    .line 186
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 187
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getTotalCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 188
    new-instance v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    invoke-direct {v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;-><init>()V

    .line 189
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 191
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    .line 192
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mTop:I

    .line 193
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mBottom:I

    .line 195
    instance-of v4, v3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    if-eqz v4, :cond_0

    .line 196
    check-cast v3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;

    .line 197
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentLeft()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    .line 198
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentTop()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentTop:I

    .line 199
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentRight()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    .line 200
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IMeasurablePagerTitleView;->getContentBottom()I

    move-result v3

    iput v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentBottom:I

    goto :goto_1

    .line 202
    :cond_0
    iget v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentLeft:I

    .line 203
    iget v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mTop:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentTop:I

    .line 204
    iget v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentRight:I

    .line 205
    iget v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mBottom:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mContentBottom:I

    .line 208
    :cond_1
    :goto_1
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdapter()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    return-object v0
.end method

.method public getLeftPadding()I
    .locals 1

    .line 403
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mLeftPadding:I

    return v0
.end method

.method public getPagerIndicator()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;
    .locals 1

    .line 276
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    return-object v0
.end method

.method public getPagerTitleView(I)Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;
    .locals 1

    .line 384
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 387
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    return-object p1
.end method

.method public getRightPadding()I
    .locals 1

    .line 395
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mRightPadding:I

    return v0
.end method

.method public getScrollPivotX()F
    .locals 1

    .line 239
    iget v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    return v0
.end method

.method public getTitleContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 391
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public isAdjustMode()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdjustMode:Z

    return v0
.end method

.method public isEnablePivotScroll()Z
    .locals 1

    .line 280
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mEnablePivotScroll:Z

    return v0
.end method

.method public isFollowTouch()Z
    .locals 1

    .line 318
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mFollowTouch:Z

    return v0
.end method

.method public isIndicatorOnTop()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorOnTop:Z

    return v0
.end method

.method public isReselectWhenLayout()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mReselectWhenLayout:Z

    return v0
.end method

.method public isSkimOver()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSkimOver:Z

    return v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 80
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAttachToMagicIndicator()V
    .locals 0

    .line 268
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->init()V

    return-void
.end method

.method public onDeselected(II)V
    .locals 2

    .line 374
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 377
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 378
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v1, :cond_1

    .line 379
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onDeselected(II)V

    :cond_1
    return-void
.end method

.method public onDetachFromMagicIndicator()V
    .locals 0

    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 2

    .line 289
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 293
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v1, :cond_1

    .line 294
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onEnter(IIFZ)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 169
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 170
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz p1, :cond_1

    .line 171
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->preparePositionData()V

    .line 172
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    if-eqz p1, :cond_0

    .line 173
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;->onPositionDataProvide(Ljava/util/List;)V

    .line 175
    :cond_0
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mReselectWhenLayout:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getScrollState()I

    move-result p1

    if-nez p1, :cond_1

    .line 176
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getCurrentIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->onPageSelected(I)V

    .line 177
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->getCurrentIndex()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 2

    .line 300
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 304
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v1, :cond_1

    .line 305
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onLeave(IIFZ)V

    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 258
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->onPageScrollStateChanged(I)V

    .line 260
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 214
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->onPageScrolled(IFI)V

    .line 217
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;->onPageScrolled(IFI)V

    .line 222
    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_2

    if-ltz p1, :cond_2

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 223
    iget-boolean p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mFollowTouch:Z

    if-eqz p3, :cond_1

    .line 224
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 225
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 226
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    .line 227
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    .line 228
    invoke-virtual {p3}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->horizontalCenter()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    mul-float v0, v0, v1

    sub-float/2addr p3, v0

    .line 229
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->horizontalCenter()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    .line 230
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    sub-float/2addr p1, p3

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 231
    :cond_1
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mEnablePivotScroll:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 248
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->onPageSelected(I)V

    .line 250
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicator:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerIndicator;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onSelected(II)V
    .locals 2

    .line 336
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 340
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    if-eqz v1, :cond_1

    .line 341
    check-cast v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;

    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/IPagerTitleView;->onSelected(II)V

    .line 343
    :cond_1
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdjustMode:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mFollowTouch:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 344
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 345
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mPositionDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;

    .line 346
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mEnablePivotScroll:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 347
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->horizontalCenter()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    mul-float p2, p2, v1

    sub-float/2addr p1, p2

    .line 348
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    if-eqz p2, :cond_2

    .line 349
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 351
    :cond_2
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 355
    :cond_3
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    iget v1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    if-le p2, v1, :cond_5

    .line 356
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    if-eqz p2, :cond_4

    .line 357
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget p1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 359
    :cond_4
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget p1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mLeft:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 361
    :cond_5
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    iget v1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    if-ge p2, v1, :cond_7

    .line 362
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    if-eqz p2, :cond_6

    .line 363
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget p1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 365
    :cond_6
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollView:Landroid/widget/HorizontalScrollView;

    iget p1, p1, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/model/PositionData;->mRight:I

    invoke-virtual {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setAdapter(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 102
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 104
    :cond_1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    .line 105
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    if-eqz p1, :cond_2

    .line 106
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 107
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->setTotalCount(I)V

    .line 108
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mTitleContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 109
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdapter:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/abs/CommonNavigatorAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 112
    :cond_2
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->setTotalCount(I)V

    .line 113
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->init()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setAdjustMode(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mAdjustMode:Z

    return-void
.end method

.method public setEnablePivotScroll(Z)V
    .locals 0

    .line 284
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mEnablePivotScroll:Z

    return-void
.end method

.method public setFollowTouch(Z)V
    .locals 0

    .line 322
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mFollowTouch:Z

    return-void
.end method

.method public setIndicatorOnTop(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mIndicatorOnTop:Z

    return-void
.end method

.method public setLeftPadding(I)V
    .locals 0

    .line 407
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mLeftPadding:I

    return-void
.end method

.method public setReselectWhenLayout(Z)V
    .locals 0

    .line 423
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mReselectWhenLayout:Z

    return-void
.end method

.method public setRightPadding(I)V
    .locals 0

    .line 399
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mRightPadding:I

    return-void
.end method

.method public setScrollPivotX(F)V
    .locals 0

    .line 243
    iput p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mScrollPivotX:F

    return-void
.end method

.method public setSkimOver(Z)V
    .locals 1

    .line 330
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSkimOver:Z

    .line 331
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/NavigatorHelper;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/NavigatorHelper;->setSkimOver(Z)V

    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 0

    .line 314
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->mSmoothScroll:Z

    return-void
.end method
