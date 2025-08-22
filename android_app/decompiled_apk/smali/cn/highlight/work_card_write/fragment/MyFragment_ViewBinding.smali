.class public Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MyFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcn/highlight/work_card_write/fragment/MyFragment;

.field private view7f090176:Landroid/view/View;

.field private view7f09017b:Landroid/view/View;

.field private view7f090188:Landroid/view/View;

.field private view7f09018e:Landroid/view/View;

.field private view7f090196:Landroid/view/View;

.field private view7f090197:Landroid/view/View;

.field private view7f0901a0:Landroid/view/View;

.field private view7f0901a8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcn/highlight/work_card_write/fragment/MyFragment;Landroid/view/View;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->target:Lcn/highlight/work_card_write/fragment/MyFragment;

    const v0, 0x7f090188

    const-string v1, "field \'linearLanguage\' and method \'onViewClicked\'"

    .line 40
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 41
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearLanguage\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->linearLanguage:Landroid/widget/LinearLayout;

    .line 42
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090188:Landroid/view/View;

    .line 43
    new-instance v0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$1;-><init>(Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/MyFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090196

    const-string v1, "field \'linearUse\' and method \'onViewClicked\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearUse\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->linearUse:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090196:Landroid/view/View;

    .line 52
    new-instance v0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$2;-><init>(Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/MyFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09018e

    const-string v1, "field \'linearNfc\' and method \'onViewClicked\'"

    .line 58
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 59
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearNfc\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->linearNfc:Landroid/widget/LinearLayout;

    .line 60
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f09018e:Landroid/view/View;

    .line 61
    new-instance v0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$3;-><init>(Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/MyFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090176

    const-string v1, "field \'linearAbout\' and method \'onViewClicked\'"

    .line 67
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 68
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearAbout\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->linearAbout:Landroid/widget/LinearLayout;

    .line 69
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090176:Landroid/view/View;

    .line 70
    new-instance v0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$4;-><init>(Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/MyFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017b

    const-string v1, "field \'linearClear\' and method \'onViewClicked\'"

    .line 76
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 77
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearClear\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->linearClear:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f09017b:Landroid/view/View;

    .line 79
    new-instance v0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$5;-><init>(Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/MyFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090197

    const-string v1, "field \'linearUserType\' and method \'onViewClicked\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 86
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'linearUserType\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->linearUserType:Landroid/widget/LinearLayout;

    .line 87
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090197:Landroid/view/View;

    .line 88
    new-instance v0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$6;-><init>(Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/MyFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901a8

    const-string v1, "field \'llUserInfo\' and method \'onViewClicked\'"

    .line 94
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 95
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'llUserInfo\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->llUserInfo:Landroid/widget/LinearLayout;

    .line 96
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f0901a8:Landroid/view/View;

    .line 97
    new-instance v0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$7;-><init>(Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/MyFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c4

    const-string v2, "field \'tvUserNmae\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserNmae:Landroid/widget/TextView;

    .line 104
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902b0

    const-string v2, "field \'tvUserinfo\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserinfo:Landroid/widget/TextView;

    const v0, 0x7f0901a0

    const-string v1, "field \'llArrowRight\' and method \'onViewClicked\'"

    .line 105
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 106
    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'llArrowRight\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcn/highlight/work_card_write/fragment/MyFragment;->llArrowRight:Landroid/widget/LinearLayout;

    .line 107
    iput-object p2, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f0901a0:Landroid/view/View;

    .line 108
    new-instance v0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding$8;-><init>(Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;Lcn/highlight/work_card_write/fragment/MyFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->target:Lcn/highlight/work_card_write/fragment/MyFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->target:Lcn/highlight/work_card_write/fragment/MyFragment;

    .line 123
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->linearLanguage:Landroid/widget/LinearLayout;

    .line 124
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->linearUse:Landroid/widget/LinearLayout;

    .line 125
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->linearNfc:Landroid/widget/LinearLayout;

    .line 126
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->linearAbout:Landroid/widget/LinearLayout;

    .line 127
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->linearClear:Landroid/widget/LinearLayout;

    .line 128
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->linearUserType:Landroid/widget/LinearLayout;

    .line 129
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->llUserInfo:Landroid/widget/LinearLayout;

    .line 130
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserNmae:Landroid/widget/TextView;

    .line 131
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->tvUserinfo:Landroid/widget/TextView;

    .line 132
    iput-object v1, v0, Lcn/highlight/work_card_write/fragment/MyFragment;->llArrowRight:Landroid/widget/LinearLayout;

    .line 134
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090188:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090188:Landroid/view/View;

    .line 136
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090196:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090196:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f09018e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f09018e:Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090176:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090176:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f09017b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f09017b:Landroid/view/View;

    .line 144
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090197:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f090197:Landroid/view/View;

    .line 146
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f0901a8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f0901a8:Landroid/view/View;

    .line 148
    iget-object v0, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f0901a0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iput-object v1, p0, Lcn/highlight/work_card_write/fragment/MyFragment_ViewBinding;->view7f0901a0:Landroid/view/View;

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
