package com.codbking.widget.view;

/* loaded from: classes.dex */
public class ItemsRange {
    private int count;
    private int first;

    public ItemsRange() {
        this(0, 0);
    }

    public ItemsRange(int i, int i2) {
        this.first = i;
        this.count = i2;
    }

    public int getFirst() {
        return this.first;
    }

    public int getLast() {
        return (getFirst() + getCount()) - 1;
    }

    public int getCount() {
        return this.count;
    }

    public boolean contains(int i) {
        return i >= getFirst() && i <= getLast();
    }
}
