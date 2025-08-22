.class Lcom/isseiaoki/simplecropview/CropImageView$2;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isseiaoki/simplecropview/CropImageView;->postErrorOnMainThread(Lcom/isseiaoki/simplecropview/callback/Callback;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isseiaoki/simplecropview/CropImageView;

.field final synthetic val$callback:Lcom/isseiaoki/simplecropview/callback/Callback;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/isseiaoki/simplecropview/CropImageView;Lcom/isseiaoki/simplecropview/callback/Callback;Ljava/lang/Throwable;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/isseiaoki/simplecropview/CropImageView$2;->this$0:Lcom/isseiaoki/simplecropview/CropImageView;

    iput-object p2, p0, Lcom/isseiaoki/simplecropview/CropImageView$2;->val$callback:Lcom/isseiaoki/simplecropview/callback/Callback;

    iput-object p3, p0, Lcom/isseiaoki/simplecropview/CropImageView$2;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/isseiaoki/simplecropview/CropImageView$2;->val$callback:Lcom/isseiaoki/simplecropview/callback/Callback;

    iget-object v1, p0, Lcom/isseiaoki/simplecropview/CropImageView$2;->val$e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/isseiaoki/simplecropview/callback/Callback;->onError(Ljava/lang/Throwable;)V

    return-void
.end method
