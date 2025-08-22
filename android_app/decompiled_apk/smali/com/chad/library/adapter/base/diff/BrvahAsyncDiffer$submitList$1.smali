.class final Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;
.super Ljava/lang/Object;
.source "BrvahAsyncDiffer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->submitList(Ljava/util/List;Ljava/lang/Runnable;)V
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
.field final synthetic $commitCallback:Ljava/lang/Runnable;

.field final synthetic $newList:Ljava/util/List;

.field final synthetic $oldList:Ljava/util/List;

.field final synthetic $runGeneration:I

.field final synthetic this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    iput-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->$oldList:Ljava/util/List;

    iput-object p3, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->$newList:Ljava/util/List;

    iput p4, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->$runGeneration:I

    iput-object p5, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->$commitCallback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 128
    new-instance v0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;

    invoke-direct {v0, p0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$result$1;-><init>(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;)V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$Callback;

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    const-string v1, "DiffUtil.calculateDiff(o\u2026         }\n            })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;->this$0:Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;

    invoke-static {v1}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;->access$getMMainThreadExecutor$p(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;)Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;

    invoke-direct {v2, p0, v0}, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1$1;-><init>(Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$submitList$1;Landroidx/recyclerview/widget/DiffUtil$DiffResult;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
