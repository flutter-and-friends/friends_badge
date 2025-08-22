.class Lcn/forward/androids/views/EasyAdapter$2;
.super Ljava/lang/Object;
.source "EasyAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/forward/androids/views/EasyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/forward/androids/views/EasyAdapter;

.field final synthetic val$viewHolder:Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;


# direct methods
.method constructor <init>(Lcn/forward/androids/views/EasyAdapter;Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter$2;->this$0:Lcn/forward/androids/views/EasyAdapter;

    iput-object p2, p0, Lcn/forward/androids/views/EasyAdapter$2;->val$viewHolder:Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 196
    iget-object p1, p0, Lcn/forward/androids/views/EasyAdapter$2;->val$viewHolder:Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;

    invoke-virtual {p1}, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;->getAdapterPosition()I

    move-result p1

    .line 197
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$2;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$700(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$2;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$700(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/forward/androids/views/EasyAdapter$OnItemLongClickedListener;->onLongClicked(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
