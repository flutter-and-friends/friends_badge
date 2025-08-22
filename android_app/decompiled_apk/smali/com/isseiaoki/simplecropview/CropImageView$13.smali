.class Lcom/isseiaoki/simplecropview/CropImageView$13;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->cropAsSingle(Landroid/net/Uri;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic val$sourceUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)V
    .locals 0

    .line 1788
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$13;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$13;->val$sourceUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1791
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$13;->val$sourceUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$13;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v1, v0}, Lcom/isseiaoki/simplecropview/CropImageView;->access$302(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$13;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->access$1900(Lcom/isseiaoki/simplecropview/CropImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1788
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView$13;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
