.class public Lcn/highlight/core/view/AlertDialog;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# instance fields
.field private btn_neg:Landroid/widget/Button;

.field private btn_pos:Landroid/widget/Button;

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/Dialog;

.field private display:Landroid/view/Display;

.field private img_line:Landroid/widget/ImageView;

.field private lLayout_bg:Landroid/widget/LinearLayout;

.field private showMsg:Z

.field private showNegBtn:Z

.field private showPosBtn:Z

.field private showTitle:Z

.field private txt_hint:Landroid/widget/TextView;

.field private txt_msg:Landroid/widget/TextView;

.field private txt_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showTitle:Z

    .line 32
    iput-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showMsg:Z

    .line 33
    iput-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showPosBtn:Z

    .line 34
    iput-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showNegBtn:Z

    .line 37
    iput-object p1, p0, Lcn/highlight/core/view/AlertDialog;->context:Landroid/content/Context;

    const-string v0, "window"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 39
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/core/view/AlertDialog;->display:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcn/highlight/core/view/AlertDialog;)Landroid/app/Dialog;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/highlight/core/view/AlertDialog;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private setLayout()V
    .locals 3

    .line 143
    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showTitle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showMsg:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_0
    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showTitle:Z

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    :cond_1
    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showMsg:Z

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    :cond_2
    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showPosBtn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showNegBtn:Z

    if-nez v0, :cond_3

    .line 157
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    const-string v2, "\u786e\u5b9a"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    sget v2, Lcn/highlight/core/R$drawable;->alertdialog_single_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 160
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v2, Lcn/highlight/core/view/AlertDialog$3;

    invoke-direct {v2, p0}, Lcn/highlight/core/view/AlertDialog$3;-><init>(Lcn/highlight/core/view/AlertDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_3
    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showPosBtn:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showNegBtn:Z

    if-eqz v0, :cond_4

    .line 169
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    sget v2, Lcn/highlight/core/R$drawable;->alertdialog_right_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 171
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    sget v2, Lcn/highlight/core/R$drawable;->alertdialog_left_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 173
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->img_line:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    :cond_4
    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showPosBtn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showNegBtn:Z

    if-nez v0, :cond_5

    .line 177
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    sget v2, Lcn/highlight/core/R$drawable;->alertdialog_single_selector:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 181
    :cond_5
    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showPosBtn:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showNegBtn:Z

    if-eqz v0, :cond_6

    .line 182
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    sget v1, Lcn/highlight/core/R$drawable;->alertdialog_single_selector:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public builder()Lcn/highlight/core/view/AlertDialog;
    .locals 6

    .line 44
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/highlight/core/R$layout;->view_alertdialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 46
    sget v1, Lcn/highlight/core/R$id;->lLayout_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/highlight/core/view/AlertDialog;->lLayout_bg:Landroid/widget/LinearLayout;

    .line 47
    sget v1, Lcn/highlight/core/R$id;->txt_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/highlight/core/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcn/highlight/core/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    sget v1, Lcn/highlight/core/R$id;->txt_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/highlight/core/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    .line 50
    iget-object v1, p0, Lcn/highlight/core/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    sget v1, Lcn/highlight/core/R$id;->txt_hint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/highlight/core/view/AlertDialog;->txt_hint:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lcn/highlight/core/view/AlertDialog;->txt_hint:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    sget v1, Lcn/highlight/core/R$id;->btn_neg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/highlight/core/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    .line 54
    iget-object v1, p0, Lcn/highlight/core/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 55
    sget v1, Lcn/highlight/core/R$id;->btn_pos:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 57
    sget v1, Lcn/highlight/core/R$id;->img_line:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/highlight/core/view/AlertDialog;->img_line:Landroid/widget/ImageView;

    .line 58
    iget-object v1, p0, Lcn/highlight/core/view/AlertDialog;->img_line:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcn/highlight/core/view/AlertDialog;->context:Landroid/content/Context;

    sget v3, Lcn/highlight/core/R$style;->AlertDialogStyle:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcn/highlight/core/view/AlertDialog;->dialog:Landroid/app/Dialog;

    .line 62
    iget-object v1, p0, Lcn/highlight/core/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 63
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->dialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 66
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->lLayout_bg:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcn/highlight/core/view/AlertDialog;->display:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double v2, v2, v4

    double-to-int v2, v2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public setCancelable(Z)Lcn/highlight/core/view/AlertDialog;
    .locals 1

    .line 103
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcn/highlight/core/view/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showMsg:Z

    const-string v0, ""

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p1, p0, Lcn/highlight/core/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    const-string v0, "\u5185\u5bb9"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public setMsgAndHint(Ljava/lang/String;Ljava/lang/String;)Lcn/highlight/core/view/AlertDialog;
    .locals 2

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showMsg:Z

    .line 92
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->txt_hint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, ""

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object p1, p0, Lcn/highlight/core/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    const-string v0, "\u5185\u5bb9"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->txt_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_0
    iget-object p1, p0, Lcn/highlight/core/view/AlertDialog;->txt_hint:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcn/highlight/core/view/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showNegBtn:Z

    const-string v0, ""

    .line 127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object p1, p0, Lcn/highlight/core/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    const-string v0, "\u53d6\u6d88"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :goto_0
    iget-object p1, p0, Lcn/highlight/core/view/AlertDialog;->btn_neg:Landroid/widget/Button;

    new-instance v0, Lcn/highlight/core/view/AlertDialog$2;

    invoke-direct {v0, p0, p2}, Lcn/highlight/core/view/AlertDialog$2;-><init>(Lcn/highlight/core/view/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcn/highlight/core/view/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showPosBtn:Z

    const-string v0, ""

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p1, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    const-string v0, "\u786e\u5b9a"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    iget-object p1, p0, Lcn/highlight/core/view/AlertDialog;->btn_pos:Landroid/widget/Button;

    new-instance v0, Lcn/highlight/core/view/AlertDialog$1;

    invoke-direct {v0, p0, p2}, Lcn/highlight/core/view/AlertDialog$1;-><init>(Lcn/highlight/core/view/AlertDialog;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcn/highlight/core/view/AlertDialog;
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcn/highlight/core/view/AlertDialog;->showTitle:Z

    const-string v0, ""

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object p1, p0, Lcn/highlight/core/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    const-string v0, "\u6807\u9898"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->txt_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 188
    invoke-direct {p0}, Lcn/highlight/core/view/AlertDialog;->setLayout()V

    .line 189
    iget-object v0, p0, Lcn/highlight/core/view/AlertDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
