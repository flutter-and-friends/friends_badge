.class Lcom/isseiaoki/simplecropview/CropImageView$14;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->saveAsync(Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/isseiaoki/simplecropview/callback/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic val$image:Landroid/graphics/Bitmap;

.field final synthetic val$saveCallback:Lcom/isseiaoki/simplecropview/callback/SaveCallback;

.field final synthetic val$saveUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/isseiaoki/simplecropview/callback/SaveCallback;)V
    .locals 0

    .line 1828
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->val$image:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->val$saveUri:Landroid/net/Uri;

    iput-object p4, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->val$saveCallback:Lcom/isseiaoki/simplecropview/callback/SaveCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1832
    :try_start_0
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$2200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1833
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->val$image:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->val$saveUri:Landroid/net/Uri;

    invoke-static {v1, v2, v3}, Lcom/isseiaoki/simplecropview/CropImageView;->access$2100(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1835
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1000(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/isseiaoki/simplecropview/CropImageView$14$1;

    invoke-direct {v2, p0}, Lcom/isseiaoki/simplecropview/CropImageView$14$1;-><init>(Lcom/isseiaoki/simplecropview/CropImageView$14;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1841
    :try_start_1
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v3, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->val$saveCallback:Lcom/isseiaoki/simplecropview/callback/SaveCallback;

    invoke-static {v2, v3, v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1100(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/callback/Callback;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1843
    :goto_0
    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$2200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_1
    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$14;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$2200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
