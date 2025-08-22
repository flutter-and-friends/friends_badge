.class public Lcom/bigkoo/pickerview/view/TimePickerView;
.super Lcom/bigkoo/pickerview/view/BasePickerView;
.source "TimePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG_CANCEL:Ljava/lang/String; = "cancel"

.field private static final TAG_SUBMIT:Ljava/lang/String; = "submit"


# instance fields
.field private wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;


# direct methods
.method public constructor <init>(Lcom/bigkoo/pickerview/configure/PickerOptions;)V
    .locals 1

    .line 32
    iget-object v0, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    .line 34
    iget-object p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/bigkoo/pickerview/view/TimePickerView;)Lcom/bigkoo/pickerview/view/WheelTime;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    return-object p0
.end method

.method private initDefaultSelectedDate()V
    .locals 5

    .line 176
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    .line 179
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    iput-object v1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    iput-object v1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    iput-object v1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    :cond_3
    :goto_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6

    .line 38
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->setDialogOutSideCancelable()V

    .line 39
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->initViews()V

    .line 40
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->initAnim()V

    .line 42
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->customListener:Lcom/bigkoo/pickerview/listener/CustomListener;

    if-nez v0, :cond_3

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/bigkoo/pickerview/R$layout;->pickerview_time:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget v0, Lcom/bigkoo/pickerview/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/view/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    sget v1, Lcom/bigkoo/pickerview/R$id;->rv_topbar:I

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/view/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 50
    sget v2, Lcom/bigkoo/pickerview/R$id;->btnSubmit:I

    invoke-virtual {p0, v2}, Lcom/bigkoo/pickerview/view/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 51
    sget v3, Lcom/bigkoo/pickerview/R$id;->btnCancel:I

    invoke-virtual {p0, v3}, Lcom/bigkoo/pickerview/view/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    const-string v4, "submit"

    .line 53
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    const-string v4, "cancel"

    .line 54
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentConfirm:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/bigkoo/pickerview/R$string;->pickerview_submit:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentConfirm:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v4, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentCancel:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/bigkoo/pickerview/R$string;->pickerview_cancel:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentCancel:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, ""

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->textContentTitle:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorConfirm:I

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 66
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCancel:I

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 67
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorTitle:I

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorTitle:I

    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 71
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeSubmitCancel:I

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 72
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeSubmitCancel:I

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/widget/Button;->setTextSize(F)V

    .line 73
    iget-object p1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget p1, p1, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeTitle:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_3

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->customListener:Lcom/bigkoo/pickerview/listener/CustomListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->layoutRes:I

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bigkoo/pickerview/listener/CustomListener;->customLayout(Landroid/view/View;)V

    .line 79
    :goto_3
    sget p1, Lcom/bigkoo/pickerview/R$id;->timepicker:I

    invoke-virtual {p0, p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->bgColorWheel:I

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 82
    invoke-direct {p0, p1}, Lcom/bigkoo/pickerview/view/TimePickerView;->initWheelTime(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private initWheelTime(Landroid/widget/LinearLayout;)V
    .locals 17

    move-object/from16 v0, p0

    .line 86
    new-instance v1, Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->type:[Z

    iget-object v3, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v3, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->textGravity:I

    iget-object v4, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v4, v4, Lcom/bigkoo/pickerview/configure/PickerOptions;->textSizeContent:I

    move-object/from16 v5, p1

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/bigkoo/pickerview/view/WheelTime;-><init>(Landroid/view/View;[ZII)V

    iput-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    .line 87
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->timeSelectChangeListener:Lcom/bigkoo/pickerview/listener/OnTimeSelectChangeListener;

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    new-instance v2, Lcom/bigkoo/pickerview/view/TimePickerView$1;

    invoke-direct {v2, v0}, Lcom/bigkoo/pickerview/view/TimePickerView$1;-><init>(Lcom/bigkoo/pickerview/view/TimePickerView;)V

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setSelectChangeCallback(Lcom/bigkoo/pickerview/listener/ISelectTimeCallback;)V

    .line 101
    :cond_0
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->isLunarCalendar:Z

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setLunarMode(Z)V

    .line 103
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startYear:I

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->endYear:I

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startYear:I

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->endYear:I

    if-gt v1, v2, :cond_1

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->setRange()V

    .line 109
    :cond_1
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v3, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gtz v5, :cond_2

    .line 113
    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->setRangDate()V

    goto :goto_0

    .line 111
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "startDate can\'t be later than endDate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_3
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 116
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x76c

    if-lt v1, v2, :cond_4

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->setRangDate()V

    goto :goto_0

    .line 117
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The startDate can not as early as 1900"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_5
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    if-eqz v1, :cond_7

    .line 122
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x834

    if-gt v1, v2, :cond_6

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->setRangDate()V

    goto :goto_0

    .line 123
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The endDate should not be later than 2100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->setRangDate()V

    .line 131
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->setTime()V

    .line 132
    iget-object v3, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v4, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_year:Ljava/lang/String;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v5, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_month:Ljava/lang/String;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v6, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_day:Ljava/lang/String;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v7, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_hours:Ljava/lang/String;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v8, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_minutes:Ljava/lang/String;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v9, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_seconds:Ljava/lang/String;

    invoke-virtual/range {v3 .. v9}, Lcom/bigkoo/pickerview/view/WheelTime;->setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v10, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v11, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_year:I

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v12, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_month:I

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v13, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_day:I

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v14, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_hours:I

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v15, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_minutes:I

    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->x_offset_seconds:I

    move/from16 v16, v1

    invoke-virtual/range {v10 .. v16}, Lcom/bigkoo/pickerview/view/WheelTime;->setTextXOffset(IIIIII)V

    .line 136
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->itemsVisibleCount:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setItemsVisible(I)V

    .line 137
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->isAlphaGradient:Z

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setAlphaGradient(Z)V

    .line 138
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelable:Z

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/TimePickerView;->setOutSideCancelable(Z)Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 139
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->cyclic:Z

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setCyclic(Z)V

    .line 140
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerColor:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setDividerColor(I)V

    .line 141
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->dividerType:Lcom/contrarywind/view/WheelView$DividerType;

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setDividerType(Lcom/contrarywind/view/WheelView$DividerType;)V

    .line 142
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->lineSpacingMultiplier:F

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setLineSpacingMultiplier(F)V

    .line 143
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorOut:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setTextColorOut(I)V

    .line 144
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->textColorCenter:I

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setTextColorCenter(I)V

    .line 145
    iget-object v1, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v2, v0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->isCenterLabel:Z

    invoke-virtual {v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->isCenterLabel(Z)V

    return-void
.end method

.method private setRangDate()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startDate:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v2, v2, Lcom/bigkoo/pickerview/configure/PickerOptions;->endDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setRangDate(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 171
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->initDefaultSelectedDate()V

    return-void
.end method

.method private setRange()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->startYear:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setStartYear(I)V

    .line 162
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->endYear:I

    invoke-virtual {v0, v1}, Lcom/bigkoo/pickerview/view/WheelTime;->setEndYear(I)V

    return-void
.end method

.method private setTime()V
    .locals 14

    .line 195
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    const/16 v2, 0xd

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v1, :cond_0

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 199
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 200
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 201
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 202
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 203
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 204
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 207
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 208
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 209
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 210
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 211
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_0
    move v13, v0

    move v8, v1

    move v12, v3

    move v11, v4

    move v10, v5

    move v9, v6

    .line 214
    iget-object v7, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual/range {v7 .. v13}, Lcom/bigkoo/pickerview/view/WheelTime;->setPicker(IIIIII)V

    return-void
.end method


# virtual methods
.method public isDialog()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->isDialog:Z

    return v0
.end method

.method public isLunarCalendar()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/WheelTime;->isLunarMode()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 220
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "submit"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->returnData()V

    goto :goto_0

    :cond_0
    const-string v1, "cancel"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 228
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->dismiss()V

    return-void
.end method

.method public returnData()V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->timeSelectListener:Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    sget-object v0, Lcom/bigkoo/pickerview/view/WheelTime;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual {v1}, Lcom/bigkoo/pickerview/view/WheelTime;->getTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->timeSelectListener:Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;

    iget-object v2, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->clickView:Landroid/view/View;

    invoke-interface {v1, v0, v2}, Lcom/bigkoo/pickerview/listener/OnTimeSelectListener;->onTimeSelect(Ljava/util/Date;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setDate(Ljava/util/Calendar;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iput-object p1, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->date:Ljava/util/Calendar;

    .line 154
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/TimePickerView;->setTime()V

    return-void
.end method

.method public setLunarCalendar(Z)V
    .locals 17

    move-object/from16 v1, p0

    .line 262
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 263
    sget-object v2, Lcom/bigkoo/pickerview/view/WheelTime;->dateFormat:Ljava/text/DateFormat;

    iget-object v3, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual {v3}, Lcom/bigkoo/pickerview/view/WheelTime;->getTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    .line 264
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x2

    .line 265
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v2, 0x5

    .line 266
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v2, 0xb

    .line 267
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v2, 0xc

    .line 268
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v2, 0xd

    .line 269
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 271
    iget-object v0, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Lcom/bigkoo/pickerview/view/WheelTime;->setLunarMode(Z)V

    .line 272
    iget-object v10, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    iget-object v0, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v11, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_year:Ljava/lang/String;

    iget-object v0, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v12, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_month:Ljava/lang/String;

    iget-object v0, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v13, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_day:Ljava/lang/String;

    iget-object v0, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v14, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_hours:Ljava/lang/String;

    iget-object v0, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v15, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_minutes:Ljava/lang/String;

    iget-object v0, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->label_seconds:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Lcom/bigkoo/pickerview/view/WheelTime;->setLabels(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v3, v1, Lcom/bigkoo/pickerview/view/TimePickerView;->wheelTime:Lcom/bigkoo/pickerview/view/WheelTime;

    invoke-virtual/range {v3 .. v9}, Lcom/bigkoo/pickerview/view/WheelTime;->setPicker(IIIIII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    .line 248
    sget v0, Lcom/bigkoo/pickerview/R$id;->tvTitle:I

    invoke-virtual {p0, v0}, Lcom/bigkoo/pickerview/view/TimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
