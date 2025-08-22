.class final Lcom/chad/library/adapter/base/BaseBinderAdapter$bindClick$2;
.super Ljava/lang/Object;
.source "BaseBinderAdapter.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
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

.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseBinderAdapter;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindClick$2;->this$0:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindClick$2;->$viewHolder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 140
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindClick$2;->$viewHolder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindClick$2;->this$0:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 146
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindClick$2;->$viewHolder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getItemViewType()I

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindClick$2;->this$0:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getItemBinder(I)Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindClick$2;->$viewHolder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const-string v3, "it"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindClick$2;->this$0:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method
