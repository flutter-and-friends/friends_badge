.class Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModelBgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/ModelBgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field item:Landroid/widget/LinearLayout;

.field item_bg:Landroid/widget/TextView;

.field item_text:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/ModelBgAdapter;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/ModelBgAdapter;Landroid/view/View;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;->this$0:Lcn/highlight/work_card_write/adapter/ModelBgAdapter;

    .line 82
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090158

    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const p1, 0x7f090159

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;->item_bg:Landroid/widget/TextView;

    const p1, 0x7f09015f

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelBgAdapter$ViewHolder;->item_text:Landroid/widget/TextView;

    return-void
.end method
