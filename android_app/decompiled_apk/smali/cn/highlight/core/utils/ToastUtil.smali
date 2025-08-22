.class public Lcn/highlight/core/utils/ToastUtil;
.super Ljava/lang/Object;
.source "ToastUtil.java"


# static fields
.field private static mToast:Landroid/widget/Toast;

.field private static toastUtil:Lcn/highlight/core/utils/ToastUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCentreView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    .line 160
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/highlight/core/R$layout;->item_toast_centre:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 161
    sget v1, Lcn/highlight/core/R$id;->tv_toast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static getCentreView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 152
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcn/highlight/core/R$layout;->item_toast_centre:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 153
    sget v0, Lcn/highlight/core/R$id;->tv_toast:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 154
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static getInterface()Lcn/highlight/core/utils/ToastUtil;
    .locals 1

    .line 28
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->toastUtil:Lcn/highlight/core/utils/ToastUtil;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcn/highlight/core/utils/ToastUtil;

    invoke-direct {v0}, Lcn/highlight/core/utils/ToastUtil;-><init>()V

    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->toastUtil:Lcn/highlight/core/utils/ToastUtil;

    .line 31
    :cond_0
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->toastUtil:Lcn/highlight/core/utils/ToastUtil;

    return-object v0
.end method

.method private static getView(Landroid/content/Context;I)Landroid/view/View;
    .locals 3

    .line 144
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/highlight/core/R$layout;->item_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 145
    sget v1, Lcn/highlight/core/R$id;->tv_toast:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private static getView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .line 136
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcn/highlight/core/R$layout;->item_toast:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 137
    sget v0, Lcn/highlight/core/R$id;->tv_toast:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method static synthetic lambda$showDialog$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static showCentreToast(Landroid/content/Context;I)V
    .locals 3

    .line 118
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 120
    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 121
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 122
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getCentreView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 123
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 124
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 127
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getCentreView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 128
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 129
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static showCentreToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 102
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 104
    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 105
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 106
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getCentreView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 107
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 108
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 111
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getCentreView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 112
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 113
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static showCentreToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 86
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 89
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    sput-object p2, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 90
    sget-object p2, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getCentreView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 91
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 92
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    sput-object p2, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 95
    sget-object p2, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getCentreView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 96
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 97
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 170
    new-instance v0, Lcn/highlight/core/view/AlertDialog;

    invoke-direct {v0, p0}, Lcn/highlight/core/view/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcn/highlight/core/view/AlertDialog;->builder()Lcn/highlight/core/view/AlertDialog;

    move-result-object p0

    .line 171
    invoke-virtual {p0, p1}, Lcn/highlight/core/view/AlertDialog;->setMsg(Ljava/lang/String;)Lcn/highlight/core/view/AlertDialog;

    move-result-object p0

    sget-object p1, Lcn/highlight/core/utils/-$$Lambda$ToastUtil$hPiScCZA5bBA-9n0d_G3yPhfMUo;->INSTANCE:Lcn/highlight/core/utils/-$$Lambda$ToastUtil$hPiScCZA5bBA-9n0d_G3yPhfMUo;

    const-string v0, "\u786e\u5b9a"

    .line 172
    invoke-virtual {p0, v0, p1}, Lcn/highlight/core/view/AlertDialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcn/highlight/core/view/AlertDialog;

    move-result-object p0

    .line 173
    invoke-virtual {p0}, Lcn/highlight/core/view/AlertDialog;->show()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 68
    :cond_0
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 72
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 73
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 76
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 77
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 52
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 55
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 56
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 57
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 60
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 61
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 38
    sget-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 41
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    sput-object p2, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 42
    sget-object p2, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 43
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    sput-object p2, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    .line 46
    sget-object p2, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-static {p0, p1}, Lcn/highlight/core/utils/ToastUtil;->getView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 47
    sget-object p0, Lcn/highlight/core/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
