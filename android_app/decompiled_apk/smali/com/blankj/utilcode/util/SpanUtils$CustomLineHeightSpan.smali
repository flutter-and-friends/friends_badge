.class Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;
.super Ljava/lang/Object;
.source "SpanUtils.java"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomLineHeightSpan"
.end annotation


# static fields
.field static final ALIGN_CENTER:I = 0x2

.field static final ALIGN_TOP:I = 0x3

.field static sfm:Landroid/graphics/Paint$FontMetricsInt;


# instance fields
.field private final height:I

.field final mVerticalAlignment:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1002
    iput p1, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->height:I

    .line 1003
    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->mVerticalAlignment:I

    return-void
.end method


# virtual methods
.method public chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 5

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p6, v0, v1

    .line 1009
    sget-object v2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 1010
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v0, :cond_0

    .line 1011
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    .line 1012
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v2, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1013
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v2, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1014
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v2, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1015
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1016
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput v2, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    goto :goto_0

    .line 1018
    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1019
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1020
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1021
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1022
    sget-object v0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput v0, p6, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1024
    :goto_0
    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->height:I

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v2, p5

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, p4

    sub-int/2addr v0, v2

    const/4 v2, 0x3

    if-lez v0, :cond_3

    .line 1026
    iget v4, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->mVerticalAlignment:I

    if-ne v4, v2, :cond_1

    .line 1027
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v4, v0

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    goto :goto_1

    :cond_1
    if-ne v4, p2, :cond_2

    .line 1029
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    div-int/2addr v0, p2

    add-int/2addr v4, v0

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1030
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v4, v0

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    goto :goto_1

    .line 1032
    :cond_2
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v4, v0

    iput v4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1035
    :cond_3
    :goto_1
    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->height:I

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p5, v4

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p5, v4

    sub-int/2addr p5, p4

    sub-int/2addr v0, p5

    if-lez v0, :cond_6

    .line 1037
    iget p4, p0, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->mVerticalAlignment:I

    if-ne p4, v2, :cond_4

    .line 1038
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr p4, v0

    iput p4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_2

    :cond_4
    if-ne p4, p2, :cond_5

    .line 1040
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    div-int/2addr v0, p2

    add-int/2addr p4, v0

    iput p4, p6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1041
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p4, v0

    iput p4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_2

    .line 1043
    :cond_5
    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p4, v0

    iput p4, p6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1046
    :cond_6
    :goto_2
    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ne p3, p1, :cond_7

    const/4 p1, 0x0

    .line 1047
    sput-object p1, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    :cond_7
    new-array p1, p2, [Ljava/lang/Object;

    aput-object p6, p1, v1

    .line 1049
    sget-object p2, Lcom/blankj/utilcode/util/SpanUtils$CustomLineHeightSpan;->sfm:Landroid/graphics/Paint$FontMetricsInt;

    aput-object p2, p1, v3

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    return-void
.end method
