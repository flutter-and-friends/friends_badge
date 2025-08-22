.class Lcom/isseiaoki/simplecropview/CropImageView$10;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->cropAsync(Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/CropCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic val$cropCallback:Lcom/isseiaoki/simplecropview/callback/CropCallback;

.field final synthetic val$sourceUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/CropCallback;)V
    .locals 0

    .line 1752
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->val$sourceUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->val$cropCallback:Lcom/isseiaoki/simplecropview/callback/CropCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1755
    :try_start_0
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1800(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1757
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->val$sourceUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->val$sourceUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$302(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1759
    :cond_0
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1900(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1761
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1000(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/isseiaoki/simplecropview/CropImageView$10$1;

    invoke-direct {v3, p0, v1}, Lcom/isseiaoki/simplecropview/CropImageView$10$1;-><init>(Lcom/isseiaoki/simplecropview/CropImageView$10;Landroid/graphics/Bitmap;)V

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

    .line 1768
    :try_start_1
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->val$cropCallback:Lcom/isseiaoki/simplecropview/callback/CropCallback;

    invoke-static {v2, v3, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1100(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/callback/Callback;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1770
    :goto_0
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1800(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_1
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$10;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1800(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
