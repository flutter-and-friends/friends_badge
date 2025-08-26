package com.codbking.widget.genview;

import android.content.Context;
import android.database.Cursor;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

/* loaded from: classes.dex */
public abstract class GenWheelView implements IGenWheelView {
    protected abstract View genBody(Context context, View view, Object obj, int i);

    @Override // com.codbking.widget.genview.IGenWheelView
    public View setup(Context context, int i, View view, ViewGroup viewGroup, Object obj) {
        if (obj instanceof Object[]) {
            return genBody(context, view, ((Object[]) obj)[i], i);
        }
        if (obj instanceof ArrayList) {
            return genBody(context, view, ((ArrayList) obj).get(i), i);
        }
        if (obj instanceof LinkedHashMap) {
            int size = i;
            for (Map.Entry entry : ((LinkedHashMap) obj).entrySet()) {
                if (entry.getValue() instanceof List) {
                    if (size <= ((List) entry.getValue()).size()) {
                        return genBody(context, view, ((List) entry.getValue()).get(size - 1), i);
                    }
                    size = (size - ((List) entry.getValue()).size()) - 1;
                }
            }
            return null;
        }
        if (obj instanceof Cursor) {
            ((Cursor) obj).moveToPosition(i);
            return genBody(context, view, obj, i);
        }
        if (obj instanceof SparseArray) {
            return genBody(context, view, ((SparseArray) obj).valueAt(i), i);
        }
        if (obj instanceof SparseBooleanArray) {
            SparseBooleanArray sparseBooleanArray = (SparseBooleanArray) obj;
            return genBody(context, view, Boolean.valueOf(sparseBooleanArray.get(sparseBooleanArray.keyAt(i))), i);
        }
        if (obj instanceof SparseIntArray) {
            return genBody(context, view, Integer.valueOf(((SparseIntArray) obj).valueAt(i)), i);
        }
        if (obj instanceof Vector) {
            return genBody(context, view, ((Vector) obj).get(i), i);
        }
        return obj instanceof LinkedList ? genBody(context, view, ((LinkedList) obj).get(i), i) : view;
    }
}
