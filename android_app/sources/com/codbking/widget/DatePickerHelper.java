package com.codbking.widget;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;

/* loaded from: classes.dex */
class DatePickerHelper {
    private int DAY_START;
    private int HOUR_START;
    private int MINUTE_START;
    private int MONTH_START;
    private int WEEK_START;
    private int YEAR_START;
    private Date startDate = new Date();
    private int yearLimt = 5;
    private ArrayList<Integer> tem = new ArrayList<>();
    private ArrayList<String> dispalyTem = new ArrayList<>();
    private String[] weeks = {"星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"};

    public enum Type {
        YEAR,
        MOTH,
        DAY,
        WEEK,
        HOUR,
        MINUTE
    }

    public DatePickerHelper() {
        init();
    }

    private void init() {
        Date date = this.startDate;
        this.YEAR_START = DateUtils.getYear(date);
        this.MONTH_START = DateUtils.getMoth(date);
        this.DAY_START = DateUtils.getDay(date);
        this.WEEK_START = DateUtils.getWeek(date);
        this.HOUR_START = DateUtils.getHour(date);
        this.MINUTE_START = DateUtils.getMinute(date);
    }

    public void setStartDate(Date date, int i) {
        this.startDate = date;
        this.yearLimt = i;
        if (this.startDate == null) {
            this.startDate = new Date();
        }
        init();
    }

    public int getToady(Type type) {
        switch (type) {
            case YEAR:
                return this.YEAR_START;
            case MOTH:
                return this.MONTH_START;
            case DAY:
                return this.DAY_START;
            case WEEK:
                return this.WEEK_START;
            case HOUR:
                return this.HOUR_START;
            case MINUTE:
                return this.MINUTE_START;
            default:
                return 0;
        }
    }

    public String[] getDisplayValue(Integer[] numArr, String str) {
        StringBuilder sb;
        String str2;
        this.dispalyTem.clear();
        for (Integer num : numArr) {
            if (num.intValue() < 10) {
                sb = new StringBuilder();
                str2 = "0";
            } else {
                sb = new StringBuilder();
                str2 = "";
            }
            sb.append(str2);
            sb.append(num);
            this.dispalyTem.add(sb.toString() + str);
        }
        return (String[]) this.dispalyTem.toArray(new String[0]);
    }

    public Integer[] genMonth() {
        return new Integer[]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
    }

    public Integer[] genHour() {
        return genArr(24, true);
    }

    public Integer[] genMinut() {
        return genArr(60, true);
    }

    public Integer[] genArr(int i, boolean z) {
        this.tem.clear();
        int i2 = !z ? 1 : 0;
        while (true) {
            if (i2 < (z ? i : i + 1)) {
                this.tem.add(Integer.valueOf(i2));
                i2++;
            } else {
                return (Integer[]) this.tem.toArray(new Integer[0]);
            }
        }
    }

    public Integer[] genYear() {
        int i;
        this.tem.clear();
        int i2 = this.YEAR_START - this.yearLimt;
        while (true) {
            i = this.YEAR_START;
            if (i2 >= i) {
                break;
            }
            this.tem.add(Integer.valueOf(i2));
            i2++;
        }
        this.tem.add(Integer.valueOf(i));
        int i3 = this.YEAR_START;
        while (true) {
            i3++;
            if (i3 < this.YEAR_START + this.yearLimt) {
                this.tem.add(Integer.valueOf(i3));
            } else {
                return (Integer[]) this.tem.toArray(new Integer[0]);
            }
        }
    }

    public Integer[] genDay(int i, int i2) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(i, i2, 1);
        calendar.add(5, -1);
        return genArr(Integer.parseInt(new SimpleDateFormat("d").format(calendar.getTime())), false);
    }

    public Integer[] genDay() {
        return genDay(this.YEAR_START, this.MONTH_START);
    }

    public int findIndextByValue(int i, Integer[] numArr) {
        for (int i2 = 0; i2 < numArr.length; i2++) {
            if (i == numArr[i2].intValue()) {
                return i2;
            }
        }
        return -1;
    }

    public String getDisplayWeek(int i, int i2, int i3) {
        return this.weeks[DateUtils.getWeek(i, i2, i3) - 1];
    }

    public String getDisplayStartWeek() {
        return getDisplayWeek(this.YEAR_START, this.MONTH_START, this.DAY_START);
    }

    public static void main(String[] strArr) {
        System.out.println(Arrays.toString(new DatePickerHelper().genDay(2016, 2)));
    }
}
