package com.yuyh.easyadapter.abslistview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.yuyh.easyadapter.AdapterImageLoader;
import com.yuyh.easyadapter.helper.DataHelper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class EasyLVAdapter<T> extends BaseAdapter implements DataHelper<T> {
    protected int[] layoutIds;
    protected Context mContext;
    protected LayoutInflater mLInflater;
    protected List<T> mList;

    public abstract void convert(EasyLVHolder easyLVHolder, int i, T t);

    public AdapterImageLoader.ImageLoader getImageLoader() {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public int getLayoutId(int i, T t) {
        return 0;
    }

    public int getLayoutIndex(int i, T t) {
        return 0;
    }

    public EasyLVAdapter(Context context, List<T> list, int... iArr) {
        this.mContext = context;
        this.mList = list;
        this.layoutIds = iArr;
        this.mLInflater = LayoutInflater.from(this.mContext);
    }

    public EasyLVAdapter(Context context, List<T> list) {
        this.mContext = context;
        this.mList = list;
        this.mLInflater = LayoutInflater.from(this.mContext);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<T> list = this.mList;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        List<T> list = this.mList;
        if (list == null) {
            return null;
        }
        return list.get(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        int viewCheckLayoutId = getViewCheckLayoutId(i);
        EasyLVHolder easyLVHolder = EasyLVHolder.get(this.mContext, i, view, viewGroup, viewCheckLayoutId, getImageLoader());
        convert(easyLVHolder, i, this.mList.get(i));
        return easyLVHolder.getConvertView(viewCheckLayoutId);
    }

    private int getViewCheckLayoutId(int i) {
        int[] iArr = this.layoutIds;
        if (iArr == null || iArr.length == 0) {
            return getLayoutId(i, this.mList.get(i));
        }
        return iArr[getLayoutIndex(i, this.mList.get(i))];
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public boolean addAll(List<T> list) {
        boolean zAddAll = this.mList.addAll(list);
        notifyDataSetChanged();
        return zAddAll;
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public boolean addAll(int i, List list) {
        boolean zAddAll = this.mList.addAll(i, list);
        notifyDataSetChanged();
        return zAddAll;
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public void add(T t) {
        this.mList.add(t);
        notifyDataSetChanged();
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public void add(int i, T t) {
        this.mList.add(i, t);
        notifyDataSetChanged();
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public void clear() {
        this.mList.clear();
        notifyDataSetChanged();
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public boolean contains(T t) {
        return this.mList.contains(t);
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public T getData(int i) {
        return this.mList.get(i);
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public void modify(T t, T t2) {
        modify(this.mList.indexOf(t), (int) t2);
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public void modify(int i, T t) {
        this.mList.set(i, t);
        notifyDataSetChanged();
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public boolean remove(T t) {
        boolean zRemove = this.mList.remove(t);
        notifyDataSetChanged();
        return zRemove;
    }

    @Override // com.yuyh.easyadapter.helper.DataHelper
    public void remove(int i) {
        this.mList.remove(i);
        notifyDataSetChanged();
    }
}
