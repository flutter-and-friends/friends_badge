.class Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModelCodeStyleBgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field item:Landroid/widget/LinearLayout;

.field item_bg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;Landroid/view/View;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter$ViewHolder;->this$0:Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter;

    .line 108
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090158

    .line 109
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const p1, 0x7f090159

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelCodeStyleBgAdapter$ViewHolder;->item_bg:Landroid/widget/ImageView;

    return-void
.end method
