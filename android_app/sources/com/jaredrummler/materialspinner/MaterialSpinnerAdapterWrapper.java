package com.jaredrummler.materialspinner;

import android.content.Context;
import android.widget.ListAdapter;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class MaterialSpinnerAdapterWrapper extends MaterialSpinnerBaseAdapter {
    private final ListAdapter listAdapter;

    public MaterialSpinnerAdapterWrapper(Context context, ListAdapter listAdapter) {
        super(context);
        this.listAdapter = listAdapter;
    }

    @Override // com.jaredrummler.materialspinner.MaterialSpinnerBaseAdapter, android.widget.Adapter
    public int getCount() {
        int count = this.listAdapter.getCount();
        return (count == 1 || isHintEnabled()) ? count : count - 1;
    }

    @Override // com.jaredrummler.materialspinner.MaterialSpinnerBaseAdapter, android.widget.Adapter
    public Object getItem(int i) {
        if (isHintEnabled()) {
            return this.listAdapter.getItem(i);
        }
        if (i >= getSelectedIndex() && this.listAdapter.getCount() != 1) {
            return this.listAdapter.getItem(i + 1);
        }
        return this.listAdapter.getItem(i);
    }

    @Override // com.jaredrummler.materialspinner.MaterialSpinnerBaseAdapter
    public Object get(int i) {
        return this.listAdapter.getItem(i);
    }

    @Override // com.jaredrummler.materialspinner.MaterialSpinnerBaseAdapter
    public List<Object> getItems() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.listAdapter.getCount(); i++) {
            arrayList.add(this.listAdapter.getItem(i));
        }
        return arrayList;
    }
}
