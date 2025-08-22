.class final Lcom/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2;
.super Ljava/lang/Object;
.source "BaseBinderAdapter.kt"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chad/library/adapter/base/BaseBinderAdapter;->bindChildClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)V
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
        "\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onLongClick",
        "com/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$2$1$1",
        "com/chad/library/adapter/base/BaseBinderAdapter$$special$$inlined$let$lambda$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $provider$inlined:Lcom/chad/library/adapter/base/binder/BaseItemBinder;

.field final synthetic $viewHolder$inlined:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field final synthetic this$0:Lcom/chad/library/adapter/base/BaseBinderAdapter;


# direct methods
.method constructor <init>(Lcom/chad/library/adapter/base/BaseBinderAdapter;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/chad/library/adapter/base/binder/BaseItemBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2;->this$0:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    iput-object p2, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2;->$viewHolder$inlined:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    iput-object p3, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2;->$provider$inlined:Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2;->$viewHolder$inlined:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2;->this$0:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getHeaderLayoutCount()I

    move-result v1

    sub-int/2addr v0, v1

    .line 187
    iget-object v1, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2;->$provider$inlined:Lcom/chad/library/adapter/base/binder/BaseItemBinder;

    iget-object v2, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2;->$viewHolder$inlined:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    const-string v3, "v"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/chad/library/adapter/base/BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2;->this$0:Lcom/chad/library/adapter/base/BaseBinderAdapter;

    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseBinderAdapter;->getData()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/chad/library/adapter/base/binder/BaseItemBinder;->onChildLongClick(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Landroid/view/View;Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method
