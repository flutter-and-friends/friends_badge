.class public Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "CycleWheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/highlight/work_card_write/view/CycleWheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CycleWheelViewAdapter"
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

    .line 474
    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 476
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .line 485
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$1000(Lcn/highlight/work_card_write/view/CycleWheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    return v0

    .line 488
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

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
    .locals 2

    if-nez p2, :cond_0

    .line 509
    iget-object p2, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-virtual {p2}, Lcn/highlight/work_card_write/view/CycleWheelView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object p3, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {p3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$1100(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 511
    :cond_0
    iget-object p3, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {p3}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$1200(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 512
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    .line 513
    invoke-static {v0}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$1000(Lcn/highlight/work_card_write/view/CycleWheelView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 517
    :cond_1
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->this$0:Lcn/highlight/work_card_write/view/CycleWheelView;

    invoke-static {v1}, Lcn/highlight/work_card_write/view/CycleWheelView;->access$900(Lcn/highlight/work_card_write/view/CycleWheelView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 518
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, ""

    .line 514
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 515
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
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

    .line 479
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 480
    iget-object v0, p0, Lcn/highlight/work_card_write/view/CycleWheelView$CycleWheelViewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
