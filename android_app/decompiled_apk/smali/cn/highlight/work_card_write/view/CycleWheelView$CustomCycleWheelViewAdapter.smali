.class public Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CycleWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/view/CycleWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomCycleWheelViewAdapter"
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/highlight/work_card_write/view/CycleWheelView;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/view/CycleWheelView;)V
    .locals 0

    .line 524
    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 526
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 535
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$1000(Lcn/highlight/work_card_write/view/CycleWheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 538
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const-string p1, ""

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 559
    iget-object p2, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-virtual {p2}, Lcn/highlight/work_card_write/view/CycleWheelView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object p3, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {p3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$1100(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 561
    :cond_0
    iget-object p3, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {p3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$1200(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f0900c9

    .line 562
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900cb

    .line 563
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900ca

    .line 564
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900cc

    .line 565
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 566
    iget-object v4, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v4}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    const/16 v5, 0x8

    if-lt p1, v4, :cond_5

    iget-object v4, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    .line 567
    invoke-static {v4}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$1000(Lcn/highlight/work_card_write/view/CycleWheelView;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v6}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v4, v6

    if-lt p1, v4, :cond_1

    goto :goto_3

    .line 575
    :cond_1
    iget-object v4, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->mData:Ljava/util/List;

    iget-object v6, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v6}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr p1, v6

    iget-object v6, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    rem-int/2addr p1, v6

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "\u9ed1\u767d"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    .line 577
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 578
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 580
    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    :goto_0
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u7ea2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 584
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 586
    :cond_3
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    :goto_1
    invoke-static {p3}, Lcn/highlight/core/utils/Tools;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "\u9ec4"

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 589
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 591
    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 593
    :goto_2
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    :goto_3
    const-string p1, ""

    .line 568
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x4

    .line 573
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 530
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CustomCycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
