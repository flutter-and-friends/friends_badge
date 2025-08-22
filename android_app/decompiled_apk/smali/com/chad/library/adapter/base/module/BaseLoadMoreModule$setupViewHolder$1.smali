.class final Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$setupViewHolder$1;
.super Ljava/lang/Object;
.source "LoadMoreModule.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->setupViewHolder$com_github_CymChad_brvah(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$setupViewHolder$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$setupViewHolder$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreStatus()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Fail:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$setupViewHolder$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$setupViewHolder$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreStatus()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->Complete:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_1

    .line 116
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$setupViewHolder$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$setupViewHolder$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getEnableLoadMoreEndClick()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$setupViewHolder$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->getLoadMoreStatus()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    move-result-object p1

    sget-object v0, Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;->End:Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;

    if-ne p1, v0, :cond_2

    .line 118
    iget-object p1, p0, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule$setupViewHolder$1;->this$0:Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;

    invoke-virtual {p1}, Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;->loadMoreToLoading()V

    :cond_2
    :goto_0
    return-void
.end method
