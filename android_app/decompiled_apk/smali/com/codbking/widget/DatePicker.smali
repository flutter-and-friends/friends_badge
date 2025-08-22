.class Lcom/codbking/widget/DatePicker;
.super Lcom/codbking/widget/BaseWheelPick;
.source "DatePicker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WheelPicker"


# instance fields
.field private datePicker:Lcom/codbking/widget/DatePickerHelper;

.field private dayArr:[Ljava/lang/Integer;

.field private dayView:Lcom/codbking/widget/view/WheelView;

.field private hourArr:[Ljava/lang/Integer;

.field private hourView:Lcom/codbking/widget/view/WheelView;

.field private minutArr:[Ljava/lang/Integer;

.field private minuteView:Lcom/codbking/widget/view/WheelView;

.field private monthView:Lcom/codbking/widget/view/WheelView;

.field private mothArr:[Ljava/lang/Integer;

.field private onChangeLisener:Lcom/codbking/widget/OnChangeLisener;

.field private selectDay:I

.field private startDate:Ljava/util/Date;

.field public type:Lcom/codbking/widget/bean/DateType;

.field private weekView:Landroid/widget/TextView;

.field private yearArr:[Ljava/lang/Integer;

.field private yearLimt:I

.field private yearView:Lcom/codbking/widget/view/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/codbking/widget/bean/DateType;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/codbking/widget/BaseWheelPick;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object p1, Lcom/codbking/widget/bean/DateType;->TYPE_ALL:Lcom/codbking/widget/bean/DateType;

    iput-object p1, p0, Lcom/codbking/widget/DatePicker;->type:Lcom/codbking/widget/bean/DateType;

    .line 35
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/codbking/widget/DatePicker;->startDate:Ljava/util/Date;

    const/4 p1, 0x5

    .line 37
    iput p1, p0, Lcom/codbking/widget/DatePicker;->yearLimt:I

    .line 49
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->type:Lcom/codbking/widget/bean/DateType;

    if-eqz p1, :cond_0

    .line 50
    iput-object p2, p0, Lcom/codbking/widget/DatePicker;->type:Lcom/codbking/widget/bean/DateType;

    :cond_0
    return-void
.end method

.method private setChangeDaySelect(II)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/codbking/widget/DatePickerHelper;->genDay(II)[Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/codbking/widget/DatePicker;->dayArr:[Ljava/lang/Integer;

    .line 173
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {p1}, Lcom/codbking/widget/view/WheelView;->getViewAdapter()Lcom/codbking/widget/adapters/WheelViewAdapter;

    move-result-object p1

    check-cast p1, Lcom/codbking/widget/genview/WheelGeneralAdapter;

    .line 174
    iget-object p2, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayArr:[Ljava/lang/Integer;

    invoke-virtual {p0, p2, v0}, Lcom/codbking/widget/DatePicker;->convertData(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Integer;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codbking/widget/genview/WheelGeneralAdapter;->setData([Ljava/lang/Object;)V

    .line 176
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    iget p2, p0, Lcom/codbking/widget/DatePicker;->selectDay:I

    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayArr:[Ljava/lang/Integer;

    invoke-virtual {p1, p2, v0}, Lcom/codbking/widget/DatePickerHelper;->findIndextByValue(I[Ljava/lang/Integer;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 178
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/codbking/widget/view/WheelView;->setCurrentItem(I)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p2, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {p2, p1}, Lcom/codbking/widget/view/WheelView;->setCurrentItem(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected convertData(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Integer;)[Ljava/lang/String;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    if-ne p1, v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    const-string v0, "\u5e74"

    invoke-virtual {p1, p2, v0}, Lcom/codbking/widget/DatePickerHelper;->getDisplayValue([Ljava/lang/Integer;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    if-ne p1, v0, :cond_1

    .line 145
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    const-string v0, "\u6708"

    invoke-virtual {p1, p2, v0}, Lcom/codbking/widget/DatePickerHelper;->getDisplayValue([Ljava/lang/Integer;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    if-ne p1, v0, :cond_2

    .line 147
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    const-string v0, "\u65e5"

    invoke-virtual {p1, p2, v0}, Lcom/codbking/widget/DatePickerHelper;->getDisplayValue([Ljava/lang/Integer;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    const-string v1, ""

    if-ne p1, v0, :cond_3

    .line 149
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {p1, p2, v1}, Lcom/codbking/widget/DatePickerHelper;->getDisplayValue([Ljava/lang/Integer;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    if-ne p1, v0, :cond_4

    .line 151
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {p1, p2, v1}, Lcom/codbking/widget/DatePickerHelper;->getDisplayValue([Ljava/lang/Integer;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method protected getItemHeight()I
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0}, Lcom/codbking/widget/view/WheelView;->getItemHeight()I

    move-result v0

    return v0
.end method

.method protected getLayout()I
    .locals 1

    .line 158
    sget v0, Lcom/codbking/widget/R$layout;->cbk_wheel_picker:I

    return v0
.end method

.method public getSelectDate()Ljava/util/Date;
    .locals 6

    .line 221
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->yearArr:[Ljava/lang/Integer;

    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v1}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->mothArr:[Ljava/lang/Integer;

    iget-object v2, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v2}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 223
    iget-object v2, p0, Lcom/codbking/widget/DatePicker;->dayArr:[Ljava/lang/Integer;

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v3}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 224
    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->hourArr:[Ljava/lang/Integer;

    iget-object v4, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v4}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 225
    iget-object v4, p0, Lcom/codbking/widget/DatePicker;->minutArr:[Ljava/lang/Integer;

    iget-object v5, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v5}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 227
    invoke-static {v0, v1, v2, v3, v4}, Lcom/codbking/widget/DateUtils;->getDate(IIIII)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 5

    .line 65
    sget v0, Lcom/codbking/widget/R$id;->minute:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codbking/widget/view/WheelView;

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    .line 66
    sget v0, Lcom/codbking/widget/R$id;->hour:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codbking/widget/view/WheelView;

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    .line 67
    sget v0, Lcom/codbking/widget/R$id;->week:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->weekView:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/codbking/widget/R$id;->day:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codbking/widget/view/WheelView;

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    .line 69
    sget v0, Lcom/codbking/widget/R$id;->month:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codbking/widget/view/WheelView;

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    .line 70
    sget v0, Lcom/codbking/widget/R$id;->year:I

    invoke-virtual {p0, v0}, Lcom/codbking/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codbking/widget/view/WheelView;

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    .line 72
    sget-object v0, Lcom/codbking/widget/DatePicker$1;->$SwitchMap$com$codbking$widget$bean$DateType:[I

    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->type:Lcom/codbking/widget/bean/DateType;

    invoke-virtual {v1}, Lcom/codbking/widget/bean/DateType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->weekView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v4}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v4}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v4}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    goto/16 :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v4}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v4}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->weekView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v4}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->weekView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->weekView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_4
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->weekView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0, v2}, Lcom/codbking/widget/view/WheelView;->setVisibility(I)V

    .line 115
    :goto_0
    new-instance v0, Lcom/codbking/widget/DatePickerHelper;

    invoke-direct {v0}, Lcom/codbking/widget/DatePickerHelper;-><init>()V

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    .line 116
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->startDate:Ljava/util/Date;

    iget v4, p0, Lcom/codbking/widget/DatePicker;->yearLimt:I

    invoke-virtual {v0, v3, v4}, Lcom/codbking/widget/DatePickerHelper;->setStartDate(Ljava/util/Date;I)V

    .line 118
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {v0}, Lcom/codbking/widget/DatePickerHelper;->genDay()[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->dayArr:[Ljava/lang/Integer;

    .line 119
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {v0}, Lcom/codbking/widget/DatePickerHelper;->genYear()[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->yearArr:[Ljava/lang/Integer;

    .line 120
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {v0}, Lcom/codbking/widget/DatePickerHelper;->genMonth()[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->mothArr:[Ljava/lang/Integer;

    .line 121
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {v0}, Lcom/codbking/widget/DatePickerHelper;->genHour()[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->hourArr:[Ljava/lang/Integer;

    .line 122
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {v0}, Lcom/codbking/widget/DatePickerHelper;->genMinut()[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/codbking/widget/DatePicker;->minutArr:[Ljava/lang/Integer;

    .line 124
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->weekView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {v3}, Lcom/codbking/widget/DatePickerHelper;->getDisplayStartWeek()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->yearArr:[Ljava/lang/Integer;

    invoke-virtual {p0, v0, v3, v2}, Lcom/codbking/widget/DatePicker;->setWheelListener(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Object;Z)V

    .line 127
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    iget-object v2, p0, Lcom/codbking/widget/DatePicker;->mothArr:[Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/codbking/widget/DatePicker;->setWheelListener(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Object;Z)V

    .line 128
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    iget-object v2, p0, Lcom/codbking/widget/DatePicker;->dayArr:[Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/codbking/widget/DatePicker;->setWheelListener(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Object;Z)V

    .line 129
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    iget-object v2, p0, Lcom/codbking/widget/DatePicker;->hourArr:[Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/codbking/widget/DatePicker;->setWheelListener(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Object;Z)V

    .line 130
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    iget-object v2, p0, Lcom/codbking/widget/DatePicker;->minutArr:[Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v1}, Lcom/codbking/widget/DatePicker;->setWheelListener(Lcom/codbking/widget/view/WheelView;[Ljava/lang/Object;Z)V

    .line 132
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    sget-object v2, Lcom/codbking/widget/DatePickerHelper$Type;->YEAR:Lcom/codbking/widget/DatePickerHelper$Type;

    invoke-virtual {v1, v2}, Lcom/codbking/widget/DatePickerHelper;->getToady(Lcom/codbking/widget/DatePickerHelper$Type;)I

    move-result v2

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->yearArr:[Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/codbking/widget/DatePickerHelper;->findIndextByValue(I[Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codbking/widget/view/WheelView;->setCurrentItem(I)V

    .line 133
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    sget-object v2, Lcom/codbking/widget/DatePickerHelper$Type;->MOTH:Lcom/codbking/widget/DatePickerHelper$Type;

    invoke-virtual {v1, v2}, Lcom/codbking/widget/DatePickerHelper;->getToady(Lcom/codbking/widget/DatePickerHelper$Type;)I

    move-result v2

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->mothArr:[Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/codbking/widget/DatePickerHelper;->findIndextByValue(I[Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codbking/widget/view/WheelView;->setCurrentItem(I)V

    .line 134
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    sget-object v2, Lcom/codbking/widget/DatePickerHelper$Type;->DAY:Lcom/codbking/widget/DatePickerHelper$Type;

    invoke-virtual {v1, v2}, Lcom/codbking/widget/DatePickerHelper;->getToady(Lcom/codbking/widget/DatePickerHelper$Type;)I

    move-result v2

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->dayArr:[Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/codbking/widget/DatePickerHelper;->findIndextByValue(I[Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codbking/widget/view/WheelView;->setCurrentItem(I)V

    .line 135
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    sget-object v2, Lcom/codbking/widget/DatePickerHelper$Type;->HOUR:Lcom/codbking/widget/DatePickerHelper$Type;

    invoke-virtual {v1, v2}, Lcom/codbking/widget/DatePickerHelper;->getToady(Lcom/codbking/widget/DatePickerHelper$Type;)I

    move-result v2

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->hourArr:[Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/codbking/widget/DatePickerHelper;->findIndextByValue(I[Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codbking/widget/view/WheelView;->setCurrentItem(I)V

    .line 136
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    sget-object v2, Lcom/codbking/widget/DatePickerHelper$Type;->MINUTE:Lcom/codbking/widget/DatePickerHelper$Type;

    invoke-virtual {v1, v2}, Lcom/codbking/widget/DatePickerHelper;->getToady(Lcom/codbking/widget/DatePickerHelper$Type;)I

    move-result v2

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->minutArr:[Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Lcom/codbking/widget/DatePickerHelper;->findIndextByValue(I[Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codbking/widget/view/WheelView;->setCurrentItem(I)V

    return-void
.end method

.method public onChanged(Lcom/codbking/widget/view/WheelView;II)V
    .locals 4

    .line 187
    iget-object p2, p0, Lcom/codbking/widget/DatePicker;->yearArr:[Ljava/lang/Integer;

    iget-object p3, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {p3}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result p3

    aget-object p2, p2, p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 188
    iget-object p3, p0, Lcom/codbking/widget/DatePicker;->mothArr:[Ljava/lang/Integer;

    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v0}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result v0

    aget-object p3, p3, v0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 189
    iget-object v0, p0, Lcom/codbking/widget/DatePicker;->dayArr:[Ljava/lang/Integer;

    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v1}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/codbking/widget/DatePicker;->hourArr:[Ljava/lang/Integer;

    iget-object v2, p0, Lcom/codbking/widget/DatePicker;->hourView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v2}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/codbking/widget/DatePicker;->minutArr:[Ljava/lang/Integer;

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->minuteView:Lcom/codbking/widget/view/WheelView;

    invoke-virtual {v3}, Lcom/codbking/widget/view/WheelView;->getCurrentItem()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 193
    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    if-eq p1, v3, :cond_1

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    if-ne p1, v3, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iput v0, p0, Lcom/codbking/widget/DatePicker;->selectDay:I

    goto :goto_1

    .line 194
    :cond_1
    :goto_0
    invoke-direct {p0, p2, p3}, Lcom/codbking/widget/DatePicker;->setChangeDaySelect(II)V

    .line 199
    :goto_1
    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->yearView:Lcom/codbking/widget/view/WheelView;

    if-eq p1, v3, :cond_2

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->monthView:Lcom/codbking/widget/view/WheelView;

    if-eq p1, v3, :cond_2

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->dayView:Lcom/codbking/widget/view/WheelView;

    if-ne p1, v3, :cond_3

    .line 200
    :cond_2
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->weekView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/codbking/widget/DatePicker;->datePicker:Lcom/codbking/widget/DatePickerHelper;

    invoke-virtual {v3, p2, p3, v0}, Lcom/codbking/widget/DatePickerHelper;->getDisplayWeek(III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_3
    iget-object p1, p0, Lcom/codbking/widget/DatePicker;->onChangeLisener:Lcom/codbking/widget/OnChangeLisener;

    if-eqz p1, :cond_4

    .line 204
    invoke-static {p2, p3, v0, v1, v2}, Lcom/codbking/widget/DateUtils;->getDate(IIIII)Ljava/util/Date;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/codbking/widget/OnChangeLisener;->onChanged(Ljava/util/Date;)V

    :cond_4
    return-void
.end method

.method public onScrollingFinished(Lcom/codbking/widget/view/WheelView;)V
    .locals 0

    return-void
.end method

.method public onScrollingStarted(Lcom/codbking/widget/view/WheelView;)V
    .locals 0

    return-void
.end method

.method protected setData([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setOnChangeLisener(Lcom/codbking/widget/OnChangeLisener;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/codbking/widget/DatePicker;->onChangeLisener:Lcom/codbking/widget/OnChangeLisener;

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/codbking/widget/DatePicker;->startDate:Ljava/util/Date;

    return-void
.end method

.method public setYearLimt(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/codbking/widget/DatePicker;->yearLimt:I

    return-void
.end method
