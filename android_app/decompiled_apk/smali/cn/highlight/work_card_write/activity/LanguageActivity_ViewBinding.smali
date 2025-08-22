.class public Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LanguageActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/LanguageActivity;

.field private view7f090092:Landroid/view/View;

.field private view7f090147:Landroid/view/View;

.field private view7f09017e:Landroid/view/View;

.field private view7f090181:Landroid/view/View;

.field private view7f09019b:Landroid/view/View;

.field private view7f0901f4:Landroid/view/View;

.field private view7f0901f5:Landroid/view/View;

.field private view7f0901f6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/LanguageActivity;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/LanguageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/LanguageActivity;Landroid/view/View;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/LanguageActivity;

    const v0, 0x7f090147

    const-string v1, "field \'imgBack\' and method \'onViewClicked\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imgBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LanguageActivity;->imgBack:Landroid/widget/ImageView;

    .line 49
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 50
    new-instance v0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LanguageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090181

    const-string v1, "field \'linearEn\' and method \'onViewClicked\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 57
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearEn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LanguageActivity;->linearEn:Landroid/widget/LinearLayout;

    .line 58
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f090181:Landroid/view/View;

    .line 59
    new-instance v0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LanguageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f5

    const-string v1, "field \'radioEn\' and method \'onViewClicked\'"

    .line 65
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 66
    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'radioEn\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioEn:Landroid/widget/RadioButton;

    .line 67
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f0901f5:Landroid/view/View;

    .line 68
    new-instance v0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LanguageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09019b

    const-string v1, "field \'linearZh\' and method \'onViewClicked\'"

    .line 74
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 75
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearZh\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LanguageActivity;->linearZh:Landroid/widget/LinearLayout;

    .line 76
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f09019b:Landroid/view/View;

    .line 77
    new-instance v0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LanguageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f6

    const-string v1, "field \'radioZh\' and method \'onViewClicked\'"

    .line 83
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 84
    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'radioZh\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioZh:Landroid/widget/RadioButton;

    .line 85
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f0901f6:Landroid/view/View;

    .line 86
    new-instance v0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$5;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LanguageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017e

    const-string v1, "field \'linearDe\' and method \'onViewClicked\'"

    .line 92
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 93
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearDe\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LanguageActivity;->linearDe:Landroid/widget/LinearLayout;

    .line 94
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f09017e:Landroid/view/View;

    .line 95
    new-instance v0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$6;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LanguageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f4

    const-string v1, "field \'radioDe\' and method \'onViewClicked\'"

    .line 101
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 102
    const-class v2, Landroid/widget/RadioButton;

    const-string v3, "field \'radioDe\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioDe:Landroid/widget/RadioButton;

    .line 103
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f0901f4:Landroid/view/View;

    .line 104
    new-instance v0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$7;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LanguageActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090092

    const-string v1, "field \'btnSave\' and method \'onViewClicked\'"

    .line 110
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 111
    const-class v1, Landroid/widget/TextView;

    const-string v2, "field \'btnSave\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/LanguageActivity;->btnSave:Landroid/widget/TextView;

    .line 112
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f090092:Landroid/view/View;

    .line 113
    new-instance v0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding$8;-><init>(Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;Lcn/highlight/work_card_write/activity/LanguageActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/LanguageActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 126
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/LanguageActivity;

    .line 128
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LanguageActivity;->imgBack:Landroid/widget/ImageView;

    .line 129
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LanguageActivity;->linearEn:Landroid/widget/LinearLayout;

    .line 130
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioEn:Landroid/widget/RadioButton;

    .line 131
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LanguageActivity;->linearZh:Landroid/widget/LinearLayout;

    .line 132
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioZh:Landroid/widget/RadioButton;

    .line 133
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LanguageActivity;->linearDe:Landroid/widget/LinearLayout;

    .line 134
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LanguageActivity;->radioDe:Landroid/widget/RadioButton;

    .line 135
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/LanguageActivity;->btnSave:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f090147:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f090181:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f090181:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f0901f5:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f0901f5:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f09019b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f09019b:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f0901f6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f0901f6:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f09017e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f09017e:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f0901f4:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f0901f4:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f090092:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/LanguageActivity_ViewBinding;->view7f090092:Landroid/view/View;

    return-void

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
