package cn.forward.androids.utils;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class DateUtil {
    public static final int DAY = 86400000;
    public static final int HOUR = 3600000;
    public static final int MIN = 60000;

    public static int getMonthDays(int i, int i2) {
        if (i2 > 12) {
            i++;
            i2 = 1;
        } else if (i2 < 1) {
            i--;
            i2 = 12;
        }
        int[] iArr = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
        if (isLeapYear(i)) {
            iArr[1] = 29;
        }
        try {
            return iArr[i2 - 1];
        } catch (Exception e) {
            e.getStackTrace();
            return 0;
        }
    }

    public static boolean isLeapYear(int i) {
        return (i % 4 == 0 && i % 100 != 0) || i % 400 == 0;
    }

    public static List<String> getMonthDaysArray(int i, int i2) {
        ArrayList arrayList = new ArrayList();
        int monthDays = getMonthDays(i, i2);
        for (int i3 = 1; i3 <= monthDays; i3++) {
            arrayList.add(i3 + "");
        }
        return arrayList;
    }

    public static int getYear() {
        return Calendar.getInstance().get(1);
    }

    public static int getMonth() {
        return Calendar.getInstance().get(2) + 1;
    }

    public static int getCurrentMonthDay() {
        return Calendar.getInstance().get(5);
    }

    public static int getHour() {
        return Calendar.getInstance().get(11);
    }

    public static int getMinute() {
        return Calendar.getInstance().get(12);
    }

    public static int getSecond() {
        return Calendar.getInstance().get(13);
    }

    public static int getMillSecond() {
        return Calendar.getInstance().get(14);
    }

    public static long getDaySpan(long j) {
        return getTimeSpan(j, 86400000L);
    }

    public static long getHourSpan(long j) {
        return getTimeSpan(j, 3600000L);
    }

    public static long getMinSpan(long j) {
        return getTimeSpan(j, 60000L);
    }

    public static long getTimeSpan(long j, long j2) {
        long rawOffset = TimeZone.getDefault().getRawOffset();
        return ((System.currentTimeMillis() + rawOffset) / j2) - ((j + rawOffset) / j2);
    }

    public static boolean isToday(long j) {
        return getDaySpan(j) == 0;
    }

    public static boolean isYestoday(long j) {
        return getDaySpan(j) == 1;
    }

    public static boolean isTomorrow(long j) {
        return getDaySpan(j) == -1;
    }

    public static String getDate() {
        return getDate("yyyy-MM-dd HH-mm-ss");
    }

    public static String getDate(String str) {
        return getDate(new Date().getTime(), str);
    }

    public static String getDate(long j, String str) {
        return new SimpleDateFormat(str).format(Long.valueOf(j));
    }
}
