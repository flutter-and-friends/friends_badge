.class Lcom/isseiaoki/simplecropview/CropImageView$9$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isseiaoki/simplecropview/CropImageView$9;

.field final synthetic val$cropped:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView$9;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1715
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$9$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$9;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$9$1;->val$cropped:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1717
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$9$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$9;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$9;->val$cropCallback:Lcom/isseiaoki/simplecropview/callback/CropCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$9$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$9;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$9;->val$cropCallback:Lcom/isseiaoki/simplecropview/callback/CropCallback;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$9$1;->val$cropped:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/isseiaoki/simplecropview/callback/CropCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 1718
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$9$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$9;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$9;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->access$2000(Lcom/isseiaoki/simplecropview/CropImageView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$9$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$9;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$9;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-virtual {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->invalidate()V

    :cond_1
    return-void
.end method
