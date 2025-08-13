package com.codbking.widget.adapters;

import android.content.Context;
import android.graphics.Typeface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

/* loaded from: classes.dex */
public abstract class AbstractWheelTextAdapter extends AbstractWheelAdapter {
    public static final int DEFAULT_TEXT_COLOR = -15724528;
    public static final int DEFAULT_TEXT_SIZE = 24;
    public static final int LABEL_COLOR = -9437072;
    protected static final int NO_RESOURCE = 0;
    public static final int TEXT_VIEW_ITEM_RESOURCE = -1;
    protected Context context;
    protected int emptyItemResourceId;
    protected LayoutInflater inflater;
    protected int itemResourceId;
    protected int itemTextResourceId;
    private int textColor;
    private int textSize;

    protected abstract CharSequence getItemText(int i);

    protected AbstractWheelTextAdapter(Context context) {
        this(context, -1);
    }

    protected AbstractWheelTextAdapter(Context context, int i) {
        this(context, i, 0);
    }

    protected AbstractWheelTextAdapter(Context context, int i, int i2) {
        this.textColor = DEFAULT_TEXT_COLOR;
        this.textSize = 24;
        this.context = context;
        this.itemResourceId = i;
        this.itemTextResourceId = i2;
        this.inflater = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public int getTextColor() {
        return this.textColor;
    }

    public void setTextColor(int i) {
        this.textColor = i;
    }

    public int getTextSize() {
        return this.textSize;
    }

    public void setTextSize(int i) {
        this.textSize = i;
    }

    public int getItemResource() {
        return this.itemResourceId;
    }

    public void setItemResource(int i) {
        this.itemResourceId = i;
    }

    public int getItemTextResource() {
        return this.itemTextResourceId;
    }

    public void setItemTextResource(int i) {
        this.itemTextResourceId = i;
    }

    public int getEmptyItemResource() {
        return this.emptyItemResourceId;
    }

    public void setEmptyItemResource(int i) {
        this.emptyItemResourceId = i;
    }

    @Override // com.codbking.widget.adapters.WheelViewAdapter
    public View getItem(int i, View view, ViewGroup viewGroup) {
        if (i < 0 || i >= getItemsCount()) {
            return null;
        }
        if (view == null) {
            view = getView(this.itemResourceId, viewGroup);
        }
        TextView textView = getTextView(view, this.itemTextResourceId);
        if (textView != null) {
            CharSequence itemText = getItemText(i);
            if (itemText == null) {
                itemText = "";
            }
            textView.setText(itemText);
            if (this.itemResourceId == -1) {
                configureTextView(textView);
            }
        }
        return view;
    }

    @Override // com.codbking.widget.adapters.AbstractWheelAdapter, com.codbking.widget.adapters.WheelViewAdapter
    public View getEmptyItem(View view, ViewGroup viewGroup) {
        if (view == null) {
            view = getView(this.emptyItemResourceId, viewGroup);
        }
        if (this.emptyItemResourceId == -1 && (view instanceof TextView)) {
            configureTextView((TextView) view);
        }
        return view;
    }

    protected void configureTextView(TextView textView) {
        textView.setTextColor(this.textColor);
        textView.setGravity(17);
        textView.setTextSize(this.textSize);
        textView.setLines(1);
        textView.setTypeface(Typeface.SANS_SERIF, 1);
    }

    protected void configureTextView(TextView textView, int i) {
        textView.setTextColor(this.textColor);
        textView.setGravity(i);
        textView.setTextSize(this.textSize);
        textView.setLines(1);
        textView.setTypeface(Typeface.SANS_SERIF, 1);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.widget.TextView getTextView(android.view.View r2, int r3) {
        /*
            r1 = this;
            if (r3 != 0) goto Lb
            boolean r0 = r2 instanceof android.widget.TextView     // Catch: java.lang.ClassCastException -> L9
            if (r0 == 0) goto Lb
            android.widget.TextView r2 = (android.widget.TextView) r2     // Catch: java.lang.ClassCastException -> L9
            goto L24
        L9:
            r2 = move-exception
            goto L14
        Lb:
            if (r3 == 0) goto L23
            android.view.View r2 = r2.findViewById(r3)     // Catch: java.lang.ClassCastException -> L9
            android.widget.TextView r2 = (android.widget.TextView) r2     // Catch: java.lang.ClassCastException -> L9
            goto L24
        L14:
            java.lang.String r3 = "AbstractWheelAdapter"
            java.lang.String r0 = "You must supply a resource ID for a TextView"
            android.util.Log.e(r3, r0)
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r0 = "AbstractWheelAdapter requires the resource ID to be a TextView"
            r3.<init>(r0, r2)
            throw r3
        L23:
            r2 = 0
        L24:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.codbking.widget.adapters.AbstractWheelTextAdapter.getTextView(android.view.View, int):android.widget.TextView");
    }

    private View getView(int i, ViewGroup viewGroup) {
        if (i == -1) {
            return new TextView(this.context);
        }
        if (i != 0) {
            return this.inflater.inflate(i, viewGroup, false);
        }
        return null;
    }
}
