.class public Lcn/highlight/work_card_write/dialog/HintDialog;
.super Lcn/highlight/work_card_write/base/BaseDialog;
.source "HintDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;
    }
.end annotation


# instance fields
.field btnCancel:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090095
    .end annotation
.end field

.field btnSure:Landroid/widget/Button;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09009b
    .end annotation
.end field

.field private btnsure:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field imgLine:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09014e
    .end annotation
.end field

.field llDialog:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901a1
    .end annotation
.end field

.field private mListener:Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;

.field tvMsg:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902bb
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/base/BaseDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcn/highlight/work_card_write/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/base/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p2, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcn/highlight/work_card_write/base/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p2, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->h:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->btnsure:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/work_card_write/dialog/HintDialog;)Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->mListener:Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;

    return-object p0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    const v0, 0x7f0c0059

    return v0
.end method

.method public getLlDialog()Landroid/widget/LinearLayout;
    .locals 1

    .line 34
    iget-object v0, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->llDialog:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method protected initCreate()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->tvMsg:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->btnsure:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->btnSure:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcn/highlight/work_card_write/dialog/HintDialog$1;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/dialog/HintDialog$1;-><init>(Lcn/highlight/work_card_write/dialog/HintDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->btnSure:Landroid/widget/Button;

    new-instance v1, Lcn/highlight/work_card_write/dialog/HintDialog$2;

    invoke-direct {v1, p0}, Lcn/highlight/work_card_write/dialog/HintDialog$2;-><init>(Lcn/highlight/work_card_write/dialog/HintDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnHintDialogListener(Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcn/highlight/work_card_write/dialog/HintDialog;->mListener:Lcn/highlight/work_card_write/dialog/HintDialog$OnHintDialogListener;

    return-void
.end method
