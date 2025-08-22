.class public Lcn/highlight/core/view/CenterShowHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "CenterShowHorizontalScrollView.java"


# instance fields
.field private mShowLinear:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->mShowLinear:Landroid/widget/LinearLayout;

    .line 23
    iget-object p1, p0, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->mShowLinear:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 24
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    const/4 v0, -0x1

    invoke-direct {p1, p2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    iget-object p2, p0, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->mShowLinear:Landroid/widget/LinearLayout;

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 26
    iget-object p2, p0, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->mShowLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2, p1}, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addItemView(Landroid/view/View;I)V
    .locals 1

    .line 54
    sget v0, Lcn/highlight/core/R$id;->item_position:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 55
    iget-object p2, p0, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->mShowLinear:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getLinear()Landroid/widget/LinearLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->mShowLinear:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onClicked(Landroid/view/View;)V
    .locals 2

    .line 31
    sget v0, Lcn/highlight/core/R$id;->item_position:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    sget v0, Lcn/highlight/core/R$id;->item_position:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 33
    iget-object v0, p0, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->mShowLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 35
    invoke-virtual {p0}, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->getWidth()I

    move-result v1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->smoothScrollTo(II)V

    :cond_0
    return-void
.end method

.method public setItemCenter(I)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->mShowLinear:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 44
    invoke-virtual {p0}, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->getWidth()I

    move-result v1

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/highlight/core/view/CenterShowHorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method
