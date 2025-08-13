package com.codbking.widget.adapters;

import android.content.Context;
import com.codbking.widget.view.WheelAdapter;

/* loaded from: classes.dex */
public class AdapterWheel extends AbstractWheelTextAdapter {
    private WheelAdapter adapter;

    public AdapterWheel(Context context, WheelAdapter wheelAdapter) {
        super(context);
        this.adapter = wheelAdapter;
    }

    public WheelAdapter getAdapter() {
        return this.adapter;
    }

    @Override // com.codbking.widget.adapters.WheelViewAdapter
    public int getItemsCount() {
        return this.adapter.getItemsCount();
    }

    @Override // com.codbking.widget.adapters.AbstractWheelTextAdapter
    protected CharSequence getItemText(int i) {
        return this.adapter.getItem(i);
    }
}
