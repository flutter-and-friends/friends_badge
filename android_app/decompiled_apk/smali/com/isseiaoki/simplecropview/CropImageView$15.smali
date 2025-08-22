.class Lcom/isseiaoki/simplecropview/CropImageView$15;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->saveAsSingle(Landroid/graphics/Bitmap;Landroid/net/Uri;)Lio/reactivex/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;)V
    .locals 0

    .line 1867
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$15;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1869
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$15;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {v0}, Lcom/isseiaoki/simplecropview/CropImageView;->access$2200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
