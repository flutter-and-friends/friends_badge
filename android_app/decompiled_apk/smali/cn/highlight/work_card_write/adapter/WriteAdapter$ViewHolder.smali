.class Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WriteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/WriteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field color_black:Landroid/widget/TextView;

.field color_red:Landroid/widget/TextView;

.field color_white:Landroid/widget/TextView;

.field color_yellow:Landroid/widget/TextView;

.field linear:Landroid/widget/LinearLayout;

.field radioButton:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/WriteAdapter;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/WriteAdapter;Landroid/view/View;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->this$0:Lcn/highlight/work_card_write/adapter/WriteAdapter;

    .line 101
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090175

    .line 102
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->linear:Landroid/widget/LinearLayout;

    const p1, 0x7f0901f3

    .line 103
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const p1, 0x7f0900ba

    .line 104
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_black:Landroid/widget/TextView;

    const p1, 0x7f0900bc

    .line 105
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_white:Landroid/widget/TextView;

    const p1, 0x7f0900bb

    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_red:Landroid/widget/TextView;

    const p1, 0x7f0900bd

    .line 107
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/WriteAdapter$ViewHolder;->color_yellow:Landroid/widget/TextView;

    return-void
.end method
