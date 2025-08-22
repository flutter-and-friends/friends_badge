.class public Lcn/highlight/work_card_write/activity/Model2Activity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "Model2Activity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/activity/Model2Activity$DoodleViewWrapper;
    }
.end annotation


# instance fields
.field public DEFAULT_BITMAP_SIZE:I

.field public MIN_TEXT_SIZE:I

.field private bitmap:Landroid/graphics/Bitmap;

.field private cy:F

.field editColorBlack:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f6
    .end annotation
.end field

.field editColorLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f2
    .end annotation
.end field

.field editColorRed:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f7
    .end annotation
.end field

.field editColorWhite:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f8
    .end annotation
.end field

.field editColorYellow:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f9
    .end annotation
.end field

.field editOperationLinear:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900f3
    .end annotation
.end field

.field editSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fc
    .end annotation
.end field

.field private imageName:Ljava/lang/String;

.field image_back:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013e
    .end annotation
.end field

.field image_bottom:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09013f
    .end annotation
.end field

.field image_forward:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090141
    .end annotation
.end field

.field image_left:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090142
    .end annotation
.end field

.field image_right:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090143
    .end annotation
.end field

.field image_top:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090144
    .end annotation
.end field

.field img_back:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09014d
    .end annotation
.end field

.field private isOperation:Z

.field private mDoodle:Lcn/highlight/lib_doodle/IDoodle;

.field private mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

.field mFrameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e7
    .end annotation
.end field

.field private mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

.field mainSetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b3
    .end annotation
.end field

.field private modelColor:Ljava/lang/String;

.field private modelSize:Ljava/lang/String;

.field private operationNum:I

.field private textEdit:Landroid/widget/EditText;

.field tv_preview:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902bc
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    const/16 v0, 0x78

    .line 149
    iput v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->MIN_TEXT_SIZE:I

    const/16 v0, 0x1e5

    .line 150
    iput v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    const/4 v0, 0x1

    .line 152
    iput v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->operationNum:I

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->isOperation:Z

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/IDoodle;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    return-object p0
.end method

.method static synthetic access$100(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/highlight/work_card_write/activity/Model2Activity;)Lcn/highlight/lib_doodle/DoodleView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/highlight/work_card_write/activity/Model2Activity;Z)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshButton(Z)V

    return-void
.end method

.method static synthetic access$400(Lcn/highlight/work_card_write/activity/Model2Activity;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    return-void
.end method

.method static synthetic access$500(Lcn/highlight/work_card_write/activity/Model2Activity;Ljava/lang/String;)I
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcn/highlight/work_card_write/activity/Model2Activity;)Landroid/widget/EditText;
    .locals 0

    .line 96
    iget-object p0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lcn/highlight/work_card_write/activity/Model2Activity;)F
    .locals 0

    .line 96
    iget p0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->cy:F

    return p0
.end method

.method static synthetic access$702(Lcn/highlight/work_card_write/activity/Model2Activity;F)F
    .locals 0

    .line 96
    iput p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->cy:F

    return p1
.end method

.method static synthetic access$800(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$900(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/lib_doodle/DoodleShape1;Landroid/graphics/Bitmap;IIIII)V
    .locals 0

    .line 96
    invoke-direct/range {p0 .. p7}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleShapeSize(Lcn/highlight/lib_doodle/DoodleShape1;Landroid/graphics/Bitmap;IIIII)V

    return-void
.end method

.method private createDoodleBarCode(Lcn/highlight/lib_doodle/DoodleBarCode;Landroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 11

    move-object v0, p0

    if-nez p2, :cond_0

    return-void

    .line 2059
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2060
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2061
    iget-object v3, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v3, v1

    .line 2062
    iget v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    .line 2063
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v1, v1, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v1, v4

    sub-int/2addr v3, v1

    .line 2064
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v8

    .line 2065
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v9

    if-nez p1, :cond_1

    .line 2067
    new-instance v10, Lcn/highlight/lib_doodle/DoodleBarCode;

    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    int-to-float v7, v1

    move-object v1, v10

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v9}, Lcn/highlight/lib_doodle/DoodleBarCode;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/String;IIFFF)V

    .line 2068
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1, v10}, Lcn/highlight/lib_doodle/IDoodle;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 2069
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v1, v10}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    goto :goto_0

    .line 2071
    :cond_1
    invoke-virtual/range {p1 .. p5}, Lcn/highlight/lib_doodle/DoodleBarCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 2073
    :goto_0
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    return-void
.end method

.method private createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V
    .locals 9

    if-nez p2, :cond_0

    return-void

    .line 1656
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1657
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    .line 1658
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v2, v0

    .line 1659
    iget v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v1, v3

    .line 1660
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v0, v0, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/2addr v0, v3

    sub-int/2addr v2, v0

    .line 1661
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v7

    .line 1662
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v2, v2, 0x2

    int-to-float v1, v2

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v8

    if-nez p1, :cond_1

    .line 1664
    new-instance p1, Lcn/highlight/lib_doodle/DoodleBitmap;

    iget-object v4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    int-to-float v6, v0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcn/highlight/lib_doodle/DoodleBitmap;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;FFF)V

    .line 1665
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p2, p1}, Lcn/highlight/lib_doodle/IDoodle;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 1666
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    goto :goto_0

    .line 1668
    :cond_1
    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1670
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    return-void
.end method

.method private createDoodleQRCode(Lcn/highlight/lib_doodle/DoodleQRCode;Landroid/graphics/Bitmap;Ljava/lang/String;II)V
    .locals 11

    move-object v0, p0

    if-nez p2, :cond_0

    return-void

    .line 1853
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1854
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 1855
    iget-object v3, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v3, v1

    .line 1856
    iget v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    div-int/lit8 v4, v1, 0x2

    sub-int/2addr v2, v4

    .line 1857
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v1, v1, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v1, v4

    sub-int/2addr v3, v1

    .line 1858
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v8

    .line 1859
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v9

    if-nez p1, :cond_1

    .line 1861
    new-instance v10, Lcn/highlight/lib_doodle/DoodleQRCode;

    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    int-to-float v7, v1

    move-object v1, v10

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v9}, Lcn/highlight/lib_doodle/DoodleQRCode;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/String;IIFFF)V

    .line 1862
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1, v10}, Lcn/highlight/lib_doodle/IDoodle;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 1863
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v1, v10}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    goto :goto_0

    .line 1865
    :cond_1
    invoke-virtual/range {p1 .. p5}, Lcn/highlight/lib_doodle/DoodleQRCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 1867
    :goto_0
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    return-void
.end method

.method private createDoodleShapeSize(Lcn/highlight/lib_doodle/DoodleShape1;Landroid/graphics/Bitmap;IIIII)V
    .locals 12

    move-object v0, p0

    if-nez p2, :cond_0

    return-void

    .line 2398
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2399
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float v1, v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2400
    iget-object v3, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sub-int/2addr v3, v1

    .line 2401
    sget-object v1, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result v1

    move/from16 v5, p4

    if-ne v5, v1, :cond_1

    int-to-double v1, v2

    .line 2402
    iget v4, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    int-to-double v6, v4

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double v6, v6, v8

    sub-double/2addr v1, v6

    double-to-int v1, v1

    goto :goto_0

    .line 2404
    :cond_1
    iget v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .line 2407
    :goto_0
    iget v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int v2, v2, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/2addr v2, v4

    sub-int/2addr v3, v2

    .line 2408
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v9

    .line 2409
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v10

    if-nez p1, :cond_2

    .line 2411
    new-instance v11, Lcn/highlight/lib_doodle/DoodleShape1;

    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    move-object v1, v11

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcn/highlight/lib_doodle/DoodleShape1;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;IIIIIFF)V

    .line 2419
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1, v11}, Lcn/highlight/lib_doodle/IDoodle;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 2423
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v1, v11}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    goto :goto_1

    .line 2433
    :cond_2
    invoke-virtual/range {p1 .. p7}, Lcn/highlight/lib_doodle/DoodleShape1;->setBitmap(Landroid/graphics/Bitmap;IIIII)V

    .line 2438
    :goto_1
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    return-void
.end method

.method private getColorByValue(Ljava/lang/String;)I
    .locals 6

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "\u9ed1\u8272"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v0, "\u9ec4\u8272"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "\u7ea2\u8272"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "\u767d\u8272"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    :cond_2
    const-string p1, "#FFC000"

    .line 483
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    :cond_3
    const/high16 v1, -0x10000

    goto :goto_2

    :cond_4
    const/high16 v1, -0x1000000

    :goto_2
    return v1

    :sswitch_data_0
    .sparse-switch
        0xedb95 -> :sswitch_3
        0xfd810 -> :sswitch_2
        0x13bc2e -> :sswitch_1
        0x13bdc1 -> :sswitch_0
    .end sparse-switch
.end method

.method private getColorByValues(Ljava/lang/String;)I
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, -0x1000000

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p1, -0x10000

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "#FFC000"

    .line 468
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method private getValueByColor(I)Ljava/lang/String;
    .locals 1

    const/high16 v0, -0x1000000

    if-ne p1, v0, :cond_0

    const-string p1, "\u9ed1\u8272"

    goto :goto_0

    :cond_0
    const/high16 v0, -0x10000

    if-ne p1, v0, :cond_1

    const-string p1, "\u7ea2\u8272"

    goto :goto_0

    :cond_1
    const-string v0, "#FFC000"

    .line 500
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    const-string p1, "\u9ec4\u8272"

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const-string p1, "\u767d\u8272"

    goto :goto_0

    :cond_3
    const-string p1, "\u900f\u660e"

    :goto_0
    return-object p1
.end method

.method private initBitmap()V
    .locals 9

    .line 228
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getWidthBySzie(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    .line 229
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelSize:Ljava/lang/String;

    invoke-static {v1}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getHeightBySzie(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    .line 230
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    .line 231
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, -0x1

    .line 233
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v0

    int-to-float v7, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 234
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initBitmapBG()V
    .locals 14

    .line 321
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getWidthBySzie(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    .line 322
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelSize:Ljava/lang/String;

    invoke-static {v1}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getHeightBySzie(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    .line 324
    sget-object v2, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    const v3, 0x7f100089

    const-string v4, "\u5176\u4ed6"

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    .line 325
    sget-object v2, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v2}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapStart()[B

    move-result-object v2

    sget-object v7, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v7}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getBitmapStart()[B

    move-result-object v7

    array-length v7, v7

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v2, v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    .line 326
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v0, v1}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    .line 327
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->isBitmapPureColor(Landroid/graphics/Bitmap;I)Z

    move-result v0

    .line 328
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v5}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->isBitmapPureColor(Landroid/graphics/Bitmap;I)Z

    move-result v1

    .line 329
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    const/high16 v5, -0x10000

    invoke-static {v2, v5}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->isBitmapPureColor(Landroid/graphics/Bitmap;I)Z

    move-result v2

    .line 330
    iget-object v5, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    const-string v7, "#FFC000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v5, v7}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->isBitmapPureColor(Landroid/graphics/Bitmap;I)Z

    move-result v5

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100084

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-eqz v1, :cond_1

    .line 336
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    if-eqz v2, :cond_2

    .line 339
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v5, :cond_5

    .line 342
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 344
    :cond_3
    sget-object v2, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 345
    sget-object v2, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    invoke-static {v2, v0, v1}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 348
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    .line 349
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 350
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    .line 351
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    int-to-float v10, v0

    int-to-float v11, v1

    .line 352
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 353
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    :goto_0
    move-object v10, v4

    .line 355
    new-instance v0, Lcn/highlight/lib_doodle/DoodleBg;

    iget-object v8, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v9, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    const/high16 v11, 0x44960000    # 1200.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcn/highlight/lib_doodle/DoodleBg;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/String;FFF)V

    .line 356
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodle;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 357
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v1, v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 358
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {v0, v6}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setSelected(Z)V

    .line 359
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/highlight/lib_doodle/IDoodleItem;

    invoke-interface {v0, v2, v1}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 360
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    return-void
.end method

.method private initDoodle()V
    .locals 23

    move-object/from16 v14, p0

    .line 367
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    if-eqz v0, :cond_8

    .line 368
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sss"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 370
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSelectModel:Lcn/highlight/work_card_write/greendao/table/BadgeBean;

    invoke-virtual {v0}, Lcn/highlight/work_card_write/greendao/table/BadgeBean;->getImageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/highlight/work_card_write/greendao/dao/DoodleBeanDaoUse;->queryAllByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_6

    .line 371
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcn/highlight/work_card_write/greendao/table/DoodleBean;

    .line 375
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIDoodlePen()I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 376
    sget-object v11, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    .line 377
    new-instance v10, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v1, v14, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextStyle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextBgColor()I

    move-result v6

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextBold()I

    move-result v7

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextItalic()I

    move-result v8

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMTextUnderline()I

    move-result v9

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v18

    new-instance v2, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMColor()I

    move-result v0

    invoke-direct {v2, v0}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v19

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v20

    move-object v0, v10

    move-object/from16 v21, v2

    move-object/from16 v2, p0

    move-object/from16 v22, v15

    move-object v15, v10

    move/from16 v10, v18

    move-object v14, v11

    move-object/from16 v11, v21

    move/from16 v12, v19

    move/from16 v13, v20

    invoke-direct/range {v0 .. v13}, Lcn/highlight/lib_doodle/DoodleText;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLcn/highlight/lib_doodle/IDoodleColor;FF)V

    .line 378
    invoke-interface {v15, v14}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 379
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v0

    invoke-interface {v15, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setSize(F)V

    .line 380
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMColor()I

    move-result v1

    invoke-direct {v0, v1}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {v15, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 381
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v1

    invoke-interface {v15, v0, v1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setLocation(FF)V

    .line 382
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotX()F

    move-result v0

    invoke-interface {v15, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotX(F)V

    .line 383
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotY()F

    move-result v0

    invoke-interface {v15, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotY(F)V

    .line 384
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMRotate()F

    move-result v0

    invoke-interface {v15, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    .line 385
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIsNeedClipOutside()Z

    move-result v0

    invoke-interface {v15, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setNeedClipOutside(Z)V

    .line 386
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMScale()F

    move-result v0

    invoke-interface {v15, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    move-object/from16 v3, p0

    move-object v1, v15

    goto/16 :goto_1

    :cond_0
    move-object/from16 v22, v15

    .line 387
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIDoodlePen()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 388
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    .line 389
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v3

    array-length v3, v3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 390
    new-instance v1, Lcn/highlight/lib_doodle/DoodleBitmap;

    move-object/from16 v3, p0

    iget-object v6, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v8

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v9

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v10

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcn/highlight/lib_doodle/DoodleBitmap;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;FFF)V

    .line 391
    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 392
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setSize(F)V

    .line 393
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMColor()I

    move-result v2

    invoke-direct {v0, v2}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 394
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setLocation(FF)V

    .line 395
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotX()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotX(F)V

    .line 396
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotY()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotY(F)V

    .line 397
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMRotate()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    .line 398
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIsNeedClipOutside()Z

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setNeedClipOutside(Z)V

    .line 399
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMScale()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    goto/16 :goto_1

    :cond_1
    move-object/from16 v3, p0

    .line 400
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIDoodlePen()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 401
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    .line 402
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v4

    array-length v4, v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 403
    new-instance v1, Lcn/highlight/lib_doodle/DoodleQRCode;

    iget-object v7, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getBgColor()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getFgColor()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v12

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v13

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v14

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcn/highlight/lib_doodle/DoodleQRCode;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/String;IIFFF)V

    .line 404
    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 405
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setSize(F)V

    .line 406
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMColor()I

    move-result v2

    invoke-direct {v0, v2}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 407
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setLocation(FF)V

    .line 408
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotX()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotX(F)V

    .line 409
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotY()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotY(F)V

    .line 410
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMRotate()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    .line 411
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIsNeedClipOutside()Z

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setNeedClipOutside(Z)V

    .line 412
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMScale()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    goto/16 :goto_1

    .line 413
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIDoodlePen()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 414
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    .line 415
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v4

    array-length v4, v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 416
    new-instance v1, Lcn/highlight/lib_doodle/DoodleBarCode;

    iget-object v7, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getBgColor()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getFgColor()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v12

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v13

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v14

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcn/highlight/lib_doodle/DoodleBarCode;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;Ljava/lang/String;IIFFF)V

    .line 417
    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 418
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setSize(F)V

    .line 419
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMColor()I

    move-result v2

    invoke-direct {v0, v2}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 420
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setLocation(FF)V

    .line 421
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotX()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotX(F)V

    .line 422
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotY()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotY(F)V

    .line 423
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMRotate()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    .line 424
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIsNeedClipOutside()Z

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setNeedClipOutside(Z)V

    .line 425
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMScale()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    goto/16 :goto_1

    .line 426
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIDoodlePen()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 427
    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

    .line 428
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMBitmap()[B

    move-result-object v4

    array-length v4, v4

    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, v2, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 429
    new-instance v1, Lcn/highlight/lib_doodle/DoodleShape1;

    iget-object v7, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getFgColor()I

    move-result v9

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getShape1()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getWidth()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getHeight()I

    move-result v12

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getEffects()I

    move-result v13

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v14

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v15

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lcn/highlight/lib_doodle/DoodleShape1;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;IIIIIFF)V

    .line 430
    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 431
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMSize()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setSize(F)V

    .line 432
    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMColor()I

    move-result v2

    invoke-direct {v0, v2}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 433
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationX()F

    move-result v0

    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMLocationY()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setLocation(FF)V

    .line 434
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotX()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotX(F)V

    .line 435
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMPivotY()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setPivotY(F)V

    .line 436
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMRotate()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    .line 437
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMIsNeedClipOutside()Z

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setNeedClipOutside(Z)V

    .line 438
    invoke-virtual/range {v17 .. v17}, Lcn/highlight/work_card_write/greendao/table/DoodleBean;->getMScale()F

    move-result v0

    invoke-interface {v1, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, v22

    if-eqz v1, :cond_5

    .line 441
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v15, v0

    move-object v14, v3

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_6
    move-object v3, v14

    move-object v0, v15

    .line 445
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 446
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->operationNum:I

    .line 447
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 448
    iget-object v4, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v4, v1}, Lcn/highlight/lib_doodle/IDoodle;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 449
    iget-object v4, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    move-object v5, v1

    check-cast v5, Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-virtual {v4, v5}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 450
    iget-object v4, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v4, v1, v2}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    goto :goto_2

    .line 452
    :cond_7
    iget-object v0, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 453
    iget-object v0, v3, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    goto :goto_3

    :cond_8
    move-object v3, v14

    :cond_9
    :goto_3
    return-void
.end method

.method private initLayout()V
    .locals 7

    .line 242
    iget-object v3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    return-void

    .line 243
    :cond_0
    new-instance v6, Lcn/highlight/work_card_write/activity/Model2Activity$DoodleViewWrapper;

    const/4 v4, 0x0

    new-instance v5, Lcn/highlight/work_card_write/activity/Model2Activity$1;

    invoke-direct {v5, p0}, Lcn/highlight/work_card_write/activity/Model2Activity$1;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/Model2Activity$DoodleViewWrapper;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;)V

    iput-object v6, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    iput-object v6, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    .line 257
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity$3;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    new-instance v2, Lcn/highlight/work_card_write/activity/Model2Activity$2;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/activity/Model2Activity$2;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-direct {v0, p0, v1, v2}, Lcn/highlight/work_card_write/activity/Model2Activity$3;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/lib_doodle/DoodleView;Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    .line 300
    new-instance v0, Lcn/highlight/lib_doodle/DoodleTouchDetector;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-direct {v0, v1, v2}, Lcn/highlight/lib_doodle/DoodleTouchDetector;-><init>(Landroid/content/Context;Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;)V

    .line 301
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1, v0}, Lcn/highlight/lib_doodle/DoodleView;->setDefaultTouchDetector(Lcn/highlight/lib_doodle/IDoodleTouchDetector;)V

    .line 302
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private initMainSet()V
    .locals 3

    .line 670
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 671
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 672
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mainSetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 673
    new-instance v0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;-><init>(Landroid/content/Context;)V

    .line 674
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mainSetRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 675
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f100083

    .line 676
    invoke-virtual {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f10009d

    .line 677
    invoke-virtual {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f10008b

    .line 678
    invoke-virtual {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f100094

    .line 679
    invoke-virtual {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f10007d

    .line 680
    invoke-virtual {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, 0x7f100099

    .line 681
    invoke-virtual {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->setDataList(Ljava/util/List;)V

    .line 683
    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$WujVTR4oxmYonWUO77B0FjodhMo;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$WujVTR4oxmYonWUO77B0FjodhMo;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/ModelMainAdapter;->setOnItemClickListener(Lcn/highlight/work_card_write/adapter/ModelMainAdapter$OnItemClickListener;)V

    return-void
.end method

.method private initModel()V
    .locals 3

    .line 197
    iget v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelSize:Ljava/lang/String;

    const-string v0, "\u9ed1\u767d\u7ea2\u9ec4"

    .line 203
    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorLinear:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 198
    :cond_1
    :goto_0
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelSize:Ljava/lang/String;

    .line 199
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    :goto_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editSize:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorBlack:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorWhite:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorRed:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorYellow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v2, "\u9ed1\u767d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorBlack:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorWhite:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v2, "\u7ea2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorRed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    :cond_3
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v2, "\u9ec4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editColorYellow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public static synthetic lambda$WujVTR4oxmYonWUO77B0FjodhMo(Lcn/highlight/work_card_write/activity/Model2Activity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->showSet(I)V

    return-void
.end method

.method static synthetic lambda$null$1(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 657
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$null$2(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 658
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showMainSetBarCode$28(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    :goto_0
    if-ge p1, p2, :cond_2

    .line 1912
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    const/16 p4, 0x20

    if-lt p3, p4, :cond_1

    const/16 p4, 0x7e

    if-le p3, p4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p0, ""

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private modifyBitmapBg(Ljava/lang/String;)V
    .locals 9

    .line 872
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getWidthBySzie(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    .line 873
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelSize:Ljava/lang/String;

    invoke-static {v1}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getHeightBySzie(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    .line 874
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    .line 875
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 876
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValues(Ljava/lang/String;)I

    move-result v2

    .line 877
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 878
    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v0

    int-to-float v7, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 879
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 880
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBg;

    iget-object v3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcn/highlight/lib_doodle/DoodleBg;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 881
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v0, v1}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBg;

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleBg;->setText(Ljava/lang/String;)V

    .line 882
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    return-void
.end method

.method private refreshButton(Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2465
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editOperationLinear:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2466
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->isUp(Lcn/highlight/lib_doodle/IDoodleItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2467
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_top:Landroid/widget/ImageView;

    const v0, 0x7f0e0089

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 2469
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_top:Landroid/widget/ImageView;

    const v0, 0x7f0e008a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2471
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->isDown(Lcn/highlight/lib_doodle/IDoodleItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2472
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_bottom:Landroid/widget/ImageView;

    const v0, 0x7f0e0071

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2474
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_bottom:Landroid/widget/ImageView;

    const v0, 0x7f0e0072

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 2477
    :cond_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->editOperationLinear:Landroid/widget/LinearLayout;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private refreshImage()V
    .locals 2

    .line 2447
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_back:Landroid/widget/ImageView;

    const v1, 0x7f0e007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2448
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_forward:Landroid/widget/ImageView;

    const v1, 0x7f0e0075

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2449
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getItemRecord()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getItemRecord()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->operationNum:I

    if-le v0, v1, :cond_0

    .line 2450
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_back:Landroid/widget/ImageView;

    const v1, 0x7f0e007e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 2451
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->isOperation:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2453
    iput-boolean v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->isOperation:Z

    .line 2455
    :goto_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getItemRedoRecord()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getItemRedoRecord()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2456
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->image_forward:Landroid/widget/ImageView;

    const v1, 0x7f0e0076

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 630
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU;

    invoke-direct {v0, p0, p1, p2}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QeoiUI-4DSjbKgc_WmLGB7vCLUU;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showMainSetBarCode()V
    .locals 26

    move-object/from16 v9, p0

    .line 1875
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c005b

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090076

    .line 1876
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    const v2, 0x7f090078

    .line 1877
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    const v2, 0x7f090003

    .line 1878
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    const v3, 0x7f090180

    .line 1879
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f090077

    .line 1880
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/EditText;

    const v4, 0x7f090192

    .line 1881
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f090080

    .line 1882
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    const v6, 0x7f090105

    .line 1883
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 1884
    new-instance v13, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v7, 0x7f1100d6

    invoke-direct {v13, v9, v7}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 1885
    invoke-virtual {v13, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1886
    invoke-virtual {v13, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 1887
    invoke-virtual {v13, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 1888
    invoke-virtual {v13}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Window;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 1889
    invoke-virtual {v13}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    const-string v7, ""

    .line 1893
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    .line 1894
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v14, "\u900f\u660e"

    invoke-direct {v8, v14}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1895
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "\u9ed1\u8272"

    invoke-direct {v15, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1897
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    move-object/from16 v18, v11

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleBarCode;

    if-eqz v0, :cond_0

    .line 1899
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1900
    iget-object v11, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v11

    check-cast v11, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleBarCode;->getText()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v7, v16

    .line 1901
    iget-object v11, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v11

    check-cast v11, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleBarCode;->getBgColor()I

    move-result v11

    move-object/from16 v16, v0

    .line 1902
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getFgColor()I

    move-result v0

    .line 1903
    invoke-direct {v9, v11}, Lcn/highlight/work_card_write/activity/Model2Activity;->getValueByColor(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1904
    invoke-direct {v9, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getValueByColor(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 1909
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1910
    sget-object v17, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$2fCV7wzjOhUsu0_szZG4q7wlNW8;->INSTANCE:Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$2fCV7wzjOhUsu0_szZG4q7wlNW8;

    move-object/from16 v20, v10

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/text/InputFilter;

    aput-object v17, v10, v0

    .line 1919
    invoke-virtual {v12, v10}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    const/16 v0, 0x91

    .line 1920
    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1921
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleBarCode;

    if-eqz v0, :cond_1

    .line 1922
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBarCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleBarCode;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v0, 0x8

    .line 1925
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1927
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 1928
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1929
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1930
    new-instance v10, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;

    invoke-direct {v10, v9}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;-><init>(Landroid/content/Context;)V

    .line 1931
    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1932
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1933
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1934
    iget-object v5, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    move-object/from16 v19, v13

    const-string v13, "\u9ed1\u767d"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v21, v7

    const-string v7, "\u767d\u8272"

    if-eqz v5, :cond_2

    .line 1935
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1936
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1938
    :cond_2
    iget-object v5, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    move/from16 v22, v11

    const-string v11, "\u7ea2"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v23, v2

    const-string v2, "\u7ea2\u8272"

    if-eqz v5, :cond_3

    .line 1939
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1941
    :cond_3
    iget-object v5, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    move-object/from16 v24, v3

    const-string v3, "\u9ec4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v25, v4

    const-string v4, "\u9ec4\u8272"

    if-eqz v5, :cond_4

    .line 1942
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1944
    :cond_4
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v10, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    .line 1945
    invoke-virtual {v10, v0, v1}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setDataList(Ljava/util/List;Ljava/lang/String;)V

    .line 1947
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 1948
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1949
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1950
    new-instance v5, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;

    invoke-direct {v5, v9}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;-><init>(Landroid/content/Context;)V

    .line 1951
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1953
    iget-object v6, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1954
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1955
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1957
    :cond_5
    iget-object v1, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1958
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1960
    :cond_6
    iget-object v1, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1961
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1963
    :cond_7
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    .line 1964
    invoke-virtual {v5, v0, v14}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setDataList(Ljava/util/List;Ljava/lang/String;)V

    .line 1966
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$CHA106vheCFFt5b_VDZL-x1rNRQ;

    invoke-direct {v0, v9, v5, v10, v12}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$CHA106vheCFFt5b_VDZL-x1rNRQ;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v10, v0}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter$OnClickSelectViewBg;)V

    .line 1981
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$Vo9DFz2BeQu56H54BKjDxD2yDbI;

    invoke-direct {v0, v9, v10, v5, v12}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$Vo9DFz2BeQu56H54BKjDxD2yDbI;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v5, v0}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter$OnClickSelectViewBg;)V

    .line 1997
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity$12;

    move-object/from16 v3, v24

    move-object/from16 v4, v25

    invoke-direct {v0, v9, v3, v4}, Lcn/highlight/work_card_write/activity/Model2Activity$12;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v2, v23

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 2024
    new-instance v11, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$gPnlB3lZeX-agR3-hEGaUoriYYE;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, v22

    move-object/from16 v3, v16

    move-object/from16 v4, v21

    move-object v13, v5

    move-object v5, v8

    move-object v6, v15

    move-object/from16 v7, v19

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$gPnlB3lZeX-agR3-hEGaUoriYYE;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;ZLandroid/graphics/Bitmap;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/widget/EditText;)V

    move-object/from16 v2, v20

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2036
    new-instance v6, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$tCVX9oGwDpYai0c2jsKrUuh1oUU;

    move-object v0, v6

    move-object v2, v12

    move-object v3, v10

    move-object v4, v13

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$tCVX9oGwDpYai0c2jsKrUuh1oUU;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/EditText;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    move-object/from16 v2, v18

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showMainSetBg()V
    .locals 17

    move-object/from16 v0, p0

    .line 731
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c005c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09007d

    .line 732
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x7f090086

    .line 733
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f090087

    .line 734
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/tabs/TabLayout;

    const v5, 0x7f090081

    .line 735
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f090084

    .line 736
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v7, 0x7f090082

    .line 737
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const v8, 0x7f090083

    .line 738
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f09007f

    .line 739
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v10, 0x7f09007e

    .line 740
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f090085

    .line 741
    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    .line 742
    new-instance v12, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v13, 0x7f1100d6

    invoke-direct {v12, v0, v13}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 743
    invoke-virtual {v12, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 744
    invoke-virtual {v12, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 745
    invoke-virtual {v12, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 746
    invoke-virtual {v12}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/Window;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/Window;->setDimAmount(F)V

    .line 747
    invoke-virtual {v12}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 749
    iget-object v13, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/highlight/lib_doodle/DoodleBg;

    invoke-virtual {v13}, Lcn/highlight/lib_doodle/DoodleBg;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 750
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v15}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object/from16 v16, v3

    .line 751
    iget-object v3, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v3, v14}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/highlight/lib_doodle/DoodleBg;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleBg;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 753
    invoke-virtual {v4, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 754
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 755
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 756
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 757
    invoke-virtual {v7, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 758
    new-instance v1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;

    invoke-direct {v1, v0}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;-><init>(Landroid/content/Context;)V

    .line 759
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 760
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->type:Ljava/lang/String;

    .line 761
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 762
    iget-object v7, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v14, "\u9ed1\u767d"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f100084

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f100089

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_0
    iget-object v7, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v14, "\u7ea2"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f100088

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    :cond_1
    iget-object v7, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v14, "\u9ec4"

    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v14, 0x7f10008a

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_2
    invoke-virtual {v1, v3}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->setDataList(Ljava/util/List;)V

    .line 773
    new-instance v3, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$d9mugKa9OWN3wFnwyt_Lku6hLq4;

    invoke-direct {v3, v0, v1}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$d9mugKa9OWN3wFnwyt_Lku6hLq4;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelBgAdapter;)V

    invoke-virtual {v1, v3}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelBgAdapter$OnClickSelectViewBg;)V

    const/16 v1, 0x8

    .line 779
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 780
    new-instance v3, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$nf6yzxFUDzSkvkTy-MBSFImgOro;

    invoke-direct {v3, v0}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$nf6yzxFUDzSkvkTy-MBSFImgOro;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v9, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    new-instance v3, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ouMsJuF18oSejA7Sfm8slKVdCRI;

    invoke-direct {v3, v0}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ouMsJuF18oSejA7Sfm8slKVdCRI;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 792
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x5

    invoke-direct {v1, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 793
    invoke-virtual {v11, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 794
    new-instance v1, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;

    invoke-direct {v1, v0}, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;-><init>(Landroid/content/Context;)V

    .line 795
    invoke-virtual {v11, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 796
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v7, 0x7f080068

    .line 797
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f08006a

    .line 798
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f08006b

    .line 799
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f08006c

    .line 800
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f08006d

    .line 801
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f08006e

    .line 802
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f08006f

    .line 803
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f080070

    .line 804
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f080071

    .line 805
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f080069

    .line 806
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 807
    invoke-virtual {v1, v3}, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->setDataList(Ljava/util/List;)V

    .line 808
    new-instance v3, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ViqeY0a2iFKGR_WUvOt4R592UF8;

    invoke-direct {v3, v0}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ViqeY0a2iFKGR_WUvOt4R592UF8;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v1, v3}, Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelBgLibraryAdapter$OnClickSelectViewBg;)V

    .line 816
    new-instance v1, Lcn/highlight/work_card_write/activity/Model2Activity$4;

    invoke-direct {v1, v0, v5, v8, v6}, Lcn/highlight/work_card_write/activity/Model2Activity$4;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v4, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 847
    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ppxGtHoRPlbIpekU0l0oI34PvrE;

    invoke-direct {v1, v0, v13, v15, v12}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ppxGtHoRPlbIpekU0l0oI34PvrE;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/graphics/Bitmap;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$b_3Gh0dJ74wUJZDt_MWkBuqnlmM;

    invoke-direct {v1, v0, v12}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$b_3Gh0dJ74wUJZDt_MWkBuqnlmM;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    move-object/from16 v3, v16

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showMainSetImage()V
    .locals 20

    move-object/from16 v6, p0

    .line 1389
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c005d

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f09012b

    .line 1390
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    const v2, 0x7f09013c

    .line 1391
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    const v3, 0x7f09013b

    .line 1392
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/widget/ImageView;

    const v3, 0x7f090135

    .line 1393
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f090130

    .line 1394
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f09012f

    .line 1395
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v9, 0x7f090138

    .line 1396
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v10, 0x7f090139

    .line 1397
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/SeekBar;

    const v11, 0x7f09013a

    .line 1398
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f090136

    .line 1399
    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v13, 0x7f090132

    .line 1400
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/google/android/material/tabs/TabLayout;

    const v14, 0x7f090137

    .line 1401
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 1402
    new-instance v15, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f1100d6

    invoke-direct {v15, v6, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 1403
    invoke-virtual {v15, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1404
    invoke-virtual {v15, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 1405
    invoke-virtual {v15, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 1406
    invoke-virtual {v15}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Window;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 1407
    invoke-virtual {v15}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    const/4 v0, 0x1

    new-array v1, v0, [F

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    aput v18, v1, v17

    .line 1413
    iget-object v0, v6, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz v0, :cond_0

    .line 1415
    iget-object v0, v6, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1416
    iget-object v0, v6, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v0

    move-object/from16 v19, v8

    const/4 v8, 0x0

    aput v0, v1, v8

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v19, v8

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    .line 1421
    :goto_0
    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1422
    new-instance v8, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QkRw007qKqlZdUzG4c2Gd_Bhjoc;

    invoke-direct {v8, v6}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$QkRw007qKqlZdUzG4c2Gd_Bhjoc;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1427
    new-instance v4, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$erbvG9zXVbLxwuWQrgJqa1NM30g;

    invoke-direct {v4, v6}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$erbvG9zXVbLxwuWQrgJqa1NM30g;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v4, 0x8

    .line 1433
    invoke-virtual {v12, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v5, 0x0

    .line 1434
    invoke-virtual {v13, v5}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v5}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 1435
    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v8, 0x5

    invoke-direct {v5, v6, v8}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 1436
    invoke-virtual {v14, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1437
    new-instance v5, Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter;

    invoke-direct {v5, v6}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter;-><init>(Landroid/content/Context;)V

    .line 1438
    invoke-virtual {v14, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1439
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const v18, 0x7f080108

    .line 1440
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080112

    .line 1441
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080113

    .line 1442
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080114

    .line 1443
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080115

    .line 1444
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080116

    .line 1445
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080117

    .line 1446
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080118

    .line 1447
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080119

    .line 1448
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080109

    .line 1449
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f08010a

    .line 1450
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f08010b

    .line 1451
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f08010c

    .line 1452
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f08010d

    .line 1453
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f08010e

    .line 1454
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f08010f

    .line 1455
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080110

    .line 1456
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v4, 0x7f080111

    .line 1457
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1458
    invoke-virtual {v5, v8}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter;->setDataList(Ljava/util/List;)V

    .line 1459
    new-instance v4, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$4DcSe8zf1wkD-2cBeizMBN7AJeI;

    invoke-direct {v4, v6}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$4DcSe8zf1wkD-2cBeizMBN7AJeI;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    invoke-virtual {v5, v4}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelimageLibraryAdapter$OnClickSelectViewBg;)V

    .line 1469
    new-instance v4, Lcn/highlight/work_card_write/activity/Model2Activity$8;

    invoke-direct {v4, v6, v14}, Lcn/highlight/work_card_write/activity/Model2Activity$8;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v13, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    const/16 v4, 0x8

    .line 1556
    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v4, 0x0

    .line 1559
    aget v4, v1, v4

    const/high16 v5, 0x3e800000    # 0.25f

    sub-float/2addr v4, v5

    const v5, 0x3c28f5c2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1560
    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    add-int/lit8 v4, v4, 0x14

    .line 1561
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1562
    new-instance v4, Lcn/highlight/work_card_write/activity/Model2Activity$9;

    invoke-direct {v4, v6, v11}, Lcn/highlight/work_card_write/activity/Model2Activity$9;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/TextView;)V

    invoke-virtual {v10, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1587
    new-instance v4, Lcn/highlight/work_card_write/activity/Model2Activity$10;

    invoke-direct {v4, v6, v3, v9, v12}, Lcn/highlight/work_card_write/activity/Model2Activity$10;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1618
    new-instance v8, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;

    move v9, v0

    move-object v0, v8

    move-object v4, v1

    move-object/from16 v1, p0

    move v2, v9

    move-object/from16 v3, v16

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$T0wChzXdI7OB8lU8_pdktFvg-dI;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;ZLandroid/graphics/Bitmap;[FLcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1637
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$CHg6ESTUYBTqtnHBwUe2ePKCXT0;

    invoke-direct {v0, v6, v9, v15}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$CHg6ESTUYBTqtnHBwUe2ePKCXT0;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;ZLcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    move-object/from16 v3, v19

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showMainSetQRCode()V
    .locals 25

    move-object/from16 v9, p0

    .line 1678
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c005e

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0901ee

    .line 1679
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    const v2, 0x7f0901f0

    .line 1680
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    const v2, 0x7f090019

    .line 1681
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    const v3, 0x7f090180

    .line 1682
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0901ef

    .line 1683
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Landroid/widget/EditText;

    const v4, 0x7f090192

    .line 1684
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f090080

    .line 1685
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    const v6, 0x7f090105

    .line 1686
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    .line 1687
    new-instance v13, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v7, 0x7f1100d6

    invoke-direct {v13, v9, v7}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 1688
    invoke-virtual {v13, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1689
    invoke-virtual {v13, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 1690
    invoke-virtual {v13, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 1691
    invoke-virtual {v13}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Window;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/Window;->setDimAmount(F)V

    .line 1692
    invoke-virtual {v13}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    const-string v7, ""

    .line 1696
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    .line 1697
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v14, "\u900f\u660e"

    invoke-direct {v8, v14}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1698
    new-instance v15, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "\u9ed1\u8272"

    invoke-direct {v15, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1700
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    move-object/from16 v17, v11

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleQRCode;

    if-eqz v0, :cond_0

    .line 1702
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleQRCode;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1703
    iget-object v11, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v11

    check-cast v11, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleQRCode;->getText()Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    aput-object v11, v7, v16

    .line 1704
    iget-object v11, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v11

    check-cast v11, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {v11}, Lcn/highlight/lib_doodle/DoodleQRCode;->getBgColor()I

    move-result v11

    move-object/from16 v16, v0

    .line 1705
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleQRCode;->getFgColor()I

    move-result v0

    .line 1706
    invoke-direct {v9, v11}, Lcn/highlight/work_card_write/activity/Model2Activity;->getValueByColor(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1707
    invoke-direct {v9, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getValueByColor(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    .line 1712
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 1713
    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1714
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleQRCode;

    if-eqz v0, :cond_1

    .line 1715
    iget-object v0, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleQRCode;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleQRCode;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/16 v0, 0x8

    .line 1718
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1720
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v18, v10

    const/4 v10, 0x0

    .line 1721
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1722
    invoke-virtual {v5, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1723
    new-instance v10, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;

    invoke-direct {v10, v9}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;-><init>(Landroid/content/Context;)V

    .line 1724
    invoke-virtual {v5, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1725
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1726
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1727
    iget-object v5, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    move-object/from16 v19, v13

    const-string v13, "\u9ed1\u767d"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v20, v7

    const-string v7, "\u767d\u8272"

    if-eqz v5, :cond_2

    .line 1728
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1729
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1731
    :cond_2
    iget-object v5, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    move/from16 v21, v11

    const-string v11, "\u7ea2"

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v22, v2

    const-string v2, "\u7ea2\u8272"

    if-eqz v5, :cond_3

    .line 1732
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1734
    :cond_3
    iget-object v5, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    move-object/from16 v23, v3

    const-string v3, "\u9ec4"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object/from16 v24, v4

    const-string v4, "\u9ec4\u8272"

    if-eqz v5, :cond_4

    .line 1735
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1737
    :cond_4
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v10, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    .line 1738
    invoke-virtual {v10, v0, v1}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setDataList(Ljava/util/List;Ljava/lang/String;)V

    .line 1740
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v9}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    .line 1741
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1742
    invoke-virtual {v6, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1743
    new-instance v5, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;

    invoke-direct {v5, v9}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;-><init>(Landroid/content/Context;)V

    .line 1744
    invoke-virtual {v6, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1746
    iget-object v6, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1747
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1748
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1750
    :cond_5
    iget-object v1, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1751
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1753
    :cond_6
    iget-object v1, v9, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1754
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1756
    :cond_7
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    .line 1757
    invoke-virtual {v5, v0, v14}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setDataList(Ljava/util/List;Ljava/lang/String;)V

    .line 1759
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$lLtejV6zHIyLepA0zdWeG5y6FpQ;

    invoke-direct {v0, v9, v5, v10, v12}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$lLtejV6zHIyLepA0zdWeG5y6FpQ;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v10, v0}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter$OnClickSelectViewBg;)V

    .line 1774
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$wiC7oogV5gmUphFsVxNMW9okZXE;

    invoke-direct {v0, v9, v10, v5, v12}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$wiC7oogV5gmUphFsVxNMW9okZXE;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v5, v0}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter$OnClickSelectViewBg;)V

    .line 1790
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity$11;

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v9, v3, v4}, Lcn/highlight/work_card_write/activity/Model2Activity$11;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v2, v22

    invoke-virtual {v2, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1817
    new-instance v11, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$L4npzjbKvHVOv5m3ICd3fqbtroc;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, v21

    move-object/from16 v3, v16

    move-object/from16 v4, v20

    move-object v13, v5

    move-object v5, v8

    move-object v6, v15

    move-object/from16 v7, v19

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$L4npzjbKvHVOv5m3ICd3fqbtroc;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;ZLandroid/graphics/Bitmap;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/widget/EditText;)V

    move-object/from16 v2, v18

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1830
    new-instance v6, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$-xLLnTBdHhi1hQzVfCi-wjBbn3U;

    move-object v0, v6

    move-object v2, v12

    move-object v3, v10

    move-object v4, v13

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$-xLLnTBdHhi1hQzVfCi-wjBbn3U;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/EditText;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    move-object/from16 v2, v17

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showMainSetShape()V
    .locals 33

    move-object/from16 v10, p0

    .line 2077
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c005f

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090231

    .line 2078
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    const v2, 0x7f090238

    .line 2079
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    const v2, 0x7f090239

    .line 2080
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090236

    .line 2081
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f090237

    .line 2082
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f09023a

    .line 2083
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Landroid/widget/SeekBar;

    const v3, 0x7f09023b

    .line 2084
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    const v3, 0x7f090232

    .line 2085
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/widget/SeekBar;

    const v3, 0x7f090233

    .line 2086
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/widget/TextView;

    const v3, 0x7f090234

    .line 2087
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/widget/SeekBar;

    const v3, 0x7f090235

    .line 2088
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    const v3, 0x7f0901a7

    .line 2089
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout;

    const v3, 0x7f0901a9

    .line 2090
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Landroid/widget/LinearLayout;

    const v3, 0x7f0901a3

    .line 2091
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Landroid/widget/LinearLayout;

    const v3, 0x7f0901a4

    .line 2092
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/widget/LinearLayout;

    .line 2093
    new-instance v3, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f1100d6

    invoke-direct {v3, v10, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 2094
    invoke-virtual {v3, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 2095
    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 2096
    invoke-virtual {v3, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 2097
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 2098
    invoke-virtual {v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v21, 0x2d

    const/16 v20, 0x0

    aput v21, v1, v20

    move-object/from16 v22, v12

    new-array v12, v0, [I

    aput v21, v12, v20

    move-object/from16 v21, v11

    new-array v11, v0, [I

    aput v20, v11, v20

    move-object/from16 v23, v8

    .line 2106
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v24, v6

    const-string v6, "\u9ed1\u8272"

    invoke-direct {v8, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 2109
    iget-object v0, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    move-object/from16 v26, v3

    if-eqz v0, :cond_0

    iget-object v0, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleShape1;

    if-eqz v0, :cond_0

    .line 2110
    iget-object v0, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v0

    .line 2112
    iget-object v3, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v3

    check-cast v3, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleShape1;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v19, v3

    .line 2113
    iget-object v3, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v3

    check-cast v3, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleShape1;->getShape1()I

    move-result v3

    move/from16 v28, v3

    .line 2114
    iget-object v3, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v3

    check-cast v3, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleShape1;->getFgColor()I

    move-result v3

    move-object/from16 v29, v6

    .line 2115
    iget-object v6, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v6

    check-cast v6, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleShape1;->getWidth()I

    move-result v6

    move-object/from16 v30, v2

    const/4 v2, 0x0

    aput v6, v1, v2

    .line 2116
    iget-object v6, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v6

    check-cast v6, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleShape1;->getHeight()I

    move-result v6

    aput v6, v12, v2

    .line 2117
    iget-object v6, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v6

    check-cast v6, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {v6}, Lcn/highlight/lib_doodle/DoodleShape1;->getEffects()I

    move-result v6

    aput v6, v11, v2

    .line 2118
    invoke-direct {v10, v3}, Lcn/highlight/work_card_write/activity/Model2Activity;->getValueByColor(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2119
    aget v3, v1, v2

    invoke-virtual {v7, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v1, v2

    const/16 v20, 0x5

    add-int/lit8 v6, v6, 0x5

    int-to-float v6, v6

    mul-float v6, v6, v0

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2121
    aget v3, v12, v2

    invoke-virtual {v13, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v20, v12, v2

    const/16 v27, 0x5

    add-int/lit8 v2, v20, 0x5

    int-to-float v2, v2

    mul-float v2, v2, v0

    float-to-int v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 2123
    aget v0, v11, v2

    invoke-virtual {v15, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v3, v11, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v30, v2

    move-object/from16 v29, v6

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v19, 0x0

    const/16 v28, 0x5

    .line 2129
    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2131
    new-instance v3, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;

    invoke-direct {v3, v10}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;-><init>(Landroid/content/Context;)V

    .line 2133
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x5

    invoke-direct {v0, v10, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    move-object/from16 v2, v30

    .line 2134
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2135
    new-instance v0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;

    invoke-direct {v0, v10}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;-><init>(Landroid/content/Context;)V

    .line 2136
    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2137
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v25, 0x7f0e0084

    move-object/from16 v27, v1

    .line 2138
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0e0083

    .line 2139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0e0085

    .line 2140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0e0082

    .line 2141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2142
    invoke-virtual {v0, v2}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->setDataList(Ljava/util/List;)V

    .line 2143
    new-instance v2, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$EFLxdWnjL184ENlAei12ZpEByIk;

    move-object v1, v0

    move-object v0, v2

    move/from16 v25, v6

    move-object/from16 v20, v27

    move-object v6, v1

    move-object/from16 v27, v11

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object v11, v2

    move-object v2, v3

    move-object/from16 v30, v26

    move-object/from16 v26, v12

    move-object v12, v3

    move-object v3, v7

    move-object/from16 v31, v4

    move-object v4, v13

    move-object/from16 v32, v8

    move-object v8, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$EFLxdWnjL184ENlAei12ZpEByIk;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;)V

    invoke-virtual {v6, v11}, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$OnClickSelectViewBg;)V

    .line 2178
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity$13;

    invoke-direct {v0, v10, v9}, Lcn/highlight/work_card_write/activity/Model2Activity$13;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/TextView;)V

    invoke-virtual {v7, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2208
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity$14;

    invoke-direct {v0, v10, v14, v13}, Lcn/highlight/work_card_write/activity/Model2Activity$14;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/TextView;Landroid/widget/SeekBar;)V

    invoke-virtual {v13, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2244
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity$15;

    invoke-direct {v0, v10, v8}, Lcn/highlight/work_card_write/activity/Model2Activity$15;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/TextView;)V

    invoke-virtual {v15, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 2272
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2273
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    move-object/from16 v3, v24

    .line 2274
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 2276
    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2278
    iget-object v1, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v2, "\u9ed1\u767d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v1, v29

    .line 2279
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u767d\u8272"

    .line 2280
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2282
    :cond_1
    iget-object v1, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v2, "\u7ea2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u7ea2\u8272"

    .line 2283
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2285
    :cond_2
    iget-object v1, v10, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v2, "\u9ec4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "\u9ec4\u8272"

    .line 2286
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2288
    :cond_3
    invoke-virtual/range {v32 .. v32}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v12, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    const-string v1, "\u900f\u660e"

    .line 2289
    invoke-virtual {v12, v0, v1}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setDataList(Ljava/util/List;Ljava/lang/String;)V

    .line 2290
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$FMzGhnS70yxmx8C3QOO5pjsV-No;

    invoke-direct {v0, v10, v12}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$FMzGhnS70yxmx8C3QOO5pjsV-No;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;)V

    invoke-virtual {v12, v0}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter$OnClickSelectViewBg;)V

    .line 2310
    new-instance v8, Lcn/highlight/work_card_write/activity/Model2Activity$16;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v11, v25

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcn/highlight/work_card_write/activity/Model2Activity$16;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;)V

    move-object/from16 v2, v23

    invoke-virtual {v2, v8}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 2353
    new-instance v12, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$Ejzjperivt33C9MHldmMoS8JAc0;

    move-object v0, v12

    move v2, v11

    move-object/from16 v3, v19

    move-object/from16 v4, v32

    move/from16 v5, v28

    move-object/from16 v6, v20

    move-object/from16 v7, v26

    move-object/from16 v8, v27

    move-object/from16 v9, v30

    invoke-direct/range {v0 .. v9}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$Ejzjperivt33C9MHldmMoS8JAc0;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;ZLandroid/graphics/Bitmap;Ljava/util/concurrent/atomic/AtomicReference;I[I[I[ILcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    move-object/from16 v2, v21

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2378
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$casMzKUM_0q8Ap6zn48OnqZJDw8;

    move-object/from16 v1, v30

    invoke-direct {v0, v10, v11, v1}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$casMzKUM_0q8Ap6zn48OnqZJDw8;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;ZLcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    move-object/from16 v2, v22

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showMainSetText()V
    .locals 37

    move-object/from16 v12, p0

    .line 890
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0060

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09026f

    .line 891
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    const v1, 0x7f090280

    .line 892
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/ImageView;

    const v1, 0x7f090281

    .line 893
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    const v2, 0x7f090274

    .line 894
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f090270

    .line 895
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    const v3, 0x7f090275

    .line 896
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f090272

    .line 897
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    const v5, 0x7f090276

    .line 898
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f09027a

    .line 899
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView;

    const v7, 0x7f09027b

    .line 900
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/recyclerview/widget/RecyclerView;

    const v8, 0x7f09027d

    .line 901
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/SeekBar;

    const v9, 0x7f09027e

    .line 902
    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f090178

    .line 903
    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f09012a

    .line 904
    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v15, 0x7f090187

    .line 905
    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    move-object/from16 v16, v14

    const v14, 0x7f090131

    .line 906
    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    move-object/from16 v17, v13

    const v13, 0x7f090195

    .line 907
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v18, v13

    const v13, 0x7f09013d

    .line 908
    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v19, v13

    .line 909
    new-instance v13, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    move-object/from16 v20, v15

    const v15, 0x7f1100d6

    invoke-direct {v13, v12, v15}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    .line 910
    invoke-virtual {v13, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 911
    invoke-virtual {v13, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCanceledOnTouchOutside(Z)V

    .line 912
    invoke-virtual {v13, v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 913
    invoke-virtual {v13}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/Window;

    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 914
    invoke-virtual {v13}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    const-string v0, ""

    .line 917
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v15

    .line 918
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v22, v13

    const-string v13, "\u9ed8\u8ba4"

    invoke-direct {v0, v13}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 919
    new-instance v13, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v23, v14

    const-string v14, "\u900f\u660e"

    invoke-direct {v13, v14}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v24, v10

    .line 920
    new-instance v10, Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v25, v11

    const-string v11, "\u9ed1\u8272"

    invoke-direct {v10, v11}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v26, v9

    const/4 v9, 0x1

    move-object/from16 v27, v8

    new-array v8, v9, [F

    const/high16 v28, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    aput v28, v8, v21

    move-object/from16 v28, v7

    new-array v7, v9, [I

    aput v21, v7, v21

    move-object/from16 v29, v11

    new-array v11, v9, [I

    aput v21, v11, v21

    move-object/from16 v30, v14

    new-array v14, v9, [I

    aput v21, v14, v21

    .line 926
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    instance-of v9, v9, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v9, :cond_0

    .line 928
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    check-cast v9, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleText;->getText1()Ljava/lang/String;

    move-result-object v9

    const/16 v21, 0x0

    aput-object v9, v15, v21

    .line 929
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    check-cast v9, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleText;->getTypeface()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 930
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    check-cast v9, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleText;->getBgColor()I

    move-result v9

    .line 931
    invoke-direct {v12, v9}, Lcn/highlight/work_card_write/activity/Model2Activity;->getValueByColor(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 932
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    invoke-interface {v9}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v9

    check-cast v9, Lcn/highlight/lib_doodle/DoodleColor;

    .line 933
    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleColor;->getColor()I

    move-result v9

    invoke-direct {v12, v9}, Lcn/highlight/work_card_write/activity/Model2Activity;->getValueByColor(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 934
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    invoke-interface {v9}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getScale()F

    move-result v9

    move-object/from16 v31, v10

    const/4 v10, 0x0

    aput v9, v8, v10

    .line 935
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    check-cast v9, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleText;->getBold()I

    move-result v9

    aput v9, v7, v10

    .line 936
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    check-cast v9, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleText;->getItalic()I

    move-result v9

    aput v9, v11, v10

    .line 937
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v9

    check-cast v9, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v9}, Lcn/highlight/lib_doodle/DoodleText;->getUnderline()I

    move-result v9

    aput v9, v14, v10

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v31, v10

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 941
    :goto_0
    invoke-virtual {v1, v10}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 942
    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 943
    aget-object v32, v15, v10

    invoke-static/range {v32 .. v32}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 944
    iget-object v10, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    move-object/from16 v32, v15

    iget-object v15, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v15}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v15

    check-cast v15, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {v15}, Lcn/highlight/lib_doodle/DoodleText;->getText0()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    move-object/from16 v32, v15

    :goto_1
    const/4 v10, 0x1

    new-array v15, v10, [Ljava/lang/String;

    .line 946
    iget-object v10, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const/16 v21, 0x0

    aput-object v10, v15, v21

    .line 948
    iget-object v10, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    move/from16 v33, v9

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 949
    iget-object v9, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    new-instance v10, Lcn/highlight/work_card_write/activity/Model2Activity$5;

    invoke-direct {v10, v12, v15}, Lcn/highlight/work_card_write/activity/Model2Activity$5;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;[Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v9, 0x8

    .line 1039
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1040
    new-instance v10, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v15, 0x4

    invoke-direct {v10, v12, v15}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 1041
    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1042
    new-instance v10, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

    invoke-direct {v10, v12}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;-><init>(Landroid/content/Context;)V

    .line 1043
    invoke-virtual {v4, v10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1044
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1046
    invoke-static {}, Lcn/highlight/work_card_write/sp/ConfigSp;->getLang()Ljava/lang/String;

    move-result-object v15

    const/16 v34, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v9

    move-object/from16 v35, v1

    const/16 v1, 0xc81

    move-object/from16 v36, v2

    const/4 v2, 0x2

    if-eq v9, v1, :cond_4

    const/16 v1, 0xca9

    if-eq v9, v1, :cond_3

    const/16 v1, 0xf2e

    if-eq v9, v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "zh"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const-string v1, "en"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    const-string v1, "de"

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v1, -0x1

    :goto_3
    const-string v9, "HarmonyOS_Sans_Bold"

    if-eqz v1, :cond_8

    const/4 v15, 0x1

    if-eq v1, v15, :cond_7

    if-eq v1, v2, :cond_6

    goto :goto_4

    .line 1062
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "HanSansCN-Regular"

    .line 1063
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "HanSansCN-Light"

    .line 1064
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "HanSerifCN-Medium"

    .line 1065
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    const v2, 0x7f1000a1

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u601d\u6e90\u9ed1\u4f53"

    .line 1056
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u601d\u6e90\u9ed1\u4f53\u7ec6"

    .line 1057
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u601d\u6e90\u5b8b\u4f53\u4e2d"

    .line 1058
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u9e3f\u8499\u9ed1\u4f53\u7c97"

    .line 1059
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1048
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SourceHanSansCN-Regular"

    .line 1049
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SourceHanSansCN-Light"

    .line 1050
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SourceHanSerifCN-Medium"

    .line 1051
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1069
    :goto_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v10, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->type:Ljava/lang/String;

    .line 1070
    invoke-virtual {v10, v4}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->setDataList(Ljava/util/List;)V

    .line 1071
    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$E1HHD6ol1Ps3jOC0Anu2qVtKmmQ;

    invoke-direct {v1, v12, v10}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$E1HHD6ol1Ps3jOC0Anu2qVtKmmQ;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;)V

    invoke-virtual {v10, v1}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->setOnClickSelectViewTextFont(Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$OnClickSelectViewTextFont;)V

    const/16 v1, 0x8

    .line 1079
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1081
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v1, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 1082
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 1083
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1084
    new-instance v1, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;

    invoke-direct {v1, v12}, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;-><init>(Landroid/content/Context;)V

    .line 1085
    invoke-virtual {v6, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1086
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v4, v30

    .line 1087
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    iget-object v4, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v6, "\u9ed1\u767d"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v9, "\u767d\u8272"

    if-eqz v4, :cond_9

    move-object/from16 v4, v29

    .line 1089
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object/from16 v4, v29

    .line 1092
    :goto_5
    iget-object v10, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    const-string v15, "\u7ea2"

    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    move-object/from16 v29, v0

    const-string v0, "\u7ea2\u8272"

    if-eqz v10, :cond_a

    .line 1093
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1095
    :cond_a
    iget-object v10, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    move-object/from16 v30, v3

    const-string v3, "\u9ec4"

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "\u9ec4\u8272"

    .line 1096
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    :cond_b
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v1, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->type:Ljava/lang/String;

    .line 1099
    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->setDataList(Ljava/util/List;)V

    .line 1100
    new-instance v2, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$17Piy9N5qVpi313yJ_YG5F9a5gc;

    invoke-direct {v2, v12, v1}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$17Piy9N5qVpi313yJ_YG5F9a5gc;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;)V

    invoke-virtual {v1, v2}, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter$OnClickSelectViewBg;)V

    .line 1109
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x0

    .line 1110
    invoke-virtual {v2, v10}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    move-object/from16 v10, v28

    .line 1111
    invoke-virtual {v10, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1112
    new-instance v2, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

    invoke-direct {v2, v12}, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;-><init>(Landroid/content/Context;)V

    .line 1113
    invoke-virtual {v10, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1114
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v28, v13

    .line 1115
    iget-object v13, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1116
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1117
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1119
    :cond_c
    iget-object v4, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1120
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1122
    :cond_d
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->modelColor:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "\u9ec4\u8272"

    .line 1123
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1125
    :cond_e
    invoke-virtual/range {v31 .. v31}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->type:Ljava/lang/String;

    .line 1126
    invoke-virtual {v2, v10}, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->setDataList(Ljava/util/List;)V

    .line 1127
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$7aINLdWmYBmX3OArZALc27Jp9A4;

    invoke-direct {v0, v12, v2}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$7aINLdWmYBmX3OArZALc27Jp9A4;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;)V

    invoke-virtual {v2, v0}, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter$OnClickSelectViewBg;)V

    const/4 v0, 0x0

    .line 1138
    aget v2, v8, v0

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr v2, v0

    const v0, 0x3dac7692

    div-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    move-object/from16 v2, v27

    .line 1139
    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    add-int/lit8 v0, v0, 0x5

    .line 1140
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v26

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity$6;

    invoke-direct {v0, v12, v9, v1}, Lcn/highlight/work_card_write/activity/Model2Activity$6;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/TextView;Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;)V

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/16 v21, 0x0

    .line 1208
    aget v0, v7, v21

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    :goto_6
    aput-boolean v0, v1, v21

    .line 1209
    aget-boolean v0, v1, v21

    const v2, 0x7f08012f

    const v3, 0x7f080127

    if-eqz v0, :cond_10

    const v0, 0x7f0e0018

    move-object/from16 v4, v25

    .line 1210
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1211
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1212
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v0, :cond_11

    .line 1213
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleText;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcn/highlight/lib_doodle/DoodleText;->setBold(I)V

    goto :goto_7

    :cond_10
    move-object/from16 v4, v25

    const v0, 0x7f0e0017

    .line 1216
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1217
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1218
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v0, :cond_11

    .line 1219
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleText;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcn/highlight/lib_doodle/DoodleText;->setBold(I)V

    goto :goto_8

    :cond_11
    :goto_7
    const/4 v6, 0x0

    .line 1222
    :goto_8
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ce8sTFRd68zDqNRSPrCLWkgPlOo;

    invoke-direct {v0, v12, v1, v4}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ce8sTFRd68zDqNRSPrCLWkgPlOo;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;[ZLandroid/widget/ImageView;)V

    move-object/from16 v10, v24

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 1239
    aget v0, v11, v6

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    :goto_9
    aput-boolean v0, v1, v6

    .line 1240
    aget-boolean v0, v1, v6

    if-eqz v0, :cond_13

    const v0, 0x7f0e00c0

    move-object/from16 v4, v23

    .line 1241
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1242
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1243
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v0, :cond_14

    .line 1244
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleText;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lcn/highlight/lib_doodle/DoodleText;->setItalic(I)V

    goto :goto_a

    :cond_13
    move-object/from16 v4, v23

    const v0, 0x7f0e00bf

    .line 1247
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1248
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1249
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v0, :cond_14

    .line 1250
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleText;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcn/highlight/lib_doodle/DoodleText;->setItalic(I)V

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v6, 0x0

    .line 1253
    :goto_b
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$Bx61TelGrEPizXW43VciCueo8Ys;

    invoke-direct {v0, v12, v1, v4}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$Bx61TelGrEPizXW43VciCueo8Ys;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;[ZLandroid/widget/ImageView;)V

    move-object/from16 v15, v20

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    new-array v1, v0, [Z

    .line 1270
    aget v0, v14, v6

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    :goto_c
    aput-boolean v0, v1, v6

    .line 1271
    aget-boolean v0, v1, v6

    if-eqz v0, :cond_16

    const v0, 0x7f0e00be

    move-object/from16 v13, v19

    .line 1272
    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1273
    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1274
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v0, :cond_17

    .line 1275
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/highlight/lib_doodle/DoodleText;->setUnderline(I)V

    goto :goto_d

    :cond_16
    move-object/from16 v13, v19

    const v0, 0x7f0e00bd

    .line 1278
    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1279
    invoke-virtual {v13, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1280
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz v0, :cond_17

    .line 1281
    iget-object v0, v12, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/highlight/lib_doodle/DoodleText;->setUnderline(I)V

    .line 1284
    :cond_17
    :goto_d
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$7AUgd3JP4kElL1lxEm4iEQTw-aU;

    invoke-direct {v0, v12, v1, v13}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$7AUgd3JP4kElL1lxEm4iEQTw-aU;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;[ZLandroid/widget/ImageView;)V

    move-object/from16 v13, v18

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1301
    new-instance v0, Lcn/highlight/work_card_write/activity/Model2Activity$7;

    move-object/from16 v3, v30

    move-object/from16 v2, v36

    invoke-direct {v0, v12, v2, v3, v5}, Lcn/highlight/work_card_write/activity/Model2Activity$7;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    move-object/from16 v1, v35

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1332
    new-instance v13, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$WKGl4tZgu5k5XJgwhaSwYgOBtKA;

    move-object/from16 v4, v29

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, v33

    move-object/from16 v3, v32

    move-object/from16 v5, v28

    move-object/from16 v6, v31

    move-object v9, v7

    move-object v7, v8

    move-object v8, v9

    move/from16 v15, v33

    move-object v9, v11

    move-object v10, v14

    move-object/from16 v11, v22

    invoke-direct/range {v0 .. v11}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$WKGl4tZgu5k5XJgwhaSwYgOBtKA;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Z[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;[F[I[I[ILcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    move-object/from16 v1, v17

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1360
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ufhfsqiQP1fI7dMR4-fI_21zvVM;

    move-object/from16 v1, v22

    invoke-direct {v0, v12, v15, v1}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$ufhfsqiQP1fI7dMR4-fI_21zvVM;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;ZLcom/google/android/material/bottomsheet/BottomSheetDialog;)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showSet(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 720
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->SHAPE:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 721
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetShape()V

    goto :goto_0

    .line 716
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BARCODE:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 717
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetBarCode()V

    goto :goto_0

    .line 711
    :cond_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->QRCODE:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 712
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetQRCode()V

    goto :goto_0

    .line 706
    :cond_3
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 707
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetImage()V

    goto :goto_0

    .line 701
    :cond_4
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 702
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetText()V

    goto :goto_0

    .line 693
    :cond_5
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BG:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v1}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 694
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 695
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v2, v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 697
    :cond_6
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->showMainSetBg()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 4

    .line 175
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 177
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->type:I

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->imageName:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->initModel()V

    .line 184
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->initBitmap()V

    .line 185
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->initLayout()V

    .line 186
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->initBitmapBG()V

    .line 187
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->initDoodle()V

    .line 188
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->initMainSet()V

    .line 189
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    .line 190
    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshButton(Z)V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$null$3$Model2Activity(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 660
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 661
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->finishActivity()V

    return-void
.end method

.method public synthetic lambda$onViewClicked$0$Model2Activity()V
    .locals 5

    .line 532
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 533
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 534
    iget-object v3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v3}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 535
    invoke-interface {v4, v1}, Lcn/highlight/lib_doodle/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 537
    :cond_0
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleRotation()I

    move-result v1

    invoke-static {v0, v1, v2}, Lcn/forward/androids/utils/ImageUtils;->rotate(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 538
    sput-object v0, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    .line 539
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sput-object v0, Lcn/highlight/work_card_write/Constants;->editSaveModel:Lcn/highlight/lib_doodle/IDoodle;

    .line 540
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 541
    iget v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->type:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    iget-boolean v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->isOperation:Z

    const-string v2, "modify"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 543
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->imageName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$showErrorDialog$4$Model2Activity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 631
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0058

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902c0

    .line 632
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0902b5

    .line 633
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090182

    .line 634
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f09008d

    .line 635
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f090183

    .line 636
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f09008c

    .line 637
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f09008e

    .line 638
    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 639
    new-instance v8, Landroid/app/Dialog;

    const v9, 0x7f1100ca

    invoke-direct {v8, p0, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 640
    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 641
    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 643
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 644
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 645
    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    .line 646
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    .line 647
    invoke-virtual {v12, v11}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 648
    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    const/high16 v12, 0x3f400000    # 0.75f

    mul-float v11, v11, v12

    float-to-int v11, v11

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v11, -0x2

    .line 649
    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 650
    invoke-virtual {v9, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 651
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 653
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x8

    .line 655
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 656
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 657
    new-instance p1, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$EJzm16gv7Clxg0UgyWj0REMGfkI;

    invoke-direct {p1, v8}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$EJzm16gv7Clxg0UgyWj0REMGfkI;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v4, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    new-instance p1, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$yaLhRQzbBDO5KHeYuQUYnX6_cY4;

    invoke-direct {p1, v8}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$yaLhRQzbBDO5KHeYuQUYnX6_cY4;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v6, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    new-instance p1, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$Tz3R68qwos0729kgM-MZ3LDtWqQ;

    invoke-direct {p1, p0, v8}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$Tz3R68qwos0729kgM-MZ3LDtWqQ;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;Landroid/app/Dialog;)V

    invoke-virtual {v7, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$showMainSetBarCode$29$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3

    .line 1967
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1968
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100082

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1971
    :cond_0
    iput-object p4, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->otherType:Ljava/lang/String;

    .line 1972
    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->notifyDataSetChanged()V

    .line 1973
    iput-object p4, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    .line 1974
    invoke-virtual {p2}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->notifyDataSetChanged()V

    .line 1975
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1976
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p4

    instance-of p4, p4, Lcn/highlight/lib_doodle/DoodleBarCode;

    if-eqz p4, :cond_1

    .line 1977
    iget p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    div-int/lit8 v0, p4, 0x4

    iget-object v1, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3, p4, v0, v1, v2}, Lcn/highlight/core/utils/CodeUtils;->generateBarcodeWithoutMargin(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1978
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBarCode;

    iget-object p2, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p2

    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p4, p3, p2, p1}, Lcn/highlight/lib_doodle/DoodleBarCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showMainSetBarCode$30$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 3

    .line 1982
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100082

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1986
    :cond_0
    iput-object p4, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->otherType:Ljava/lang/String;

    .line 1987
    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->notifyDataSetChanged()V

    .line 1988
    iput-object p4, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    .line 1989
    invoke-virtual {p2}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->notifyDataSetChanged()V

    .line 1990
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1991
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p4

    instance-of p4, p4, Lcn/highlight/lib_doodle/DoodleBarCode;

    if-eqz p4, :cond_1

    .line 1992
    iget p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    div-int/lit8 v0, p4, 0x4

    iget-object v1, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {p3, p4, v0, v1, v2}, Lcn/highlight/core/utils/CodeUtils;->generateBarcodeWithoutMargin(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1993
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBarCode;

    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p4, p3, p1, p2}, Lcn/highlight/lib_doodle/DoodleBarCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showMainSetBarCode$31$Model2Activity(ZLandroid/graphics/Bitmap;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2027
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleBarCode;

    if-eqz p1, :cond_0

    .line 2028
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleBarCode;

    const/4 p8, 0x0

    aget-object p3, p3, p8

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-direct {p0, p5}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcn/highlight/lib_doodle/DoodleBarCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 2031
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    .line 2032
    invoke-virtual {p6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 2033
    invoke-virtual {p0, p7}, Lcn/highlight/work_card_write/activity/Model2Activity;->hideSoftKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showMainSetBarCode$32$Model2Activity(Landroid/widget/EditText;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 6

    .line 2037
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2038
    invoke-static {v3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    return-void

    .line 2039
    :cond_0
    iget p5, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    div-int/lit8 v0, p5, 0x4

    iget-object v1, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p3, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, p5, v0, v1, v2}, Lcn/highlight/core/utils/CodeUtils;->generateBarcodeWithoutMargin(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2040
    iget-object p5, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p5

    instance-of p5, p5, Lcn/highlight/lib_doodle/DoodleBarCode;

    if-eqz p5, :cond_1

    .line 2041
    iget-object p5, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p5

    move-object v1, p5

    check-cast v1, Lcn/highlight/lib_doodle/DoodleBarCode;

    iget-object p2, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v4

    iget-object p2, p3, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleBarCode(Lcn/highlight/lib_doodle/DoodleBarCode;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 2042
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    const/4 p5, 0x1

    invoke-interface {p2, p3, p5}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2044
    iget-object p2, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v4

    iget-object p2, p3, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleBarCode(Lcn/highlight/lib_doodle/DoodleBarCode;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 2045
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    const/4 p5, 0x0

    invoke-interface {p2, p3, p5}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 2046
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodle;->clearRedoRecord()V

    .line 2048
    :goto_0
    invoke-virtual {p4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 2049
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->hideSoftKeyBoard(Landroid/view/View;)V

    .line 2050
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    return-void
.end method

.method public synthetic lambda$showMainSetBg$10$Model2Activity(Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 3

    .line 859
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/highlight/lib_doodle/IDoodleItem;

    invoke-interface {p2, v1, v0}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 860
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    .line 861
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 862
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    return-void
.end method

.method public synthetic lambda$showMainSetBg$5$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelBgAdapter;Ljava/lang/String;)V
    .locals 0

    .line 774
    iput-object p2, p1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->type:Ljava/lang/String;

    .line 775
    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->notifyDataSetChanged()V

    .line 776
    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->modifyBitmapBg(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$showMainSetBg$6$Model2Activity(Landroid/view/View;)V
    .locals 2

    .line 781
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/4 v1, 0x6

    .line 782
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 783
    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$showMainSetBg$7$Model2Activity(Landroid/view/View;)V
    .locals 2

    .line 786
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/4 v1, 0x7

    .line 787
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 788
    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$showMainSetBg$8$Model2Activity(Ljava/lang/Integer;)V
    .locals 3

    .line 809
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 810
    sget-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    .line 811
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleBg;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v2}, Lcn/highlight/lib_doodle/DoodleBg;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 812
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleBg;

    const-string v0, "\u5176\u4ed6"

    invoke-virtual {p1, v0}, Lcn/highlight/lib_doodle/DoodleBg;->setText(Ljava/lang/String;)V

    .line 813
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    return-void
.end method

.method public synthetic lambda$showMainSetBg$9$Model2Activity(Landroid/graphics/Bitmap;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 2

    .line 849
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    .line 850
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    const/4 p4, 0x1

    invoke-interface {p1, p4}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleBg;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/DoodleBg;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 851
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1, p4}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleBg;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleBg;->setText(Ljava/lang/String;)V

    .line 852
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    .line 853
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 855
    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showMainSetImage$19$Model2Activity(Landroid/view/View;)V
    .locals 2

    .line 1423
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/16 v1, 0x8

    .line 1424
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1425
    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$showMainSetImage$20$Model2Activity(Landroid/view/View;)V
    .locals 2

    .line 1428
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/16 v1, 0x9

    .line 1429
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1430
    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$showMainSetImage$21$Model2Activity(Ljava/lang/Integer;)V
    .locals 1

    .line 1460
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    sput-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 1461
    sget-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 1462
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz v0, :cond_0

    .line 1463
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-direct {p0, v0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1465
    invoke-direct {p0, v0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$showMainSetImage$22$Model2Activity(ZLandroid/graphics/Bitmap;[FLcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    const/4 p5, 0x0

    if-eqz p1, :cond_0

    .line 1621
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz p1, :cond_1

    .line 1622
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1623
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    aget p2, p3, p5

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    goto :goto_0

    .line 1627
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz p1, :cond_1

    .line 1628
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodle;->getAllRedoItem(Z)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    invoke-interface {p1, p5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1629
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodle;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 1630
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 1633
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    .line 1634
    invoke-virtual {p4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showMainSetImage$23$Model2Activity(ZLcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1

    .line 1638
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    instance-of p3, p3, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    .line 1640
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, p3, v0}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    goto :goto_0

    .line 1642
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 1643
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->clearRedoRecord()V

    .line 1646
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 1647
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    return-void
.end method

.method public synthetic lambda$showMainSetQRCode$24$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2

    .line 1760
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100082

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1764
    :cond_0
    iput-object p4, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->otherType:Ljava/lang/String;

    .line 1765
    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->notifyDataSetChanged()V

    .line 1766
    iput-object p4, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    .line 1767
    invoke-virtual {p2}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->notifyDataSetChanged()V

    .line 1768
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1769
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p4

    instance-of p4, p4, Lcn/highlight/lib_doodle/DoodleQRCode;

    if-eqz p4, :cond_1

    .line 1770
    iget p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    iget-object v0, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {p3, p4, v0, v1}, Lcn/highlight/core/utils/CodeUtils;->generateQRCodeWithoutMargin(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1771
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleQRCode;

    iget-object p2, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p2

    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p4, p3, p2, p1}, Lcn/highlight/lib_doodle/DoodleQRCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showMainSetQRCode$25$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2

    .line 1775
    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1776
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f100082

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 1779
    :cond_0
    iput-object p4, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->otherType:Ljava/lang/String;

    .line 1780
    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->notifyDataSetChanged()V

    .line 1781
    iput-object p4, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    .line 1782
    invoke-virtual {p2}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->notifyDataSetChanged()V

    .line 1783
    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1784
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p4}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p4

    instance-of p4, p4, Lcn/highlight/lib_doodle/DoodleQRCode;

    if-eqz p4, :cond_1

    .line 1785
    iget p4, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    iget-object v0, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {p3, p4, v0, v1}, Lcn/highlight/core/utils/CodeUtils;->generateQRCodeWithoutMargin(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p4

    .line 1786
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleQRCode;

    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p4, p3, p1, p2}, Lcn/highlight/lib_doodle/DoodleQRCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showMainSetQRCode$26$Model2Activity(ZLandroid/graphics/Bitmap;[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/widget/EditText;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1820
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleQRCode;

    if-eqz p1, :cond_0

    .line 1821
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleQRCode;

    const/4 p8, 0x0

    aget-object p3, p3, p8

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-direct {p0, p5}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Lcn/highlight/lib_doodle/DoodleQRCode;->setBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 1824
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    .line 1825
    invoke-virtual {p6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 1826
    invoke-virtual {p0, p7}, Lcn/highlight/work_card_write/activity/Model2Activity;->hideSoftKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showMainSetQRCode$27$Model2Activity(Landroid/widget/EditText;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Lcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 6

    .line 1831
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1832
    invoke-static {v3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_0

    return-void

    .line 1833
    :cond_0
    iget p5, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->DEFAULT_BITMAP_SIZE:I

    iget-object v0, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p3, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, p5, v0, v1}, Lcn/highlight/core/utils/CodeUtils;->generateQRCodeWithoutMargin(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1834
    iget-object p5, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p5

    instance-of p5, p5, Lcn/highlight/lib_doodle/DoodleQRCode;

    if-eqz p5, :cond_1

    .line 1835
    iget-object p5, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p5

    move-object v1, p5

    check-cast v1, Lcn/highlight/lib_doodle/DoodleQRCode;

    iget-object p2, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v4

    iget-object p2, p3, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleQRCode(Lcn/highlight/lib_doodle/DoodleQRCode;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 1836
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    const/4 p5, 0x1

    invoke-interface {p2, p3, p5}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1838
    iget-object p2, p2, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v4

    iget-object p2, p3, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleQRCode(Lcn/highlight/lib_doodle/DoodleQRCode;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    .line 1839
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    const/4 p5, 0x0

    invoke-interface {p2, p3, p5}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 1840
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p2}, Lcn/highlight/lib_doodle/IDoodle;->clearRedoRecord()V

    .line 1842
    :goto_0
    invoke-virtual {p4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 1843
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->hideSoftKeyBoard(Landroid/view/View;)V

    .line 1844
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    return-void
.end method

.method public synthetic lambda$showMainSetShape$33$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Ljava/lang/Integer;)V
    .locals 9

    .line 2144
    sget-object v0, Lcn/highlight/lib_doodle/DoodleShape;->FILL_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result v0

    .line 2145
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    packed-switch p5, :pswitch_data_0

    :goto_0
    move v5, v0

    goto :goto_1

    .line 2153
    :pswitch_0
    sget-object p5, Lcn/highlight/lib_doodle/DoodleShape;->FILL_TRIANGLE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result v0

    goto :goto_0

    .line 2147
    :pswitch_1
    sget-object p5, Lcn/highlight/lib_doodle/DoodleShape;->FILL_RECT:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result v0

    goto :goto_0

    .line 2150
    :pswitch_2
    sget-object p5, Lcn/highlight/lib_doodle/DoodleShape;->FILL_CIRCLE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result v0

    goto :goto_0

    .line 2156
    :pswitch_3
    sget-object p5, Lcn/highlight/lib_doodle/DoodleShape;->LINE:Lcn/highlight/lib_doodle/DoodleShape;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleShape;->ordinal()I

    move-result v0

    goto :goto_0

    .line 2159
    :goto_1
    iget-object p5, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p5}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p5

    instance-of p5, p5, Lcn/highlight/lib_doodle/DoodleShape1;

    if-eqz p5, :cond_0

    .line 2162
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getFgColor()I

    move-result v4

    .line 2163
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getWidth()I

    move-result v6

    .line 2164
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getHeight()I

    move-result v7

    .line 2165
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getEffects()I

    move-result v8

    add-int/lit8 p1, v6, 0x5

    add-int/lit8 p2, v7, 0x5

    .line 2166
    invoke-static {v4, v5, p1, p2, v8}, Lcn/highlight/work_card_write/util/ShapeUtil;->generateGraph(IIIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2168
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcn/highlight/lib_doodle/DoodleShape1;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleShapeSize(Lcn/highlight/lib_doodle/DoodleShape1;Landroid/graphics/Bitmap;IIIII)V

    goto :goto_2

    .line 2171
    :cond_0
    iget-object p5, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    invoke-virtual {p4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {p5, v5, v0, v1, v2}, Lcn/highlight/work_card_write/util/ShapeUtil;->generateGraph(IIIII)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v2, 0x0

    .line 2173
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v6

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v7

    invoke-virtual {p4}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleShapeSize(Lcn/highlight/lib_doodle/DoodleShape1;Landroid/graphics/Bitmap;IIIII)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0082
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$showMainSetShape$34$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Ljava/lang/String;)V
    .locals 8

    .line 2291
    iput-object p2, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    .line 2292
    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->notifyDataSetChanged()V

    .line 2295
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleShape1;

    if-eqz p2, :cond_0

    .line 2296
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleShape1;

    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcn/highlight/lib_doodle/DoodleShape1;->setFgColor(I)V

    .line 2297
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getShape1()I

    move-result v4

    .line 2298
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getFgColor()I

    move-result v3

    .line 2299
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getWidth()I

    move-result v5

    .line 2300
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getHeight()I

    move-result v6

    .line 2301
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleShape1;->getEffects()I

    move-result v7

    add-int/lit8 p1, v5, 0x5

    add-int/lit8 p2, v6, 0x5

    .line 2302
    invoke-static {v3, v4, p1, p2, v7}, Lcn/highlight/work_card_write/util/ShapeUtil;->generateGraph(IIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2304
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcn/highlight/lib_doodle/DoodleShape1;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleShapeSize(Lcn/highlight/lib_doodle/DoodleShape1;Landroid/graphics/Bitmap;IIIII)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showMainSetShape$35$Model2Activity(ZLandroid/graphics/Bitmap;Ljava/util/concurrent/atomic/AtomicReference;I[I[I[ILcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 10

    move-object v0, p0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2356
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    instance-of v2, v2, Lcn/highlight/lib_doodle/DoodleShape1;

    if-eqz v2, :cond_1

    .line 2357
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/highlight/lib_doodle/DoodleShape1;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result v5

    aget v7, p5, v1

    aget v8, p6, v1

    aget v9, p7, v1

    move-object v4, p2

    move v6, p4

    invoke-virtual/range {v3 .. v9}, Lcn/highlight/lib_doodle/DoodleShape1;->setBitmap(Landroid/graphics/Bitmap;IIIII)V

    goto :goto_0

    .line 2368
    :cond_0
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    instance-of v2, v2, Lcn/highlight/lib_doodle/DoodleShape1;

    if-eqz v2, :cond_1

    .line 2369
    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcn/highlight/lib_doodle/IDoodle;->getAllRedoItem(Z)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2370
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v2, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/highlight/lib_doodle/IDoodle;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 2371
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 2374
    :cond_1
    :goto_0
    iget-object v1, v0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    .line 2375
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showMainSetShape$36$Model2Activity(ZLcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 1

    .line 2379
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    instance-of p3, p3, Lcn/highlight/lib_doodle/DoodleShape1;

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    .line 2381
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    const/4 v0, 0x1

    invoke-interface {p1, p3, v0}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    goto :goto_0

    .line 2383
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 2384
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->clearRedoRecord()V

    .line 2387
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 2388
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    return-void
.end method

.method public synthetic lambda$showMainSetText$11$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1072
    iput-object p2, p1, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->type:Ljava/lang/String;

    .line 1073
    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->notifyDataSetChanged()V

    .line 1074
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p1, :cond_0

    .line 1075
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p1, p0, p2}, Lcn/highlight/lib_doodle/DoodleText;->setTypeface(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showMainSetText$12$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1101
    iput-object p2, p1, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->type:Ljava/lang/String;

    .line 1102
    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelTextStyleBgAdapter;->notifyDataSetChanged()V

    .line 1103
    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p1

    .line 1104
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p2, :cond_0

    .line 1105
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p2, p1}, Lcn/highlight/lib_doodle/DoodleText;->setBgColor(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showMainSetText$13$Model2Activity(Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;Ljava/lang/String;)V
    .locals 1

    .line 1128
    iput-object p2, p1, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->type:Ljava/lang/String;

    .line 1129
    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->notifyDataSetChanged()V

    .line 1130
    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p1

    .line 1131
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p2, :cond_0

    .line 1132
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-direct {v0, p1}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {p2, v0}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showMainSetText$14$Model2Activity([ZLandroid/widget/ImageView;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x0

    .line 1223
    aget-boolean v0, p1, p3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f0e0017

    .line 1224
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f080127

    .line 1225
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1226
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p2, :cond_1

    .line 1227
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p2, p3}, Lcn/highlight/lib_doodle/DoodleText;->setBold(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0018

    .line 1230
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f08012f

    .line 1231
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1232
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p2, :cond_1

    .line 1233
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p2, v1}, Lcn/highlight/lib_doodle/DoodleText;->setBold(I)V

    .line 1236
    :cond_1
    :goto_0
    aget-boolean p2, p1, p3

    xor-int/2addr p2, v1

    aput-boolean p2, p1, p3

    return-void
.end method

.method public synthetic lambda$showMainSetText$15$Model2Activity([ZLandroid/widget/ImageView;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x0

    .line 1254
    aget-boolean v0, p1, p3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f0e00bf

    .line 1255
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f080127

    .line 1256
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1257
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p2, :cond_1

    .line 1258
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p2, p3}, Lcn/highlight/lib_doodle/DoodleText;->setItalic(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0e00c0

    .line 1261
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f08012f

    .line 1262
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1263
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p2, :cond_1

    .line 1264
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p2, v1}, Lcn/highlight/lib_doodle/DoodleText;->setItalic(I)V

    .line 1267
    :cond_1
    :goto_0
    aget-boolean p2, p1, p3

    xor-int/2addr p2, v1

    aput-boolean p2, p1, p3

    return-void
.end method

.method public synthetic lambda$showMainSetText$16$Model2Activity([ZLandroid/widget/ImageView;Landroid/view/View;)V
    .locals 2

    const/4 p3, 0x0

    .line 1285
    aget-boolean v0, p1, p3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f0e00bd

    .line 1286
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f080127

    .line 1287
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1288
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p2, :cond_1

    .line 1289
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p2, p3}, Lcn/highlight/lib_doodle/DoodleText;->setUnderline(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0e00be

    .line 1292
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f08012f

    .line 1293
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1294
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p2, :cond_1

    .line 1295
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p2, v1}, Lcn/highlight/lib_doodle/DoodleText;->setUnderline(I)V

    .line 1298
    :cond_1
    :goto_0
    aget-boolean p2, p1, p3

    xor-int/2addr p2, v1

    aput-boolean p2, p1, p3

    return-void
.end method

.method public synthetic lambda$showMainSetText$17$Model2Activity(Z[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;[F[I[I[ILcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 0

    const/4 p11, 0x0

    if-eqz p1, :cond_0

    .line 1335
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p1, :cond_1

    .line 1336
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleText;

    aget-object p2, p2, p11

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleText;->setText1(Ljava/lang/String;)V

    .line 1337
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcn/highlight/lib_doodle/DoodleText;->setTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 1338
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p1

    .line 1339
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p2, p1}, Lcn/highlight/lib_doodle/DoodleText;->setBgColor(I)V

    .line 1340
    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getColorByValue(Ljava/lang/String;)I

    move-result p1

    .line 1341
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    new-instance p3, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-direct {p3, p1}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {p2, p3}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 1342
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    aget p2, p6, p11

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setScale(F)V

    .line 1343
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleText;

    aget p2, p7, p11

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleText;->setBold(I)V

    .line 1344
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleText;

    aget p2, p8, p11

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleText;->setItalic(I)V

    .line 1345
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleText;

    aget p2, p9, p11

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleText;->setUnderline(I)V

    goto :goto_0

    .line 1349
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p1, :cond_1

    .line 1350
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodle;->getAllRedoItem(Z)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    invoke-interface {p1, p11, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1351
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodle;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 1352
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 1355
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    .line 1356
    invoke-virtual {p10}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 1357
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->hideSoftKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$showMainSetText$18$Model2Activity(ZLcom/google/android/material/bottomsheet/BottomSheetDialog;Landroid/view/View;)V
    .locals 3

    .line 1361
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 1362
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    instance-of p3, p3, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p3, :cond_0

    .line 1363
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p3, v1}, Lcn/highlight/lib_doodle/IDoodle;->getAllRedoItem(Z)Ljava/util/List;

    move-result-object p3

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1364
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    invoke-interface {p3, v2}, Lcn/highlight/lib_doodle/IDoodle;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 1365
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 1368
    :cond_0
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    instance-of p3, p3, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p3, :cond_2

    .line 1369
    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    check-cast p3, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    invoke-static {v2}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcn/highlight/lib_doodle/DoodleText;->setText0(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1371
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    invoke-interface {p1, p3, v1}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    goto :goto_0

    .line 1373
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p3}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p3

    invoke-interface {p1, p3, v0}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 1374
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->clearRedoRecord()V

    .line 1377
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    .line 1378
    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 1379
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->textEdit:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->hideSoftKeyBoard(Landroid/view/View;)V

    .line 1380
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 2483
    invoke-super {p0, p1, p2, p3}, Lcn/highlight/work_card_write/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-ne p2, p3, :cond_4

    .line 2486
    sget-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    return-void

    .line 2487
    :cond_0
    sget-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    .line 2488
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleBg;

    iget-object p3, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p3}, Lcn/highlight/lib_doodle/DoodleBg;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2489
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllItem(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleBg;

    const-string p2, "\u5176\u4ed6"

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleBg;->setText(Ljava/lang/String;)V

    .line 2490
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_4

    if-ne p2, p3, :cond_4

    .line 2494
    sget-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    if-nez p1, :cond_2

    return-void

    .line 2495
    :cond_2
    sget-object p1, Lcn/highlight/work_card_write/Constants;->editCrop2Image:Landroid/graphics/Bitmap;

    .line 2496
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    instance-of p2, p2, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz p2, :cond_3

    .line 2497
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p2

    check-cast p2, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-direct {p0, p2, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 2499
    invoke-direct {p0, p2, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2510
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const p1, 0x7f100043

    .line 2511
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f100046

    invoke-virtual {p0, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcn/highlight/work_card_write/activity/Model2Activity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 2514
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/highlight/work_card_write/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 7
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09014d,
            0x7f09013e,
            0x7f090141,
            0x7f0902bc,
            0x7f090144,
            0x7f09013f,
            0x7f090142,
            0x7f090143,
            0x7f090140
        }
    .end annotation

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09014d

    if-eq p1, v0, :cond_10

    const v0, 0x7f0902bc

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f

    const/4 v0, 0x1

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x0

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v6, 0x43b40000    # 360.0f

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 551
    :pswitch_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 552
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->upItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 553
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {p1, v0, v2}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 555
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    .line 556
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 557
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 558
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    goto/16 :goto_2

    .line 592
    :pswitch_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 593
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getItemRotate()F

    move-result p1

    rem-float/2addr p1, v6

    cmpg-float v1, p1, v3

    if-gez v1, :cond_1

    add-float/2addr p1, v6

    :cond_1
    cmpl-float v1, p1, v5

    if-ltz v1, :cond_2

    cmpg-float v1, p1, v6

    if-gez v1, :cond_2

    .line 598
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v3}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_0

    :cond_2
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_3

    cmpg-float v1, p1, v5

    if-gez v1, :cond_3

    .line 600
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v5}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_0

    :cond_3
    cmpl-float v1, p1, v4

    if-ltz v1, :cond_4

    cmpg-float v1, p1, v2

    if-gez v1, :cond_4

    .line 602
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_0

    :cond_4
    cmpl-float v1, p1, v3

    if-ltz v1, :cond_5

    cmpg-float v1, p1, v4

    if-gez v1, :cond_5

    .line 604
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v4}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_0

    :cond_5
    cmpl-float p1, p1, v6

    if-nez p1, :cond_6

    .line 606
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v4}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    .line 608
    :cond_6
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 609
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    goto/16 :goto_2

    .line 571
    :pswitch_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 572
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->getItemRotate()F

    move-result p1

    rem-float/2addr p1, v6

    cmpg-float v1, p1, v3

    if-gez v1, :cond_7

    add-float/2addr p1, v6

    :cond_7
    cmpl-float v1, p1, v5

    if-lez v1, :cond_8

    cmpg-float v1, p1, v6

    if-gtz v1, :cond_8

    .line 577
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v5}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_1

    :cond_8
    cmpl-float v1, p1, v2

    if-lez v1, :cond_9

    cmpg-float v1, p1, v5

    if-gtz v1, :cond_9

    .line 579
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_1

    :cond_9
    cmpl-float v1, p1, v4

    if-lez v1, :cond_a

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_a

    .line 581
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v4}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_1

    :cond_a
    cmpl-float v1, p1, v3

    if-lez v1, :cond_b

    cmpg-float p1, p1, v4

    if-gtz p1, :cond_b

    .line 583
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v3}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    goto :goto_1

    :cond_b
    if-nez v1, :cond_c

    .line 585
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v5}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setItemRotate(F)V

    .line 587
    :cond_c
    :goto_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 588
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    goto/16 :goto_2

    .line 523
    :pswitch_3
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->redoRecord()V

    .line 524
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    .line 525
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    goto/16 :goto_2

    .line 613
    :pswitch_4
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 614
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllRedoItem(Z)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 615
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 616
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {p1, v0, v2}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 617
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->clearRedoRecord()V

    .line 618
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 620
    :cond_d
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    goto/16 :goto_2

    .line 561
    :pswitch_5
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 562
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->downItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 563
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v2}, Lcn/highlight/lib_doodle/IDoodle;->addItemRecord(Lcn/highlight/lib_doodle/IDoodleItem;I)V

    .line 565
    :cond_e
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    .line 566
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 567
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 568
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    goto :goto_2

    .line 518
    :pswitch_6
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget v0, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->operationNum:I

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->undoRecord(I)V

    .line 519
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/Model2Activity;->refreshImage()V

    .line 520
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    goto :goto_2

    .line 529
    :cond_f
    :try_start_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 530
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/Model2Activity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 531
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$iREcsoXxBwpLBkaY3doeD1pxoiE;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$Model2Activity$iREcsoXxBwpLBkaY3doeD1pxoiE;-><init>(Lcn/highlight/work_card_write/activity/Model2Activity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 547
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_10
    const p1, 0x7f100043

    .line 515
    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f100046

    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/Model2Activity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f09013e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c002a

    return v0
.end method
