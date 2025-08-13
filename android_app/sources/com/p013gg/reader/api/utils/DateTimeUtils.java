package com.p013gg.reader.api.utils;

import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class DateTimeUtils {
    public static long duration(Date date, Date date2) {
        return date.getTime() - date2.getTime();
    }

    public static long durationS(Date date, Date date2) {
        return duration(date, date2) / 1000;
    }

    public static long elapse(Date date) {
        return duration(new Date(), date);
    }

    public static long elapseS(Date date) {
        return durationS(new Date(), date);
    }

    public static long UTC(Date date) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar.set(1970, 0, 1, 0, 0, 0);
        return duration(date, calendar.getTime());
    }

    public static long UtcFromTimeZone(Date date, TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar.set(1970, 0, 1, 0, 0, 0);
        Date time = calendar.getTime();
        Calendar calendar2 = Calendar.getInstance(timeZone);
        calendar2.setTime(date);
        calendar2.setTimeZone(TimeZone.getTimeZone("UTC"));
        return duration(calendar2.getTime(), time);
    }

    public static long UTCS(Date date) {
        return (UTC(date) + 500) / 1000;
    }

    public static Date fromUTC(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getTimeZone("UTC"));
        calendar.set(1970, 0, 1, 0, 0, 0);
        calendar.setTimeInMillis(calendar.getTime().getTime() + j);
        return calendar.getTime();
    }

    public static Date fromUtcToTimeZone(long j, TimeZone timeZone) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeZone(TimeZone.getTimeZone("UTC"));
        calendar.set(1970, 0, 1, 0, 0, 0);
        calendar.setTimeInMillis(calendar.getTime().getTime() + j);
        calendar.setTimeZone(timeZone);
        return calendar.getTime();
    }

    public static Date fromUTCS(long j) {
        return fromUTC(j * 1000);
    }
}
