.class public Lcn/forward/androids/utils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static final DAY:I = 0x5265c00

.field public static final HOUR:I = 0x36ee80

.field public static final MIN:I = 0xea60


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentMonthDay()I
    .locals 2

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd HH-mm-ss"

    .line 184
    invoke-static {v0}, Lcn/forward/androids/utils/DateUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 192
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcn/forward/androids/utils/DateUtil;->getDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDaySpan(J)J
    .locals 2

    const-wide/32 v0, 0x5265c00

    .line 150
    invoke-static {p0, p1, v0, v1}, Lcn/forward/androids/utils/DateUtil;->getTimeSpan(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getHour()I
    .locals 2

    .line 112
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getHourSpan(J)J
    .locals 2

    const-wide/32 v0, 0x36ee80

    .line 154
    invoke-static {p0, p1, v0, v1}, Lcn/forward/androids/utils/DateUtil;->getTimeSpan(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMillSecond()I
    .locals 2

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getMinSpan(J)J
    .locals 2

    const-wide/32 v0, 0xea60

    .line 158
    invoke-static {p0, p1, v0, v1}, Lcn/forward/androids/utils/DateUtil;->getTimeSpan(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getMinute()I
    .locals 2

    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getMonth()I
    .locals 2

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getMonthDays(II)I
    .locals 3

    const/16 v0, 0xc

    const/4 v1, 0x1

    if-le p1, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-ge p1, v1, :cond_1

    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0xc

    :cond_1
    :goto_0
    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_0

    const/4 v2, 0x0

    .line 38
    invoke-static {p0}, Lcn/forward/androids/utils/DateUtil;->isLeapYear(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x1d

    aput p0, v0, v1

    :cond_2
    sub-int/2addr p1, v1

    .line 43
    :try_start_0
    aget v2, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    :goto_1
    return v2

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data
.end method

.method public static getMonthDaysArray(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-static {p0, p1}, Lcn/forward/androids/utils/DateUtil;->getMonthDays(II)I

    move-result p0

    const/4 p1, 0x1

    :goto_0
    if-gt p1, p0, :cond_0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getSecond()I
    .locals 2

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static getTimeSpan(JJ)J
    .locals 5

    .line 163
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    div-long/2addr v1, p2

    add-long/2addr p0, v3

    div-long/2addr p0, p2

    sub-long/2addr v1, p0

    return-wide v1
.end method

.method public static getYear()I
    .locals 2

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public static isLeapYear(I)Z
    .locals 1

    .line 58
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 p0, p0, 0x190

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isToday(J)Z
    .locals 3

    .line 169
    invoke-static {p0, p1}, Lcn/forward/androids/utils/DateUtil;->getDaySpan(J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTomorrow(J)Z
    .locals 3

    .line 177
    invoke-static {p0, p1}, Lcn/forward/androids/utils/DateUtil;->getDaySpan(J)J

    move-result-wide p0

    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isYestoday(J)Z
    .locals 3

    .line 173
    invoke-static {p0, p1}, Lcn/forward/androids/utils/DateUtil;->getDaySpan(J)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
