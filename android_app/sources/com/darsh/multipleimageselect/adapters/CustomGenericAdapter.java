package com.darsh.multipleimageselect.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class CustomGenericAdapter<T> extends BaseAdapter {
    protected ArrayList<T> arrayList;
    protected Context context;
    protected LayoutInflater layoutInflater;
    protected int size;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public CustomGenericAdapter(Context context, ArrayList<T> arrayList) {
        this.arrayList = arrayList;
        this.context = context;
        this.layoutInflater = LayoutInflater.from(this.context);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.arrayList.size();
    }

    @Override // android.widget.Adapter
    public T getItem(int i) {
        return this.arrayList.get(i);
    }

    public void setLayoutParams(int i) {
        this.size = i;
    }

    public void releaseResources() {
        this.arrayList = null;
        this.context = null;
    }
}
