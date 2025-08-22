.class Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardThemeSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cardView:Landroidx/cardview/widget/CardView;

.field imgSelected:Landroid/widget/ImageView;

.field imgUnSelect:Landroid/widget/ImageView;

.field ivImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;Landroid/view/View;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->this$0:Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter;

    .line 82
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900a1

    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->cardView:Landroidx/cardview/widget/CardView;

    const p1, 0x7f090164

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    const p1, 0x7f09014c

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->imgUnSelect:Landroid/widget/ImageView;

    const p1, 0x7f09014b

    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeSelectAdapter$ViewHolder;->imgSelected:Landroid/widget/ImageView;

    return-void
.end method
