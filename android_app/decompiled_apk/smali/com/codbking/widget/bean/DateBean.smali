.class public Lcom/codbking/widget/bean/DateBean;
.super Ljava/lang/Object;
.source "DateBean.java"


# instance fields
.field private day:I

.field private hour:I

.field private minute:I

.field private moth:I

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private makeZero(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const/16 v1, 0x9

    if-le p1, v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-lez p1, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDay()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->day:I

    return v0
.end method

.method public getDisplayDate(Lcom/codbking/widget/bean/DateType;)Ljava/lang/String;
    .locals 4

    .line 68
    sget-object v0, Lcom/codbking/widget/bean/DateBean$1;->$SwitchMap$com$codbking$widget$bean$DateType:[I

    invoke-virtual {p1}, Lcom/codbking/widget/bean/DateType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, ":"

    const-string v2, " "

    const-string v3, "-"

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto/16 :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->hour:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->minute:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 79
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->year:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->moth:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->day:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->year:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->moth:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->day:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->hour:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 73
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->year:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->moth:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->day:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->hour:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->minute:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 70
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->year:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->moth:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->day:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->hour:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->minute:I

    invoke-direct {p0, v0}, Lcom/codbking/widget/bean/DateBean;->makeZero(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getHour()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->hour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->minute:I

    return v0
.end method

.method public getMoth()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->moth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/codbking/widget/bean/DateBean;->year:I

    return v0
.end method

.method public setDay(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/codbking/widget/bean/DateBean;->day:I

    return-void
.end method

.method public setHour(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/codbking/widget/bean/DateBean;->hour:I

    return-void
.end method

.method public setMinute(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/codbking/widget/bean/DateBean;->minute:I

    return-void
.end method

.method public setMoth(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/codbking/widget/bean/DateBean;->moth:I

    return-void
.end method

.method public setYear(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/codbking/widget/bean/DateBean;->year:I

    return-void
.end method
