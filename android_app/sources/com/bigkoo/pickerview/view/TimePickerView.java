package com.bigkoo.pickerview.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bigkoo.pickerview.C0757R;
import com.bigkoo.pickerview.configure.PickerOptions;
import com.bigkoo.pickerview.listener.ISelectTimeCallback;
import java.text.ParseException;
import java.util.Calendar;

/* loaded from: classes.dex */
public class TimePickerView extends BasePickerView implements View.OnClickListener {
    private static final String TAG_CANCEL = "cancel";
    private static final String TAG_SUBMIT = "submit";
    private WheelTime wheelTime;

    public TimePickerView(PickerOptions pickerOptions) {
        super(pickerOptions.context);
        this.mPickerOptions = pickerOptions;
        initView(pickerOptions.context);
    }

    private void initView(Context context) {
        setDialogOutSideCancelable();
        initViews();
        initAnim();
        if (this.mPickerOptions.customListener == null) {
            LayoutInflater.from(context).inflate(C0757R.layout.pickerview_time, this.contentContainer);
            TextView textView = (TextView) findViewById(C0757R.id.tvTitle);
            RelativeLayout relativeLayout = (RelativeLayout) findViewById(C0757R.id.rv_topbar);
            Button button = (Button) findViewById(C0757R.id.btnSubmit);
            Button button2 = (Button) findViewById(C0757R.id.btnCancel);
            button.setTag(TAG_SUBMIT);
            button2.setTag(TAG_CANCEL);
            button.setOnClickListener(this);
            button2.setOnClickListener(this);
            button.setText(TextUtils.isEmpty(this.mPickerOptions.textContentConfirm) ? context.getResources().getString(C0757R.string.pickerview_submit) : this.mPickerOptions.textContentConfirm);
            button2.setText(TextUtils.isEmpty(this.mPickerOptions.textContentCancel) ? context.getResources().getString(C0757R.string.pickerview_cancel) : this.mPickerOptions.textContentCancel);
            textView.setText(TextUtils.isEmpty(this.mPickerOptions.textContentTitle) ? "" : this.mPickerOptions.textContentTitle);
            button.setTextColor(this.mPickerOptions.textColorConfirm);
            button2.setTextColor(this.mPickerOptions.textColorCancel);
            textView.setTextColor(this.mPickerOptions.textColorTitle);
            relativeLayout.setBackgroundColor(this.mPickerOptions.bgColorTitle);
            button.setTextSize(this.mPickerOptions.textSizeSubmitCancel);
            button2.setTextSize(this.mPickerOptions.textSizeSubmitCancel);
            textView.setTextSize(this.mPickerOptions.textSizeTitle);
        } else {
            this.mPickerOptions.customListener.customLayout(LayoutInflater.from(context).inflate(this.mPickerOptions.layoutRes, this.contentContainer));
        }
        LinearLayout linearLayout = (LinearLayout) findViewById(C0757R.id.timepicker);
        linearLayout.setBackgroundColor(this.mPickerOptions.bgColorWheel);
        initWheelTime(linearLayout);
    }

    private void initWheelTime(LinearLayout linearLayout) {
        this.wheelTime = new WheelTime(linearLayout, this.mPickerOptions.type, this.mPickerOptions.textGravity, this.mPickerOptions.textSizeContent);
        if (this.mPickerOptions.timeSelectChangeListener != null) {
            this.wheelTime.setSelectChangeCallback(new ISelectTimeCallback() { // from class: com.bigkoo.pickerview.view.TimePickerView.1
                @Override // com.bigkoo.pickerview.listener.ISelectTimeCallback
                public void onTimeSelectChanged() throws ParseException {
                    try {
                        TimePickerView.this.mPickerOptions.timeSelectChangeListener.onTimeSelectChanged(WheelTime.dateFormat.parse(TimePickerView.this.wheelTime.getTime()));
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }
                }
            });
        }
        this.wheelTime.setLunarMode(this.mPickerOptions.isLunarCalendar);
        if (this.mPickerOptions.startYear != 0 && this.mPickerOptions.endYear != 0 && this.mPickerOptions.startYear <= this.mPickerOptions.endYear) {
            setRange();
        }
        if (this.mPickerOptions.startDate == null || this.mPickerOptions.endDate == null) {
            if (this.mPickerOptions.startDate != null) {
                if (this.mPickerOptions.startDate.get(1) < 1900) {
                    throw new IllegalArgumentException("The startDate can not as early as 1900");
                }
                setRangDate();
            } else {
                if (this.mPickerOptions.endDate != null && this.mPickerOptions.endDate.get(1) > 2100) {
                    throw new IllegalArgumentException("The endDate should not be later than 2100");
                }
                setRangDate();
            }
        } else {
            if (this.mPickerOptions.startDate.getTimeInMillis() > this.mPickerOptions.endDate.getTimeInMillis()) {
                throw new IllegalArgumentException("startDate can't be later than endDate");
            }
            setRangDate();
        }
        setTime();
        this.wheelTime.setLabels(this.mPickerOptions.label_year, this.mPickerOptions.label_month, this.mPickerOptions.label_day, this.mPickerOptions.label_hours, this.mPickerOptions.label_minutes, this.mPickerOptions.label_seconds);
        this.wheelTime.setTextXOffset(this.mPickerOptions.x_offset_year, this.mPickerOptions.x_offset_month, this.mPickerOptions.x_offset_day, this.mPickerOptions.x_offset_hours, this.mPickerOptions.x_offset_minutes, this.mPickerOptions.x_offset_seconds);
        this.wheelTime.setItemsVisible(this.mPickerOptions.itemsVisibleCount);
        this.wheelTime.setAlphaGradient(this.mPickerOptions.isAlphaGradient);
        setOutSideCancelable(this.mPickerOptions.cancelable);
        this.wheelTime.setCyclic(this.mPickerOptions.cyclic);
        this.wheelTime.setDividerColor(this.mPickerOptions.dividerColor);
        this.wheelTime.setDividerType(this.mPickerOptions.dividerType);
        this.wheelTime.setLineSpacingMultiplier(this.mPickerOptions.lineSpacingMultiplier);
        this.wheelTime.setTextColorOut(this.mPickerOptions.textColorOut);
        this.wheelTime.setTextColorCenter(this.mPickerOptions.textColorCenter);
        this.wheelTime.isCenterLabel(this.mPickerOptions.isCenterLabel);
    }

    public void setDate(Calendar calendar) {
        this.mPickerOptions.date = calendar;
        setTime();
    }

    private void setRange() {
        this.wheelTime.setStartYear(this.mPickerOptions.startYear);
        this.wheelTime.setEndYear(this.mPickerOptions.endYear);
    }

    private void setRangDate() {
        this.wheelTime.setRangDate(this.mPickerOptions.startDate, this.mPickerOptions.endDate);
        initDefaultSelectedDate();
    }

    private void initDefaultSelectedDate() {
        if (this.mPickerOptions.startDate != null && this.mPickerOptions.endDate != null) {
            if (this.mPickerOptions.date == null || this.mPickerOptions.date.getTimeInMillis() < this.mPickerOptions.startDate.getTimeInMillis() || this.mPickerOptions.date.getTimeInMillis() > this.mPickerOptions.endDate.getTimeInMillis()) {
                this.mPickerOptions.date = this.mPickerOptions.startDate;
                return;
            }
            return;
        }
        if (this.mPickerOptions.startDate != null) {
            this.mPickerOptions.date = this.mPickerOptions.startDate;
        } else if (this.mPickerOptions.endDate != null) {
            this.mPickerOptions.date = this.mPickerOptions.endDate;
        }
    }

    private void setTime() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        Calendar calendar = Calendar.getInstance();
        if (this.mPickerOptions.date == null) {
            calendar.setTimeInMillis(System.currentTimeMillis());
            i = calendar.get(1);
            i2 = calendar.get(2);
            i3 = calendar.get(5);
            i4 = calendar.get(11);
            i5 = calendar.get(12);
            i6 = calendar.get(13);
        } else {
            i = this.mPickerOptions.date.get(1);
            i2 = this.mPickerOptions.date.get(2);
            i3 = this.mPickerOptions.date.get(5);
            i4 = this.mPickerOptions.date.get(11);
            i5 = this.mPickerOptions.date.get(12);
            i6 = this.mPickerOptions.date.get(13);
        }
        int i7 = i4;
        int i8 = i3;
        int i9 = i2;
        WheelTime wheelTime = this.wheelTime;
        wheelTime.setPicker(i, i9, i8, i7, i5, i6);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) throws ParseException {
        String str = (String) view.getTag();
        if (str.equals(TAG_SUBMIT)) {
            returnData();
        } else if (str.equals(TAG_CANCEL) && this.mPickerOptions.cancelListener != null) {
            this.mPickerOptions.cancelListener.onClick(view);
        }
        dismiss();
    }

    public void returnData() throws ParseException {
        if (this.mPickerOptions.timeSelectListener != null) {
            try {
                this.mPickerOptions.timeSelectListener.onTimeSelect(WheelTime.dateFormat.parse(this.wheelTime.getTime()), this.clickView);
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
    }

    public void setTitleText(String str) {
        TextView textView = (TextView) findViewById(C0757R.id.tvTitle);
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setLunarCalendar(boolean z) {
        try {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(WheelTime.dateFormat.parse(this.wheelTime.getTime()));
            int i = calendar.get(1);
            int i2 = calendar.get(2);
            int i3 = calendar.get(5);
            int i4 = calendar.get(11);
            int i5 = calendar.get(12);
            int i6 = calendar.get(13);
            this.wheelTime.setLunarMode(z);
            this.wheelTime.setLabels(this.mPickerOptions.label_year, this.mPickerOptions.label_month, this.mPickerOptions.label_day, this.mPickerOptions.label_hours, this.mPickerOptions.label_minutes, this.mPickerOptions.label_seconds);
            this.wheelTime.setPicker(i, i2, i3, i4, i5, i6);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    public boolean isLunarCalendar() {
        return this.wheelTime.isLunarMode();
    }

    @Override // com.bigkoo.pickerview.view.BasePickerView
    public boolean isDialog() {
        return this.mPickerOptions.isDialog;
    }
}
