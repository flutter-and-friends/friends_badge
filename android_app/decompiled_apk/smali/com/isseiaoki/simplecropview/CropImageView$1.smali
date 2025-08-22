.class Lcom/isseiaoki/simplecropview/CropImageView$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lcom/isseiaoki/simplecropview/animation/SimpleValueAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->recalculateFrameRect(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic val$currentRect:Landroid/graphics/RectF;

.field final synthetic val$diffB:F

.field final synthetic val$diffL:F

.field final synthetic val$diffR:F

.field final synthetic val$diffT:F

.field final synthetic val$newRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;FFFFLandroid/graphics/RectF;)V
    .locals 0

    .line 1019
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$currentRect:Landroid/graphics/RectF;

    iput p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$diffL:F

    iput p4, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$diffT:F

    iput p5, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$diffR:F

    iput p6, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$diffB:F

    iput-object p7, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$newRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .line 1031
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$newRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$102(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1032
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    .line 1033
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$002(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    return-void
.end method

.method public onAnimationStarted()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$002(Lcom/isseiaoki/simplecropview/CropImageView;Z)Z

    return-void
.end method

.method public onAnimationUpdated(F)V
    .locals 7

    .line 1025
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$currentRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$diffL:F

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$currentRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$diffT:F

    mul-float v4, v4, p1

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$currentRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$diffR:F

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$currentRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->val$diffB:F

    mul-float v6, v6, p1

    add-float/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$102(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1027
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$1;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {p1}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    return-void
.end method
