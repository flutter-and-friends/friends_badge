.class Lcn/highlight/work_card_write/view/CycleWheelView$1;
.super Ljava/lang/Object;
.source "CycleWheelView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/view/CycleWheelView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/view/CycleWheelView;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/view/CycleWheelView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$1;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$1;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {p1}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$200(Lcn/highlight/work_card_write/view/CycleWheelView;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-nez p2, :cond_2

    .line 141
    iget-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$1;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/highlight/work_card_write/view/CycleWheelView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$1;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/16 v1, 0x32

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 148
    iget-object p2, p0, Lcn/highlight/work_card_write/view/CycleWheelView$1;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {p2, p1}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$100(Lcn/highlight/work_card_write/view/CycleWheelView;F)I

    move-result p1

    invoke-virtual {p2, p1, v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->smoothScrollBy(II)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object p2, p0, Lcn/highlight/work_card_write/view/CycleWheelView$1;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {p2}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$000(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    invoke-static {p2, v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$100(Lcn/highlight/work_card_write/view/CycleWheelView;F)I

    move-result p1

    invoke-virtual {p2, p1, v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->smoothScrollBy(II)V

    :cond_2
    :goto_0
    return-void
.end method
