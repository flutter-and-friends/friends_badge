.class Lcom/isseiaoki/simplecropview/CropImageView$8;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->rotateImage(Lcom/isseiaoki/simplecropview/CropImageView$RotateDegrees;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic val$angleDiff:F

.field final synthetic val$currentAngle:F

.field final synthetic val$currentScale:F

.field final synthetic val$newAngle:F

.field final synthetic val$newScale:F

.field final synthetic val$scaleDiff:F


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;FFFFFF)V
    .locals 0

    .line 1599
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iput p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$currentAngle:F

    iput p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$angleDiff:F

    iput p4, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$currentScale:F

    iput p5, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$scaleDiff:F

    iput p6, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$newAngle:F

    iput p7, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$newScale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 3

    .line 1612
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$newAngle:F

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$702(Lcom/isseiaoki/simplecropview/CropImageView;F)F

    .line 1613
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$newScale:F

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1302(Lcom/isseiaoki/simplecropview/CropImageView;F)F

    .line 1614
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$402(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1615
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1500(Lcom/isseiaoki/simplecropview/CropImageView;)I

    move-result v1

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1600(Lcom/isseiaoki/simplecropview/CropImageView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1700(Lcom/isseiaoki/simplecropview/CropImageView;II)V

    .line 1616
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1202(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    return-void
.end method

.method public onAnimationStarted()V
    .locals 2

    .line 1601
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1202(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    return-void
.end method

.method public onAnimationUpdated(F)V
    .locals 3

    .line 1605
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$currentAngle:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$angleDiff:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$702(Lcom/isseiaoki/simplecropview/CropImageView;F)F

    .line 1606
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$currentScale:F

    iget v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->val$scaleDiff:F

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1302(Lcom/isseiaoki/simplecropview/CropImageView;F)F

    .line 1607
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {p1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1400(Lcom/isseiaoki/simplecropview/CropImageView;)V

    .line 1608
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$8;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method
