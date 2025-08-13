package p024rx.internal.util;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class LinkedArrayList {
    final int capacityHint;
    Object[] head;
    int indexInTail;
    volatile int size;
    Object[] tail;

    public LinkedArrayList(int i) {
        this.capacityHint = i;
    }

    public void add(Object obj) {
        if (this.size == 0) {
            this.head = new Object[this.capacityHint + 1];
            Object[] objArr = this.head;
            this.tail = objArr;
            objArr[0] = obj;
            this.indexInTail = 1;
            this.size = 1;
            return;
        }
        int i = this.indexInTail;
        int i2 = this.capacityHint;
        if (i == i2) {
            Object[] objArr2 = new Object[i2 + 1];
            objArr2[0] = obj;
            this.tail[i2] = objArr2;
            this.tail = objArr2;
            this.indexInTail = 1;
            this.size++;
            return;
        }
        this.tail[i] = obj;
        this.indexInTail = i + 1;
        this.size++;
    }

    public Object[] head() {
        return this.head;
    }

    public Object[] tail() {
        return this.tail;
    }

    public int size() {
        return this.size;
    }

    public int indexInTail() {
        return this.indexInTail;
    }

    public int capacityHint() {
        return this.capacityHint;
    }

    List<Object> toList() {
        int i = this.capacityHint;
        int i2 = this.size;
        ArrayList arrayList = new ArrayList(i2 + 1);
        Object[] objArrHead = head();
        int i3 = 0;
        while (true) {
            int i4 = 0;
            while (i3 < i2) {
                arrayList.add(objArrHead[i4]);
                i3++;
                i4++;
                if (i4 == i) {
                    break;
                }
            }
            return arrayList;
            objArrHead = objArrHead[i];
        }
    }

    public String toString() {
        return toList().toString();
    }
}
