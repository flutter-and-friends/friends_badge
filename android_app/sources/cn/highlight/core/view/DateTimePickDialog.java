package cn.highlight.core.view;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.TimePickerDialog;
import android.content.DialogInterface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TimePicker;
import cn.highlight.core.C0450R;
import cn.highlight.core.interfaces.DateListener;
import cn.highlight.core.interfaces.TimeListener;
import cn.highlight.core.utils.Tools;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes.dex */
public class DateTimePickDialog implements DatePicker.OnDateChangedListener, TimePicker.OnTimeChangedListener {
    private Activity activity;

    /* renamed from: ad */
    private android.app.AlertDialog f80ad;
    private String date;
    private DateListener dateListener;
    private DatePicker datePicker;
    private String initDate;
    private TimeListener timeListener;

    public DateTimePickDialog(Activity activity, String str) {
        this.activity = activity;
        this.initDate = str;
    }

    private void init(DatePicker datePicker) {
        Calendar calendar = Calendar.getInstance();
        if (Tools.isNull(this.initDate) && this.initDate.contains("-")) {
            this.initDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        }
        try {
            String[] strArrSplit = this.initDate.split("-");
            calendar.set(Integer.parseInt(strArrSplit[0].trim()), Integer.parseInt(strArrSplit[1].trim()) - 1, Integer.parseInt(strArrSplit[2].trim()));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        datePicker.init(calendar.get(1), calendar.get(2), calendar.get(5), this);
    }

    public void setSelectDateListener(DateListener dateListener) {
        this.dateListener = dateListener;
    }

    public void setSelectTimeListener(TimeListener timeListener) {
        this.timeListener = timeListener;
    }

    public void datePicKDialog() {
        LinearLayout linearLayout = (LinearLayout) this.activity.getLayoutInflater().inflate(C0450R.layout.common_datetime, (ViewGroup) null);
        this.datePicker = (DatePicker) linearLayout.findViewById(C0450R.id.date_picker);
        try {
            ((ViewGroup) this.datePicker.getChildAt(0)).getChildAt(0).setVisibility(8);
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.datePicker.setDescendantFocusability(393216);
        init(this.datePicker);
        this.f80ad = new AlertDialog.Builder(this.activity).setTitle(this.initDate).setView(linearLayout).setPositiveButton("确定", (DialogInterface.OnClickListener) null).setNegativeButton("取消", (DialogInterface.OnClickListener) null).show();
        Button button = this.f80ad.getButton(-1);
        Button button2 = this.f80ad.getButton(-2);
        button.setAllCaps(false);
        button2.setAllCaps(false);
        button.setTextColor(this.activity.getResources().getColor(C0450R.color.blue));
        button2.setTextColor(this.activity.getResources().getColor(C0450R.color.blue));
        button.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.core.view.-$$Lambda$DateTimePickDialog$vWwqWOFeT0D0IcF5FAPosNExUWk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$datePicKDialog$0$DateTimePickDialog(view);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: cn.highlight.core.view.-$$Lambda$DateTimePickDialog$O3FFimxGyDXj3HbzBmnxqz6JXr0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$datePicKDialog$1$DateTimePickDialog(view);
            }
        });
        onDateChanged(null, 0, 0, 0);
    }

    public /* synthetic */ void lambda$datePicKDialog$0$DateTimePickDialog(View view) {
        DateListener dateListener = this.dateListener;
        if (dateListener != null) {
            dateListener.getDate(this.date);
        }
        this.f80ad.dismiss();
    }

    public /* synthetic */ void lambda$datePicKDialog$1$DateTimePickDialog(View view) {
        this.f80ad.dismiss();
    }

    @Override // android.widget.TimePicker.OnTimeChangedListener
    public void onTimeChanged(TimePicker timePicker, int i, int i2) {
        onDateChanged(null, 0, 0, 0);
    }

    @Override // android.widget.DatePicker.OnDateChangedListener
    public void onDateChanged(DatePicker datePicker, int i, int i2, int i3) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(this.datePicker.getYear(), this.datePicker.getMonth(), this.datePicker.getDayOfMonth());
        this.date = new SimpleDateFormat("yyyy-MM-dd").format(calendar.getTime());
        this.f80ad.setTitle(this.date);
    }

    public void timePicKDialog() {
        Calendar calendar = Calendar.getInstance(Locale.CHINA);
        new TimePickerDialog(this.activity, 3, new TimePickerDialog.OnTimeSetListener() { // from class: cn.highlight.core.view.-$$Lambda$DateTimePickDialog$JhBpLOlJNW_zcZYLVEbRzTdrlfk
            @Override // android.app.TimePickerDialog.OnTimeSetListener
            public final void onTimeSet(TimePicker timePicker, int i, int i2) {
                this.f$0.lambda$timePicKDialog$2$DateTimePickDialog(timePicker, i, i2);
            }
        }, calendar.get(11), calendar.get(12), true).show();
    }

    public /* synthetic */ void lambda$timePicKDialog$2$DateTimePickDialog(TimePicker timePicker, int i, int i2) {
        String str = appendZero(i) + ":" + appendZero(i2);
        TimeListener timeListener = this.timeListener;
        if (timeListener != null) {
            timeListener.getTime(str);
        }
    }

    private static String appendZero(int i) {
        if (i < 10) {
            return "0" + i;
        }
        return String.valueOf(i);
    }
}
