.class final Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1;
.super Ljava/lang/Object;
.source "BaseProviderMultiAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->bindChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
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
        "\u0000.\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "v",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$1$1$1",
        "com/chad/library/adapter/base/BaseProviderMultiAdapter$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $provider$inlined:Lcom/chad/library/adapter/base/provider/BaseItemProvider;

.field final synthetic $viewHolder$inlined:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/provider/BaseItemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1;->this$0:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1;->$viewHolder$inlined:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1;->$provider$inlined:Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1;->$viewHolder$inlined:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1;->this$0:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 141
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1;->$provider$inlined:Lcom/chad/library/adapter/base/provider/BaseItemProvider;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1;->$viewHolder$inlined:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const-string v3, "v"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1;->this$0:Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->onChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)V

    return-void
.end method
