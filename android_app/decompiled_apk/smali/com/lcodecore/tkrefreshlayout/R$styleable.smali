.class public final Lcom/lcodecore/tkrefreshlayout/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lcodecore/tkrefreshlayout/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final RecyclerView:[I

.field public static final RecyclerView_android_clipToPadding:I = 0x1

.field public static final RecyclerView_android_descendantFocusability:I = 0x2

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x3

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x4

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0x5

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x6

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x7

.field public static final RecyclerView_layoutManager:I = 0x8

.field public static final RecyclerView_reverseLayout:I = 0x9

.field public static final RecyclerView_spanCount:I = 0xa

.field public static final RecyclerView_stackFromEnd:I = 0xb

.field public static final TwinklingRefreshLayout:[I

.field public static final TwinklingRefreshLayout_tr_autoLoadMore:I = 0x0

.field public static final TwinklingRefreshLayout_tr_bottomView:I = 0x1

.field public static final TwinklingRefreshLayout_tr_bottom_height:I = 0x2

.field public static final TwinklingRefreshLayout_tr_enable_keepIView:I = 0x3

.field public static final TwinklingRefreshLayout_tr_enable_loadmore:I = 0x4

.field public static final TwinklingRefreshLayout_tr_enable_overscroll:I = 0x5

.field public static final TwinklingRefreshLayout_tr_enable_refresh:I = 0x6

.field public static final TwinklingRefreshLayout_tr_floatRefresh:I = 0x7

.field public static final TwinklingRefreshLayout_tr_head_height:I = 0x8

.field public static final TwinklingRefreshLayout_tr_headerView:I = 0x9

.field public static final TwinklingRefreshLayout_tr_max_bottom_height:I = 0xa

.field public static final TwinklingRefreshLayout_tr_max_head_height:I = 0xb

.field public static final TwinklingRefreshLayout_tr_overscroll_bottom_show:I = 0xc

.field public static final TwinklingRefreshLayout_tr_overscroll_height:I = 0xd

.field public static final TwinklingRefreshLayout_tr_overscroll_top_show:I = 0xe

.field public static final TwinklingRefreshLayout_tr_pureScrollMode_on:I = 0xf

.field public static final TwinklingRefreshLayout_tr_showLoadingWhenOverScroll:I = 0x10

.field public static final TwinklingRefreshLayout_tr_showRefreshingWhenOverScroll:I = 0x11


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 103
    fill-array-data v0, :array_0

    sput-object v0, Lcom/lcodecore/tkrefreshlayout/R$styleable;->RecyclerView:[I

    const/16 v0, 0x12

    new-array v0, v0, [I

    .line 116
    fill-array-data v0, :array_1

    sput-object v0, Lcom/lcodecore/tkrefreshlayout/R$styleable;->TwinklingRefreshLayout:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100c4
        0x10100eb
        0x10100f1
        0x7f040114
        0x7f040115
        0x7f040116
        0x7f040117
        0x7f040118
        0x7f04017c
        0x7f040262
        0x7f0402ca
        0x7f0402e1
    .end array-data

    :array_1
    .array-data 4
        0x7f040358
        0x7f040359
        0x7f04035a
        0x7f04035b
        0x7f04035c
        0x7f04035d
        0x7f04035e
        0x7f04035f
        0x7f040360
        0x7f040361
        0x7f040362
        0x7f040363
        0x7f040364
        0x7f040365
        0x7f040366
        0x7f040367
        0x7f040368
        0x7f040369
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
