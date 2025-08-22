.class public Lcn/highlight/lib_doodle/DoodleText;
.super Lcn/highlight/lib_doodle/DoodleRotatableItemBase;
.source "DoodleText.java"


# instance fields
.field private bgColor:I

.field private final mBgPaint:Landroid/graphics/Paint;

.field private mBold:I

.field private mItalic:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mText0:Ljava/lang/String;

.field private mText1:Ljava/lang/String;

.field private mTextStyle:Ljava/lang/String;

.field private mUnderline:I


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLcn/highlight/lib_doodle/IDoodleColor;FF)V
    .locals 1

    .line 41
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleRotation()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p12, p13}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mBgPaint:Landroid/graphics/Paint;

    .line 42
    sget-object p1, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 43
    iput-object p3, p0, Lcn/highlight/lib_doodle/DoodleText;->mText0:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    .line 45
    iput p7, p0, Lcn/highlight/lib_doodle/DoodleText;->mBold:I

    .line 46
    iput p8, p0, Lcn/highlight/lib_doodle/DoodleText;->mItalic:I

    .line 47
    iput p9, p0, Lcn/highlight/lib_doodle/DoodleText;->mUnderline:I

    .line 48
    invoke-virtual {p0, p10}, Lcn/highlight/lib_doodle/DoodleText;->setSize(F)V

    .line 49
    invoke-virtual {p0, p11}, Lcn/highlight/lib_doodle/DoodleText;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 50
    invoke-virtual {p0, p12, p13}, Lcn/highlight/lib_doodle/DoodleText;->setLocation(FF)V

    .line 51
    invoke-virtual {p0, p2, p5}, Lcn/highlight/lib_doodle/DoodleText;->setTypeface(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, p6}, Lcn/highlight/lib_doodle/DoodleText;->setBgColor(I)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/lib_doodle/IDoodle;Ljava/lang/String;FLcn/highlight/lib_doodle/IDoodleColor;FF)V
    .locals 1

    .line 31
    invoke-interface {p1}, Lcn/highlight/lib_doodle/IDoodle;->getDoodleRotation()I

    move-result v0

    neg-int v0, v0

    invoke-direct {p0, p1, v0, p5, p6}, Lcn/highlight/lib_doodle/DoodleRotatableItemBase;-><init>(Lcn/highlight/lib_doodle/IDoodle;IFF)V

    .line 19
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    .line 20
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    .line 21
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mBgPaint:Landroid/graphics/Paint;

    .line 32
    sget-object p1, Lcn/highlight/lib_doodle/DoodlePen;->TEXT:Lcn/highlight/lib_doodle/DoodlePen;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->setPen(Lcn/highlight/lib_doodle/IDoodlePen;)V

    .line 33
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleText;->mText0:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    .line 35
    invoke-virtual {p0, p3}, Lcn/highlight/lib_doodle/DoodleText;->setSize(F)V

    .line 36
    invoke-virtual {p0, p4}, Lcn/highlight/lib_doodle/DoodleText;->setColor(Lcn/highlight/lib_doodle/IDoodleColor;)V

    .line 37
    invoke-virtual {p0, p5, p6}, Lcn/highlight/lib_doodle/DoodleText;->setLocation(FF)V

    return-void
.end method


# virtual methods
.method public doDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 206
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcn/highlight/lib_doodle/DoodleText;->bgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 208
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mBgPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 209
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getColor()Lcn/highlight/lib_doodle/IDoodleColor;

    move-result-object v0

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p0, v2}, Lcn/highlight/lib_doodle/IDoodleColor;->config(Lcn/highlight/lib_doodle/IDoodleItem;Landroid/graphics/Paint;)V

    .line 212
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getSize()F

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 213
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 214
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mBold:I

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 220
    :goto_0
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mItalic:I

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    const v2, -0x41b33333

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    goto :goto_1

    .line 223
    :cond_1
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 225
    :goto_1
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mUnderline:I

    if-eqz v0, :cond_2

    .line 226
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    goto :goto_2

    .line 228
    :cond_2
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 230
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 231
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getScale()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 234
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v8, 0x40400000    # 3.0f

    if-eqz v0, :cond_7

    .line 236
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 240
    array-length v1, v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    aget-object v4, v9, v2

    .line 241
    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v4, v6, v11, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 242
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 243
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 245
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v4, v10, :cond_4

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    move v10, v4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 250
    :cond_5
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    add-int/lit8 v3, v3, 0x1e

    int-to-float v3, v3

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleText;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1e

    int-to-float v0, v10

    .line 252
    array-length v1, v9

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    sub-float v1, v7, v1

    .line 254
    array-length v2, v9

    :goto_4
    if-ge v6, v2, :cond_9

    aget-object v3, v9, v6

    .line 256
    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 258
    iget v4, p0, Lcn/highlight/lib_doodle/DoodleText;->mBold:I

    if-eqz v4, :cond_6

    .line 259
    new-instance v4, Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 260
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 262
    invoke-virtual {p1, v3, v7, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_6
    add-float/2addr v1, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 278
    :cond_7
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    invoke-static {v0}, Lcn/highlight/lib_doodle/Tools;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 279
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcn/highlight/lib_doodle/DoodleText;->mBgPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 282
    :cond_8
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v2, v7, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mBold:I

    if-eqz v0, :cond_9

    .line 285
    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 286
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 288
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 291
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getBgColor()I
    .locals 1

    .line 77
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleText;->bgColor:I

    return v0
.end method

.method public getBold()I
    .locals 1

    .line 102
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mBold:I

    return v0
.end method

.method public getItalic()I
    .locals 1

    .line 112
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mItalic:I

    return v0
.end method

.method public getMaxHeight(Ljava/lang/String;)I
    .locals 8

    .line 152
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const-string v1, "\n"

    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 155
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v5, p1, v2

    .line 156
    iget-object v6, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v5, v3, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 157
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_1
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    :cond_2
    return v4
.end method

.method public getMaxWidth(Ljava/lang/String;)I
    .locals 8

    .line 134
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const-string v1, "\n"

    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 137
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v5, p1, v2

    .line 138
    iget-object v6, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v5, v3, v7, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 139
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 145
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    :cond_2
    return v4
.end method

.method public getText0()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mText0:Ljava/lang/String;

    return-object v0
.end method

.method public getText1()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mTextStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getUnderline()I
    .locals 1

    .line 122
    iget v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mUnderline:I

    return v0
.end method

.method public resetBounds(Landroid/graphics/Rect;)V
    .locals 10

    .line 170
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 174
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 177
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 179
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 182
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v7, v0, v4

    .line 183
    iget-object v8, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v7, v3, v9, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 184
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 185
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 187
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v6, :cond_2

    .line 188
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 192
    :cond_3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x1e

    .line 193
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, -0x14

    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, -0x5

    add-int/lit8 v5, v5, 0x1e

    array-length v7, v0

    mul-int v6, v6, v7

    add-int/2addr v6, v1

    invoke-virtual {p1, v2, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/lit8 v1, v1, -0x64

    array-length v0, v0

    div-int/2addr v1, v0

    invoke-virtual {p1, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void

    .line 198
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x14

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x5

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1e

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x12

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public setBgColor(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleText;->bgColor:I

    .line 82
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->resetBounds(Landroid/graphics/Rect;)V

    .line 83
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->refresh()V

    return-void
.end method

.method public setBold(I)V
    .locals 0

    .line 106
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mBold:I

    .line 107
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->resetBounds(Landroid/graphics/Rect;)V

    .line 108
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->refresh()V

    return-void
.end method

.method public setItalic(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mItalic:I

    .line 117
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->resetBounds(Landroid/graphics/Rect;)V

    .line 118
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->refresh()V

    return-void
.end method

.method public setText0(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mText0:Ljava/lang/String;

    return-void
.end method

.method public setText1(Ljava/lang/String;)V
    .locals 1

    .line 68
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mText1:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->resetBounds(Landroid/graphics/Rect;)V

    .line 70
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->setPivotX(F)V

    .line 71
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->setPivotY(F)V

    .line 72
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->resetBoundsScaled(Landroid/graphics/Rect;)V

    .line 73
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->refresh()V

    return-void
.end method

.method public setTypeface(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p2, p0, Lcn/highlight/lib_doodle/DoodleText;->mTextStyle:Ljava/lang/String;

    .line 92
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleText;->mTextStyle:Ljava/lang/String;

    invoke-static {p1, p2}, Lcn/highlight/lib_doodle/ViewEditUtil;->getViewTextFont(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 93
    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleText;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 94
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->resetBounds(Landroid/graphics/Rect;)V

    .line 95
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->setPivotX(F)V

    .line 96
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getLocation()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object p2, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->setPivotY(F)V

    .line 97
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->resetBoundsScaled(Landroid/graphics/Rect;)V

    .line 98
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->refresh()V

    return-void
.end method

.method public setUnderline(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mUnderline:I

    .line 127
    iget-object p1, p0, Lcn/highlight/lib_doodle/DoodleText;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->resetBounds(Landroid/graphics/Rect;)V

    .line 128
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/highlight/lib_doodle/DoodleText;->resetBoundsScaled(Landroid/graphics/Rect;)V

    .line 129
    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleText;->refresh()V

    return-void
.end method
