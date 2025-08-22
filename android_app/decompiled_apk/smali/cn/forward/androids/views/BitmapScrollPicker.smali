.class public Lcn/forward/androids/views/BitmapScrollPicker;
.super Lcn/forward/androids/views/ScrollPickerView;
.source "BitmapScrollPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/forward/androids/views/ScrollPickerView<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final DRAW_MODE_CENTER:I = 0x2

.field public static final DRAW_MODE_FULL:I = 0x1

.field public static final DRAW_MODE_SPECIFIED_SIZE:I = 0x3


# instance fields
.field private mDrawMode:I

.field private mMaxScale:F

.field private mMeasureHeight:I

.field private mMeasureWidth:I

.field private mMinScale:F

.field private mRect1:Landroid/graphics/Rect;

.field private mRect2:Landroid/graphics/Rect;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mSpecifiedSizeHeight:I

.field private mSpecifiedSizeRect:Landroid/graphics/Rect;

.field private mSpecifiedSizeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcn/forward/androids/views/BitmapScrollPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcn/forward/androids/views/ScrollPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 39
    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mDrawMode:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 42
    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    .line 43
    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    const/4 p1, -0x1

    .line 256
    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    .line 257
    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    .line 54
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    .line 56
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    .line 58
    invoke-direct {p0, p2}, Lcn/forward/androids/views/BitmapScrollPicker;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/R$styleable;->BitmapScrollPicker:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    sget v0, Lcn/forward/androids/R$styleable;->BitmapScrollPicker_spv_draw_bitmap_mode:I

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mDrawMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mDrawMode:I

    .line 67
    sget v0, Lcn/forward/androids/R$styleable;->BitmapScrollPicker_spv_draw_bitmap_width:I

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    .line 69
    sget v0, Lcn/forward/androids/R$styleable;->BitmapScrollPicker_spv_draw_bitmap_height:I

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    .line 71
    sget v0, Lcn/forward/androids/R$styleable;->BitmapScrollPicker_spv_min_scale:I

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    .line 72
    sget v0, Lcn/forward/androids/R$styleable;->BitmapScrollPicker_spv_max_scale:I

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    .line 73
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private scale(Landroid/graphics/Rect;IIF)V
    .locals 4

    .line 178
    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 184
    :cond_0
    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float p3, p3, p4

    sub-float/2addr p2, p3

    div-float/2addr p2, v2

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float p4, p4, v0

    sub-float/2addr p3, p4

    div-float/2addr p3, v2

    .line 187
    iget p4, p1, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    add-float/2addr p4, p2

    float-to-int p4, p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 188
    iget p4, p1, Landroid/graphics/Rect;->right:I

    int-to-float p4, p4

    sub-float/2addr p4, p2

    float-to-int p2, p4

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 189
    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 190
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    int-to-float p2, p3

    .line 206
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float p3, p2, p3

    div-float/2addr p3, p2

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget p4, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    sub-float/2addr v0, p4

    mul-float v0, v0, p3

    add-float/2addr p4, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float p4, p4, v0

    sub-float/2addr p2, p4

    div-float/2addr p2, v2

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float v0, v0, p3

    sub-float/2addr p4, v0

    div-float/2addr p4, v2

    goto/16 :goto_2

    .line 210
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float p3, p3, p4

    sub-float/2addr p2, p3

    div-float/2addr p2, v2

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x0

    if-ne p2, v1, :cond_5

    cmpg-float v1, p4, v3

    if-ltz v1, :cond_6

    :cond_5
    if-ne p2, v0, :cond_7

    cmpl-float p2, p4, v3

    if-lez p2, :cond_7

    .line 198
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float p3, p3, p4

    sub-float/2addr p2, p3

    div-float/2addr p2, v2

    .line 199
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    mul-float p4, p4, v0

    sub-float/2addr p3, p4

    div-float p4, p3, v2

    goto :goto_2

    .line 201
    :cond_7
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    sub-float/2addr v0, p4

    mul-float v0, v0, p2

    add-float/2addr p4, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float p4, p4, v0

    sub-float/2addr p3, p4

    div-float/2addr p3, v2

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    sub-float/2addr v1, v0

    mul-float v1, v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float v0, v0, p2

    sub-float/2addr p4, v0

    div-float/2addr p4, v2

    move p2, p3

    .line 214
    :goto_2
    iget p3, p1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    add-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 215
    iget p3, p1, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    sub-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 216
    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 217
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    sub-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;IIFF)V"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->getItemSize()I

    move-result v0

    .line 117
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 119
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 120
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 127
    iget p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mDrawMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    const/4 p3, 0x0

    .line 129
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    float-to-int v3, p6

    add-int/2addr v3, p3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    add-float/2addr p6, v3

    int-to-float p3, p3

    sub-float/2addr p6, p3

    float-to-int p3, p6

    .line 131
    iput p3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 133
    :cond_0
    iget-object v2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    float-to-int v3, p6

    add-int/2addr v3, p3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    add-float/2addr p6, v3

    int-to-float p3, p3

    sub-float/2addr p6, p3

    float-to-int p3, p6

    .line 134
    iput p3, v2, Landroid/graphics/Rect;->bottom:I

    .line 136
    :goto_0
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    iget-object p6, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {p3, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 137
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0, p5}, Lcn/forward/androids/views/BitmapScrollPicker;->scale(Landroid/graphics/Rect;IIF)V

    .line 138
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    iget-object p4, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    .line 140
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 141
    iget p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    sub-int v2, v0, p3

    div-int/lit8 v2, v2, 0x2

    .line 143
    iget-object v3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    float-to-int p6, p6

    add-int/2addr p6, v2

    iput p6, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr p6, p3

    .line 144
    iput p6, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 146
    :cond_2
    iget p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    sub-int v2, v0, p3

    div-int/lit8 v2, v2, 0x2

    .line 148
    iget-object v3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    float-to-int p6, p6

    add-int/2addr p6, v2

    iput p6, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p6, p3

    .line 149
    iput p6, v3, Landroid/graphics/Rect;->bottom:I

    .line 151
    :goto_1
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    iget-object p6, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 152
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0, p5}, Lcn/forward/androids/views/BitmapScrollPicker;->scale(Landroid/graphics/Rect;IIF)V

    .line 153
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    iget-object p4, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 155
    :cond_3
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_4

    .line 156
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    int-to-float v3, v0

    .line 157
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_2

    .line 159
    :cond_4
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    mul-float p3, p3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    int-to-float v3, v0

    .line 160
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :goto_2
    int-to-float v4, v4

    mul-float v4, v4, p3

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int p3, v3

    .line 162
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    int-to-float p3, p3

    add-float v3, p6, p3

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    add-float/2addr p6, v3

    sub-float/2addr p6, p3

    float-to-int p3, p6

    .line 164
    iput p3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 167
    :cond_5
    iget-object v2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    int-to-float p3, p3

    add-float v3, p6, p3

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    add-float/2addr p6, v3

    sub-float/2addr p6, p3

    float-to-int p3, p6

    .line 168
    iput p3, v2, Landroid/graphics/Rect;->bottom:I

    .line 170
    :goto_3
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    iget-object p6, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {p3, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 171
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0, p5}, Lcn/forward/androids/views/BitmapScrollPicker;->scale(Landroid/graphics/Rect;IIF)V

    .line 172
    iget-object p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    iget-object p4, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_4
    return-void
.end method

.method public getDrawMode()I
    .locals 1

    .line 278
    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mDrawMode:I

    return v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 298
    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 294
    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Lcn/forward/androids/views/ScrollPickerView;->onSizeChanged(IIII)V

    .line 80
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureWidth:I

    .line 81
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureHeight:I

    .line 83
    iget p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mDrawMode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 84
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 86
    iget p2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureHeight:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 88
    :cond_0
    iget-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 89
    iget p2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureWidth:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 92
    iget p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 93
    iget p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureWidth:I

    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    .line 94
    iget p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureHeight:I

    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    .line 96
    :cond_2
    iget p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    iget p2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    invoke-virtual {p0, p1, p2}, Lcn/forward/androids/views/BitmapScrollPicker;->setDrawModeSpecifiedSize(II)V

    goto :goto_1

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 100
    iget p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureHeight:I

    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->getItemWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 102
    :cond_4
    iget p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureWidth:I

    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->getItemHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 105
    iget-object p2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureHeight:I

    div-int/lit8 p4, p3, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    iput p4, p2, Landroid/graphics/Rect;->top:I

    .line 106
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 108
    :cond_5
    iget-object p2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget p3, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureWidth:I

    div-int/lit8 p4, p3, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p4, p1

    iput p4, p2, Landroid/graphics/Rect;->left:I

    .line 109
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->right:I

    :goto_1
    return-void
.end method

.method public setDrawMode(I)V
    .locals 3

    .line 228
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureHeight:I

    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->getItemWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 231
    :cond_0
    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureWidth:I

    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->getItemHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 233
    :goto_0
    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mDrawMode:I

    .line 234
    iget p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mDrawMode:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 235
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 236
    iget-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 237
    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 239
    :cond_1
    iget-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 240
    iget v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 245
    :cond_3
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 246
    iget-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureHeight:I

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 247
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 249
    :cond_4
    iget-object p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureWidth:I

    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 250
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 253
    :goto_1
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->invalidate()V

    return-void
.end method

.method public setDrawModeSpecifiedSize(II)V
    .locals 3

    .line 260
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureHeight:I

    sub-int v2, v1, p2

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    .line 262
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMeasureWidth:I

    sub-int v2, v1, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, p1

    .line 265
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 267
    :goto_0
    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    .line 268
    iput p2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    .line 269
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->invalidate()V

    return-void
.end method

.method public setItemScale(FF)V
    .locals 0

    .line 288
    iput p1, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMinScale:F

    .line 289
    iput p2, p0, Lcn/forward/androids/views/BitmapScrollPicker;->mMaxScale:F

    .line 290
    invoke-virtual {p0}, Lcn/forward/androids/views/BitmapScrollPicker;->invalidate()V

    return-void
.end method
