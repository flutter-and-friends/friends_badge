package com.codbking.widget.adapters;

import android.content.Context;

/* loaded from: classes.dex */
public class NumericWheelAdapter extends AbstractWheelTextAdapter {
    public static final int DEFAULT_MAX_VALUE = 9;
    private static final int DEFAULT_MIN_VALUE = 0;
    private String format;
    private int maxValue;
    private int minValue;

    public NumericWheelAdapter(Context context) {
        this(context, 0, 9);
    }

    public NumericWheelAdapter(Context context, int i, int i2) {
        this(context, i, i2, null);
    }

    public NumericWheelAdapter(Context context, int i, int i2, String str) {
        super(context);
        this.minValue = i;
        this.maxValue = i2;
        this.format = str;
    }

    @Override // com.codbking.widget.adapters.AbstractWheelTextAdapter
    public CharSequence getItemText(int i) {
        if (i < 0 || i >= getItemsCount()) {
            return null;
        }
        int i2 = this.minValue + i;
        String str = this.format;
        return str != null ? String.format(str, Integer.valueOf(i2)) : Integer.toString(i2);
    }

    @Override // com.codbking.widget.adapters.WheelViewAdapter
    public int getItemsCount() {
        return (this.maxValue - this.minValue) + 1;
    }
}
