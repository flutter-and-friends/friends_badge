.class Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "EasyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/forward/androids/views/EasyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SelectionViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVH;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 336
    new-instance v0, Lcn/forward/androids/views/EasyAdapter$SelectionItemView;

    invoke-direct {v0, p1}, Lcn/forward/androids/views/EasyAdapter$SelectionItemView;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 337
    iput-object p1, p0, Lcn/forward/androids/views/EasyAdapter$SelectionViewHolder;->viewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method
