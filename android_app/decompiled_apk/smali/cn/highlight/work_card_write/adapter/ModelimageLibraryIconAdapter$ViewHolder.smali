.class Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModelimageLibraryIconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cardView:Landroidx/cardview/widget/CardView;

.field ivImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;Landroid/view/View;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;->this$0:Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter;

    .line 70
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900a1

    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090164

    .line 72
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelimageLibraryIconAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    return-void
.end method
