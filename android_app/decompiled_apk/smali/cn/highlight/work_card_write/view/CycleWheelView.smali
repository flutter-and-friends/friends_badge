.class public Lcn/highlight/work_card_write/view/CycleWheelView;
.super Landroid/widget/ListView;
.source "CycleWheelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;,
        Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;,
        Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewException;,
        Lcn/highlight/work_card_write/view/CycleWheelView$WheelItemSelectedListener;
    }
.end annotation


# static fields
.field private static final COLOR_DIVIDER_DEFALUT:I

.field private static final COLOR_SOLID_DEFAULT:I

.field private static final COLOR_SOLID_SELET_DEFAULT:I

.field private static final HEIGHT_DIVIDER_DEFAULT:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field private static final WHEEL_SIZE_DEFAULT:I = 0x3


# instance fields
.field private cylceEnable:Z

.field private dividerColor:I

.field private dividerHeight:I

.field private mAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;

.field private mAlphaGradual:F

.field private mCurrentPositon:I

.field private mCustomAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mItemHeight:I

.field private mItemLabelTvId:I

.field private mItemLayoutId:I

.field private mItemSelectedListener:Lcn/highlight/work_card_write/view/CycleWheelView$WheelItemSelectedListener;

.field private mLabelColor:I

.field private mLabelSelectColor:I

.field private mLabels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWheelSize:I

.field private seletedSolidColor:I

.field private solidColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-class v0, Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/view/CycleWheelView;->TAG:Ljava/lang/String;

    const-string v0, "#D9D9D9"

    .line 36
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_DIVIDER_DEFALUT:I

    const-string v0, "#FFFFFF"

    .line 37
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_SOLID_DEFAULT:I

    .line 38
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_SOLID_SELET_DEFAULT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const-string p1, "#F66821"

    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelSelectColor:I

    const p1, -0x777778

    .line 59
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelColor:I

    const p1, 0x3f333333

    .line 64
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAlphaGradual:F

    .line 69
    sget p1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_DIVIDER_DEFALUT:I

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerColor:I

    const/4 p1, 0x1

    .line 74
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerHeight:I

    .line 79
    sget p1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_SOLID_SELET_DEFAULT:I

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->seletedSolidColor:I

    .line 84
    sget p1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_SOLID_DEFAULT:I

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->solidColor:I

    const/4 p1, 0x3

    .line 89
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "#F66821"

    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelSelectColor:I

    const p1, -0x777778

    .line 59
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelColor:I

    const p1, 0x3f333333

    .line 64
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAlphaGradual:F

    .line 69
    sget p1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_DIVIDER_DEFALUT:I

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerColor:I

    const/4 p1, 0x1

    .line 74
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerHeight:I

    .line 79
    sget p1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_SOLID_SELET_DEFAULT:I

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->seletedSolidColor:I

    .line 84
    sget p1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_SOLID_DEFAULT:I

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->solidColor:I

    const/4 p1, 0x3

    .line 89
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    .line 118
    invoke-direct {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#F66821"

    .line 54
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelSelectColor:I

    const p1, -0x777778

    .line 59
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelColor:I

    const p1, 0x3f333333

    .line 64
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAlphaGradual:F

    .line 69
    sget p1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_DIVIDER_DEFALUT:I

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerColor:I

    const/4 p1, 0x1

    .line 74
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerHeight:I

    .line 79
    sget p1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_SOLID_SELET_DEFAULT:I

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->seletedSolidColor:I

    .line 84
    sget p1, Lcn/highlight/work_card_write/view/CycleWheelView;->COLOR_SOLID_DEFAULT:I

    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->solidColor:I

    const/4 p1, 0x3

    .line 89
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemHeight:I

    return p0
.end method

.method static synthetic access$100(Lcn/highlight/work_card_write/view/CycleWheelView;F)I
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/view/CycleWheelView;->getDistance(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcn/highlight/work_card_write/view/CycleWheelView;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->cylceEnable:Z

    return p0
.end method

.method static synthetic access$1100(Lcn/highlight/work_card_write/view/CycleWheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemLayoutId:I

    return p0
.end method

.method static synthetic access$1200(Lcn/highlight/work_card_write/view/CycleWheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemLabelTvId:I

    return p0
.end method

.method static synthetic access$200(Lcn/highlight/work_card_write/view/CycleWheelView;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->refreshItems()V

    return-void
.end method

.method static synthetic access$300(Lcn/highlight/work_card_write/view/CycleWheelView;I)I
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/view/CycleWheelView;->getPosition(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$401(Lcn/highlight/work_card_write/view/CycleWheelView;I)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/highlight/work_card_write/view/CycleWheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerColor:I

    return p0
.end method

.method static synthetic access$600(Lcn/highlight/work_card_write/view/CycleWheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerHeight:I

    return p0
.end method

.method static synthetic access$700(Lcn/highlight/work_card_write/view/CycleWheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->seletedSolidColor:I

    return p0
.end method

.method static synthetic access$800(Lcn/highlight/work_card_write/view/CycleWheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->solidColor:I

    return p0
.end method

.method static synthetic access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I
    .locals 0

    .line 31
    iget p0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    return p0
.end method

.method private getDistance(F)I
    .locals 2

    .line 165
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    float-to-int p1, p1

    return p1

    .line 167
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41400000    # 12.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    :goto_0
    return p1

    :cond_2
    const/high16 v0, 0x40c00000    # 6.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getPosition(I)I
    .locals 2

    .line 285
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->cylceEnable:Z

    if-eqz v0, :cond_1

    const v0, 0x3fffffff

    .line 289
    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    .line 290
    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    :cond_1
    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private init()V
    .locals 2

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mHandler:Landroid/os/Handler;

    const v0, 0x7f0c006f

    .line 127
    iput v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemLayoutId:I

    const v0, 0x7f0902b6

    .line 128
    iput v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemLabelTvId:I

    .line 129
    new-instance v0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;-><init>(Lcn/highlight/work_card_write/view/CycleWheelView;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setVerticalScrollBarEnabled(Z)V

    .line 131
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setScrollingCacheEnabled(Z)V

    .line 132
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setCacheColorHint(I)V

    .line 133
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setFadingEdgeLength(I)V

    const/4 v1, 0x2

    .line 134
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->setOverScrollMode(I)V

    .line 135
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setDividerHeight(I)V

    .line 136
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    new-instance v0, Lcn/highlight/work_card_write/view/CycleWheelView$1;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/view/CycleWheelView$1;-><init>(Lcn/highlight/work_card_write/view/CycleWheelView;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 407
    invoke-direct {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->measureHeight()I

    move-result v0

    iput v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemHeight:I

    .line 408
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 409
    iget v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemHeight:I

    iget v2, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    mul-int v1, v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 410
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;

    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->setData(Ljava/util/List;)V

    .line 411
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->notifyDataSetChanged()V

    .line 412
    new-instance v0, Lcn/highlight/work_card_write/view/CycleWheelView$3;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/view/CycleWheelView$3;-><init>(Lcn/highlight/work_card_write/view/CycleWheelView;)V

    .line 447
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private measureHeight()I
    .locals 4

    .line 451
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 452
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    .line 454
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 455
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 456
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 457
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method private refreshItems()V
    .locals 6

    .line 175
    iget v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    div-int/lit8 v0, v0, 0x2

    .line 176
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0, v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-virtual {p0, v2}, Lcn/highlight/work_card_write/view/CycleWheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    add-int v2, v1, v0

    goto :goto_0

    :cond_1
    add-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    .line 186
    :goto_0
    iget v3, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCurrentPositon:I

    if-ne v2, v3, :cond_2

    return-void

    .line 189
    :cond_2
    iput v2, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCurrentPositon:I

    .line 190
    iget-object v3, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemSelectedListener:Lcn/highlight/work_card_write/view/CycleWheelView$WheelItemSelectedListener;

    if-eqz v3, :cond_3

    .line 191
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getSelection()I

    move-result v4

    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getSelectLabel()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcn/highlight/work_card_write/view/CycleWheelView$WheelItemSelectedListener;->onItemSelected(ILjava/lang/String;)V

    .line 193
    :cond_3
    invoke-direct {p0, v1, v2, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->resetItems(III)V

    return-void
.end method

.method private resetItems(III)V
    .locals 7

    sub-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    add-int v1, p2, p3

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    sub-int v1, v0, p1

    .line 198
    invoke-virtual {p0, v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 202
    :cond_0
    iget v2, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemLabelTvId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-ne p2, v0, :cond_1

    .line 204
    iget v3, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelSelectColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 205
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 207
    :cond_1
    iget v3, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sub-int v2, v0, p2

    .line 208
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 209
    iget v3, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAlphaGradual:F

    float-to-double v3, v3

    int-to-double v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 210
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    return-object v0
.end method

.method public getSelectLabel()Ljava/lang/String;
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getSelection()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 316
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method public getSelection()I
    .locals 2

    .line 301
    iget v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCurrentPositon:I

    if-nez v0, :cond_0

    .line 302
    iget v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCurrentPositon:I

    .line 304
    :cond_0
    iget v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCurrentPositon:I

    iget v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    return v0
.end method

.method public setAlphaGradual(F)V
    .locals 2

    .line 363
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAlphaGradual:F

    .line 364
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getFirstVisiblePosition()I

    move-result p1

    iget v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCurrentPositon:I

    iget v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->resetItems(III)V

    return-void
.end method

.method public setCustomLabels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    .line 234
    iget-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCustomAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;

    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->setData(Ljava/util/List;)V

    .line 235
    iget-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCustomAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->notifyDataSetChanged()V

    .line 236
    invoke-direct {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->initView()V

    return-void
.end method

.method public setCycleEnable(Z)V
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->cylceEnable:Z

    if-eq v0, p1, :cond_0

    .line 265
    iput-boolean p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->cylceEnable:Z

    .line 266
    iget-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->notifyDataSetChanged()V

    .line 267
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getSelection()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/view/CycleWheelView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setDivider(II)V
    .locals 0

    .line 401
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerColor:I

    .line 402
    iput p2, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->dividerHeight:I

    return-void
.end method

.method public setLabelColor(I)V
    .locals 2

    .line 343
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelColor:I

    .line 344
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getFirstVisiblePosition()I

    move-result p1

    iget v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCurrentPositon:I

    iget v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->resetItems(III)V

    return-void
.end method

.method public setLabelSelectColor(I)V
    .locals 2

    .line 353
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabelSelectColor:I

    .line 354
    invoke-virtual {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->getFirstVisiblePosition()I

    move-result p1

    iget v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCurrentPositon:I

    iget v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->resetItems(III)V

    return-void
.end method

.method public setLabels(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 221
    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    .line 222
    iget-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;

    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->setData(Ljava/util/List;)V

    .line 223
    iget-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->notifyDataSetChanged()V

    .line 224
    invoke-direct {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->initView()V

    return-void
.end method

.method public setOnWheelItemSelectedListener(Lcn/highlight/work_card_write/view/CycleWheelView$WheelItemSelectedListener;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemSelectedListener:Lcn/highlight/work_card_write/view/CycleWheelView$WheelItemSelectedListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/highlight/work_card_write/view/CycleWheelView$2;

    invoke-direct {v1, p0, p1}, Lcn/highlight/work_card_write/view/CycleWheelView$2;-><init>(Lcn/highlight/work_card_write/view/CycleWheelView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSolid(II)V
    .locals 0

    .line 389
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->solidColor:I

    .line 390
    iput p2, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->seletedSolidColor:I

    .line 391
    invoke-direct {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->initView()V

    return-void
.end method

.method public setWheelItemLayout(II)V
    .locals 0

    .line 329
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemLayoutId:I

    .line 330
    iput p2, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mItemLabelTvId:I

    .line 331
    new-instance p1, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;

    invoke-direct {p1, p0}, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;-><init>(Lcn/highlight/work_card_write/view/CycleWheelView;)V

    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCustomAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;

    .line 332
    iget-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCustomAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;

    iget-object p2, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mLabels:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->setData(Ljava/util/List;)V

    .line 333
    iget-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mCustomAdapter:Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/view/CycleWheelView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 334
    invoke-direct {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->initView()V

    return-void
.end method

.method public setWheelSize(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewException;
        }
    .end annotation

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 374
    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 377
    iput p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView;->mWheelSize:I

    .line 378
    invoke-direct {p0}, Lcn/highlight/work_card_write/view/CycleWheelView;->initView()V

    return-void

    .line 375
    :cond_0
    new-instance p1, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewException;

    const-string v0, "Wheel Size Error , Must Be 3,5,7,9..."

    invoke-direct {p1, p0, v0}, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewException;-><init>(Lcn/highlight/work_card_write/view/CycleWheelView;Ljava/lang/String;)V

    throw p1
.end method
