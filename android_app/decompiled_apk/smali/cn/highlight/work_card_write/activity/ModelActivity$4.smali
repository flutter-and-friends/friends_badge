.class Lcn/highlight/work_card_write/activity/ModelActivity$4;
.super Ljava/lang/Object;
.source "ModelActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/activity/ModelActivity;->initText(Lcn/highlight/lib_doodle/DoodleText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/activity/ModelActivity;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/activity/ModelActivity;)V
    .locals 0

    .line 546
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$4;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    .line 555
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, -0x1

    const/4 v0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    :goto_0
    if-ge v0, p2, :cond_2

    .line 558
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x3

    if-le v1, v3, :cond_1

    if-eq v2, p4, :cond_2

    .line 563
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$4;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object p1, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/ModelActivity$4;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object p2, p2, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2, p3, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 572
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/highlight/work_card_write/activity/ModelActivity$4;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object p1, p1, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    iget-object p2, p0, Lcn/highlight/work_card_write/activity/ModelActivity$4;->this$0:Lcn/highlight/work_card_write/activity/ModelActivity;

    iget-object p2, p2, Lcn/highlight/work_card_write/activity/ModelActivity;->textEdit:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
