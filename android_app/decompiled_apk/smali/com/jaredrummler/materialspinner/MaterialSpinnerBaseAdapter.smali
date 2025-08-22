.class public abstract Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "MaterialSpinnerBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field private backgroundSelector:I

.field private final context:Landroid/content/Context;

.field private isHintEnabled:Z

.field private popupPaddingBottom:I

.field private popupPaddingLeft:I

.field private popupPaddingRight:I

.field private popupPaddingTop:I

.field private selectedIndex:I

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract getCount()I
.end method

.method public abstract getItem(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemText(I)Ljava/lang/String;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getItems()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->selectedIndex:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_2

    .line 51
    iget-object p2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 52
    sget v0, Lcom/jaredrummler/materialspinner/R$layout;->ms__list_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    sget p3, Lcom/jaredrummler/materialspinner/R$id;->tv_tinted_spinner:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 54
    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->textColor:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->popupPaddingLeft:I

    iget v1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->popupPaddingTop:I

    iget v2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->popupPaddingRight:I

    iget v3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->popupPaddingBottom:I

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 91
    iget v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->backgroundSelector:I

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 94
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    .line 97
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 100
    :cond_1
    new-instance v0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, v1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;-><init>(Landroid/widget/TextView;Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$1;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;

    invoke-static {p3}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;->access$100(Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p3

    .line 104
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->getItemText(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public isHintEnabled()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->isHintEnabled:Z

    return v0
.end method

.method public notifyItemSelected(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->selectedIndex:I

    return-void
.end method

.method public setBackgroundSelector(I)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 146
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->backgroundSelector:I

    return-object p0
.end method

.method public setHintEnabled(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->isHintEnabled:Z

    return-void
.end method

.method public setPopupPadding(IIII)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 151
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->popupPaddingLeft:I

    .line 152
    iput p2, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->popupPaddingTop:I

    .line 153
    iput p3, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->popupPaddingRight:I

    .line 154
    iput p4, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->popupPaddingBottom:I

    return-object p0
.end method

.method public setTextColor(I)Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter<",
            "TT;>;"
        }
    .end annotation

    .line 141
    iput p1, p0, Lcom/jaredrummler/materialspinner/MaterialSpinnerBaseAdapter;->textColor:I

    return-object p0
.end method
