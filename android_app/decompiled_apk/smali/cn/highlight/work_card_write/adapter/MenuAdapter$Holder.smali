.class Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/MenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/MenuAdapter;

.field tv_content:Landroid/widget/TextView;

.field v_lin:Landroid/view/View;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/MenuAdapter;Landroid/view/View;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;->this$0:Lcn/highlight/work_card_write/adapter/MenuAdapter;

    .line 82
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902b4

    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;->tv_content:Landroid/widget/TextView;

    const p1, 0x7f0902cd

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/MenuAdapter$Holder;->v_lin:Landroid/view/View;

    return-void
.end method
