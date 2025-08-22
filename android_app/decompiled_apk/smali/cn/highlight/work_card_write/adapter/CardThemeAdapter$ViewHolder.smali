.class Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CardThemeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/adapter/CardThemeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field ivImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/adapter/CardThemeAdapter;Landroid/view/View;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;->this$0:Lcn/highlight/work_card_write/adapter/CardThemeAdapter;

    .line 77
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090164

    .line 78
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/highlight/work_card_write/adapter/CardThemeAdapter$ViewHolder;->ivImg:Landroid/widget/ImageView;

    return-void
.end method
