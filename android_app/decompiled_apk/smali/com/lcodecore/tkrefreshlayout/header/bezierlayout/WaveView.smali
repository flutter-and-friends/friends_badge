.class public Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# instance fields
.field private headHeight:I

.field paint:Landroid/graphics/Paint;

.field path:Landroid/graphics/Path;

.field private waveHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, p1, v0, v1}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->init()V

    return-void
.end method

.method static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 79
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 81
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 82
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 83
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 84
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private init()V
    .locals 2

    .line 38
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->path:Landroid/graphics/Path;

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->paint:Landroid/graphics/Paint;

    .line 40
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->paint:Landroid/graphics/Paint;

    const v1, -0xe0dbda

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public getHeadHeight()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->headHeight:I

    return v0
.end method

.method public getWaveHeight()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->waveHeight:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 66
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 69
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->path:Landroid/graphics/Path;

    iget v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->headHeight:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v3, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->headHeight:I

    iget v4, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->waveHeight:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->headHeight:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 72
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->path:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setHeadHeight(I)V
    .locals 0

    .line 49
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->headHeight:I

    return-void
.end method

.method public setWaveColor(I)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->paint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setWaveHeight(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/lcodecore/tkrefreshlayout/header/bezierlayout/WaveView;->waveHeight:I

    return-void
.end method
