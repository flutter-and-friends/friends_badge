package com.blankj.utilcode.util;

import androidx.exifinterface.media.ExifInterface;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public final class TimeUtils {
    private static final ThreadLocal<SimpleDateFormat> SDF_THREAD_LOCAL = new ThreadLocal<>();
    private static final String[] CHINESE_ZODIAC = {"猴", "鸡", "狗", "猪", "鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊"};
    private static final int[] ZODIAC_FLAGS = {20, 19, 21, 21, 21, 22, 23, 23, 23, 24, 23, 22};
    private static final String[] ZODIAC = {"水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "魔羯座"};

    private static long timeSpan2Millis(long j, int i) {
        return j * i;
    }

    private static SimpleDateFormat getDefaultFormat() {
        SimpleDateFormat simpleDateFormat = SDF_THREAD_LOCAL.get();
        if (simpleDateFormat != null) {
            return simpleDateFormat;
        }
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        SDF_THREAD_LOCAL.set(simpleDateFormat2);
        return simpleDateFormat2;
    }

    private TimeUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static String millis2String(long j) {
        return millis2String(j, getDefaultFormat());
    }

    public static String millis2String(long j, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return dateFormat.format(new Date(j));
    }

    public static long string2Millis(String str) {
        return string2Millis(str, getDefaultFormat());
    }

    public static long string2Millis(String str, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        try {
            return dateFormat.parse(str).getTime();
        } catch (ParseException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public static Date string2Date(String str) {
        return string2Date(str, getDefaultFormat());
    }

    public static Date string2Date(String str, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        try {
            return dateFormat.parse(str);
        } catch (ParseException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String date2String(Date date) {
        return date2String(date, getDefaultFormat());
    }

    public static String date2String(Date date, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return dateFormat.format(date);
    }

    public static long date2Millis(Date date) {
        return date.getTime();
    }

    public static Date millis2Date(long j) {
        return new Date(j);
    }

    public static long getTimeSpan(String str, String str2, int i) {
        return getTimeSpan(str, str2, getDefaultFormat(), i);
    }

    public static long getTimeSpan(String str, String str2, DateFormat dateFormat, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#2 out of 4, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return millis2TimeSpan(string2Millis(str, dateFormat) - string2Millis(str2, dateFormat), i);
    }

    public static long getTimeSpan(Date date, Date date2, int i) {
        return millis2TimeSpan(date2Millis(date) - date2Millis(date2), i);
    }

    public static long getTimeSpan(long j, long j2, int i) {
        return millis2TimeSpan(j - j2, i);
    }

    public static String getFitTimeSpan(String str, String str2, int i) {
        return millis2FitTimeSpan(string2Millis(str, getDefaultFormat()) - string2Millis(str2, getDefaultFormat()), i);
    }

    public static String getFitTimeSpan(String str, String str2, DateFormat dateFormat, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#2 out of 4, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return millis2FitTimeSpan(string2Millis(str, dateFormat) - string2Millis(str2, dateFormat), i);
    }

    public static String getFitTimeSpan(Date date, Date date2, int i) {
        return millis2FitTimeSpan(date2Millis(date) - date2Millis(date2), i);
    }

    public static String getFitTimeSpan(long j, long j2, int i) {
        return millis2FitTimeSpan(j - j2, i);
    }

    public static long getNowMills() {
        return System.currentTimeMillis();
    }

    public static String getNowString() {
        return millis2String(System.currentTimeMillis(), getDefaultFormat());
    }

    public static String getNowString(DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return millis2String(System.currentTimeMillis(), dateFormat);
    }

    public static Date getNowDate() {
        return new Date();
    }

    public static long getTimeSpanByNow(String str, int i) {
        return getTimeSpan(str, getNowString(), getDefaultFormat(), i);
    }

    public static long getTimeSpanByNow(String str, DateFormat dateFormat, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getTimeSpan(str, getNowString(dateFormat), dateFormat, i);
    }

    public static long getTimeSpanByNow(Date date, int i) {
        return getTimeSpan(date, new Date(), i);
    }

    public static long getTimeSpanByNow(long j, int i) {
        return getTimeSpan(j, System.currentTimeMillis(), i);
    }

    public static String getFitTimeSpanByNow(String str, int i) {
        return getFitTimeSpan(str, getNowString(), getDefaultFormat(), i);
    }

    public static String getFitTimeSpanByNow(String str, DateFormat dateFormat, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getFitTimeSpan(str, getNowString(dateFormat), dateFormat, i);
    }

    public static String getFitTimeSpanByNow(Date date, int i) {
        return getFitTimeSpan(date, getNowDate(), i);
    }

    public static String getFitTimeSpanByNow(long j, int i) {
        return getFitTimeSpan(j, System.currentTimeMillis(), i);
    }

    public static String getFriendlyTimeSpanByNow(String str) {
        return getFriendlyTimeSpanByNow(str, getDefaultFormat());
    }

    public static String getFriendlyTimeSpanByNow(String str, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getFriendlyTimeSpanByNow(string2Millis(str, dateFormat));
    }

    public static String getFriendlyTimeSpanByNow(Date date) {
        return getFriendlyTimeSpanByNow(date.getTime());
    }

    public static String getFriendlyTimeSpanByNow(long j) {
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        if (jCurrentTimeMillis < 0) {
            return String.format("%tc", Long.valueOf(j));
        }
        if (jCurrentTimeMillis < 1000) {
            return "刚刚";
        }
        if (jCurrentTimeMillis < 60000) {
            return String.format(Locale.getDefault(), "%d秒前", Long.valueOf(jCurrentTimeMillis / 1000));
        }
        if (jCurrentTimeMillis < 3600000) {
            return String.format(Locale.getDefault(), "%d分钟前", Long.valueOf(jCurrentTimeMillis / 60000));
        }
        long weeOfToday = getWeeOfToday();
        return j >= weeOfToday ? String.format("今天%tR", Long.valueOf(j)) : j >= weeOfToday - 86400000 ? String.format("昨天%tR", Long.valueOf(j)) : String.format("%tF", Long.valueOf(j));
    }

    private static long getWeeOfToday() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(11, 0);
        calendar.set(13, 0);
        calendar.set(12, 0);
        calendar.set(14, 0);
        return calendar.getTimeInMillis();
    }

    public static long getMillis(long j, long j2, int i) {
        return j + timeSpan2Millis(j2, i);
    }

    public static long getMillis(String str, long j, int i) {
        return getMillis(str, getDefaultFormat(), j, i);
    }

    public static long getMillis(String str, DateFormat dateFormat, long j, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 4, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return string2Millis(str, dateFormat) + timeSpan2Millis(j, i);
    }

    public static long getMillis(Date date, long j, int i) {
        return date2Millis(date) + timeSpan2Millis(j, i);
    }

    public static String getString(long j, long j2, int i) {
        return getString(j, getDefaultFormat(), j2, i);
    }

    public static String getString(long j, DateFormat dateFormat, long j2, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 4, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return millis2String(j + timeSpan2Millis(j2, i), dateFormat);
    }

    public static String getString(String str, long j, int i) {
        return getString(str, getDefaultFormat(), j, i);
    }

    public static String getString(String str, DateFormat dateFormat, long j, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 4, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return millis2String(string2Millis(str, dateFormat) + timeSpan2Millis(j, i), dateFormat);
    }

    public static String getString(Date date, long j, int i) {
        return getString(date, getDefaultFormat(), j, i);
    }

    public static String getString(Date date, DateFormat dateFormat, long j, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 4, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return millis2String(date2Millis(date) + timeSpan2Millis(j, i), dateFormat);
    }

    public static Date getDate(long j, long j2, int i) {
        return millis2Date(j + timeSpan2Millis(j2, i));
    }

    public static Date getDate(String str, long j, int i) {
        return getDate(str, getDefaultFormat(), j, i);
    }

    public static Date getDate(String str, DateFormat dateFormat, long j, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 4, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return millis2Date(string2Millis(str, dateFormat) + timeSpan2Millis(j, i));
    }

    public static Date getDate(Date date, long j, int i) {
        return millis2Date(date2Millis(date) + timeSpan2Millis(j, i));
    }

    public static long getMillisByNow(long j, int i) {
        return getMillis(getNowMills(), j, i);
    }

    public static String getStringByNow(long j, int i) {
        return getStringByNow(j, getDefaultFormat(), i);
    }

    public static String getStringByNow(long j, DateFormat dateFormat, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getString(getNowMills(), dateFormat, j, i);
    }

    public static Date getDateByNow(long j, int i) {
        return getDate(getNowMills(), j, i);
    }

    public static boolean isToday(String str) {
        return isToday(string2Millis(str, getDefaultFormat()));
    }

    public static boolean isToday(String str, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return isToday(string2Millis(str, dateFormat));
    }

    public static boolean isToday(Date date) {
        return isToday(date.getTime());
    }

    public static boolean isToday(long j) {
        long weeOfToday = getWeeOfToday();
        return j >= weeOfToday && j < weeOfToday + 86400000;
    }

    public static boolean isLeapYear(String str) {
        return isLeapYear(string2Date(str, getDefaultFormat()));
    }

    public static boolean isLeapYear(String str, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return isLeapYear(string2Date(str, dateFormat));
    }

    public static boolean isLeapYear(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return isLeapYear(calendar.get(1));
    }

    public static boolean isLeapYear(long j) {
        return isLeapYear(millis2Date(j));
    }

    public static boolean isLeapYear(int i) {
        return (i % 4 == 0 && i % 100 != 0) || i % 400 == 0;
    }

    public static String getChineseWeek(String str) {
        return getChineseWeek(string2Date(str, getDefaultFormat()));
    }

    public static String getChineseWeek(String str, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getChineseWeek(string2Date(str, dateFormat));
    }

    public static String getChineseWeek(Date date) {
        return new SimpleDateFormat(ExifInterface.LONGITUDE_EAST, Locale.CHINA).format(date);
    }

    public static String getChineseWeek(long j) {
        return getChineseWeek(new Date(j));
    }

    public static String getUSWeek(String str) {
        return getUSWeek(string2Date(str, getDefaultFormat()));
    }

    public static String getUSWeek(String str, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getUSWeek(string2Date(str, dateFormat));
    }

    public static String getUSWeek(Date date) {
        return new SimpleDateFormat("EEEE", Locale.US).format(date);
    }

    public static String getUSWeek(long j) {
        return getUSWeek(new Date(j));
    }

    public static int getValueByCalendarField(String str, int i) {
        return getValueByCalendarField(string2Date(str, getDefaultFormat()), i);
    }

    public static int getValueByCalendarField(String str, DateFormat dateFormat, int i) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getValueByCalendarField(string2Date(str, dateFormat), i);
    }

    public static int getValueByCalendarField(Date date, int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return calendar.get(i);
    }

    public static int getValueByCalendarField(long j, int i) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return calendar.get(i);
    }

    public static String getChineseZodiac(String str) {
        return getChineseZodiac(string2Date(str, getDefaultFormat()));
    }

    public static String getChineseZodiac(String str, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getChineseZodiac(string2Date(str, dateFormat));
    }

    public static String getChineseZodiac(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return CHINESE_ZODIAC[calendar.get(1) % 12];
    }

    public static String getChineseZodiac(long j) {
        return getChineseZodiac(millis2Date(j));
    }

    public static String getChineseZodiac(int i) {
        return CHINESE_ZODIAC[i % 12];
    }

    public static String getZodiac(String str) {
        return getZodiac(string2Date(str, getDefaultFormat()));
    }

    public static String getZodiac(String str, DateFormat dateFormat) {
        if (dateFormat == null) {
            throw new NullPointerException("Argument 'format' of type DateFormat (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return getZodiac(string2Date(str, dateFormat));
    }

    public static String getZodiac(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        return getZodiac(calendar.get(2) + 1, calendar.get(5));
    }

    public static String getZodiac(long j) {
        return getZodiac(millis2Date(j));
    }

    public static String getZodiac(int i, int i2) {
        String[] strArr = ZODIAC;
        int i3 = i - 1;
        if (i2 < ZODIAC_FLAGS[i3]) {
            i3 = (i + 10) % 12;
        }
        return strArr[i3];
    }

    private static long millis2TimeSpan(long j, int i) {
        return j / i;
    }

    private static String millis2FitTimeSpan(long j, int i) {
        if (i <= 0) {
            return null;
        }
        int iMin = Math.min(i, 5);
        String[] strArr = {"天", "小时", "分钟", "秒", "毫秒"};
        if (j == 0) {
            return 0 + strArr[iMin - 1];
        }
        StringBuilder sb = new StringBuilder();
        if (j < 0) {
            sb.append("-");
            j = -j;
        }
        int[] iArr = {86400000, 3600000, 60000, 1000, 1};
        for (int i2 = 0; i2 < iMin; i2++) {
            if (j >= iArr[i2]) {
                long j2 = j / iArr[i2];
                j -= iArr[i2] * j2;
                sb.append(j2);
                sb.append(strArr[i2]);
            }
        }
        return sb.toString();
    }
}
