.class Lcom/isseiaoki/simplecropview/CropImageView$6;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lio/reactivex/CompletableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->loadAsCompletable(Landroid/net/Uri;ZLandroid/graphics/RectF;)Lio/reactivex/Completable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic val$initialFrameRect:Landroid/graphics/RectF;

.field final synthetic val$sourceUri:Landroid/net/Uri;

.field final synthetic val$useThumbnail:Z


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;Landroid/net/Uri;Z)V
    .locals 0

    .line 1490
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->val$initialFrameRect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->val$sourceUri:Landroid/net/Uri;

    iput-boolean p4, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->val$useThumbnail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/CompletableEmitter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1494
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->val$initialFrameRect:Landroid/graphics/RectF;

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$402(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1495
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->val$sourceUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$302(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1497
    iget-boolean v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->val$useThumbnail:Z

    if-eqz v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->val$sourceUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$500(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->val$sourceUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$600(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1503
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$6;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1000(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isseiaoki/simplecropview/CropImageView$6$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/isseiaoki/simplecropview/CropImageView$6$1;-><init>(Lcom/isseiaoki/simplecropview/CropImageView$6;Landroid/graphics/Bitmap;Lio/reactivex/CompletableEmitter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
