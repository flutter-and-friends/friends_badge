.class Lcom/isseiaoki/simplecropview/CropImageView$14$1;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/isseiaoki/simplecropview/CropImageView$14;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView$14;)V
    .locals 0

    .line 1835
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$14$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1837
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$14$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$14;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$14;->val$saveCallback:Lcom/isseiaoki/simplecropview/callback/SaveCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$14$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$14;

    iget-object v0, v0, Lcom/isseiaoki/simplecropview/CropImageView$14;->val$saveCallback:Lcom/isseiaoki/simplecropview/callback/SaveCallback;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$14$1;->this$1:Lcom/isseiaoki/simplecropview/CropImageView$14;

    iget-object v1, v1, Lcom/isseiaoki/simplecropview/CropImageView$14;->val$saveUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/isseiaoki/simplecropview/callback/SaveCallback;->onSuccess(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
