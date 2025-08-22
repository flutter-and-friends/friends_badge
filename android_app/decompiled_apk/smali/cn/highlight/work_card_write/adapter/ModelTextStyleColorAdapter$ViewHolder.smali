.class Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModelTextStyleColorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field item:Landroid/widget/LinearLayout;

.field item_bg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;Landroid/view/View;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter$ViewHolder;->this$0:Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter;

    .line 80
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090158

    .line 81
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const p1, 0x7f090159

    .line 82
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextStyleColorAdapter$ViewHolder;->item_bg:Landroid/widget/ImageView;

    return-void
.end method
