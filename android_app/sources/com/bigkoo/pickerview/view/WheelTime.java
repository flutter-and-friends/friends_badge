package com.bigkoo.pickerview.view;

import android.view.View;
import androidx.exifinterface.media.ExifInterface;
import cn.highlight.work_card_write.util.NDCMD;
import com.bigkoo.pickerview.C0757R;
import com.bigkoo.pickerview.adapter.ArrayWheelAdapter;
import com.bigkoo.pickerview.adapter.NumericWheelAdapter;
import com.bigkoo.pickerview.listener.ISelectTimeCallback;
import com.bigkoo.pickerview.utils.ChinaDate;
import com.bigkoo.pickerview.utils.LunarCalendar;
import com.contrarywind.listener.OnItemSelectedListener;
import com.contrarywind.view.WheelView;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;

/* loaded from: classes.dex */
public class WheelTime {
    private static final int DEFAULT_END_DAY = 31;
    private static final int DEFAULT_END_MONTH = 12;
    private static final int DEFAULT_END_YEAR = 2100;
    private static final int DEFAULT_START_DAY = 1;
    private static final int DEFAULT_START_MONTH = 1;
    private static final int DEFAULT_START_YEAR = 1900;
    public static DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private int currentYear;
    private int gravity;
    private ISelectTimeCallback mSelectChangeCallback;
    private int textSize;
    private boolean[] type;
    private View view;
    private WheelView wv_day;
    private WheelView wv_hours;
    private WheelView wv_minutes;
    private WheelView wv_month;
    private WheelView wv_seconds;
    private WheelView wv_year;
    private int startYear = 1900;
    private int endYear = DEFAULT_END_YEAR;
    private int startMonth = 1;
    private int endMonth = 12;
    private int startDay = 1;
    private int endDay = 31;
    private boolean isLunarCalendar = false;

    public WheelTime(View view, boolean[] zArr, int i, int i2) {
        this.view = view;
        this.type = zArr;
        this.gravity = i;
        this.textSize = i2;
    }

    public void setLunarMode(boolean z) {
        this.isLunarCalendar = z;
    }

    public boolean isLunarMode() {
        return this.isLunarCalendar;
    }

    public void setPicker(int i, int i2, int i3) {
        setPicker(i, i2, i3, 0, 0, 0);
    }

    public void setPicker(int i, int i2, int i3, int i4, int i5, int i6) {
        if (this.isLunarCalendar) {
            int[] iArrSolarToLunar = LunarCalendar.solarToLunar(i, i2 + 1, i3);
            setLunar(iArrSolarToLunar[0], iArrSolarToLunar[1] - 1, iArrSolarToLunar[2], iArrSolarToLunar[3] == 1, i4, i5, i6);
        } else {
            setSolar(i, i2, i3, i4, i5, i6);
        }
    }

    private void setLunar(int i, int i2, int i3, boolean z, int i4, int i5, int i6) {
        this.wv_year = (WheelView) this.view.findViewById(C0757R.id.year);
        this.wv_year.setAdapter(new ArrayWheelAdapter(ChinaDate.getYears(this.startYear, this.endYear)));
        this.wv_year.setLabel("");
        this.wv_year.setCurrentItem(i - this.startYear);
        this.wv_year.setGravity(this.gravity);
        this.wv_month = (WheelView) this.view.findViewById(C0757R.id.month);
        this.wv_month.setAdapter(new ArrayWheelAdapter(ChinaDate.getMonths(i)));
        this.wv_month.setLabel("");
        int iLeapMonth = ChinaDate.leapMonth(i);
        if (iLeapMonth != 0 && (i2 > iLeapMonth - 1 || z)) {
            this.wv_month.setCurrentItem(i2 + 1);
        } else {
            this.wv_month.setCurrentItem(i2);
        }
        this.wv_month.setGravity(this.gravity);
        this.wv_day = (WheelView) this.view.findViewById(C0757R.id.day);
        if (ChinaDate.leapMonth(i) == 0) {
            this.wv_day.setAdapter(new ArrayWheelAdapter(ChinaDate.getLunarDays(ChinaDate.monthDays(i, i2))));
        } else {
            this.wv_day.setAdapter(new ArrayWheelAdapter(ChinaDate.getLunarDays(ChinaDate.leapDays(i))));
        }
        this.wv_day.setLabel("");
        this.wv_day.setCurrentItem(i3 - 1);
        this.wv_day.setGravity(this.gravity);
        this.wv_hours = (WheelView) this.view.findViewById(C0757R.id.hour);
        this.wv_hours.setAdapter(new NumericWheelAdapter(0, 23));
        this.wv_hours.setCurrentItem(i4);
        this.wv_hours.setGravity(this.gravity);
        this.wv_minutes = (WheelView) this.view.findViewById(C0757R.id.min);
        this.wv_minutes.setAdapter(new NumericWheelAdapter(0, 59));
        this.wv_minutes.setCurrentItem(i5);
        this.wv_minutes.setGravity(this.gravity);
        this.wv_seconds = (WheelView) this.view.findViewById(C0757R.id.second);
        this.wv_seconds.setAdapter(new NumericWheelAdapter(0, 59));
        this.wv_seconds.setCurrentItem(i5);
        this.wv_seconds.setGravity(this.gravity);
        this.wv_year.setOnItemSelectedListener(new OnItemSelectedListener() { // from class: com.bigkoo.pickerview.view.WheelTime.1
            @Override // com.contrarywind.listener.OnItemSelectedListener
            public void onItemSelected(int i7) {
                int iMonthDays;
                int i8 = i7 + WheelTime.this.startYear;
                WheelTime.this.wv_month.setAdapter(new ArrayWheelAdapter(ChinaDate.getMonths(i8)));
                if (ChinaDate.leapMonth(i8) == 0 || WheelTime.this.wv_month.getCurrentItem() <= ChinaDate.leapMonth(i8) - 1) {
                    WheelTime.this.wv_month.setCurrentItem(WheelTime.this.wv_month.getCurrentItem());
                } else {
                    WheelTime.this.wv_month.setCurrentItem(WheelTime.this.wv_month.getCurrentItem() + 1);
                }
                int currentItem = WheelTime.this.wv_day.getCurrentItem();
                if (ChinaDate.leapMonth(i8) == 0 || WheelTime.this.wv_month.getCurrentItem() <= ChinaDate.leapMonth(i8) - 1) {
                    WheelTime.this.wv_day.setAdapter(new ArrayWheelAdapter(ChinaDate.getLunarDays(ChinaDate.monthDays(i8, WheelTime.this.wv_month.getCurrentItem() + 1))));
                    iMonthDays = ChinaDate.monthDays(i8, WheelTime.this.wv_month.getCurrentItem() + 1);
                } else if (WheelTime.this.wv_month.getCurrentItem() == ChinaDate.leapMonth(i8) + 1) {
                    WheelTime.this.wv_day.setAdapter(new ArrayWheelAdapter(ChinaDate.getLunarDays(ChinaDate.leapDays(i8))));
                    iMonthDays = ChinaDate.leapDays(i8);
                } else {
                    WheelTime.this.wv_day.setAdapter(new ArrayWheelAdapter(ChinaDate.getLunarDays(ChinaDate.monthDays(i8, WheelTime.this.wv_month.getCurrentItem()))));
                    iMonthDays = ChinaDate.monthDays(i8, WheelTime.this.wv_month.getCurrentItem());
                }
                int i9 = iMonthDays - 1;
                if (currentItem > i9) {
                    WheelTime.this.wv_day.setCurrentItem(i9);
                }
                if (WheelTime.this.mSelectChangeCallback != null) {
                    WheelTime.this.mSelectChangeCallback.onTimeSelectChanged();
                }
            }
        });
        this.wv_month.setOnItemSelectedListener(new OnItemSelectedListener() { // from class: com.bigkoo.pickerview.view.WheelTime.2
            @Override // com.contrarywind.listener.OnItemSelectedListener
            public void onItemSelected(int i7) {
                int iMonthDays;
                int currentItem = WheelTime.this.wv_year.getCurrentItem() + WheelTime.this.startYear;
                int currentItem2 = WheelTime.this.wv_day.getCurrentItem();
                if (ChinaDate.leapMonth(currentItem) == 0 || i7 <= ChinaDate.leapMonth(currentItem) - 1) {
                    int i8 = i7 + 1;
                    WheelTime.this.wv_day.setAdapter(new ArrayWheelAdapter(ChinaDate.getLunarDays(ChinaDate.monthDays(currentItem, i8))));
                    iMonthDays = ChinaDate.monthDays(currentItem, i8);
                } else if (WheelTime.this.wv_month.getCurrentItem() == ChinaDate.leapMonth(currentItem) + 1) {
                    WheelTime.this.wv_day.setAdapter(new ArrayWheelAdapter(ChinaDate.getLunarDays(ChinaDate.leapDays(currentItem))));
                    iMonthDays = ChinaDate.leapDays(currentItem);
                } else {
                    WheelTime.this.wv_day.setAdapter(new ArrayWheelAdapter(ChinaDate.getLunarDays(ChinaDate.monthDays(currentItem, i7))));
                    iMonthDays = ChinaDate.monthDays(currentItem, i7);
                }
                int i9 = iMonthDays - 1;
                if (currentItem2 > i9) {
                    WheelTime.this.wv_day.setCurrentItem(i9);
                }
                if (WheelTime.this.mSelectChangeCallback != null) {
                    WheelTime.this.mSelectChangeCallback.onTimeSelectChanged();
                }
            }
        });
        setChangedListener(this.wv_day);
        setChangedListener(this.wv_hours);
        setChangedListener(this.wv_minutes);
        setChangedListener(this.wv_seconds);
        boolean[] zArr = this.type;
        if (zArr.length != 6) {
            throw new RuntimeException("type[] length is not 6");
        }
        this.wv_year.setVisibility(zArr[0] ? 0 : 8);
        this.wv_month.setVisibility(this.type[1] ? 0 : 8);
        this.wv_day.setVisibility(this.type[2] ? 0 : 8);
        this.wv_hours.setVisibility(this.type[3] ? 0 : 8);
        this.wv_minutes.setVisibility(this.type[4] ? 0 : 8);
        this.wv_seconds.setVisibility(this.type[5] ? 0 : 8);
        setContentTextSize();
    }

    private void setSolar(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7;
        int i8;
        String[] strArr = {"1", ExifInterface.GPS_MEASUREMENT_3D, "5", "7", "8", "10", "12"};
        String[] strArr2 = {"4", "6", "9", NDCMD.M11};
        final List listAsList = Arrays.asList(strArr);
        final List listAsList2 = Arrays.asList(strArr2);
        this.currentYear = i;
        this.wv_year = (WheelView) this.view.findViewById(C0757R.id.year);
        this.wv_year.setAdapter(new NumericWheelAdapter(this.startYear, this.endYear));
        this.wv_year.setCurrentItem(i - this.startYear);
        this.wv_year.setGravity(this.gravity);
        this.wv_month = (WheelView) this.view.findViewById(C0757R.id.month);
        int i9 = this.startYear;
        int i10 = this.endYear;
        if (i9 == i10) {
            this.wv_month.setAdapter(new NumericWheelAdapter(this.startMonth, this.endMonth));
            this.wv_month.setCurrentItem((i2 + 1) - this.startMonth);
        } else if (i == i9) {
            this.wv_month.setAdapter(new NumericWheelAdapter(this.startMonth, 12));
            this.wv_month.setCurrentItem((i2 + 1) - this.startMonth);
        } else if (i == i10) {
            this.wv_month.setAdapter(new NumericWheelAdapter(1, this.endMonth));
            this.wv_month.setCurrentItem(i2);
        } else {
            this.wv_month.setAdapter(new NumericWheelAdapter(1, 12));
            this.wv_month.setCurrentItem(i2);
        }
        this.wv_month.setGravity(this.gravity);
        this.wv_day = (WheelView) this.view.findViewById(C0757R.id.day);
        boolean z = (i % 4 == 0 && i % 100 != 0) || i % 400 == 0;
        if (this.startYear == this.endYear && this.startMonth == this.endMonth) {
            int i11 = i2 + 1;
            if (listAsList.contains(String.valueOf(i11))) {
                if (this.endDay > 31) {
                    this.endDay = 31;
                }
                this.wv_day.setAdapter(new NumericWheelAdapter(this.startDay, this.endDay));
            } else if (listAsList2.contains(String.valueOf(i11))) {
                if (this.endDay > 30) {
                    this.endDay = 30;
                }
                this.wv_day.setAdapter(new NumericWheelAdapter(this.startDay, this.endDay));
            } else if (z) {
                if (this.endDay > 29) {
                    this.endDay = 29;
                }
                this.wv_day.setAdapter(new NumericWheelAdapter(this.startDay, this.endDay));
            } else {
                if (this.endDay > 28) {
                    this.endDay = 28;
                }
                this.wv_day.setAdapter(new NumericWheelAdapter(this.startDay, this.endDay));
            }
            this.wv_day.setCurrentItem(i3 - this.startDay);
        } else if (i == this.startYear && (i8 = i2 + 1) == this.startMonth) {
            if (listAsList.contains(String.valueOf(i8))) {
                this.wv_day.setAdapter(new NumericWheelAdapter(this.startDay, 31));
            } else if (listAsList2.contains(String.valueOf(i8))) {
                this.wv_day.setAdapter(new NumericWheelAdapter(this.startDay, 30));
            } else {
                this.wv_day.setAdapter(new NumericWheelAdapter(this.startDay, z ? 29 : 28));
            }
            this.wv_day.setCurrentItem(i3 - this.startDay);
        } else if (i == this.endYear && (i7 = i2 + 1) == this.endMonth) {
            if (listAsList.contains(String.valueOf(i7))) {
                if (this.endDay > 31) {
                    this.endDay = 31;
                }
                this.wv_day.setAdapter(new NumericWheelAdapter(1, this.endDay));
            } else if (listAsList2.contains(String.valueOf(i7))) {
                if (this.endDay > 30) {
                    this.endDay = 30;
                }
                this.wv_day.setAdapter(new NumericWheelAdapter(1, this.endDay));
            } else if (z) {
                if (this.endDay > 29) {
                    this.endDay = 29;
                }
                this.wv_day.setAdapter(new NumericWheelAdapter(1, this.endDay));
            } else {
                if (this.endDay > 28) {
                    this.endDay = 28;
                }
                this.wv_day.setAdapter(new NumericWheelAdapter(1, this.endDay));
            }
            this.wv_day.setCurrentItem(i3 - 1);
        } else {
            int i12 = i2 + 1;
            if (listAsList.contains(String.valueOf(i12))) {
                this.wv_day.setAdapter(new NumericWheelAdapter(1, 31));
            } else if (listAsList2.contains(String.valueOf(i12))) {
                this.wv_day.setAdapter(new NumericWheelAdapter(1, 30));
            } else {
                this.wv_day.setAdapter(new NumericWheelAdapter(this.startDay, z ? 29 : 28));
            }
            this.wv_day.setCurrentItem(i3 - 1);
        }
        this.wv_day.setGravity(this.gravity);
        this.wv_hours = (WheelView) this.view.findViewById(C0757R.id.hour);
        this.wv_hours.setAdapter(new NumericWheelAdapter(0, 23));
        this.wv_hours.setCurrentItem(i4);
        this.wv_hours.setGravity(this.gravity);
        this.wv_minutes = (WheelView) this.view.findViewById(C0757R.id.min);
        this.wv_minutes.setAdapter(new NumericWheelAdapter(0, 59));
        this.wv_minutes.setCurrentItem(i5);
        this.wv_minutes.setGravity(this.gravity);
        this.wv_seconds = (WheelView) this.view.findViewById(C0757R.id.second);
        this.wv_seconds.setAdapter(new NumericWheelAdapter(0, 59));
        this.wv_seconds.setCurrentItem(i6);
        this.wv_seconds.setGravity(this.gravity);
        this.wv_year.setOnItemSelectedListener(new OnItemSelectedListener() { // from class: com.bigkoo.pickerview.view.WheelTime.3
            @Override // com.contrarywind.listener.OnItemSelectedListener
            public void onItemSelected(int i13) {
                int i14 = i13 + WheelTime.this.startYear;
                WheelTime.this.currentYear = i14;
                int currentItem = WheelTime.this.wv_month.getCurrentItem();
                if (WheelTime.this.startYear == WheelTime.this.endYear) {
                    WheelTime.this.wv_month.setAdapter(new NumericWheelAdapter(WheelTime.this.startMonth, WheelTime.this.endMonth));
                    if (currentItem > WheelTime.this.wv_month.getAdapter().getItemsCount() - 1) {
                        currentItem = WheelTime.this.wv_month.getAdapter().getItemsCount() - 1;
                        WheelTime.this.wv_month.setCurrentItem(currentItem);
                    }
                    int i15 = currentItem + WheelTime.this.startMonth;
                    if (WheelTime.this.startMonth != WheelTime.this.endMonth) {
                        if (i15 != WheelTime.this.startMonth) {
                            if (i15 != WheelTime.this.endMonth) {
                                WheelTime.this.setReDay(i14, i15, 1, 31, listAsList, listAsList2);
                            } else {
                                WheelTime wheelTime = WheelTime.this;
                                wheelTime.setReDay(i14, i15, 1, wheelTime.endDay, listAsList, listAsList2);
                            }
                        } else {
                            WheelTime wheelTime2 = WheelTime.this;
                            wheelTime2.setReDay(i14, i15, wheelTime2.startDay, 31, listAsList, listAsList2);
                        }
                    } else {
                        WheelTime wheelTime3 = WheelTime.this;
                        wheelTime3.setReDay(i14, i15, wheelTime3.startDay, WheelTime.this.endDay, listAsList, listAsList2);
                    }
                } else if (i14 == WheelTime.this.startYear) {
                    WheelTime.this.wv_month.setAdapter(new NumericWheelAdapter(WheelTime.this.startMonth, 12));
                    if (currentItem > WheelTime.this.wv_month.getAdapter().getItemsCount() - 1) {
                        currentItem = WheelTime.this.wv_month.getAdapter().getItemsCount() - 1;
                        WheelTime.this.wv_month.setCurrentItem(currentItem);
                    }
                    int i16 = currentItem + WheelTime.this.startMonth;
                    if (i16 != WheelTime.this.startMonth) {
                        WheelTime.this.setReDay(i14, i16, 1, 31, listAsList, listAsList2);
                    } else {
                        WheelTime wheelTime4 = WheelTime.this;
                        wheelTime4.setReDay(i14, i16, wheelTime4.startDay, 31, listAsList, listAsList2);
                    }
                } else if (i14 == WheelTime.this.endYear) {
                    WheelTime.this.wv_month.setAdapter(new NumericWheelAdapter(1, WheelTime.this.endMonth));
                    if (currentItem > WheelTime.this.wv_month.getAdapter().getItemsCount() - 1) {
                        currentItem = WheelTime.this.wv_month.getAdapter().getItemsCount() - 1;
                        WheelTime.this.wv_month.setCurrentItem(currentItem);
                    }
                    int i17 = 1 + currentItem;
                    if (i17 != WheelTime.this.endMonth) {
                        WheelTime.this.setReDay(i14, i17, 1, 31, listAsList, listAsList2);
                    } else {
                        WheelTime wheelTime5 = WheelTime.this;
                        wheelTime5.setReDay(i14, i17, 1, wheelTime5.endDay, listAsList, listAsList2);
                    }
                } else {
                    WheelTime.this.wv_month.setAdapter(new NumericWheelAdapter(1, 12));
                    WheelTime wheelTime6 = WheelTime.this;
                    wheelTime6.setReDay(i14, 1 + wheelTime6.wv_month.getCurrentItem(), 1, 31, listAsList, listAsList2);
                }
                if (WheelTime.this.mSelectChangeCallback != null) {
                    WheelTime.this.mSelectChangeCallback.onTimeSelectChanged();
                }
            }
        });
        this.wv_month.setOnItemSelectedListener(new OnItemSelectedListener() { // from class: com.bigkoo.pickerview.view.WheelTime.4
            @Override // com.contrarywind.listener.OnItemSelectedListener
            public void onItemSelected(int i13) {
                int i14 = i13 + 1;
                if (WheelTime.this.startYear == WheelTime.this.endYear) {
                    int i15 = (i14 + WheelTime.this.startMonth) - 1;
                    if (WheelTime.this.startMonth != WheelTime.this.endMonth) {
                        if (WheelTime.this.startMonth != i15) {
                            if (WheelTime.this.endMonth == i15) {
                                WheelTime wheelTime = WheelTime.this;
                                wheelTime.setReDay(wheelTime.currentYear, i15, 1, WheelTime.this.endDay, listAsList, listAsList2);
                            } else {
                                WheelTime wheelTime2 = WheelTime.this;
                                wheelTime2.setReDay(wheelTime2.currentYear, i15, 1, 31, listAsList, listAsList2);
                            }
                        } else {
                            WheelTime wheelTime3 = WheelTime.this;
                            wheelTime3.setReDay(wheelTime3.currentYear, i15, WheelTime.this.startDay, 31, listAsList, listAsList2);
                        }
                    } else {
                        WheelTime wheelTime4 = WheelTime.this;
                        wheelTime4.setReDay(wheelTime4.currentYear, i15, WheelTime.this.startDay, WheelTime.this.endDay, listAsList, listAsList2);
                    }
                } else if (WheelTime.this.currentYear == WheelTime.this.startYear) {
                    int i16 = (i14 + WheelTime.this.startMonth) - 1;
                    if (i16 == WheelTime.this.startMonth) {
                        WheelTime wheelTime5 = WheelTime.this;
                        wheelTime5.setReDay(wheelTime5.currentYear, i16, WheelTime.this.startDay, 31, listAsList, listAsList2);
                    } else {
                        WheelTime wheelTime6 = WheelTime.this;
                        wheelTime6.setReDay(wheelTime6.currentYear, i16, 1, 31, listAsList, listAsList2);
                    }
                } else if (WheelTime.this.currentYear == WheelTime.this.endYear) {
                    if (i14 == WheelTime.this.endMonth) {
                        WheelTime wheelTime7 = WheelTime.this;
                        wheelTime7.setReDay(wheelTime7.currentYear, WheelTime.this.wv_month.getCurrentItem() + 1, 1, WheelTime.this.endDay, listAsList, listAsList2);
                    } else {
                        WheelTime wheelTime8 = WheelTime.this;
                        wheelTime8.setReDay(wheelTime8.currentYear, WheelTime.this.wv_month.getCurrentItem() + 1, 1, 31, listAsList, listAsList2);
                    }
                } else {
                    WheelTime wheelTime9 = WheelTime.this;
                    wheelTime9.setReDay(wheelTime9.currentYear, i14, 1, 31, listAsList, listAsList2);
                }
                if (WheelTime.this.mSelectChangeCallback != null) {
                    WheelTime.this.mSelectChangeCallback.onTimeSelectChanged();
                }
            }
        });
        setChangedListener(this.wv_day);
        setChangedListener(this.wv_hours);
        setChangedListener(this.wv_minutes);
        setChangedListener(this.wv_seconds);
        boolean[] zArr = this.type;
        if (zArr.length != 6) {
            throw new IllegalArgumentException("type[] length is not 6");
        }
        this.wv_year.setVisibility(zArr[0] ? 0 : 8);
        this.wv_month.setVisibility(this.type[1] ? 0 : 8);
        this.wv_day.setVisibility(this.type[2] ? 0 : 8);
        this.wv_hours.setVisibility(this.type[3] ? 0 : 8);
        this.wv_minutes.setVisibility(this.type[4] ? 0 : 8);
        this.wv_seconds.setVisibility(this.type[5] ? 0 : 8);
        setContentTextSize();
    }

    private void setChangedListener(WheelView wheelView) {
        if (this.mSelectChangeCallback != null) {
            wheelView.setOnItemSelectedListener(new OnItemSelectedListener() { // from class: com.bigkoo.pickerview.view.WheelTime.5
                @Override // com.contrarywind.listener.OnItemSelectedListener
                public void onItemSelected(int i) {
                    WheelTime.this.mSelectChangeCallback.onTimeSelectChanged();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setReDay(int i, int i2, int i3, int i4, List<String> list, List<String> list2) {
        int currentItem = this.wv_day.getCurrentItem();
        if (list.contains(String.valueOf(i2))) {
            this.wv_day.setAdapter(new NumericWheelAdapter(i3, i4 <= 31 ? i4 : 31));
        } else if (list2.contains(String.valueOf(i2))) {
            this.wv_day.setAdapter(new NumericWheelAdapter(i3, i4 <= 30 ? i4 : 30));
        } else if ((i % 4 == 0 && i % 100 != 0) || i % 400 == 0) {
            this.wv_day.setAdapter(new NumericWheelAdapter(i3, i4 <= 29 ? i4 : 29));
        } else {
            this.wv_day.setAdapter(new NumericWheelAdapter(i3, i4 <= 28 ? i4 : 28));
        }
        if (currentItem > this.wv_day.getAdapter().getItemsCount() - 1) {
            this.wv_day.setCurrentItem(this.wv_day.getAdapter().getItemsCount() - 1);
        }
    }

    private void setContentTextSize() {
        this.wv_day.setTextSize(this.textSize);
        this.wv_month.setTextSize(this.textSize);
        this.wv_year.setTextSize(this.textSize);
        this.wv_hours.setTextSize(this.textSize);
        this.wv_minutes.setTextSize(this.textSize);
        this.wv_seconds.setTextSize(this.textSize);
    }

    public void setLabels(String str, String str2, String str3, String str4, String str5, String str6) {
        if (this.isLunarCalendar) {
            return;
        }
        if (str != null) {
            this.wv_year.setLabel(str);
        } else {
            this.wv_year.setLabel(this.view.getContext().getString(C0757R.string.pickerview_year));
        }
        if (str2 != null) {
            this.wv_month.setLabel(str2);
        } else {
            this.wv_month.setLabel(this.view.getContext().getString(C0757R.string.pickerview_month));
        }
        if (str3 != null) {
            this.wv_day.setLabel(str3);
        } else {
            this.wv_day.setLabel(this.view.getContext().getString(C0757R.string.pickerview_day));
        }
        if (str4 != null) {
            this.wv_hours.setLabel(str4);
        } else {
            this.wv_hours.setLabel(this.view.getContext().getString(C0757R.string.pickerview_hours));
        }
        if (str5 != null) {
            this.wv_minutes.setLabel(str5);
        } else {
            this.wv_minutes.setLabel(this.view.getContext().getString(C0757R.string.pickerview_minutes));
        }
        if (str6 != null) {
            this.wv_seconds.setLabel(str6);
        } else {
            this.wv_seconds.setLabel(this.view.getContext().getString(C0757R.string.pickerview_seconds));
        }
    }

    public void setTextXOffset(int i, int i2, int i3, int i4, int i5, int i6) {
        this.wv_year.setTextXOffset(i);
        this.wv_month.setTextXOffset(i2);
        this.wv_day.setTextXOffset(i3);
        this.wv_hours.setTextXOffset(i4);
        this.wv_minutes.setTextXOffset(i5);
        this.wv_seconds.setTextXOffset(i6);
    }

    public void setCyclic(boolean z) {
        this.wv_year.setCyclic(z);
        this.wv_month.setCyclic(z);
        this.wv_day.setCyclic(z);
        this.wv_hours.setCyclic(z);
        this.wv_minutes.setCyclic(z);
        this.wv_seconds.setCyclic(z);
    }

    public String getTime() {
        if (this.isLunarCalendar) {
            return getLunarTime();
        }
        StringBuilder sb = new StringBuilder();
        if (this.currentYear == this.startYear) {
            int currentItem = this.wv_month.getCurrentItem();
            int i = this.startMonth;
            if (currentItem + i == i) {
                sb.append(this.wv_year.getCurrentItem() + this.startYear);
                sb.append("-");
                sb.append(this.wv_month.getCurrentItem() + this.startMonth);
                sb.append("-");
                sb.append(this.wv_day.getCurrentItem() + this.startDay);
                sb.append(" ");
                sb.append(this.wv_hours.getCurrentItem());
                sb.append(":");
                sb.append(this.wv_minutes.getCurrentItem());
                sb.append(":");
                sb.append(this.wv_seconds.getCurrentItem());
            } else {
                sb.append(this.wv_year.getCurrentItem() + this.startYear);
                sb.append("-");
                sb.append(this.wv_month.getCurrentItem() + this.startMonth);
                sb.append("-");
                sb.append(this.wv_day.getCurrentItem() + 1);
                sb.append(" ");
                sb.append(this.wv_hours.getCurrentItem());
                sb.append(":");
                sb.append(this.wv_minutes.getCurrentItem());
                sb.append(":");
                sb.append(this.wv_seconds.getCurrentItem());
            }
        } else {
            sb.append(this.wv_year.getCurrentItem() + this.startYear);
            sb.append("-");
            sb.append(this.wv_month.getCurrentItem() + 1);
            sb.append("-");
            sb.append(this.wv_day.getCurrentItem() + 1);
            sb.append(" ");
            sb.append(this.wv_hours.getCurrentItem());
            sb.append(":");
            sb.append(this.wv_minutes.getCurrentItem());
            sb.append(":");
            sb.append(this.wv_seconds.getCurrentItem());
        }
        return sb.toString();
    }

    private String getLunarTime() {
        int currentItem;
        boolean z;
        StringBuilder sb = new StringBuilder();
        int currentItem2 = this.wv_year.getCurrentItem() + this.startYear;
        if (ChinaDate.leapMonth(currentItem2) == 0 || (this.wv_month.getCurrentItem() + 1) - ChinaDate.leapMonth(currentItem2) <= 0) {
            int currentItem3 = this.wv_month.getCurrentItem();
            currentItem = currentItem3 + 1;
            z = false;
            int[] iArrLunarToSolar = LunarCalendar.lunarToSolar(currentItem2, currentItem, this.wv_day.getCurrentItem() + 1, z);
            sb.append(iArrLunarToSolar[0]);
            sb.append("-");
            sb.append(iArrLunarToSolar[1]);
            sb.append("-");
            sb.append(iArrLunarToSolar[2]);
            sb.append(" ");
            sb.append(this.wv_hours.getCurrentItem());
            sb.append(":");
            sb.append(this.wv_minutes.getCurrentItem());
            sb.append(":");
            sb.append(this.wv_seconds.getCurrentItem());
            return sb.toString();
        }
        if ((this.wv_month.getCurrentItem() + 1) - ChinaDate.leapMonth(currentItem2) == 1) {
            currentItem = this.wv_month.getCurrentItem();
            z = true;
            int[] iArrLunarToSolar2 = LunarCalendar.lunarToSolar(currentItem2, currentItem, this.wv_day.getCurrentItem() + 1, z);
            sb.append(iArrLunarToSolar2[0]);
            sb.append("-");
            sb.append(iArrLunarToSolar2[1]);
            sb.append("-");
            sb.append(iArrLunarToSolar2[2]);
            sb.append(" ");
            sb.append(this.wv_hours.getCurrentItem());
            sb.append(":");
            sb.append(this.wv_minutes.getCurrentItem());
            sb.append(":");
            sb.append(this.wv_seconds.getCurrentItem());
            return sb.toString();
        }
        currentItem = this.wv_month.getCurrentItem();
        z = false;
        int[] iArrLunarToSolar22 = LunarCalendar.lunarToSolar(currentItem2, currentItem, this.wv_day.getCurrentItem() + 1, z);
        sb.append(iArrLunarToSolar22[0]);
        sb.append("-");
        sb.append(iArrLunarToSolar22[1]);
        sb.append("-");
        sb.append(iArrLunarToSolar22[2]);
        sb.append(" ");
        sb.append(this.wv_hours.getCurrentItem());
        sb.append(":");
        sb.append(this.wv_minutes.getCurrentItem());
        sb.append(":");
        sb.append(this.wv_seconds.getCurrentItem());
        return sb.toString();
    }

    public View getView() {
        return this.view;
    }

    public int getStartYear() {
        return this.startYear;
    }

    public void setStartYear(int i) {
        this.startYear = i;
    }

    public int getEndYear() {
        return this.endYear;
    }

    public void setEndYear(int i) {
        this.endYear = i;
    }

    public void setRangDate(Calendar calendar, Calendar calendar2) {
        if (calendar == null && calendar2 != null) {
            int i = calendar2.get(1);
            int i2 = calendar2.get(2) + 1;
            int i3 = calendar2.get(5);
            int i4 = this.startYear;
            if (i > i4) {
                this.endYear = i;
                this.endMonth = i2;
                this.endDay = i3;
                return;
            } else {
                if (i == i4) {
                    int i5 = this.startMonth;
                    if (i2 > i5) {
                        this.endYear = i;
                        this.endMonth = i2;
                        this.endDay = i3;
                        return;
                    } else {
                        if (i2 != i5 || i3 <= this.startDay) {
                            return;
                        }
                        this.endYear = i;
                        this.endMonth = i2;
                        this.endDay = i3;
                        return;
                    }
                }
                return;
            }
        }
        if (calendar == null || calendar2 != null) {
            if (calendar == null || calendar2 == null) {
                return;
            }
            this.startYear = calendar.get(1);
            this.endYear = calendar2.get(1);
            this.startMonth = calendar.get(2) + 1;
            this.endMonth = calendar2.get(2) + 1;
            this.startDay = calendar.get(5);
            this.endDay = calendar2.get(5);
            return;
        }
        int i6 = calendar.get(1);
        int i7 = calendar.get(2) + 1;
        int i8 = calendar.get(5);
        int i9 = this.endYear;
        if (i6 < i9) {
            this.startMonth = i7;
            this.startDay = i8;
            this.startYear = i6;
        } else if (i6 == i9) {
            int i10 = this.endMonth;
            if (i7 < i10) {
                this.startMonth = i7;
                this.startDay = i8;
                this.startYear = i6;
            } else {
                if (i7 != i10 || i8 >= this.endDay) {
                    return;
                }
                this.startMonth = i7;
                this.startDay = i8;
                this.startYear = i6;
            }
        }
    }

    public void setLineSpacingMultiplier(float f) {
        this.wv_day.setLineSpacingMultiplier(f);
        this.wv_month.setLineSpacingMultiplier(f);
        this.wv_year.setLineSpacingMultiplier(f);
        this.wv_hours.setLineSpacingMultiplier(f);
        this.wv_minutes.setLineSpacingMultiplier(f);
        this.wv_seconds.setLineSpacingMultiplier(f);
    }

    public void setDividerColor(int i) {
        this.wv_day.setDividerColor(i);
        this.wv_month.setDividerColor(i);
        this.wv_year.setDividerColor(i);
        this.wv_hours.setDividerColor(i);
        this.wv_minutes.setDividerColor(i);
        this.wv_seconds.setDividerColor(i);
    }

    public void setDividerType(WheelView.DividerType dividerType) {
        this.wv_day.setDividerType(dividerType);
        this.wv_month.setDividerType(dividerType);
        this.wv_year.setDividerType(dividerType);
        this.wv_hours.setDividerType(dividerType);
        this.wv_minutes.setDividerType(dividerType);
        this.wv_seconds.setDividerType(dividerType);
    }

    public void setTextColorCenter(int i) {
        this.wv_day.setTextColorCenter(i);
        this.wv_month.setTextColorCenter(i);
        this.wv_year.setTextColorCenter(i);
        this.wv_hours.setTextColorCenter(i);
        this.wv_minutes.setTextColorCenter(i);
        this.wv_seconds.setTextColorCenter(i);
    }

    public void setTextColorOut(int i) {
        this.wv_day.setTextColorOut(i);
        this.wv_month.setTextColorOut(i);
        this.wv_year.setTextColorOut(i);
        this.wv_hours.setTextColorOut(i);
        this.wv_minutes.setTextColorOut(i);
        this.wv_seconds.setTextColorOut(i);
    }

    public void isCenterLabel(boolean z) {
        this.wv_day.isCenterLabel(z);
        this.wv_month.isCenterLabel(z);
        this.wv_year.isCenterLabel(z);
        this.wv_hours.isCenterLabel(z);
        this.wv_minutes.isCenterLabel(z);
        this.wv_seconds.isCenterLabel(z);
    }

    public void setSelectChangeCallback(ISelectTimeCallback iSelectTimeCallback) {
        this.mSelectChangeCallback = iSelectTimeCallback;
    }

    public void setItemsVisible(int i) {
        this.wv_day.setItemsVisibleCount(i);
        this.wv_month.setItemsVisibleCount(i);
        this.wv_year.setItemsVisibleCount(i);
        this.wv_hours.setItemsVisibleCount(i);
        this.wv_minutes.setItemsVisibleCount(i);
        this.wv_seconds.setItemsVisibleCount(i);
    }

    public void setAlphaGradient(boolean z) {
        this.wv_day.setAlphaGradient(z);
        this.wv_month.setAlphaGradient(z);
        this.wv_year.setAlphaGradient(z);
        this.wv_hours.setAlphaGradient(z);
        this.wv_minutes.setAlphaGradient(z);
        this.wv_seconds.setAlphaGradient(z);
    }
}
