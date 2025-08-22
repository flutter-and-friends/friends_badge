.class public Lcom/codbking/widget/DatePickDialog;
.super Landroid/app/Dialog;
.source "DatePickDialog.java"

# interfaces
.implements Lcom/codbking/widget/OnChangeLisener;


# instance fields
.field private cancel:Landroid/widget/TextView;

.field private format:Ljava/lang/String;

.field private mDatePicker:Lcom/codbking/widget/DatePicker;

.field private messgeTv:Landroid/widget/TextView;

.field private onChangeLisener:Lcom/codbking/widget/OnChangeLisener;

.field private onSureLisener:Lcom/codbking/widget/OnSureLisener;

.field private startDate:Ljava/util/Date;

.field private sure:Landroid/widget/TextView;

.field private title:Ljava/lang/String;

.field private titleTv:Landroid/widget/TextView;

.field private type:Lcom/codbking/widget/bean/DateType;

.field private wheelLayout:Landroid/widget/FrameLayout;

.field private yearLimt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    sget v0, Lcom/codbking/widget/R$style;->dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 31
    sget-object p1, Lcom/codbking/widget/bean/DateType;->TYPE_ALL:Lcom/codbking/widget/bean/DateType;

    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog;->type:Lcom/codbking/widget/bean/DateType;

    .line 34
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog;->startDate:Ljava/util/Date;

    const/4 p1, 0x5

    .line 36
    iput p1, p0, Lcom/codbking/widget/DatePickDialog;->yearLimt:I

    return-void
.end method

.method static synthetic access$000(Lcom/codbking/widget/DatePickDialog;)Lcom/codbking/widget/OnSureLisener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/codbking/widget/DatePickDialog;->onSureLisener:Lcom/codbking/widget/OnSureLisener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codbking/widget/DatePickDialog;)Lcom/codbking/widget/DatePicker;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/codbking/widget/DatePickDialog;->mDatePicker:Lcom/codbking/widget/DatePicker;

    return-object p0
.end method

.method private getDatePicker()Lcom/codbking/widget/DatePicker;
    .locals 3

    .line 93
    new-instance v0, Lcom/codbking/widget/DatePicker;

    invoke-virtual {p0}, Lcom/codbking/widget/DatePickDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codbking/widget/DatePickDialog;->type:Lcom/codbking/widget/bean/DateType;

    invoke-direct {v0, v1, v2}, Lcom/codbking/widget/DatePicker;-><init>(Landroid/content/Context;Lcom/codbking/widget/bean/DateType;)V

    .line 94
    iget-object v1, p0, Lcom/codbking/widget/DatePickDialog;->startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/codbking/widget/DatePicker;->setStartDate(Ljava/util/Date;)V

    .line 95
    iget v1, p0, Lcom/codbking/widget/DatePickDialog;->yearLimt:I

    invoke-virtual {v0, v1}, Lcom/codbking/widget/DatePicker;->setYearLimt(I)V

    .line 96
    invoke-virtual {v0, p0}, Lcom/codbking/widget/DatePicker;->setOnChangeLisener(Lcom/codbking/widget/OnChangeLisener;)V

    .line 97
    invoke-virtual {v0}, Lcom/codbking/widget/DatePicker;->init()V

    return-object v0
.end method

.method private initParas()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/codbking/widget/DatePickDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    .line 134
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 135
    invoke-virtual {p0}, Lcom/codbking/widget/DatePickDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/codbking/widget/DateUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 136
    invoke-virtual {p0}, Lcom/codbking/widget/DatePickDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 102
    sget v0, Lcom/codbking/widget/R$id;->sure:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codbking/widget/DatePickDialog;->sure:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/codbking/widget/R$id;->cancel:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codbking/widget/DatePickDialog;->cancel:Landroid/widget/TextView;

    .line 104
    sget v0, Lcom/codbking/widget/R$id;->wheelLayout:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/codbking/widget/DatePickDialog;->wheelLayout:Landroid/widget/FrameLayout;

    .line 105
    sget v0, Lcom/codbking/widget/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codbking/widget/DatePickDialog;->titleTv:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/codbking/widget/R$id;->message:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePickDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codbking/widget/DatePickDialog;->messgeTv:Landroid/widget/TextView;

    .line 108
    invoke-direct {p0}, Lcom/codbking/widget/DatePickDialog;->getDatePicker()Lcom/codbking/widget/DatePicker;

    move-result-object v0

    iput-object v0, p0, Lcom/codbking/widget/DatePickDialog;->mDatePicker:Lcom/codbking/widget/DatePicker;

    .line 109
    iget-object v0, p0, Lcom/codbking/widget/DatePickDialog;->wheelLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/codbking/widget/DatePickDialog;->mDatePicker:Lcom/codbking/widget/DatePicker;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/codbking/widget/DatePickDialog;->titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codbking/widget/DatePickDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lcom/codbking/widget/DatePickDialog;->cancel:Landroid/widget/TextView;

    new-instance v1, Lcom/codbking/widget/DatePickDialog$1;

    invoke-direct {v1, p0}, Lcom/codbking/widget/DatePickDialog$1;-><init>(Lcom/codbking/widget/DatePickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/codbking/widget/DatePickDialog;->sure:Landroid/widget/TextView;

    new-instance v1, Lcom/codbking/widget/DatePickDialog$2;

    invoke-direct {v1, p0}, Lcom/codbking/widget/DatePickDialog$2;-><init>(Lcom/codbking/widget/DatePickDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/Date;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/codbking/widget/DatePickDialog;->onChangeLisener:Lcom/codbking/widget/OnChangeLisener;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p1}, Lcom/codbking/widget/OnChangeLisener;->onChanged(Ljava/util/Date;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/DatePickDialog;->format:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/codbking/widget/DatePickDialog;->format:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/codbking/widget/DatePickDialog;->messgeTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 86
    sget p1, Lcom/codbking/widget/R$layout;->cbk_dialog_pick_time:I

    invoke-virtual {p0, p1}, Lcom/codbking/widget/DatePickDialog;->setContentView(I)V

    .line 88
    invoke-direct {p0}, Lcom/codbking/widget/DatePickDialog;->initView()V

    .line 89
    invoke-direct {p0}, Lcom/codbking/widget/DatePickDialog;->initParas()V

    return-void
.end method

.method public setMessageFormat(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog;->format:Ljava/lang/String;

    return-void
.end method

.method public setOnChangeLisener(Lcom/codbking/widget/OnChangeLisener;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog;->onChangeLisener:Lcom/codbking/widget/OnChangeLisener;

    return-void
.end method

.method public setOnSureLisener(Lcom/codbking/widget/OnSureLisener;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog;->onSureLisener:Lcom/codbking/widget/OnSureLisener;

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog;->startDate:Ljava/util/Date;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/codbking/widget/bean/DateType;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/codbking/widget/DatePickDialog;->type:Lcom/codbking/widget/bean/DateType;

    return-void
.end method

.method public setYearLimt(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/codbking/widget/DatePickDialog;->yearLimt:I

    return-void
.end method
