package com.codbking.widget.genview;

import android.content.Context;
import android.database.Cursor;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.codbking.widget.adapters.AbstractWheelAdapter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

/* loaded from: classes.dex */
public class WheelGeneralAdapter extends AbstractWheelAdapter {
    private Context context;
    private Object data;
    private DataType dataType = DataType.OTHERS;
    private GenWheelView generator;

    public enum DataType {
        ARRAYLIST,
        LINKEDHASHMAP,
        CURSOR,
        OBJECT_ARRAY,
        SPARSE_ARRAY,
        SPARSE_BOOLEAN_ARRAY,
        SPARSE_INT_ARRAY,
        VECTOR,
        LINKEDLIST,
        OTHERS
    }

    public DataType getDataType() {
        return this.dataType;
    }

    public WheelGeneralAdapter(Context context, GenWheelView genWheelView) {
        this.generator = genWheelView;
        this.context = context;
    }

    public Object getData() {
        return this.data;
    }

    public void setData(Object obj) throws UnSupportedWheelViewException {
        if (obj instanceof ArrayList) {
            this.dataType = DataType.ARRAYLIST;
        } else if (obj instanceof LinkedHashMap) {
            this.dataType = DataType.LINKEDHASHMAP;
        } else if (obj instanceof Cursor) {
            this.dataType = DataType.CURSOR;
        } else if (obj instanceof Object[]) {
            this.dataType = DataType.OBJECT_ARRAY;
        } else if (obj instanceof SparseArray) {
            this.dataType = DataType.SPARSE_ARRAY;
        } else if (obj instanceof SparseBooleanArray) {
            this.dataType = DataType.SPARSE_BOOLEAN_ARRAY;
        } else if (obj instanceof SparseIntArray) {
            this.dataType = DataType.SPARSE_INT_ARRAY;
        } else if (obj instanceof Vector) {
            this.dataType = DataType.VECTOR;
        } else if (obj instanceof LinkedList) {
            this.dataType = DataType.LINKEDLIST;
        } else {
            throw new UnSupportedWheelViewException();
        }
        this.data = obj;
    }

    public void setData(Object[] objArr) {
        this.dataType = DataType.OBJECT_ARRAY;
        this.data = objArr;
    }

    public void setData(ArrayList<?> arrayList) {
        this.dataType = DataType.ARRAYLIST;
        this.data = arrayList;
    }

    public void setData(Vector<?> vector) {
        this.dataType = DataType.VECTOR;
        this.data = vector;
    }

    public void setData(SparseArray<?> sparseArray) {
        this.dataType = DataType.SPARSE_ARRAY;
        this.data = sparseArray;
    }

    public void setData(LinkedList<?> linkedList) {
        this.dataType = DataType.LINKEDLIST;
        this.data = linkedList;
    }

    public int getCountWithoutHeader() {
        int size = 0;
        switch (this.dataType) {
            case ARRAYLIST:
                return ((ArrayList) this.data).size();
            case LINKEDHASHMAP:
                for (Map.Entry entry : ((LinkedHashMap) this.data).entrySet()) {
                    if (entry.getValue() instanceof List) {
                        size += ((List) entry.getValue()).size();
                    }
                }
                return size;
            case CURSOR:
                return ((Cursor) this.data).getCount();
            case OBJECT_ARRAY:
                return ((Object[]) this.data).length;
            case SPARSE_ARRAY:
                return ((SparseArray) this.data).size();
            case SPARSE_BOOLEAN_ARRAY:
                return ((SparseBooleanArray) this.data).size();
            case SPARSE_INT_ARRAY:
                return ((SparseIntArray) this.data).size();
            case VECTOR:
                return ((Vector) this.data).size();
            case LINKEDLIST:
                return ((LinkedList) this.data).size();
            default:
                return 0;
        }
    }

    @Override // com.codbking.widget.adapters.WheelViewAdapter
    public int getItemsCount() {
        int size = 0;
        switch (this.dataType) {
            case ARRAYLIST:
                return ((ArrayList) this.data).size();
            case LINKEDHASHMAP:
                for (Map.Entry entry : ((LinkedHashMap) this.data).entrySet()) {
                    if (entry.getValue() instanceof List) {
                        size = size + 1 + ((List) entry.getValue()).size();
                    }
                }
                return size;
            case CURSOR:
                return ((Cursor) this.data).getCount();
            case OBJECT_ARRAY:
                return ((Object[]) this.data).length;
            case SPARSE_ARRAY:
                return ((SparseArray) this.data).size();
            case SPARSE_BOOLEAN_ARRAY:
                return ((SparseBooleanArray) this.data).size();
            case SPARSE_INT_ARRAY:
                return ((SparseIntArray) this.data).size();
            case VECTOR:
                return ((Vector) this.data).size();
            case LINKEDLIST:
                return ((LinkedList) this.data).size();
            default:
                return 0;
        }
    }

    @Override // com.codbking.widget.adapters.WheelViewAdapter
    public View getItem(int i, View view, ViewGroup viewGroup) {
        return this.generator.setup(this.context, i, view, viewGroup, this.data);
    }
}
