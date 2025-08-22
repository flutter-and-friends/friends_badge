.class public Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NFCLocationActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/activity/NFCLocationActivity;

.field private view7f090147:Landroid/view/View;

.field private view7f090184:Landroid/view/View;

.field private view7f090186:Landroid/view/View;

.field private view7f09018f:Landroid/view/View;

.field private view7f090191:Landroid/view/View;

.field private view7f090198:Landroid/view/View;

.field private view7f090199:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity;)V
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;-><init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity;Landroid/view/View;)V
    .locals 4

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/NFCLocationActivity;

    const v0, 0x7f090147

    const-string v1, "field \'imgBack\' and method \'onViewClicked\'"

    .line 43
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 44
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'imgBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->imgBack:Landroid/widget/ImageView;

    .line 45
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 46
    new-instance v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;Lcn/highlight/work_card_write/activity/NFCLocationActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090186

    const-string v1, "field \'linearIphone\' and method \'onViewClicked\'"

    .line 52
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 53
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearIphone\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearIphone:Landroid/widget/LinearLayout;

    .line 54
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090186:Landroid/view/View;

    .line 55
    new-instance v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;Lcn/highlight/work_card_write/activity/NFCLocationActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090184

    const-string v1, "field \'linearHUAWEI\' and method \'onViewClicked\'"

    .line 61
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 62
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearHUAWEI\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearHUAWEI:Landroid/widget/LinearLayout;

    .line 63
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090184:Landroid/view/View;

    .line 64
    new-instance v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;Lcn/highlight/work_card_write/activity/NFCLocationActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090199

    const-string v1, "field \'linearXiaoMi\' and method \'onViewClicked\'"

    .line 70
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 71
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearXiaoMi\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearXiaoMi:Landroid/widget/LinearLayout;

    .line 72
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090199:Landroid/view/View;

    .line 73
    new-instance v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;Lcn/highlight/work_card_write/activity/NFCLocationActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090191

    const-string v1, "field \'linearSanXing\' and method \'onViewClicked\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearSanXing\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearSanXing:Landroid/widget/LinearLayout;

    .line 81
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090191:Landroid/view/View;

    .line 82
    new-instance v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$5;-><init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;Lcn/highlight/work_card_write/activity/NFCLocationActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09018f

    const-string v1, "field \'linearOppo\' and method \'onViewClicked\'"

    .line 88
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 89
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearOppo\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearOppo:Landroid/widget/LinearLayout;

    .line 90
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f09018f:Landroid/view/View;

    .line 91
    new-instance v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$6;-><init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;Lcn/highlight/work_card_write/activity/NFCLocationActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090198

    const-string v1, "field \'linearVivo\' and method \'onViewClicked\'"

    .line 97
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 98
    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'linearVivo\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearVivo:Landroid/widget/LinearLayout;

    .line 99
    iput-object p2, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090198:Landroid/view/View;

    .line 100
    new-instance v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding$7;-><init>(Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;Lcn/highlight/work_card_write/activity/NFCLocationActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/NFCLocationActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->target:Lcn/highlight/work_card_write/activity/NFCLocationActivity;

    .line 115
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->imgBack:Landroid/widget/ImageView;

    .line 116
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearIphone:Landroid/widget/LinearLayout;

    .line 117
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearHUAWEI:Landroid/widget/LinearLayout;

    .line 118
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearXiaoMi:Landroid/widget/LinearLayout;

    .line 119
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearSanXing:Landroid/widget/LinearLayout;

    .line 120
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearOppo:Landroid/widget/LinearLayout;

    .line 121
    iput-object v1, v0, Lcn/highlight/work_card_write/activity/NFCLocationActivity;->linearVivo:Landroid/widget/LinearLayout;

    .line 123
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090147:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090147:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090186:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090186:Landroid/view/View;

    .line 127
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090184:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090184:Landroid/view/View;

    .line 129
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090199:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090199:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090191:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090191:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f09018f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f09018f:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090198:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object v1, p0, Lcn/highlight/work_card_write/activity/NFCLocationActivity_ViewBinding;->view7f090198:Landroid/view/View;

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
