.class Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;
.super Landroid/text/style/ReplacementSpan;
.source "SpanUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpaceSpan"
.end annotation


# instance fields
.field private final color:I

.field private final width:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1059
    invoke-direct {p0, p1, v0}, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;-><init>(II)V

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 1063
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 1064
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->width:I

    .line 1065
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->color:I

    return-void
.end method

.method synthetic constructor <init>(IILcom/blankj/utilcode/util/SpanUtils$1;)V
    .locals 0

    .line 1053
    invoke-direct {p0, p1, p2}, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;-><init>(II)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 6

    if-eqz p1, :cond_1

    if-eqz p9, :cond_0

    .line 1082
    invoke-virtual {p9}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p2

    .line 1083
    invoke-virtual {p9}, Landroid/graphics/Paint;->getColor()I

    move-result p3

    .line 1085
    sget-object p4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p9, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1086
    iget p4, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->color:I

    invoke-virtual {p9, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v2, p6

    .line 1088
    iget p4, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->width:I

    int-to-float p4, p4

    add-float v3, p5, p4

    int-to-float v4, p8

    move-object v0, p1

    move v1, p5

    move-object v5, p9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1090
    invoke-virtual {p9, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1091
    invoke-virtual {p9, p3}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    .line 1081
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument \'paint\' of type Paint (#8 out of 9, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1077
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument \'canvas\' of type Canvas (#0 out of 9, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1073
    iget p1, p0, Lcom/blankj/utilcode/util/SpanUtils$SpaceSpan;->width:I

    return p1

    .line 1069
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Argument \'paint\' of type Paint (#0 out of 5, zero-based) is marked by @android.support.annotation.NonNull but got null for it"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
