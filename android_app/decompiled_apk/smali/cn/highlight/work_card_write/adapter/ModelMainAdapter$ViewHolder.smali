.class Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ModelMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/ModelMainAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field item:Landroid/widget/LinearLayout;

.field item_img:Landroid/widget/ImageView;

.field item_name:Landroid/widget/TextView;

.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/ModelMainAdapter;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/ModelMainAdapter;Landroid/view/View;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;->this$0:Lcn/highlight/work_card_write/adapter/ModelMainAdapter;

    .line 90
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090158

    .line 91
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;->item:Landroid/widget/LinearLayout;

    const p1, 0x7f09015c

    .line 92
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;->item_img:Landroid/widget/ImageView;

    const p1, 0x7f09015d

    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/ModelMainAdapter$ViewHolder;->item_name:Landroid/widget/TextView;

    return-void
.end method
