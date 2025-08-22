.class public Lcn/highlight/core/view/DateTimePickDialog;
.super Ljava/lang/Object;
.source "DateTimePickDialog.java"

# interfaces
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private activity:Landroid/app/Activity;

.field private ad:Landroid/app/AlertDialog;

.field private date:Ljava/lang/String;

.field private dateListener:Lcn/highlight/core/interfaces/DateListener;

.field private datePicker:Landroid/widget/DatePicker;

.field private initDate:Ljava/lang/String;

.field private timeListener:Lcn/highlight/core/interfaces/TimeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcn/highlight/core/view/DateTimePickDialog;->activity:Landroid/app/Activity;

    .line 48
    iput-object p2, p0, Lcn/highlight/core/view/DateTimePickDialog;->initDate:Ljava/lang/String;

    return-void
.end method

.method private static appendZero(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 173
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/widget/DatePicker;)V
    .locals 6

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcn/highlight/core/view/DateTimePickDialog;->initDate:Ljava/lang/String;

    invoke-static {v1}, Lcn/highlight/core/utils/Tools;->isNull(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "-"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/highlight/core/view/DateTimePickDialog;->initDate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/highlight/core/view/DateTimePickDialog;->initDate:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 62
    :try_start_0
    iget-object v4, p0, Lcn/highlight/core/view/DateTimePickDialog;->initDate:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 63
    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 64
    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v5, v3

    .line 65
    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 66
    invoke-virtual {v0, v4, v5, v2}, Ljava/util/Calendar;->set(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 70
    :goto_0
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 71
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v3, 0x5

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 70
    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    return-void
.end method


# virtual methods
.method public datePicKDialog()V
    .locals 6

    .line 96
    iget-object v0, p0, Lcn/highlight/core/view/DateTimePickDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/highlight/core/R$layout;->common_datetime:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 97
    sget v1, Lcn/highlight/core/R$id;->date_picker:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/DatePicker;

    iput-object v1, p0, Lcn/highlight/core/view/DateTimePickDialog;->datePicker:Landroid/widget/DatePicker;

    const/4 v1, 0x0

    .line 100
    :try_start_0
    iget-object v3, p0, Lcn/highlight/core/view/DateTimePickDialog;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v1}, Landroid/widget/DatePicker;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 102
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 105
    :goto_0
    iget-object v3, p0, Lcn/highlight/core/view/DateTimePickDialog;->datePicker:Landroid/widget/DatePicker;

    const/high16 v4, 0x60000

    invoke-virtual {v3, v4}, Landroid/widget/DatePicker;->setDescendantFocusability(I)V

    .line 106
    iget-object v3, p0, Lcn/highlight/core/view/DateTimePickDialog;->datePicker:Landroid/widget/DatePicker;

    invoke-direct {p0, v3}, Lcn/highlight/core/view/DateTimePickDialog;->init(Landroid/widget/DatePicker;)V

    .line 107
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcn/highlight/core/view/DateTimePickDialog;->activity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcn/highlight/core/view/DateTimePickDialog;->initDate:Ljava/lang/String;

    .line 108
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 109
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u786e\u5b9a"

    .line 110
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "\u53d6\u6d88"

    .line 111
    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/highlight/core/view/DateTimePickDialog;->ad:Landroid/app/AlertDialog;

    .line 112
    iget-object v0, p0, Lcn/highlight/core/view/DateTimePickDialog;->ad:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 113
    iget-object v3, p0, Lcn/highlight/core/view/DateTimePickDialog;->ad:Landroid/app/AlertDialog;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 115
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 116
    iget-object v4, p0, Lcn/highlight/core/view/DateTimePickDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/highlight/core/R$color;->blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 117
    iget-object v4, p0, Lcn/highlight/core/view/DateTimePickDialog;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcn/highlight/core/R$color;->blue:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 118
    new-instance v4, Lcn/highlight/core/view/-$$Lambda$DateTimePickDialog$vWwqWOFeT0D0IcF5FAPosNExUWk;

    invoke-direct {v4, p0}, Lcn/highlight/core/view/-$$Lambda$DateTimePickDialog$vWwqWOFeT0D0IcF5FAPosNExUWk;-><init>(Lcn/highlight/core/view/DateTimePickDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v0, Lcn/highlight/core/view/-$$Lambda$DateTimePickDialog$O3FFimxGyDXj3HbzBmnxqz6JXr0;

    invoke-direct {v0, p0}, Lcn/highlight/core/view/-$$Lambda$DateTimePickDialog$O3FFimxGyDXj3HbzBmnxqz6JXr0;-><init>(Lcn/highlight/core/view/DateTimePickDialog;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    invoke-virtual {p0, v2, v1, v1, v1}, Lcn/highlight/core/view/DateTimePickDialog;->onDateChanged(Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public synthetic lambda$datePicKDialog$0$DateTimePickDialog(Landroid/view/View;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcn/highlight/core/view/DateTimePickDialog;->dateListener:Lcn/highlight/core/interfaces/DateListener;

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcn/highlight/core/view/DateTimePickDialog;->date:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcn/highlight/core/interfaces/DateListener;->getDate(Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object p1, p0, Lcn/highlight/core/view/DateTimePickDialog;->ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$datePicKDialog$1$DateTimePickDialog(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcn/highlight/core/view/DateTimePickDialog;->ad:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$timePicKDialog$2$DateTimePickDialog(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcn/highlight/core/view/DateTimePickDialog;->appendZero(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcn/highlight/core/view/DateTimePickDialog;->appendZero(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    iget-object p2, p0, Lcn/highlight/core/view/DateTimePickDialog;->timeListener:Lcn/highlight/core/interfaces/TimeListener;

    if-eqz p2, :cond_0

    .line 156
    invoke-interface {p2, p1}, Lcn/highlight/core/interfaces/TimeListener;->getTime(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 135
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 136
    iget-object p2, p0, Lcn/highlight/core/view/DateTimePickDialog;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {p2}, Landroid/widget/DatePicker;->getYear()I

    move-result p2

    iget-object p3, p0, Lcn/highlight/core/view/DateTimePickDialog;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {p3}, Landroid/widget/DatePicker;->getMonth()I

    move-result p3

    iget-object p4, p0, Lcn/highlight/core/view/DateTimePickDialog;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {p4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result p4

    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 138
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "yyyy-MM-dd"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/highlight/core/view/DateTimePickDialog;->date:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcn/highlight/core/view/DateTimePickDialog;->ad:Landroid/app/AlertDialog;

    iget-object p2, p0, Lcn/highlight/core/view/DateTimePickDialog;->date:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 130
    invoke-virtual {p0, p2, p1, p1, p1}, Lcn/highlight/core/view/DateTimePickDialog;->onDateChanged(Landroid/widget/DatePicker;III)V

    return-void
.end method

.method public setSelectDateListener(Lcn/highlight/core/interfaces/DateListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcn/highlight/core/view/DateTimePickDialog;->dateListener:Lcn/highlight/core/interfaces/DateListener;

    return-void
.end method

.method public setSelectTimeListener(Lcn/highlight/core/interfaces/TimeListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcn/highlight/core/view/DateTimePickDialog;->timeListener:Lcn/highlight/core/interfaces/TimeListener;

    return-void
.end method

.method public timePicKDialog()V
    .locals 9

    .line 148
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 150
    new-instance v8, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcn/highlight/core/view/DateTimePickDialog;->activity:Landroid/app/Activity;

    new-instance v4, Lcn/highlight/core/view/-$$Lambda$DateTimePickDialog$JhBpLOlJNW_zcZYLVEbRzTdrlfk;

    invoke-direct {v4, p0}, Lcn/highlight/core/view/-$$Lambda$DateTimePickDialog$JhBpLOlJNW_zcZYLVEbRzTdrlfk;-><init>(Lcn/highlight/core/view/DateTimePickDialog;)V

    const/16 v1, 0xb

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v1, 0xc

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x3

    const/4 v7, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 163
    invoke-virtual {v8}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method
