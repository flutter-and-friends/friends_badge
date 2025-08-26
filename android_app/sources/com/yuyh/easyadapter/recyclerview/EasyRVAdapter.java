package com.yuyh.easyadapter.recyclerview;

import android.content.Context;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.yuyh.easyadapter.AdapterImageLoader;
import com.yuyh.easyadapter.helper.DataHelper;
import com.yuyh.library.easyadapter.C1456R;
import java.util.List;

/* loaded from: classes.dex */
public abstract class EasyRVAdapter<T> extends RecyclerView.Adapter<EasyRVHolder> implements DataHelper<T> {
    public static final int TYPE_FOOTER = -2;
    public static final int TYPE_HEADER = -1;
    private OnItemClickListener<T> itemClickListener;
    private OnItemLongClickListener<T> itemLongClickListener;
    protected int[] layoutIds;
    protected Context mContext;
    private View mFooterView;
    private View mHeaderView;
    protected LayoutInflater mLInflater;
    protected List<T> mList;
    private int headerViewId = -1;
    private int footerViewId = -2;
    private SparseArray<View> mConvertViews = new SparseArray<>();
    private View.OnClickListener clickListener = new View.OnClickListener() { // from class: com.yuyh.easyadapter.recyclerview.EasyRVAdapter.2
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int iIntValue = ((Integer) view.getTag(C1456R.id.tag_position)).intValue();
            Object tag = view.getTag(C1456R.id.tag_item);
            if (EasyRVAdapter.this.itemClickListener != null) {
                EasyRVAdapter.this.itemClickListener.onItemClick(view, iIntValue, tag);
            }
        }
    };
    private View.OnLongClickListener longClickListener = new View.OnLongClickListener() { // from class: com.yuyh.easyadapter.recyclerview.EasyRVAdapter.3
        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            int iIntValue = ((Integer) view.getTag(C1456R.id.tag_position)).intValue();
            Object tag = view.getTag(C1456R.id.tag_item);
            if (EasyRVAdapter.this.itemLongClickListener == null) {
                return true;
            }
            EasyRVAdapter.this.itemLongClickListener.onItemLongClick(view, iIntValue, tag);
            return true;
        }
    };

    public interface OnItemClickListener<T> {
        void onItemClick(View view, int i, T t);
    }

    public interface OnItemLongClickListener<T> {
        void onItemLongClick(View view, int i, T t);
    }

    public AdapterImageLoader.ImageLoader getImageLoader() {
        return null;
    }

    public int getLayoutIndex(int i, T t) {
        return 0;
    }

    protected abstract void onBindData(EasyRVHolder easyRVHolder, int i, T t);

    public EasyRVAdapter(Context context, List<T> list, int... iArr) {
        this.mContext = context;
        this.mList = list;
        this.layoutIds = iArr;
        this.mLInflater = LayoutInflater.from(this.mContext);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public EasyRVHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View view = this.mHeaderView;
        if (view != null && i == -1) {
            return new EasyRVHolder(this.mContext, this.headerViewId, view, getImageLoader());
        }
        View view2 = this.mFooterView;
        if (view2 != null && i == -2) {
            return new EasyRVHolder(this.mContext, this.footerViewId, view2, getImageLoader());
        }
        if (i >= 0) {
            int[] iArr = this.layoutIds;
            if (i <= iArr.length) {
                if (iArr.length == 0) {
                    throw new IllegalArgumentException("not layoutId");
                }
                int i2 = iArr[i];
                View viewInflate = this.mConvertViews.get(i2);
                if (viewInflate == null) {
                    viewInflate = this.mLInflater.inflate(i2, viewGroup, false);
                }
                EasyRVHolder easyRVHolder = (EasyRVHolder) viewInflate.getTag();
                return (easyRVHolder == null || easyRVHolder.getLayoutId() != i2) ? new EasyRVHolder(this.mContext, i2, viewInflate, getImageLoader()) : easyRVHolder;
            }
        }
        throw new ArrayIndexOutOfBoundsException("layoutIndex");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(EasyRVHolder easyRVHolder, int i) {
        if (getItemViewType(i) == -1 || getItemViewType(i) == -2) {
            return;
        }
        int position = getPosition(i);
        T t = this.mList.get(position);
        easyRVHolder.getItemView().setTag(C1456R.id.tag_position, Integer.valueOf(position));
        easyRVHolder.getItemView().setTag(C1456R.id.tag_item, t);
        easyRVHolder.getItemView().setOnClickListener(this.clickListener);
        easyRVHolder.getItemView().setOnLongClickListener(this.longClickListener);
        onBindData(easyRVHolder, position, t);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.mHeaderView == null && this.mFooterView == null) {
            List<T> list = this.mList;
            if (list == null) {
                return 0;
            }
            return list.size();
        }
        if (this.mHeaderView != null && this.mFooterView != null) {
            List<T> list2 = this.mList;
            if (list2 == null) {
                return 2;
            }
            return 2 + list2.size();
        }
        List<T> list3 = this.mList;
        if (list3 == null) {
            return 1;
        }
        return 1 + list3.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        if (i == 0 && this.mHeaderView != null) {
            return -1;
        }
        if (i == getItemCount() - 1 && this.mFooterView != null) {
            return -2;
        }
        int position = getPosition(i);
        return getLayoutIndex(position, this.mList.get(position));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager instanceof GridLayoutManager) {
            final GridLayoutManager gridLayoutManager = (GridLayoutManager) layoutManager;
            gridLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: com.yuyh.easyadapter.recyclerview.EasyRVAdapter.1
                @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int i) {
                    if (EasyRVAdapter.this.getItemViewType(i) == -1 || EasyRVAdapter.this.getItemViewType(i) == -2) {
                        return gridLayoutManager.getSpanCount();
                    }
                    return 1;
                }
            });
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(EasyRVHolder easyRVHolder) {
        super.onViewAttachedToWindow((EasyRVAdapter<T>) easyRVHolder);
        ViewGroup.LayoutParams layoutParams = easyRVHolder.itemView.getLayoutParams();
        if (layoutParams == null || !(layoutParams instanceof StaggeredGridLayoutManager.LayoutParams)) {
            return;
        }
        ((StaggeredGridLayoutManager.LayoutParams) layoutParams).setFullSpan(easyRVHolder.getLayoutPosition() == 0);
    }

    private int getPosition(int i) {
        return this.mHeaderView != null ? i - 1 : i;
    }

    public View setHeaderView(int i) {
        return setHeaderView(i, null);
    }

    public View setHeaderView(int i, ViewGroup viewGroup) {
        this.mHeaderView = this.mLInflater.inflate(i, viewGroup, false);
        this.headerViewId = i;
        notifyItemInserted(0);
        return this.mHeaderView;
    }

    public void removeHeaderView() {
        if (this.mHeaderView != null) {
            this.mHeaderView = null;
            this.headerViewId = -1;
            notifyItemRemoved(0);
        }
    }

    public View setFooterView(int i) {
        return setFooterView(i, null);
    }

    public View setFooterView(int i, ViewGroup viewGroup) {
        this.mFooterView = this.mLInflater.inflate(i, viewGroup, false);
        this.footerViewId = i;
        notifyItemInserted(this.mList.size());
        return this.mFooterView;
    }

    public void removeFooterView() {
        if (this.mFooterView != null) {
            this.mFooterView = null;
            this.footerViewId = -2;
            notifyItemRemoved(this.mList.size() - 1);
        }
    }

    public View getHeaderView() {
        return this.mHeaderView;
    }

    public View getFooterView() {
        return this.mFooterView;
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

    public void setOnItemClickListener(OnItemClickListener<T> onItemClickListener) {
        this.itemClickListener = onItemClickListener;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener<T> onItemLongClickListener) {
        this.itemLongClickListener = onItemLongClickListener;
    }
}
