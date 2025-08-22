.class Lcn/highlight/work_card_write/dialog/HintDialog$2;
.super Ljava/lang/Object;
.source "HintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/highlight/work_card_write/dialog/HintDialog;->initCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/highlight/work_card_write/dialog/HintDialog;


# direct methods
.method constructor <init>(Lcn/highlight/work_card_write/dialog/HintDialog;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/highlight/work_card_write/dialog/HintDialog$2;->this$0:Lcn/highlight/work_card_write/dialog/HintDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcn/highlight/work_card_write/dialog/HintDialog$2;->this$0:Lcn/highlight/work_card_write/dialog/HintDialog;

    invoke-static {v0}, Lcn/highlight/work_card_write/dialog/HintDialog;->access$000(Lcn/highlight/work_card_write/dialog/HintDialog;)Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/dialog/HintDialog$2;->this$0:Lcn/highlight/work_card_write/dialog/HintDialog;

    invoke-static {v0}, Lcn/highlight/work_card_write/dialog/HintDialog;->access$000(Lcn/highlight/work_card_write/dialog/HintDialog;)Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;->onYesClick(Landroid/view/View;)V

    return-void
.end method
