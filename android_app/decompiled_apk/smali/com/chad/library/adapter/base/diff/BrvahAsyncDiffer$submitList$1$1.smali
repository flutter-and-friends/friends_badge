.class final Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;
.super Ljava/lang/Object;
.source "BrvahAsyncDiffer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

.field final synthetic this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;

    iput-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;->$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;

    iget-object v0, v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    invoke-static {v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->access$getMMaxScheduledGeneration$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)I

    move-result v0

    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;

    iget v1, v1, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->$runGeneration:I

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;

    iget-object v0, v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;

    iget-object v1, v1, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->$newList:Ljava/util/List;

    iget-object v2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;->$result:Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    iget-object v3, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;

    iget-object v3, v3, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->$commitCallback:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->access$latchList(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Landroidx/recyclerview/widget/DiffUtil$DiffResult;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
