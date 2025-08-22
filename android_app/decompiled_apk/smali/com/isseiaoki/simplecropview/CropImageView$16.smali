.class Lcom/isseiaoki/simplecropview/CropImageView$16;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Lio/reactivex/disposables/Disposable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;)V
    .locals 0

    .line 1863
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$16;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1865
    iget-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$16;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    invoke-static {p1}, Lcom/isseiaoki/simplecropview/CropImageView;->access$2200(Lcom/isseiaoki/simplecropview/CropImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1863
    check-cast p1, Lio/reactivex/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/isseiaoki/simplecropview/CropImageView$16;->accept(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method
