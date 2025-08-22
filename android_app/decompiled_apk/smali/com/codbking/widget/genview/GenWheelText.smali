.class public Lcom/codbking/widget/genview/GenWheelText;
.super Lcom/codbking/widget/genview/GenWheelView;
.source "GenWheelText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codbking/widget/genview/GenWheelText$ViewHolder;
    }
.end annotation


# instance fields
.field private line:I

.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x18

    const v2, 0x444444

    .line 31
    invoke-direct {p0, v0, v1, v2}, Lcom/codbking/widget/genview/GenWheelText;-><init>(III)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x18

    .line 34
    invoke-direct {p0, v0, v1, p1}, Lcom/codbking/widget/genview/GenWheelText;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/codbking/widget/genview/GenWheelView;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/codbking/widget/genview/GenWheelText;->line:I

    const/16 v0, 0x18

    .line 28
    iput v0, p0, Lcom/codbking/widget/genview/GenWheelText;->textSize:I

    .line 37
    iput p1, p0, Lcom/codbking/widget/genview/GenWheelText;->line:I

    .line 38
    iput p2, p0, Lcom/codbking/widget/genview/GenWheelText;->textSize:I

    .line 39
    iput p3, p0, Lcom/codbking/widget/genview/GenWheelText;->textColor:I

    return-void
.end method


# virtual methods
.method protected genBody(Landroid/content/Context;Landroid/view/View;Ljava/lang/Object;I)Landroid/view/View;
    .locals 1

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/codbking/widget/R$layout;->cbk_wheel_default_inner_text:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    new-instance p1, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;

    invoke-direct {p1, p0, p4}, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;-><init>(Lcom/codbking/widget/genview/GenWheelText;Lcom/codbking/widget/genview/GenWheelText$1;)V

    .line 51
    sget p4, Lcom/codbking/widget/R$id;->text:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p1, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;->text:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    :goto_0
    iget-object p4, p1, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;->text:Landroid/widget/TextView;

    iget v0, p0, Lcom/codbking/widget/genview/GenWheelText;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 55
    iget-object p4, p1, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;->text:Landroid/widget/TextView;

    iget v0, p0, Lcom/codbking/widget/genview/GenWheelText;->line:I

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 56
    iget-object p4, p1, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object p1, p1, Lcom/codbking/widget/genview/GenWheelText$ViewHolder;->text:Landroid/widget/TextView;

    iget p3, p0, Lcom/codbking/widget/genview/GenWheelText;->textColor:I

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method
