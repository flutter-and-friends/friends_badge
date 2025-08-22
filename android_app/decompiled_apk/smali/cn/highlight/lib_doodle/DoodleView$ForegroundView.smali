.class Lcn/highlight/lib_doodle/DoodleView$ForegroundView;
.super Landroid/view/View;
.source "DoodleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/lib_doodle/DoodleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForegroundView"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/lib_doodle/DoodleView;


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/DoodleView;Landroid/content/Context;)V
    .locals 0

    .line 1708
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    .line 1709
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 1712
    invoke-virtual {p0, p1, p2}, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1739
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$700(Lcn/highlight/lib_doodle/DoodleView;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1743
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranX()F

    move-result v0

    .line 1744
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranY()F

    move-result v1

    .line 1747
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1748
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v0

    .line 1749
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1751
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$000(Lcn/highlight/lib_doodle/DoodleView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    iget-object v0, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$200(Lcn/highlight/lib_doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1753
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1754
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v2}, Lcn/highlight/lib_doodle/DoodleView;->access$300(Lcn/highlight/lib_doodle/DoodleView;)Ljava/util/List;

    move-result-object v2

    .line 1755
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v3}, Lcn/highlight/lib_doodle/DoodleView;->access$000(Lcn/highlight/lib_doodle/DoodleView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1756
    iget-object v2, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v2}, Lcn/highlight/lib_doodle/DoodleView;->access$1100(Lcn/highlight/lib_doodle/DoodleView;)Ljava/util/List;

    move-result-object v2

    .line 1759
    :cond_2
    iget-object v3, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v3}, Lcn/highlight/lib_doodle/DoodleView;->access$1200(Lcn/highlight/lib_doodle/DoodleView;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 1761
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 1763
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 1764
    invoke-interface {v6}, Lcn/highlight/lib_doodle/IDoodleItem;->isNeedClipOutside()Z

    move-result v7

    if-nez v7, :cond_6

    if-eqz v3, :cond_5

    .line 1766
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1769
    :cond_5
    invoke-interface {v6, p1}, Lcn/highlight/lib_doodle/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_4

    .line 1772
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1773
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {p1, v4, v4, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_2

    .line 1776
    :cond_6
    invoke-interface {v6, p1}, Lcn/highlight/lib_doodle/IDoodleItem;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1781
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/highlight/lib_doodle/IDoodleItem;

    .line 1782
    invoke-interface {v5}, Lcn/highlight/lib_doodle/IDoodleItem;->isNeedClipOutside()Z

    move-result v6

    if-nez v6, :cond_a

    if-eqz v3, :cond_9

    .line 1784
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1786
    :cond_9
    invoke-interface {v5, p1}, Lcn/highlight/lib_doodle/IDoodleItem;->drawAtTheTop(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_8

    .line 1789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1790
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1, v4, v4, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_3

    .line 1793
    :cond_a
    invoke-interface {v5, p1}, Lcn/highlight/lib_doodle/IDoodleItem;->drawAtTheTop(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1796
    :cond_b
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1798
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$800(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1799
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$800(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-interface {v0, p1, v1}, Lcn/highlight/lib_doodle/IDoodlePen;->drawHelpers(Landroid/graphics/Canvas;Lcn/highlight/lib_doodle/IDoodle;)V

    .line 1801
    :cond_c
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$1300(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1802
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$1300(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodleShape;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-interface {v0, p1, v1}, Lcn/highlight/lib_doodle/IDoodleShape;->drawHelpers(Landroid/graphics/Canvas;Lcn/highlight/lib_doodle/IDoodle;)V

    :cond_d
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1729
    sget-boolean v0, Lcn/forward/androids/utils/LogUtil;->sIsLog:Z

    if-eqz v0, :cond_0

    const-string v0, "DoodleView"

    const-string v1, "ForegroundView>>onDraw"

    .line 1730
    invoke-static {v0, v1}, Lcn/forward/androids/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1732
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1733
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v1}, Lcn/highlight/lib_doodle/DoodleView;->access$400(Lcn/highlight/lib_doodle/DoodleView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1734
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->doDraw(Landroid/graphics/Canvas;)V

    .line 1735
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1717
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$900(Lcn/highlight/lib_doodle/DoodleView;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v1}, Lcn/highlight/lib_doodle/DoodleView;->access$800(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodlePen;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/highlight/lib_doodle/IDoodleTouchDetector;

    if-eqz v0, :cond_0

    .line 1719
    invoke-interface {v0, p1}, Lcn/highlight/lib_doodle/IDoodleTouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1722
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$1000(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodleTouchDetector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$ForegroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$1000(Lcn/highlight/lib_doodle/DoodleView;)Lcn/highlight/lib_doodle/IDoodleTouchDetector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/highlight/lib_doodle/IDoodleTouchDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
