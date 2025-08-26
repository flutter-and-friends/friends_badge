package com.bigkoo.pickerview.configure;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import com.bigkoo.pickerview.C0757R;
import com.bigkoo.pickerview.listener.CustomListener;
import com.bigkoo.pickerview.listener.OnOptionsSelectChangeListener;
import com.bigkoo.pickerview.listener.OnOptionsSelectListener;
import com.bigkoo.pickerview.listener.OnTimeSelectChangeListener;
import com.bigkoo.pickerview.listener.OnTimeSelectListener;
import com.contrarywind.view.WheelView;
import java.util.Calendar;

/* loaded from: classes.dex */
public class PickerOptions {
    private static final int PICKER_VIEW_BG_COLOR_DEFAULT = -1;
    private static final int PICKER_VIEW_BG_COLOR_TITLE = -657931;
    private static final int PICKER_VIEW_BTN_COLOR_NORMAL = -16417281;
    private static final int PICKER_VIEW_COLOR_TITLE = -16777216;
    public static final int TYPE_PICKER_OPTIONS = 1;
    public static final int TYPE_PICKER_TIME = 2;
    public View.OnClickListener cancelListener;
    public Context context;
    public CustomListener customListener;
    public Calendar date;
    public ViewGroup decorView;
    public Calendar endDate;
    public int endYear;
    public boolean isDialog;
    public String label1;
    public String label2;
    public String label3;
    public String label_day;
    public String label_hours;
    public String label_minutes;
    public String label_month;
    public String label_seconds;
    public String label_year;
    public int layoutRes;
    public int option1;
    public int option2;
    public int option3;
    public OnOptionsSelectChangeListener optionsSelectChangeListener;
    public OnOptionsSelectListener optionsSelectListener;
    public Calendar startDate;
    public int startYear;
    public String textContentCancel;
    public String textContentConfirm;
    public String textContentTitle;
    public OnTimeSelectChangeListener timeSelectChangeListener;
    public OnTimeSelectListener timeSelectListener;
    public int x_offset_day;
    public int x_offset_hours;
    public int x_offset_minutes;
    public int x_offset_month;
    public int x_offset_one;
    public int x_offset_seconds;
    public int x_offset_three;
    public int x_offset_two;
    public int x_offset_year;
    public boolean cyclic1 = false;
    public boolean cyclic2 = false;
    public boolean cyclic3 = false;
    public boolean isRestoreItem = false;
    public boolean[] type = {true, true, true, false, false, false};
    public boolean cyclic = false;
    public boolean isLunarCalendar = false;
    public int textGravity = 17;
    public int textColorConfirm = PICKER_VIEW_BTN_COLOR_NORMAL;
    public int textColorCancel = PICKER_VIEW_BTN_COLOR_NORMAL;
    public int textColorTitle = -16777216;
    public int bgColorWheel = -1;
    public int bgColorTitle = PICKER_VIEW_BG_COLOR_TITLE;
    public int textSizeSubmitCancel = 17;
    public int textSizeTitle = 18;
    public int textSizeContent = 18;
    public int textColorOut = -5723992;
    public int textColorCenter = -14013910;
    public int dividerColor = -2763307;
    public int outSideColor = -1;
    public float lineSpacingMultiplier = 1.6f;
    public boolean cancelable = true;
    public boolean isCenterLabel = false;
    public Typeface font = Typeface.MONOSPACE;
    public WheelView.DividerType dividerType = WheelView.DividerType.FILL;
    public int itemsVisibleCount = 9;
    public boolean isAlphaGradient = false;

    public PickerOptions(int i) {
        if (i == 1) {
            this.layoutRes = C0757R.layout.pickerview_options;
        } else {
            this.layoutRes = C0757R.layout.pickerview_time;
        }
    }
}
