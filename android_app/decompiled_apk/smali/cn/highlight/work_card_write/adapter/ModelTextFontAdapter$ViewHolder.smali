.class Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModelTextFontAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field item:Landroid/widget/LinearLayout;

.field item_font:Landroid/widget/TextView;

.field item_font_tv:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;Landroid/view/View;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;->this$0:Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter;

    .line 75
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090158

    .line 76
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const p1, 0x7f09015a

    .line 77
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;->item_font:Landroid/widget/TextView;

    const p1, 0x7f09015b

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelTextFontAdapter$ViewHolder;->item_font_tv:Landroid/widget/TextView;

    return-void
.end method
