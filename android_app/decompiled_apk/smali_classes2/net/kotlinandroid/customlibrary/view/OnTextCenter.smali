.class public Lnet/kotlinandroid/customlibrary/view/OnTextCenter;
.super Ljava/lang/Object;
.source "OnTextCenter.java"

# interfaces
.implements Lnet/kotlinandroid/customlibrary/view/ArcProgress$OnCenterDraw;


# instance fields
.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x777778

    .line 12
    iput v0, p0, Lnet/kotlinandroid/customlibrary/view/OnTextCenter;->textColor:I

    const/16 v0, 0x32

    .line 13
    iput v0, p0, Lnet/kotlinandroid/customlibrary/view/OnTextCenter;->textSize:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x777778

    .line 12
    iput v0, p0, Lnet/kotlinandroid/customlibrary/view/OnTextCenter;->textColor:I

    const/16 v0, 0x32

    .line 13
    iput v0, p0, Lnet/kotlinandroid/customlibrary/view/OnTextCenter;->textSize:I

    .line 16
    iput p1, p0, Lnet/kotlinandroid/customlibrary/view/OnTextCenter;->textColor:I

    .line 17
    iput p2, p0, Lnet/kotlinandroid/customlibrary/view/OnTextCenter;->textSize:I

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFI)V
    .locals 2

    .line 24
    new-instance p2, Landroid/graphics/Paint;

    const/4 p5, 0x1

    invoke-direct {p2, p5}, Landroid/graphics/Paint;-><init>(I)V

    const/high16 p5, 0x420c0000    # 35.0f

    .line 25
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    iget p5, p0, Lnet/kotlinandroid/customlibrary/view/OnTextCenter;->textSize:I

    int-to-float p5, p5

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    iget p5, p0, Lnet/kotlinandroid/customlibrary/view/OnTextCenter;->textColor:I

    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    .line 29
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p6

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p6, v0

    sub-float/2addr p3, p6

    .line 30
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result p6

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float/2addr p6, v1

    div-float/2addr p6, v0

    sub-float/2addr p4, p6

    .line 31
    invoke-virtual {p1, p5, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method
