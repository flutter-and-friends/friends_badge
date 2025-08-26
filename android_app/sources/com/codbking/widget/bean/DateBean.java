package com.codbking.widget.bean;

/* loaded from: classes.dex */
public class DateBean {
    private int day;
    private int hour;
    private int minute;
    private int moth;
    private int year;

    public int getYear() {
        return this.year;
    }

    public void setYear(int i) {
        this.year = i;
    }

    public int getMoth() {
        return this.moth;
    }

    public void setMoth(int i) {
        this.moth = i;
    }

    public int getDay() {
        return this.day;
    }

    public void setDay(int i) {
        this.day = i;
    }

    public int getHour() {
        return this.hour;
    }

    public void setHour(int i) {
        this.hour = i;
    }

    public int getMinute() {
        return this.minute;
    }

    public void setMinute(int i) {
        this.minute = i;
    }

    private String makeZero(int i) {
        if (i > 9) {
            return "" + i;
        }
        if (i > 0) {
            return "0" + i;
        }
        return "" + i;
    }

    /* renamed from: com.codbking.widget.bean.DateBean$1 */
    static /* synthetic */ class C09061 {
        static final /* synthetic */ int[] $SwitchMap$com$codbking$widget$bean$DateType = new int[DateType.values().length];

        static {
            try {
                $SwitchMap$com$codbking$widget$bean$DateType[DateType.TYPE_ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$codbking$widget$bean$DateType[DateType.TYPE_YMDHM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$codbking$widget$bean$DateType[DateType.TYPE_YMDH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$codbking$widget$bean$DateType[DateType.TYPE_YMD.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$codbking$widget$bean$DateType[DateType.TYPE_HM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public String getDisplayDate(DateType dateType) {
        int i = C09061.$SwitchMap$com$codbking$widget$bean$DateType[dateType.ordinal()];
        if (i == 1) {
            return this.year + "-" + makeZero(this.moth) + "-" + makeZero(this.day) + " " + makeZero(this.hour) + ":" + makeZero(this.minute);
        }
        if (i == 2) {
            return this.year + "-" + makeZero(this.moth) + "-" + makeZero(this.day) + " " + makeZero(this.hour) + ":" + makeZero(this.minute);
        }
        if (i == 3) {
            return this.year + "-" + makeZero(this.moth) + "-" + makeZero(this.day) + " " + makeZero(this.hour);
        }
        if (i != 4) {
            if (i != 5) {
                return "";
            }
            return makeZero(this.hour) + ":" + makeZero(this.minute);
        }
        return this.year + "-" + makeZero(this.moth) + "-" + makeZero(this.day);
    }
}
