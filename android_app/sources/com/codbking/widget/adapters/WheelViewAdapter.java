package com.codbking.widget.adapters;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public interface WheelViewAdapter {
    View getEmptyItem(View view, ViewGroup viewGroup);

    View getItem(int i, View view, ViewGroup viewGroup);

    int getItemsCount();

    void registerDataSetObserver(DataSetObserver dataSetObserver);

    void unregisterDataSetObserver(DataSetObserver dataSetObserver);
}
