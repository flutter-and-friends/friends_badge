.class public Lcn/highlight/work_card_write/activity/ModelActivity;
.super Lcn/highlight/work_card_write/base/BaseActivity;
.source "ModelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;
    }
.end annotation


# instance fields
.field public DEFAULT_BITMAP_SIZE:I

.field public DEFAULT_TEXT_SIZE:I

.field public MIN_BITMAP_SIZE:I

.field public MIN_TEXT_SIZE:I

.field bgCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09007d
    .end annotation
.end field

.field bgRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090080
    .end annotation
.end field

.field bgSure:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090086
    .end annotation
.end field

.field private bitmap:Landroid/graphics/Bitmap;

.field codeCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b5
    .end annotation
.end field

.field codeName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b6
    .end annotation
.end field

.field codeSure:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b7
    .end annotation
.end field

.field codeText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b8
    .end annotation
.end field

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

.field editSize:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900fc
    .end annotation
.end field

.field imageAlbum:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090128
    .end annotation
.end field

.field imageBarCode:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090129
    .end annotation
.end field

.field imageCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012b
    .end annotation
.end field

.field imageCodeView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09012c
    .end annotation
.end field

.field imagePhoto:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090133
    .end annotation
.end field

.field imageQrcode:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090134
    .end annotation
.end field

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

.field image_delete:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090140
    .end annotation
.end field

.field image_forward:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090141
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

.field private mDoodle:Lcn/highlight/lib_doodle/IDoodle;

.field private mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

.field mFrameLayout:Landroid/widget/FrameLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900e7
    .end annotation
.end field

.field private mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

.field mainSet:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b0
    .end annotation
.end field

.field mainSetBg:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b1
    .end annotation
.end field

.field mainSetImage:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b2
    .end annotation
.end field

.field mainSetText:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901b4
    .end annotation
.end field

.field private modelColor:Ljava/lang/String;

.field private modelSize:Ljava/lang/String;

.field setBg:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09022e
    .end annotation
.end field

.field setImage:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09022f
    .end annotation
.end field

.field setText:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090230
    .end annotation
.end field

.field private styleAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

.field textCancel:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09026f
    .end annotation
.end field

.field textEdit:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090270
    .end annotation
.end field

.field textEditView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090271
    .end annotation
.end field

.field private textFontAdapter:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

.field textFontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090272
    .end annotation
.end field

.field textFontView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090273
    .end annotation
.end field

.field textStyleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027c
    .end annotation
.end field

.field textStyleSeekBar:Landroid/widget/SeekBar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027d
    .end annotation
.end field

.field textStyleSeekBarProgress:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027e
    .end annotation
.end field

.field textStyleView:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09027f
    .end annotation
.end field

.field textSure:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090280
    .end annotation
.end field

.field textTabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090281
    .end annotation
.end field

.field tv_preview:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902bc
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcn/highlight/work_card_write/base/BaseActivity;-><init>()V

    const/16 v0, 0x154

    .line 189
    iput v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->DEFAULT_TEXT_SIZE:I

    const/16 v0, 0xa0

    .line 190
    iput v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->MIN_TEXT_SIZE:I

    const/16 v0, 0x190

    .line 191
    iput v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->DEFAULT_BITMAP_SIZE:I

    const/16 v0, 0x12c

    .line 192
    iput v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->MIN_BITMAP_SIZE:I

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/IDoodle;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    return-object p0
.end method

.method static synthetic access$100(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    return-object p0
.end method

.method static synthetic access$200(Lcn/highlight/work_card_write/activity/ModelActivity;)Lcn/highlight/lib_doodle/DoodleView;
    .locals 0

    .line 73
    iget-object p0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    return-object p0
.end method

.method static synthetic access$300(Lcn/highlight/work_card_write/activity/ModelActivity;Lcn/highlight/lib_doodle/DoodleText;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->initText(Lcn/highlight/lib_doodle/DoodleText;)V

    return-void
.end method

.method static synthetic access$400(Lcn/highlight/work_card_write/activity/ModelActivity;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->showSet(I)V

    return-void
.end method

.method static synthetic access$500(Lcn/highlight/work_card_write/activity/ModelActivity;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->initImage()V

    return-void
.end method

.method private createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V
    .locals 9

    .line 802
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 803
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 804
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v7

    .line 805
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v8

    if-nez p1, :cond_0

    .line 807
    new-instance p1, Lcn/highlight/lib_doodle/DoodleBitmap;

    iget-object v4, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v4}, Lcn/highlight/lib_doodle/IDoodle;->getSize()F

    move-result v6

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcn/highlight/lib_doodle/DoodleBitmap;-><init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/graphics/Bitmap;FFF)V

    .line 808
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p2, p1}, Lcn/highlight/lib_doodle/IDoodle;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 809
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    goto :goto_0

    .line 811
    :cond_0
    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 813
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    return-void
.end method

.method private initBitmap()V
    .locals 3

    .line 248
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/ModelActivity;->initBitmap(Ljava/lang/String;)V

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getWidthBySzie(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    .line 253
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelSize:Ljava/lang/String;

    invoke-static {v1}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getHeightBySzie(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    .line 254
    sget-object v2, Lcn/highlight/work_card_write/Constants;->editCropImage:Landroid/graphics/Bitmap;

    invoke-static {v2, v0, v1}, Lcn/highlight/work_card_write/util/ScaleBitmapUtils;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private initBitmap(Ljava/lang/String;)V
    .locals 9

    .line 259
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelSize:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getWidthBySzie(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    .line 260
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelSize:Ljava/lang/String;

    invoke-static {v1}, Lcn/highlight/work_card_write/util/BadgeSpecificationUtils;->getHeightBySzie(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    .line 261
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->bitmap:Landroid/graphics/Bitmap;

    .line 262
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 263
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 265
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100084

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 p1, -0x1000000

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f10008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p1, "#FFC000"

    .line 268
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f100088

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, -0x10000

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 274
    :goto_0
    invoke-virtual {v8, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    int-to-float v6, v0

    int-to-float v7, v1

    .line 275
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private initImage()V
    .locals 2

    .line 731
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCodeView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 733
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCancel:Landroid/widget/ImageView;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$3L9YSFoG-Wtk07hZaa-SV5E4On0;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$3L9YSFoG-Wtk07hZaa-SV5E4On0;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imagePhoto:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$X66CYCVsURWjzc_9pKNvuk8XJCo;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$X66CYCVsURWjzc_9pKNvuk8XJCo;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageAlbum:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$GR44Fh-2s1enJERzQ9Xu_L5Ecuc;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$GR44Fh-2s1enJERzQ9Xu_L5Ecuc;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 750
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageQrcode:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$IBwvzMfelFfpDLuAOPeCKV_3Ebg;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$IBwvzMfelFfpDLuAOPeCKV_3Ebg;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 773
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageBarCode:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$mVMWSDV3U2CeVqNiidueXS1YJoo;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$mVMWSDV3U2CeVqNiidueXS1YJoo;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initLayout()V
    .locals 7

    .line 280
    iget-object v3, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->bitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    return-void

    .line 281
    :cond_0
    new-instance v6, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;

    const/4 v4, 0x1

    new-instance v5, Lcn/highlight/work_card_write/activity/ModelActivity$1;

    invoke-direct {v5, p0}, Lcn/highlight/work_card_write/activity/ModelActivity$1;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcn/highlight/work_card_write/activity/ModelActivity$DoodleViewWrapper;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;Landroid/content/Context;Landroid/graphics/Bitmap;ZLcn/highlight/lib_doodle/IDoodleListener;)V

    iput-object v6, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    iput-object v6, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    .line 295
    new-instance v0, Lcn/highlight/work_card_write/activity/ModelActivity$3;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    new-instance v2, Lcn/highlight/work_card_write/activity/ModelActivity$2;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/activity/ModelActivity$2;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcn/highlight/work_card_write/activity/ModelActivity$3;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;Lcn/highlight/lib_doodle/DoodleView;Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener$ISelectionListener;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    .line 339
    new-instance v0, Lcn/highlight/lib_doodle/DoodleTouchDetector;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-direct {v0, v1, v2}, Lcn/highlight/lib_doodle/DoodleTouchDetector;-><init>(Landroid/content/Context;Lcn/forward/androids/TouchGestureDetector$IOnTouchGestureListener;)V

    .line 340
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1, v0}, Lcn/highlight/lib_doodle/DoodleView;->setDefaultTouchDetector(Lcn/highlight/lib_doodle/IDoodleTouchDetector;)V

    .line 341
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private initModel()V
    .locals 3

    .line 218
    iget v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelSize:Ljava/lang/String;

    const-string v0, "\u9ed1\u767d\u7ea2\u9ec4"

    .line 224
    iput-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorLinear:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 219
    :cond_1
    :goto_0
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editSize:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelSize:Ljava/lang/String;

    .line 220
    sget-object v0, Lcn/highlight/work_card_write/Constants;->editColor:Ljava/lang/String;

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    .line 221
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    :goto_1
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editSize:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorBlack:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorWhite:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorRed:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorYellow:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    const-string v2, "\u9ed1\u767d"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorBlack:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorWhite:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    :cond_2
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    const-string v2, "\u7ea2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorRed:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    :cond_3
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    const-string v2, "\u9ec4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 240
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->editColorYellow:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private initText(Lcn/highlight/lib_doodle/DoodleText;)V
    .locals 11

    .line 538
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 539
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 540
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Lcn/highlight/lib_doodle/DoodleView;->toX(F)F

    move-result v6

    .line 541
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodleView:Lcn/highlight/lib_doodle/DoodleView;

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/highlight/lib_doodle/DoodleView;->toY(F)F

    move-result v7

    .line 543
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textTabLayout:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout$Tab;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->select()V

    .line 544
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textEditView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleText;->getText1()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    new-instance v2, Lcn/highlight/work_card_write/activity/ModelActivity$4;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/activity/ModelActivity$4;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 580
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontView:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 581
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "\u9ed8\u8ba4"

    invoke-direct {v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 582
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v3, 0x4

    invoke-direct {v0, p0, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 583
    iget-object v3, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 584
    new-instance v0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontAdapter:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

    .line 585
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontAdapter:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    invoke-static {}, Lcn/highlight/work_card_write/sp/ConfigSp;->getLang()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v9, 0xca9

    const/4 v10, 0x1

    if-eq v5, v9, :cond_2

    const/16 v9, 0xf2e

    if-eq v5, v9, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "zh"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const-string v5, "en"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    :cond_3
    :goto_1
    const v3, 0x7f1000a1

    if-eqz v4, :cond_5

    if-eq v4, v10, :cond_4

    goto :goto_2

    .line 596
    :cond_4
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "\u9ed1\u4f53"

    .line 597
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "\u6977\u4f53"

    .line 598
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "\u5b8b\u4f53"

    .line 599
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 590
    :cond_5
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "Roboto"

    .line 591
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "OpenSans"

    .line 592
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "NanumGothic"

    .line 593
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    :goto_2
    iget-object v3, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontAdapter:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

    invoke-virtual {v3, v0}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->setDataList(Ljava/util/List;)V

    .line 603
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontAdapter:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

    new-instance v3, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$DgmPml3NQQUbgzsJbNzVOifpmE8;

    invoke-direct {v3, p0, v8}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$DgmPml3NQQUbgzsJbNzVOifpmE8;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v3}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->setOnClickSelectViewTextFont(Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$OnClickSelectViewTextFont;)V

    .line 609
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 610
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 611
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 612
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 613
    new-instance v0, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->styleAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

    .line 614
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->styleAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    const-string v2, "\u9ed1\u767d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "\u9ed1\u8272"

    .line 617
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "\u767d\u8272"

    .line 618
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_6
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    const-string v2, "\u7ea2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "\u7ea2\u8272"

    .line 621
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    :cond_7
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    const-string v2, "\u9ec4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "\u9ec4\u8272"

    .line 624
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_8
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->styleAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

    invoke-virtual {v1, v0}, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->setDataList(Ljava/util/List;)V

    .line 627
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->styleAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$nUFjcDwVr913soWHTpJND2kMtos;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$nUFjcDwVr913soWHTpJND2kMtos;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter$OnClickSelectViewBg;)V

    .line 631
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcn/highlight/work_card_write/activity/ModelActivity$5;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/ModelActivity$5;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 649
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textTabLayout:Lcom/google/android/material/tabs/TabLayout;

    new-instance v1, Lcn/highlight/work_card_write/activity/ModelActivity$6;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/ModelActivity$6;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 680
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textCancel:Landroid/widget/ImageView;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$9vQLxFbiuct0LSTivUcaH3devmQ;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$9vQLxFbiuct0LSTivUcaH3devmQ;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 686
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textSure:Landroid/widget/ImageView;

    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qj1t-szWK1WxPZv0nuLi0xTrW-A;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;Lcn/highlight/lib_doodle/DoodleText;FFLjava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initTheme()V
    .locals 4

    .line 479
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 480
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 481
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->bgRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 482
    new-instance v0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;-><init>(Landroid/content/Context;)V

    .line 483
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->bgRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    const-string v3, "\u9ed1\u767d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100089

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_0
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    const-string v3, "\u7ea2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_1
    iget-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->modelColor:Ljava/lang/String;

    const-string v3, "\u9ec4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_2
    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->setDataList(Ljava/util/List;)V

    .line 496
    new-instance v1, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$xVqGGThkXIAgu4Kj9vop37NJFHU;

    invoke-direct {v1, v0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$xVqGGThkXIAgu4Kj9vop37NJFHU;-><init>(Lcn/highlight/work_card_write/adapter/ModelBgAdapter;)V

    invoke-virtual {v0, v1}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->setOnClickSelectViewBG(Lcn/highlight/work_card_write/adapter/ModelBgAdapter$OnClickSelectViewBg;)V

    .line 501
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->bgCancel:Landroid/widget/ImageView;

    new-instance v2, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$IxzJVl1A5Oh-gYax5QRX_trrYyM;

    invoke-direct {v2, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$IxzJVl1A5Oh-gYax5QRX_trrYyM;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->bgSure:Landroid/widget/ImageView;

    new-instance v2, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$WwdSxyMlNOnKjA_9Y-R3q8nC2ag;

    invoke-direct {v2, p0, v0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$WwdSxyMlNOnKjA_9Y-R3q8nC2ag;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;Lcn/highlight/work_card_write/adapter/ModelBgAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic lambda$initTheme$1(Lcn/highlight/work_card_write/adapter/ModelBgAdapter;Ljava/lang/String;)V
    .locals 0

    .line 497
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->type:Ljava/lang/String;

    .line 498
    invoke-virtual {p0}, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$showTipDialog$4(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 522
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private showSet(I)V
    .locals 2

    .line 396
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSet:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetBg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 398
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetText:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetImage:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetImage:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetText:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 405
    :cond_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSetBg:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 402
    :cond_3
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mainSet:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private showTipDialog(Ljava/lang/String;)V
    .locals 5

    .line 514
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0057

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0902b5

    .line 515
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v1, 0x7f09008c

    .line 516
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f09008e

    .line 517
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 518
    new-instance v3, Landroid/app/Dialog;

    const v4, 0x7f1100ca

    invoke-direct {v3, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 519
    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 520
    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 521
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 522
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$e_18ddNj8PPpfDbC4jRlh0H4ebY;

    invoke-direct {v0, v3}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$e_18ddNj8PPpfDbC4jRlh0H4ebY;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI;

    invoke-direct {v0, p0, v3, p1}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$cJxOgJ9KAVivS6g-mPSJrZExgDI;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected initData()V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->type:I

    .line 209
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->initModel()V

    .line 210
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->initBitmap()V

    .line 211
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->initLayout()V

    return-void
.end method

.method protected initViews(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public synthetic lambda$initImage$10$ModelActivity(Landroid/view/View;)V
    .locals 0

    .line 734
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    const/4 p1, 0x0

    .line 735
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->showSet(I)V

    return-void
.end method

.method public synthetic lambda$initImage$11$ModelActivity(Landroid/view/View;)V
    .locals 2

    .line 739
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/16 v1, 0x8

    .line 740
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/ModelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$initImage$12$ModelActivity(Landroid/view/View;)V
    .locals 2

    .line 745
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/highlight/work_card_write/activity/PhotoTakeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "type"

    const/16 v1, 0x9

    .line 746
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, p1, v0}, Lcn/highlight/work_card_write/activity/ModelActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public synthetic lambda$initImage$15$ModelActivity(Landroid/view/View;)V
    .locals 2

    .line 751
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCodeView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 752
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 753
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeCancel:Landroid/widget/ImageView;

    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qTSGH3qullb_BDH-E_2bnf5OfGM;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$qTSGH3qullb_BDH-E_2bnf5OfGM;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 759
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeSure:Landroid/widget/ImageView;

    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$75u5cZPfFuR1Fzphe4ytYl24uug;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$75u5cZPfFuR1Fzphe4ytYl24uug;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initImage$18$ModelActivity(Landroid/view/View;)V
    .locals 2

    .line 774
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCodeView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 775
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    const/16 v0, 0x91

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 776
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 777
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeCancel:Landroid/widget/ImageView;

    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$uqch7xhECTTraPaDbn06Gc2XDiM;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$uqch7xhECTTraPaDbn06Gc2XDiM;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeSure:Landroid/widget/ImageView;

    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$ODO6hnvQlyCdSHC07gHNchT3oTc;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$ODO6hnvQlyCdSHC07gHNchT3oTc;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initText$6$ModelActivity(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;)V
    .locals 1

    .line 604
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontAdapter:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

    iput-object p2, v0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->type:Ljava/lang/String;

    .line 605
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 606
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textFontAdapter:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

    invoke-virtual {p1}, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$initText$7$ModelActivity(Ljava/lang/String;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->styleAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

    iput-object p1, v0, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->type:Ljava/lang/String;

    .line 629
    invoke-virtual {v0}, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public synthetic lambda$initText$8$ModelActivity(Landroid/view/View;)V
    .locals 0

    .line 681
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    const/4 p1, 0x0

    .line 682
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->showSet(I)V

    .line 683
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->hideSoftKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initText$9$ModelActivity(Lcn/highlight/lib_doodle/DoodleText;FFLjava/util/concurrent/atomic/AtomicReference;Landroid/view/View;)V
    .locals 8

    .line 687
    iget-object p5, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 688
    iget-object p5, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textStyleSeekBarProgress:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    .line 689
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->styleAdapter:Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

    iget-object v0, v0, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;->type:Ljava/lang/String;

    .line 691
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, 0xfd810

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eq v1, v3, :cond_2

    const v3, 0x13bc2e

    if-eq v1, v3, :cond_1

    const v3, 0x13bdc1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\u9ed1\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "\u9ec4\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "\u7ea2\u8272"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "#FFC000"

    .line 699
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    :cond_5
    const/high16 v6, -0x10000

    goto :goto_2

    :cond_6
    const/high16 v6, -0x1000000

    .line 704
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_8

    .line 706
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    new-instance v0, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-direct {v0, v6}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 707
    new-instance p1, Lcn/highlight/lib_doodle/DoodleText;

    iget-object v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->MIN_TEXT_SIZE:I

    add-int/2addr v0, p5

    int-to-float v3, v0

    invoke-interface {v1}, Lcn/highlight/lib_doodle/IDoodle;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v0

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodleColor;->copy()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v4

    move-object v0, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcn/highlight/lib_doodle/DoodleText;-><init>(Lcn/highlight/lib_doodle/IDoodle;Ljava/lang/String;FLcn/highlight/lib_doodle/IDoodleColor;FF)V

    .line 708
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p2, p1}, Lcn/highlight/lib_doodle/IDoodle;->addItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 709
    iget-object p2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p2, p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    goto :goto_3

    .line 711
    :cond_8
    invoke-virtual {p1, v2}, Lcn/highlight/lib_doodle/DoodleText;->setText1(Ljava/lang/String;)V

    .line 712
    new-instance p2, Lcn/highlight/lib_doodle/DoodleColor;

    invoke-direct {p2, v6}, Lcn/highlight/lib_doodle/DoodleColor;-><init>(I)V

    invoke-virtual {p1, p2}, Lcn/highlight/lib_doodle/DoodleText;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 714
    :goto_3
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Lcn/highlight/lib_doodle/DoodleText;

    if-eqz p1, :cond_9

    .line 715
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Lcn/highlight/lib_doodle/DoodleText;

    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Lcn/highlight/lib_doodle/DoodleText;->setTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 716
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    iget p2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->MIN_TEXT_SIZE:I

    add-int/2addr p5, p2

    int-to-float p2, p5

    invoke-interface {p1, p2}, Lcn/highlight/lib_doodle/IDoodleSelectableItem;->setSize(F)V

    .line 718
    :cond_9
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    .line 719
    invoke-direct {p0, v7}, Lcn/highlight/work_card_write/activity/ModelActivity;->showSet(I)V

    .line 720
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->hideSoftKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initTheme$2$ModelActivity(Landroid/view/View;)V
    .locals 0

    .line 502
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->refresh()V

    const/4 p1, 0x0

    .line 503
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->showSet(I)V

    return-void
.end method

.method public synthetic lambda$initTheme$3$ModelActivity(Lcn/highlight/work_card_write/adapter/ModelBgAdapter;Landroid/view/View;)V
    .locals 0

    .line 506
    iget-object p1, p1, Lcn/highlight/work_card_write/adapter/ModelBgAdapter;->type:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->showTipDialog(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$13$ModelActivity(Landroid/view/View;)V
    .locals 1

    .line 756
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCodeView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 757
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->hideSoftKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$null$14$ModelActivity(Landroid/view/View;)V
    .locals 3

    .line 760
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 761
    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 762
    :cond_0
    iget v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->MIN_BITMAP_SIZE:I

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    invoke-static {p1, v0, v1, v2}, Lcn/highlight/core/utils/CodeUtils;->generateQRCodeWithoutMargin(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 763
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz v0, :cond_1

    .line 764
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-direct {p0, v0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 766
    invoke-direct {p0, v0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    .line 768
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCodeView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 769
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->hideSoftKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$null$16$ModelActivity(Landroid/view/View;)V
    .locals 1

    .line 779
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCodeView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 780
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->hideSoftKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$null$17$ModelActivity(Landroid/view/View;)V
    .locals 4

    .line 783
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 784
    invoke-static {p1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 785
    :cond_0
    iget v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->MIN_BITMAP_SIZE:I

    mul-int/lit8 v1, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    const/4 v2, -0x1

    const/high16 v3, -0x1000000

    invoke-static {p1, v1, v0, v2, v3}, Lcn/highlight/core/utils/CodeUtils;->generateBarcodeWithoutMargin(Ljava/lang/String;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 786
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz v0, :cond_1

    .line 787
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-direct {p0, v0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 789
    invoke-direct {p0, v0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    .line 791
    :goto_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->imageCodeView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 792
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->codeText:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->hideSoftKeyBoard(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$onViewClicked$0$ModelActivity()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {v0}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcn/highlight/work_card_write/Constants;->editModelImage:Landroid/graphics/Bitmap;

    .line 435
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/highlight/work_card_write/activity/WriteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    iget v1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->type:I

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v0}, Lcn/highlight/work_card_write/activity/ModelActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic lambda$showTipDialog$5$ModelActivity(Landroid/app/Dialog;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 524
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 525
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 526
    invoke-direct {p0, p2}, Lcn/highlight/work_card_write/activity/ModelActivity;->initBitmap(Ljava/lang/String;)V

    .line 527
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->initLayout()V

    const/4 p1, 0x0

    .line 528
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->showSet(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 818
    invoke-super {p0, p1, p2, p3}, Lcn/highlight/work_card_write/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "imageFile"

    .line 821
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 822
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {v0, v1}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 823
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    instance-of v0, v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/DoodleBitmap;

    invoke-direct {p0, v0, p2}, Lcn/highlight/work_card_write/activity/ModelActivity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 826
    invoke-direct {p0, v0, p2}, Lcn/highlight/work_card_write/activity/ModelActivity;->createDoodleBitmap(Lcn/highlight/lib_doodle/DoodleBitmap;Landroid/graphics/Bitmap;)V

    .line 828
    :goto_0
    new-instance p2, Ljava/io/File;

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 830
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    .line 831
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deleteTakePhoto: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TAG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f09014d,
            0x7f09013e,
            0x7f090141,
            0x7f0902bc,
            0x7f090144,
            0x7f09013f,
            0x7f090140,
            0x7f09022e,
            0x7f090230,
            0x7f09022f
        }
    .end annotation

    .line 420
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090144

    if-eq p1, v0, :cond_2

    const v0, 0x7f09014d

    if-eq p1, v0, :cond_1

    const v0, 0x7f0902bc

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 463
    :pswitch_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 464
    invoke-direct {p0, v1}, Lcn/highlight/work_card_write/activity/ModelActivity;->initText(Lcn/highlight/lib_doodle/DoodleText;)V

    const/4 p1, 0x2

    .line 465
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->showSet(I)V

    goto/16 :goto_0

    .line 468
    :pswitch_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BITMAP:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 469
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->initImage()V

    const/4 p1, 0x3

    .line 470
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/activity/ModelActivity;->showSet(I)V

    goto/16 :goto_0

    .line 458
    :pswitch_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v1, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v1}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 459
    invoke-direct {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->initTheme()V

    .line 460
    invoke-direct {p0, v0}, Lcn/highlight/work_card_write/activity/ModelActivity;->showSet(I)V

    goto/16 :goto_0

    .line 428
    :pswitch_3
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->redo(I)Z

    goto/16 :goto_0

    .line 451
    :pswitch_4
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 452
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->getAllRedoItem(Z)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v2}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 453
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->removeItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    .line 454
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    goto :goto_0

    .line 446
    :pswitch_5
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 447
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->bottomItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    goto :goto_0

    .line 425
    :pswitch_6
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->undo()Z

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1, v1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->setSelectedItem(Lcn/highlight/lib_doodle/IDoodleSelectableItem;)V

    .line 432
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    sget-object v0, Lcn/highlight/lib_doodle/DoodlePen;->BRUSH:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 433
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$8H3ajCQftxDUPlWgdvUhA5ftiDw;

    invoke-direct {v0, p0}, Lcn/highlight/work_card_write/activity/-$$Lambda$ModelActivity$8H3ajCQftxDUPlWgdvUhA5ftiDw;-><init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcn/highlight/work_card_write/activity/ModelActivity;->finishActivity()V

    goto :goto_0

    .line 441
    :cond_2
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 442
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mDoodle:Lcn/highlight/lib_doodle/IDoodle;

    iget-object v0, p0, Lcn/highlight/work_card_write/activity/ModelActivity;->mTouchGestureListener:Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleOnTouchGestureListener;->getSelectedItem()Lcn/highlight/lib_doodle/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/highlight/lib_doodle/IDoodle;->topItem(Lcn/highlight/lib_doodle/IDoodleItem;)V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09013e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f09022e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setLayoutId()I
    .locals 1

    const v0, 0x7f0c0029

    return v0
.end method
