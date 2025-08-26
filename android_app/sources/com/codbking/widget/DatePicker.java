package com.codbking.widget;

import android.content.Context;
import android.widget.TextView;
import com.codbking.widget.DatePickerHelper;
import com.codbking.widget.bean.DateType;
import com.codbking.widget.genview.WheelGeneralAdapter;
import com.codbking.widget.view.WheelView;
import java.util.Date;

/* loaded from: classes.dex */
class DatePicker extends BaseWheelPick {
    private static final String TAG = "WheelPicker";
    private DatePickerHelper datePicker;
    private Integer[] dayArr;
    private WheelView dayView;
    private Integer[] hourArr;
    private WheelView hourView;
    private Integer[] minutArr;
    private WheelView minuteView;
    private WheelView monthView;
    private Integer[] mothArr;
    private OnChangeLisener onChangeLisener;
    private int selectDay;
    private Date startDate;
    public DateType type;
    private TextView weekView;
    private Integer[] yearArr;
    private int yearLimt;
    private WheelView yearView;

    @Override // com.codbking.widget.view.OnWheelScrollListener
    public void onScrollingFinished(WheelView wheelView) {
    }

    @Override // com.codbking.widget.view.OnWheelScrollListener
    public void onScrollingStarted(WheelView wheelView) {
    }

    @Override // com.codbking.widget.BaseWheelPick
    protected void setData(Object[] objArr) {
    }

    public void setOnChangeLisener(OnChangeLisener onChangeLisener) {
        this.onChangeLisener = onChangeLisener;
    }

    public DatePicker(Context context, DateType dateType) {
        super(context);
        this.type = DateType.TYPE_ALL;
        this.startDate = new Date();
        this.yearLimt = 5;
        if (this.type != null) {
            this.type = dateType;
        }
    }

    public void setStartDate(Date date) {
        this.startDate = date;
    }

    public void setYearLimt(int i) {
        this.yearLimt = i;
    }

    public void init() {
        this.minuteView = (WheelView) findViewById(C0905R.id.minute);
        this.hourView = (WheelView) findViewById(C0905R.id.hour);
        this.weekView = (TextView) findViewById(C0905R.id.week);
        this.dayView = (WheelView) findViewById(C0905R.id.day);
        this.monthView = (WheelView) findViewById(C0905R.id.month);
        this.yearView = (WheelView) findViewById(C0905R.id.year);
        int i = C09031.$SwitchMap$com$codbking$widget$bean$DateType[this.type.ordinal()];
        if (i == 1) {
            this.minuteView.setVisibility(0);
            this.hourView.setVisibility(0);
            this.weekView.setVisibility(0);
            this.dayView.setVisibility(0);
            this.monthView.setVisibility(0);
            this.yearView.setVisibility(0);
        } else if (i == 2) {
            this.minuteView.setVisibility(0);
            this.hourView.setVisibility(0);
            this.weekView.setVisibility(8);
            this.dayView.setVisibility(0);
            this.monthView.setVisibility(0);
            this.yearView.setVisibility(0);
        } else if (i == 3) {
            this.minuteView.setVisibility(8);
            this.hourView.setVisibility(0);
            this.weekView.setVisibility(8);
            this.dayView.setVisibility(0);
            this.monthView.setVisibility(0);
            this.yearView.setVisibility(0);
        } else if (i == 4) {
            this.minuteView.setVisibility(8);
            this.hourView.setVisibility(8);
            this.weekView.setVisibility(8);
            this.dayView.setVisibility(0);
            this.monthView.setVisibility(0);
            this.yearView.setVisibility(0);
        } else if (i == 5) {
            this.minuteView.setVisibility(0);
            this.hourView.setVisibility(0);
            this.weekView.setVisibility(8);
            this.dayView.setVisibility(8);
            this.monthView.setVisibility(8);
            this.yearView.setVisibility(8);
        }
        this.datePicker = new DatePickerHelper();
        this.datePicker.setStartDate(this.startDate, this.yearLimt);
        this.dayArr = this.datePicker.genDay();
        this.yearArr = this.datePicker.genYear();
        this.mothArr = this.datePicker.genMonth();
        this.hourArr = this.datePicker.genHour();
        this.minutArr = this.datePicker.genMinut();
        this.weekView.setText(this.datePicker.getDisplayStartWeek());
        setWheelListener(this.yearView, this.yearArr, false);
        setWheelListener(this.monthView, this.mothArr, true);
        setWheelListener(this.dayView, this.dayArr, true);
        setWheelListener(this.hourView, this.hourArr, true);
        setWheelListener(this.minuteView, this.minutArr, true);
        WheelView wheelView = this.yearView;
        DatePickerHelper datePickerHelper = this.datePicker;
        wheelView.setCurrentItem(datePickerHelper.findIndextByValue(datePickerHelper.getToady(DatePickerHelper.Type.YEAR), this.yearArr));
        WheelView wheelView2 = this.monthView;
        DatePickerHelper datePickerHelper2 = this.datePicker;
        wheelView2.setCurrentItem(datePickerHelper2.findIndextByValue(datePickerHelper2.getToady(DatePickerHelper.Type.MOTH), this.mothArr));
        WheelView wheelView3 = this.dayView;
        DatePickerHelper datePickerHelper3 = this.datePicker;
        wheelView3.setCurrentItem(datePickerHelper3.findIndextByValue(datePickerHelper3.getToady(DatePickerHelper.Type.DAY), this.dayArr));
        WheelView wheelView4 = this.hourView;
        DatePickerHelper datePickerHelper4 = this.datePicker;
        wheelView4.setCurrentItem(datePickerHelper4.findIndextByValue(datePickerHelper4.getToady(DatePickerHelper.Type.HOUR), this.hourArr));
        WheelView wheelView5 = this.minuteView;
        DatePickerHelper datePickerHelper5 = this.datePicker;
        wheelView5.setCurrentItem(datePickerHelper5.findIndextByValue(datePickerHelper5.getToady(DatePickerHelper.Type.MINUTE), this.minutArr));
    }

    /* renamed from: com.codbking.widget.DatePicker$1 */
    static /* synthetic */ class C09031 {
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

    @Override // com.codbking.widget.BaseWheelPick
    protected String[] convertData(WheelView wheelView, Integer[] numArr) {
        if (wheelView == this.yearView) {
            return this.datePicker.getDisplayValue(numArr, "年");
        }
        if (wheelView == this.monthView) {
            return this.datePicker.getDisplayValue(numArr, "月");
        }
        if (wheelView == this.dayView) {
            return this.datePicker.getDisplayValue(numArr, "日");
        }
        if (wheelView == this.hourView) {
            return this.datePicker.getDisplayValue(numArr, "");
        }
        return wheelView == this.minuteView ? this.datePicker.getDisplayValue(numArr, "") : new String[0];
    }

    @Override // com.codbking.widget.BaseWheelPick
    protected int getLayout() {
        return C0905R.layout.cbk_wheel_picker;
    }

    @Override // com.codbking.widget.BaseWheelPick
    protected int getItemHeight() {
        return this.dayView.getItemHeight();
    }

    private void setChangeDaySelect(int i, int i2) {
        this.dayArr = this.datePicker.genDay(i, i2);
        ((WheelGeneralAdapter) this.dayView.getViewAdapter()).setData((Object[]) convertData(this.dayView, this.dayArr));
        int iFindIndextByValue = this.datePicker.findIndextByValue(this.selectDay, this.dayArr);
        if (iFindIndextByValue == -1) {
            this.dayView.setCurrentItem(0);
        } else {
            this.dayView.setCurrentItem(iFindIndextByValue);
        }
    }

    @Override // com.codbking.widget.BaseWheelPick, com.codbking.widget.view.OnWheelChangedListener
    public void onChanged(WheelView wheelView, int i, int i2) {
        int iIntValue = this.yearArr[this.yearView.getCurrentItem()].intValue();
        int iIntValue2 = this.mothArr[this.monthView.getCurrentItem()].intValue();
        int iIntValue3 = this.dayArr[this.dayView.getCurrentItem()].intValue();
        int iIntValue4 = this.hourArr[this.hourView.getCurrentItem()].intValue();
        int iIntValue5 = this.minutArr[this.minuteView.getCurrentItem()].intValue();
        if (wheelView == this.yearView || wheelView == this.monthView) {
            setChangeDaySelect(iIntValue, iIntValue2);
        } else {
            this.selectDay = iIntValue3;
        }
        if (wheelView == this.yearView || wheelView == this.monthView || wheelView == this.dayView) {
            this.weekView.setText(this.datePicker.getDisplayWeek(iIntValue, iIntValue2, iIntValue3));
        }
        OnChangeLisener onChangeLisener = this.onChangeLisener;
        if (onChangeLisener != null) {
            onChangeLisener.onChanged(DateUtils.getDate(iIntValue, iIntValue2, iIntValue3, iIntValue4, iIntValue5));
        }
    }

    public Date getSelectDate() {
        return DateUtils.getDate(this.yearArr[this.yearView.getCurrentItem()].intValue(), this.mothArr[this.monthView.getCurrentItem()].intValue(), this.dayArr[this.dayView.getCurrentItem()].intValue(), this.hourArr[this.hourView.getCurrentItem()].intValue(), this.minutArr[this.minuteView.getCurrentItem()].intValue());
    }
}
