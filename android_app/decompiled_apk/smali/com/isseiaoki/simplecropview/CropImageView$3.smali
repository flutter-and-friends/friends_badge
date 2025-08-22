.class Lcom/isseiaoki/simplecropview/CropImageView$3;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->loadAsync(Landroid/net/Uri;ZLandroid/graphics/RectF;Lcom/isseiaoki/simplecropview/callback/LoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic val$callback:Lcom/isseiaoki/simplecropview/callback/LoadCallback;

.field final synthetic val$initialFrameRect:Landroid/graphics/RectF;

.field final synthetic val$sourceUri:Landroid/net/Uri;

.field final synthetic val$useThumbnail:Z


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;Landroid/graphics/RectF;ZLcom/isseiaoki/simplecropview/callback/LoadCallback;)V
    .locals 0

    .line 1438
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$sourceUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$initialFrameRect:Landroid/graphics/RectF;

    iput-boolean p4, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$useThumbnail:Z

    iput-object p5, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$callback:Lcom/isseiaoki/simplecropview/callback/LoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1441
    :try_start_0
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1443
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$sourceUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$302(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1444
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$initialFrameRect:Landroid/graphics/RectF;

    invoke-static {v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$402(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    .line 1446
    iget-boolean v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$useThumbnail:Z

    if-eqz v1, :cond_0

    .line 1447
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$sourceUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$500(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V

    .line 1450
    :cond_0
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$sourceUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$600(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1452
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1000(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isseiaoki/simplecropview/CropImageView$3$1;

    invoke-direct {v3, p0, v1}, Lcom/isseiaoki/simplecropview/CropImageView$3$1;-><init>(Lcom/isseiaoki/simplecropview/CropImageView$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1460
    :try_start_1
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->val$callback:Lcom/isseiaoki/simplecropview/callback/LoadCallback;

    invoke-static {v2, v3, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1100(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/callback/Callback;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1462
    :goto_0
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_1
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$3;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
