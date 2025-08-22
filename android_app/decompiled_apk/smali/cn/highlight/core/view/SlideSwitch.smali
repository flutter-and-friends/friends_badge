.class public Lcn/highlight/core/view/SlideSwitch;
.super Landroid/view/View;
.source "SlideSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/core/view/SlideSwitch$SlideListener;
    }
.end annotation


# static fields
.field private static final COLOR_THEME:I

.field private static final RIM_SIZE:I = 0x3

.field public static final SHAPE_CIRCLE:I = 0x2

.field public static final SHAPE_RECT:I = 0x1


# instance fields
.field private alpha:I

.field private backRect:Landroid/graphics/Rect;

.field private color_theme:I

.field private diffX:I

.field private eventLastX:I

.field private eventStartX:I

.field private frontRect:Landroid/graphics/Rect;

.field private frontRect_left:I

.field private frontRect_left_begin:I

.field private isOpen:Z

.field private listener:Lcn/highlight/core/view/SlideSwitch$SlideListener;

.field private max_left:I

.field private min_left:I

.field private paint:Landroid/graphics/Paint;

.field private shape:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#ff00ee00"

    .line 27
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcn/highlight/core/view/SlideSwitch;->COLOR_THEME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcn/highlight/core/view/SlideSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Lcn/highlight/core/view/SlideSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x3

    .line 40
    iput p3, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left_begin:I

    const/4 p3, 0x0

    .line 43
    iput p3, p0, Lcn/highlight/core/view/SlideSwitch;->diffX:I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->listener:Lcn/highlight/core/view/SlideSwitch$SlideListener;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 58
    sget-object v0, Lcn/highlight/core/R$styleable;->slideswitch:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcn/highlight/core/R$styleable;->slideswitch_themeColor:I

    sget v0, Lcn/highlight/core/view/SlideSwitch;->COLOR_THEME:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcn/highlight/core/view/SlideSwitch;->color_theme:I

    .line 62
    sget p2, Lcn/highlight/core/R$styleable;->slideswitch_isOpen:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcn/highlight/core/view/SlideSwitch;->isOpen:Z

    .line 63
    sget p2, Lcn/highlight/core/R$styleable;->slideswitch_shape:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcn/highlight/core/view/SlideSwitch;->shape:I

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/core/view/SlideSwitch;)Lcn/highlight/core/view/SlideSwitch$SlideListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcn/highlight/core/view/SlideSwitch;->listener:Lcn/highlight/core/view/SlideSwitch$SlideListener;

    return-object p0
.end method

.method static synthetic access$100(Lcn/highlight/core/view/SlideSwitch;)I
    .locals 0

    .line 22
    iget p0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left:I

    return p0
.end method

.method static synthetic access$102(Lcn/highlight/core/view/SlideSwitch;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left:I

    return p1
.end method

.method static synthetic access$200(Lcn/highlight/core/view/SlideSwitch;)I
    .locals 0

    .line 22
    iget p0, p0, Lcn/highlight/core/view/SlideSwitch;->max_left:I

    return p0
.end method

.method static synthetic access$302(Lcn/highlight/core/view/SlideSwitch;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcn/highlight/core/view/SlideSwitch;->alpha:I

    return p1
.end method

.method static synthetic access$400(Lcn/highlight/core/view/SlideSwitch;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcn/highlight/core/view/SlideSwitch;->invalidateView()V

    return-void
.end method

.method static synthetic access$502(Lcn/highlight/core/view/SlideSwitch;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcn/highlight/core/view/SlideSwitch;->isOpen:Z

    return p1
.end method

.method static synthetic access$602(Lcn/highlight/core/view/SlideSwitch;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left_begin:I

    return p1
.end method

.method static synthetic access$700(Lcn/highlight/core/view/SlideSwitch;)I
    .locals 0

    .line 22
    iget p0, p0, Lcn/highlight/core/view/SlideSwitch;->min_left:I

    return p0
.end method

.method private invalidateView()V
    .locals 2

    .line 194
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lcn/highlight/core/view/SlideSwitch;->invalidate()V

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcn/highlight/core/view/SlideSwitch;->postInvalidate()V

    :goto_0
    return-void
.end method


# virtual methods
.method public initDrawingVal()V
    .locals 6

    .line 89
    invoke-virtual {p0}, Lcn/highlight/core/view/SlideSwitch;->getMeasuredWidth()I

    move-result v0

    .line 90
    invoke-virtual {p0}, Lcn/highlight/core/view/SlideSwitch;->getMeasuredHeight()I

    move-result v1

    .line 92
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcn/highlight/core/view/SlideSwitch;->backRect:Landroid/graphics/Rect;

    const/4 v2, 0x3

    .line 93
    iput v2, p0, Lcn/highlight/core/view/SlideSwitch;->min_left:I

    .line 94
    iget v4, p0, Lcn/highlight/core/view/SlideSwitch;->shape:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 95
    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/highlight/core/view/SlideSwitch;->max_left:I

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x6

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 97
    iput v0, p0, Lcn/highlight/core/view/SlideSwitch;->max_left:I

    .line 98
    :goto_0
    iget-boolean v0, p0, Lcn/highlight/core/view/SlideSwitch;->isOpen:Z

    if-eqz v0, :cond_1

    .line 99
    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->max_left:I

    iput v0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left:I

    const/16 v0, 0xff

    .line 100
    iput v0, p0, Lcn/highlight/core/view/SlideSwitch;->alpha:I

    goto :goto_1

    .line 102
    :cond_1
    iput v2, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left:I

    .line 103
    iput v3, p0, Lcn/highlight/core/view/SlideSwitch;->alpha:I

    .line 105
    :goto_1
    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left:I

    iput v0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left_begin:I

    return-void
.end method

.method public measureDimension(II)I
    .locals 2

    .line 110
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 111
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public moveToDest(Z)V
    .locals 3

    .line 206
    new-instance v0, Lcn/highlight/core/view/SlideSwitch$1;

    invoke-direct {v0, p0}, Lcn/highlight/core/view/SlideSwitch$1;-><init>(Lcn/highlight/core/view/SlideSwitch;)V

    .line 219
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/highlight/core/view/SlideSwitch$2;

    invoke-direct {v2, p0, p1, v0}, Lcn/highlight/core/view/SlideSwitch$2;-><init>(Lcn/highlight/core/view/SlideSwitch;ZLandroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 260
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 125
    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->shape:I

    const/4 v1, -0x1

    const v2, -0x777778

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 126
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->backRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/highlight/core/view/SlideSwitch;->color_theme:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcn/highlight/core/view/SlideSwitch;->alpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->backRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left:I

    .line 133
    invoke-virtual {p0}, Lcn/highlight/core/view/SlideSwitch;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {p0}, Lcn/highlight/core/view/SlideSwitch;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect:Landroid/graphics/Rect;

    .line 135
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 139
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->backRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v4, v0

    const-wide v6, 0x3ffccccccccccccdL    # 1.8

    div-double/2addr v4, v6

    double-to-int v0, v4

    sub-int/2addr v0, v3

    .line 140
    iget-object v4, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/highlight/core/view/SlideSwitch;->backRect:Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    int-to-float v0, v0

    iget-object v4, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 142
    iget-object v2, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcn/highlight/core/view/SlideSwitch;->color_theme:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v2, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcn/highlight/core/view/SlideSwitch;->alpha:I

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 144
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcn/highlight/core/view/SlideSwitch;->backRect:Landroid/graphics/Rect;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v0, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 146
    new-instance v2, Landroid/graphics/Rect;

    iget v4, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left:I

    iget-object v5, p0, Lcn/highlight/core/view/SlideSwitch;->backRect:Landroid/graphics/Rect;

    .line 147
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x6

    iget-object v6, p0, Lcn/highlight/core/view/SlideSwitch;->backRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-direct {v2, v4, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect:Landroid/graphics/Rect;

    .line 149
    iget-object v2, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcn/highlight/core/view/SlideSwitch;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/16 v0, 0x118

    .line 78
    invoke-virtual {p0, v0, p1}, Lcn/highlight/core/view/SlideSwitch;->measureDimension(II)I

    move-result p1

    const/16 v0, 0x8c

    .line 79
    invoke-virtual {p0, v0, p2}, Lcn/highlight/core/view/SlideSwitch;->measureDimension(II)I

    move-result p2

    .line 80
    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->shape:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ge p1, p2, :cond_0

    mul-int/lit8 p1, p2, 0x2

    .line 84
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/highlight/core/view/SlideSwitch;->setMeasuredDimension(II)V

    .line 85
    invoke-virtual {p0}, Lcn/highlight/core/view/SlideSwitch;->initDrawingVal()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 156
    invoke-static {p1}, Landroidx/core/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/highlight/core/view/SlideSwitch;->eventLastX:I

    .line 164
    iget p1, p0, Lcn/highlight/core/view/SlideSwitch;->eventLastX:I

    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->eventStartX:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcn/highlight/core/view/SlideSwitch;->diffX:I

    .line 165
    iget p1, p0, Lcn/highlight/core/view/SlideSwitch;->diffX:I

    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left_begin:I

    add-int/2addr p1, v0

    .line 166
    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->max_left:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 167
    :cond_1
    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->min_left:I

    if-ge p1, v0, :cond_2

    move p1, v0

    .line 168
    :cond_2
    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->min_left:I

    if-lt p1, v0, :cond_7

    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->max_left:I

    if-gt p1, v0, :cond_7

    .line 169
    iput p1, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left:I

    const/high16 v2, 0x437f0000    # 255.0f

    int-to-float p1, p1

    mul-float p1, p1, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 170
    iput p1, p0, Lcn/highlight/core/view/SlideSwitch;->alpha:I

    .line 171
    invoke-direct {p0}, Lcn/highlight/core/view/SlideSwitch;->invalidateView()V

    goto :goto_1

    .line 175
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->eventStartX:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 176
    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left:I

    iput v0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left_begin:I

    .line 178
    iget v0, p0, Lcn/highlight/core/view/SlideSwitch;->frontRect_left_begin:I

    iget v3, p0, Lcn/highlight/core/view/SlideSwitch;->max_left:I

    div-int/2addr v3, v2

    if-le v0, v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 179
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/4 v2, 0x3

    if-ge p1, v2, :cond_5

    xor-int/lit8 v0, v0, 0x1

    .line 182
    :cond_5
    invoke-virtual {p0, v0}, Lcn/highlight/core/view/SlideSwitch;->moveToDest(Z)V

    goto :goto_1

    .line 160
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcn/highlight/core/view/SlideSwitch;->eventStartX:I

    :cond_7
    :goto_1
    return v1
.end method

.method public setShapeType(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcn/highlight/core/view/SlideSwitch;->shape:I

    return-void
.end method

.method public setSlideListener(Lcn/highlight/core/view/SlideSwitch$SlideListener;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcn/highlight/core/view/SlideSwitch;->listener:Lcn/highlight/core/view/SlideSwitch$SlideListener;

    return-void
.end method

.method public setState(Z)V
    .locals 2

    .line 265
    iput-boolean p1, p0, Lcn/highlight/core/view/SlideSwitch;->isOpen:Z

    .line 266
    invoke-virtual {p0}, Lcn/highlight/core/view/SlideSwitch;->initDrawingVal()V

    .line 267
    invoke-direct {p0}, Lcn/highlight/core/view/SlideSwitch;->invalidateView()V

    .line 268
    iget-object v0, p0, Lcn/highlight/core/view/SlideSwitch;->listener:Lcn/highlight/core/view/SlideSwitch$SlideListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 270
    invoke-interface {v0}, Lcn/highlight/core/view/SlideSwitch$SlideListener;->open()V

    goto :goto_0

    .line 272
    :cond_0
    invoke-interface {v0}, Lcn/highlight/core/view/SlideSwitch$SlideListener;->close()V

    :cond_1
    :goto_0
    return-void
.end method
