.class Lcn/forward/androids/views/EasyAdapter$1;
.super Ljava/lang/Object;
.source "EasyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 157
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    iput-object p2, p0, Lcn/forward/androids/views/EasyAdapter$1;->val$viewHolder:Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 160
    iget-object p1, p0, Lcn/forward/androids/views/EasyAdapter$1;->val$viewHolder:Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;

    invoke-virtual {p1}, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;->getAdapterPosition()I

    move-result p1

    .line 161
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$000(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$Mode;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/views/EasyAdapter$Mode;->CLICK:Lcn/forward/androids/views/EasyAdapter$Mode;

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$100(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 163
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$100(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/forward/androids/views/EasyAdapter$OnItemClickedListener;->onClicked(I)V

    goto/16 :goto_1

    .line 165
    :cond_0
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$000(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$Mode;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/views/EasyAdapter$Mode;->SINGLE_SELECT:Lcn/forward/androids/views/EasyAdapter$Mode;

    if-ne v0, v1, :cond_2

    .line 166
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0, p1}, Lcn/forward/androids/views/EasyAdapter;->access$202(Lcn/forward/androids/views/EasyAdapter;I)I

    .line 167
    iget-object p1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {p1}, Lcn/forward/androids/views/EasyAdapter;->access$300(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {p1}, Lcn/forward/androids/views/EasyAdapter;->access$300(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;

    move-result-object p1

    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$200(Lcn/forward/androids/views/EasyAdapter;)I

    move-result v0

    invoke-interface {p1, v0}, Lcn/forward/androids/views/EasyAdapter$OnSingleSelectListener;->onSelected(I)V

    .line 170
    :cond_1
    iget-object p1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-virtual {p1}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 171
    :cond_2
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$000(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$Mode;

    move-result-object v0

    sget-object v1, Lcn/forward/androids/views/EasyAdapter$Mode;->MULTI_SELECT:Lcn/forward/androids/views/EasyAdapter$Mode;

    if-ne v0, v1, :cond_7

    .line 172
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$400(Lcn/forward/androids/views/EasyAdapter;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    .line 173
    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$500(Lcn/forward/androids/views/EasyAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result v0

    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v1}, Lcn/forward/androids/views/EasyAdapter;->access$400(Lcn/forward/androids/views/EasyAdapter;)I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    .line 174
    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$500(Lcn/forward/androids/views/EasyAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 175
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$600(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$600(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;->onOutOfMax(I)V

    :cond_3
    return-void

    .line 180
    :cond_4
    iget-object v0, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v0}, Lcn/forward/androids/views/EasyAdapter;->access$500(Lcn/forward/androids/views/EasyAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v1}, Lcn/forward/androids/views/EasyAdapter;->access$500(Lcn/forward/androids/views/EasyAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_5
    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v1}, Lcn/forward/androids/views/EasyAdapter;->access$500(Lcn/forward/androids/views/EasyAdapter;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_0
    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v1}, Lcn/forward/androids/views/EasyAdapter;->access$600(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 187
    iget-object v1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-static {v1}, Lcn/forward/androids/views/EasyAdapter;->access$600(Lcn/forward/androids/views/EasyAdapter;)Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, p1, v0}, Lcn/forward/androids/views/EasyAdapter$OnMultiSelectListener;->onSelected(IZ)V

    .line 189
    :cond_6
    iget-object p1, p0, Lcn/forward/androids/views/EasyAdapter$1;->this$0:Lcn/forward/androids/views/EasyAdapter;

    invoke-virtual {p1}, Lcn/forward/androids/views/EasyAdapter;->notifyDataSetChanged()V

    :cond_7
    :goto_1
    return-void
.end method
