.class Lcom/isseiaoki/simplecropview/CropImageView$3$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isseiaoki/simplecropview/CropImageView$3;

.field final synthetic val$sampled:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1452
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$3;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3$1;->val$sampled:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1454
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$3$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$3;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$3;

    iget-object v1, v1, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$800(Lcom/isseiaoki/simplecropview/CropImageView;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$702(Lcom/isseiaoki/simplecropview/CropImageView;F)F

    .line 1455
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$3$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$3;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$3;

    iget-object v2, v2, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView$3$1;->val$sampled:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$900(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1456
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$3$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$3;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$callback:Lcom/isseiaoki/simplecropview/callback/LoadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$3$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$3;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$callback:Lcom/isseiaoki/simplecropview/callback/LoadCallback;

    invoke-interface {v0}, Lcom/isseiaoki/simplecropview/callback/LoadCallback;->onSuccess()V

    :cond_0
    return-void
.end method
