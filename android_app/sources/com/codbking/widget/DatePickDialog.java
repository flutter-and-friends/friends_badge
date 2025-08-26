package com.codbking.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.codbking.widget.bean.DateType;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class DatePickDialog extends Dialog implements OnChangeLisener {
    private TextView cancel;
    private String format;
    private DatePicker mDatePicker;
    private TextView messgeTv;
    private OnChangeLisener onChangeLisener;
    private OnSureLisener onSureLisener;
    private Date startDate;
    private TextView sure;
    private String title;
    private TextView titleTv;
    private DateType type;
    private FrameLayout wheelLayout;
    private int yearLimt;

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(DateType dateType) {
        this.type = dateType;
    }

    public void setMessageFormat(String str) {
        this.format = str;
    }

    public void setStartDate(Date date) {
        this.startDate = date;
    }

    public void setYearLimt(int i) {
        this.yearLimt = i;
    }

    public void setOnChangeLisener(OnChangeLisener onChangeLisener) {
        this.onChangeLisener = onChangeLisener;
    }

    public void setOnSureLisener(OnSureLisener onSureLisener) {
        this.onSureLisener = onSureLisener;
    }

    public DatePickDialog(Context context) {
        super(context, C0905R.style.dialog_style);
        this.type = DateType.TYPE_ALL;
        this.startDate = new Date();
        this.yearLimt = 5;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0905R.layout.cbk_dialog_pick_time);
        initView();
        initParas();
    }

    private DatePicker getDatePicker() {
        DatePicker datePicker = new DatePicker(getContext(), this.type);
        datePicker.setStartDate(this.startDate);
        datePicker.setYearLimt(this.yearLimt);
        datePicker.setOnChangeLisener(this);
        datePicker.init();
        return datePicker;
    }

    private void initView() {
        this.sure = (TextView) findViewById(C0905R.id.sure);
        this.cancel = (TextView) findViewById(C0905R.id.cancel);
        this.wheelLayout = (FrameLayout) findViewById(C0905R.id.wheelLayout);
        this.titleTv = (TextView) findViewById(C0905R.id.title);
        this.messgeTv = (TextView) findViewById(C0905R.id.message);
        this.mDatePicker = getDatePicker();
        this.wheelLayout.addView(this.mDatePicker);
        this.titleTv.setText(this.title);
        this.cancel.setOnClickListener(new View.OnClickListener() { // from class: com.codbking.widget.DatePickDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DatePickDialog.this.dismiss();
            }
        });
        this.sure.setOnClickListener(new View.OnClickListener() { // from class: com.codbking.widget.DatePickDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DatePickDialog.this.dismiss();
                if (DatePickDialog.this.onSureLisener != null) {
                    DatePickDialog.this.onSureLisener.onSure(DatePickDialog.this.mDatePicker.getSelectDate());
                }
            }
        });
    }

    private void initParas() {
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = 80;
        attributes.width = DateUtils.getScreenWidth(getContext());
        getWindow().setAttributes(attributes);
    }

    @Override // com.codbking.widget.OnChangeLisener
    public void onChanged(Date date) {
        String str;
        OnChangeLisener onChangeLisener = this.onChangeLisener;
        if (onChangeLisener != null) {
            onChangeLisener.onChanged(date);
        }
        if (TextUtils.isEmpty(this.format)) {
            return;
        }
        try {
            str = new SimpleDateFormat(this.format).format(date);
        } catch (Exception e) {
            e.printStackTrace();
            str = "";
        }
        this.messgeTv.setText(str);
    }
}
