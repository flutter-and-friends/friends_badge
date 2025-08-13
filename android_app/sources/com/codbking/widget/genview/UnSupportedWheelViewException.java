package com.codbking.widget.genview;

/* loaded from: classes.dex */
public class UnSupportedWheelViewException extends Exception {
    private static final long serialVersionUID = 1894662683963152958L;
    String mistake;

    public UnSupportedWheelViewException() {
        this.mistake = "Only support List, Map,String Array,Cursor,SparseArray,SparseBooleanArray,SparseIntArray,Vector, and basic data type";
    }

    public UnSupportedWheelViewException(String str) {
        super(str);
        this.mistake = str;
    }

    public String getError() {
        return this.mistake;
    }
}
