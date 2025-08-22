.class final Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindClick$2;
.super Ljava/lang/Object;
.source "BaseProviderMultiAdapter.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->bindClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
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
        "\u0000\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onLongClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $viewHolder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindClick$2;->this$0:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindClick$2;->$viewHolder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindClick$2;->$viewHolder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindClick$2;->this$0:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 119
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindClick$2;->$viewHolder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v1

    .line 120
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindClick$2;->this$0:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    invoke-static {v2}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->access$getMItemProviders$p(Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    .line 121
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindClick$2;->$viewHolder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindClick$2;->this$0:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->onLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method
