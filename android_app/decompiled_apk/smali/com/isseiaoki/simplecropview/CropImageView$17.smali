.class Lcom/isseiaoki/simplecropview/CropImageView$17;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->saveAsSingle(Landroid/graphics/Bitmap;Landroid/net/Uri;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$saveUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0

    .line 1858
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$17;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$17;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$17;->val$saveUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/net/Uri;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1861
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$17;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$17;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/isseiaoki/simplecropview/CropImageView$17;->val$saveUri:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lcom/isseiaoki/simplecropview/CropImageView;->access$2100(Lcom/isseiaoki/simplecropview/CropImageView;Landroid/graphics/Bitmap;Landroid/net/Uri;)Landroid/net/Uri;

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

    .line 1858
    invoke-virtual {p0}, Lcom/isseiaoki/simplecropview/CropImageView$17;->call()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
