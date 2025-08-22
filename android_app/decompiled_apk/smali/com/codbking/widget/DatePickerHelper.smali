.class Lcom/codbking/widget/DatePickerHelper;
.super Ljava/lang/Object;
.source "DatePickerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codbking/widget/DatePickerHelper$Type;
    }
.end annotation


# instance fields
.field private DAY_START:I

.field private HOUR_START:I

.field private MINUTE_START:I

.field private MONTH_START:I

.field private WEEK_START:I

.field private YEAR_START:I

.field private dispalyTem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startDate:Ljava/util/Date;

.field private tem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private weeks:[Ljava/lang/String;

.field private yearLimt:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->startDate:Ljava/util/Date;

    const/4 v0, 0x5

    .line 31
    iput v0, p0, Lcom/codbking/widget/DatePickerHelper;->yearLimt:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->tem:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->dispalyTem:Ljava/util/ArrayList;

    const-string v1, "\u661f\u671f\u65e5"

    const-string v2, "\u661f\u671f\u4e00"

    const-string v3, "\u661f\u671f\u4e8c"

    const-string v4, "\u661f\u671f\u4e09"

    const-string v5, "\u661f\u671f\u56db"

    const-string v6, "\u661f\u671f\u4e94"

    const-string v7, "\u661f\u671f\u516d"

    .line 36
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->weeks:[Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Lcom/codbking/widget/DatePickerHelper;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->startDate:Ljava/util/Date;

    .line 55
    invoke-static {v0}, Lcom/codbking/widget/DateUtils;->getYear(Ljava/util/Date;)I

    move-result v1

    iput v1, p0, Lcom/codbking/widget/DatePickerHelper;->YEAR_START:I

    .line 56
    invoke-static {v0}, Lcom/codbking/widget/DateUtils;->getMoth(Ljava/util/Date;)I

    move-result v1

    iput v1, p0, Lcom/codbking/widget/DatePickerHelper;->MONTH_START:I

    .line 57
    invoke-static {v0}, Lcom/codbking/widget/DateUtils;->getDay(Ljava/util/Date;)I

    move-result v1

    iput v1, p0, Lcom/codbking/widget/DatePickerHelper;->DAY_START:I

    .line 58
    invoke-static {v0}, Lcom/codbking/widget/DateUtils;->getWeek(Ljava/util/Date;)I

    move-result v1

    iput v1, p0, Lcom/codbking/widget/DatePickerHelper;->WEEK_START:I

    .line 59
    invoke-static {v0}, Lcom/codbking/widget/DateUtils;->getHour(Ljava/util/Date;)I

    move-result v1

    iput v1, p0, Lcom/codbking/widget/DatePickerHelper;->HOUR_START:I

    .line 60
    invoke-static {v0}, Lcom/codbking/widget/DateUtils;->getMinute(Ljava/util/Date;)I

    move-result v0

    iput v0, p0, Lcom/codbking/widget/DatePickerHelper;->MINUTE_START:I

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    .line 170
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/codbking/widget/DatePickerHelper;

    invoke-direct {v0}, Lcom/codbking/widget/DatePickerHelper;-><init>()V

    const/16 v1, 0x7e0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/codbking/widget/DatePickerHelper;->genDay(II)[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findIndextByValue(I[Ljava/lang/Integer;)I
    .locals 2

    const/4 v0, 0x0

    .line 152
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 153
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public genArr(IZ)[Ljava/lang/Integer;
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->tem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    xor-int/lit8 v0, p2, 0x1

    :goto_0
    if-eqz p2, :cond_0

    move v1, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    :goto_1
    if-ge v0, v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/codbking/widget/DatePickerHelper;->tem:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object p1, p0, Lcom/codbking/widget/DatePickerHelper;->tem:Ljava/util/ArrayList;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    return-object p1
.end method

.method public genDay()[Ljava/lang/Integer;
    .locals 2

    .line 147
    iget v0, p0, Lcom/codbking/widget/DatePickerHelper;->YEAR_START:I

    iget v1, p0, Lcom/codbking/widget/DatePickerHelper;->MONTH_START:I

    invoke-virtual {p0, v0, v1}, Lcom/codbking/widget/DatePickerHelper;->genDay(II)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public genDay(II)[Ljava/lang/Integer;
    .locals 2

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, p1, p2, v1}, Ljava/util/Calendar;->set(III)V

    const/4 p1, 0x5

    const/4 p2, -0x1

    .line 141
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 142
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "d"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/codbking/widget/DatePickerHelper;->genArr(IZ)[Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public genHour()[Ljava/lang/Integer;
    .locals 2

    const/16 v0, 0x18

    const/4 v1, 0x1

    .line 108
    invoke-virtual {p0, v0, v1}, Lcom/codbking/widget/DatePickerHelper;->genArr(IZ)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public genMinut()[Ljava/lang/Integer;
    .locals 2

    const/16 v0, 0x3c

    const/4 v1, 0x1

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/codbking/widget/DatePickerHelper;->genArr(IZ)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public genMonth()[Ljava/lang/Integer;
    .locals 5

    const/16 v0, 0xc

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 104
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public genYear()[Ljava/lang/Integer;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->tem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget v0, p0, Lcom/codbking/widget/DatePickerHelper;->YEAR_START:I

    iget v1, p0, Lcom/codbking/widget/DatePickerHelper;->yearLimt:I

    sub-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/codbking/widget/DatePickerHelper;->YEAR_START:I

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/codbking/widget/DatePickerHelper;->tem:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->tem:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget v0, p0, Lcom/codbking/widget/DatePickerHelper;->YEAR_START:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/codbking/widget/DatePickerHelper;->YEAR_START:I

    iget v2, p0, Lcom/codbking/widget/DatePickerHelper;->yearLimt:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/codbking/widget/DatePickerHelper;->tem:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->tem:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public getDisplayStartWeek()Ljava/lang/String;
    .locals 3

    .line 165
    iget v0, p0, Lcom/codbking/widget/DatePickerHelper;->YEAR_START:I

    iget v1, p0, Lcom/codbking/widget/DatePickerHelper;->MONTH_START:I

    iget v2, p0, Lcom/codbking/widget/DatePickerHelper;->DAY_START:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/codbking/widget/DatePickerHelper;->getDisplayWeek(III)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayValue([Ljava/lang/Integer;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->dispalyTem:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 97
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/codbking/widget/DatePickerHelper;->dispalyTem:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/codbking/widget/DatePickerHelper;->dispalyTem:Ljava/util/ArrayList;

    new-array p2, v1, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getDisplayWeek(III)Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/codbking/widget/DatePickerHelper;->weeks:[Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/codbking/widget/DateUtils;->getWeek(III)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getToady(Lcom/codbking/widget/DatePickerHelper$Type;)I
    .locals 1

    .line 77
    sget-object v0, Lcom/codbking/widget/DatePickerHelper$1;->$SwitchMap$com$codbking$widget$DatePickerHelper$Type:[I

    invoke-virtual {p1}, Lcom/codbking/widget/DatePickerHelper$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 89
    :pswitch_0
    iget p1, p0, Lcom/codbking/widget/DatePickerHelper;->MINUTE_START:I

    return p1

    .line 87
    :pswitch_1
    iget p1, p0, Lcom/codbking/widget/DatePickerHelper;->HOUR_START:I

    return p1

    .line 85
    :pswitch_2
    iget p1, p0, Lcom/codbking/widget/DatePickerHelper;->WEEK_START:I

    return p1

    .line 83
    :pswitch_3
    iget p1, p0, Lcom/codbking/widget/DatePickerHelper;->DAY_START:I

    return p1

    .line 81
    :pswitch_4
    iget p1, p0, Lcom/codbking/widget/DatePickerHelper;->MONTH_START:I

    return p1

    .line 79
    :pswitch_5
    iget p1, p0, Lcom/codbking/widget/DatePickerHelper;->YEAR_START:I

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStartDate(Ljava/util/Date;I)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/codbking/widget/DatePickerHelper;->startDate:Ljava/util/Date;

    .line 68
    iput p2, p0, Lcom/codbking/widget/DatePickerHelper;->yearLimt:I

    .line 70
    iget-object p1, p0, Lcom/codbking/widget/DatePickerHelper;->startDate:Ljava/util/Date;

    if-nez p1, :cond_0

    .line 71
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/codbking/widget/DatePickerHelper;->startDate:Ljava/util/Date;

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/codbking/widget/DatePickerHelper;->init()V

    return-void
.end method
