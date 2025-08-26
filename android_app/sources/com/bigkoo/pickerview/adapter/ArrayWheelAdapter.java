package com.bigkoo.pickerview.adapter;

import com.contrarywind.adapter.WheelAdapter;
import java.util.List;

/* loaded from: classes.dex */
public class ArrayWheelAdapter<T> implements WheelAdapter {
    private List<T> items;

    public ArrayWheelAdapter(List<T> list) {
        this.items = list;
    }

    @Override // com.contrarywind.adapter.WheelAdapter
    public Object getItem(int i) {
        return (i < 0 || i >= this.items.size()) ? "" : this.items.get(i);
    }

    @Override // com.contrarywind.adapter.WheelAdapter
    public int getItemsCount() {
        return this.items.size();
    }

    @Override // com.contrarywind.adapter.WheelAdapter
    public int indexOf(Object obj) {
        return this.items.indexOf(obj);
    }
}
