.class Lcn/highlight/lib_doodle/DoodleView$BackgroundView;
.super Landroid/view/View;
.source "DoodleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/lib_doodle/DoodleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundView"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/lib_doodle/DoodleView;


# direct methods
.method public constructor <init>(Lcn/highlight/lib_doodle/DoodleView;Landroid/content/Context;)V
    .locals 0

    .line 1666
    iput-object p1, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    .line 1667
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1682
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranX()F

    move-result v0

    .line 1683
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v1}, Lcn/highlight/lib_doodle/DoodleView;->getAllTranY()F

    move-result v1

    .line 1686
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1687
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-virtual {v0}, Lcn/highlight/lib_doodle/DoodleView;->getAllScale()F

    move-result v0

    .line 1688
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1690
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$700(Lcn/highlight/lib_doodle/DoodleView;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$200(Lcn/highlight/lib_doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    .line 1695
    :cond_0
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$000(Lcn/highlight/lib_doodle/DoodleView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    iget-object v0, v0, Lcn/highlight/lib_doodle/DoodleView;->mDoodleBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$200(Lcn/highlight/lib_doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1696
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1697
    iget-object v0, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v0}, Lcn/highlight/lib_doodle/DoodleView;->access$200(Lcn/highlight/lib_doodle/DoodleView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1701
    :cond_2
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1672
    sget-boolean v0, Lcn/forward/androids/utils/LogUtil;->sIsLog:Z

    if-eqz v0, :cond_0

    const-string v0, "DoodleView"

    const-string v1, "BackgroundView>>onDraw"

    .line 1673
    invoke-static {v0, v1}, Lcn/forward/androids/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1676
    iget-object v1, p0, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->this$0:Lcn/highlight/lib_doodle/DoodleView;

    invoke-static {v1}, Lcn/highlight/lib_doodle/DoodleView;->access$400(Lcn/highlight/lib_doodle/DoodleView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1677
    invoke-direct {p0, p1}, Lcn/highlight/lib_doodle/DoodleView$BackgroundView;->doDraw(Landroid/graphics/Canvas;)V

    .line 1678
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method
