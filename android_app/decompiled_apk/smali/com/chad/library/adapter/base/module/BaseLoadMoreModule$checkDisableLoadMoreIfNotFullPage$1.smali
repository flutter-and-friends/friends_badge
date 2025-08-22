.class final Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$checkDisableLoadMoreIfNotFullPage$1;
.super Ljava/lang/Object;
.source "LoadMoreModule.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->checkDisableLoadMoreIfNotFullPage()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$checkDisableLoadMoreIfNotFullPage$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    iput-object p2, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$checkDisableLoadMoreIfNotFullPage$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$checkDisableLoadMoreIfNotFullPage$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    iget-object v1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$checkDisableLoadMoreIfNotFullPage$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-static {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->access$isFullScreen(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Landroidx/recyclerview/widget/LinearLayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$checkDisableLoadMoreIfNotFullPage$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->access$setMNextLoadEnable$p(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;Z)V

    :cond_0
    return-void
.end method
