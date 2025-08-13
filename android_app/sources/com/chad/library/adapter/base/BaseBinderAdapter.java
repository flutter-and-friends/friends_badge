package com.chad.library.adapter.base;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.DiffUtil;
import com.chad.library.adapter.base.binder.BaseItemBinder;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseBinderAdapter.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0016\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001-B\u0017\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J9\u0010\u0011\u001a\u00020\u0000\"\n\b\u0000\u0010\u0012\u0018\u0001*\u00020\u00022\u0010\u0010\u0013\u001a\f\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\b\u00030\u000e2\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u0002H\u0012\u0018\u00010\nH\u0086\bJF\u0010\u0011\u001a\u00020\u0000\"\b\b\u0000\u0010\u0012*\u00020\u00022\u000e\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u0002H\u00120\t2\u0010\u0010\u0013\u001a\f\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\b\u00030\u000e2\u0010\b\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u0002H\u0012\u0018\u00010\nH\u0007J\u0018\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0010\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0003H\u0014J\u0018\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0018\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u0002H\u0014J&\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00032\u0006\u0010\u001e\u001a\u00020\u00022\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020 H\u0014J\u0014\u0010!\u001a\u00020\u00102\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\tH\u0004J\u0010\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u0010H\u0014J\u001c\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u001e\u0010%\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000e2\u0006\u0010\u0019\u001a\u00020\u0010H\u0016J\u0018\u0010&\u001a\u00020\u00032\u0006\u0010'\u001a\u00020(2\u0006\u0010\u0019\u001a\u00020\u0010H\u0014J\u0010\u0010)\u001a\u00020*2\u0006\u0010\u001d\u001a\u00020\u0003H\u0016J\u0010\u0010+\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0003H\u0016J\u0010\u0010,\u001a\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0003H\u0016RB\u0010\u0007\u001a6\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n0\bj\u001a\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u000e\u0012\f\u0012\u0004\u0012\u00020\u0002\u0012\u0002\b\u00030\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\u000f\u001a&\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u00100\bj\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\t\u0012\u0004\u0012\u00020\u0010`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006."}, m849d2 = {"Lcom/chad/library/adapter/base/BaseBinderAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "list", "", "(Ljava/util/List;)V", "classDiffMap", "Ljava/util/HashMap;", "Ljava/lang/Class;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lkotlin/collections/HashMap;", "mBinderArray", "Landroid/util/SparseArray;", "Lcom/chad/library/adapter/base/binder/BaseItemBinder;", "mTypeMap", "", "addItemBinder", ExifInterface.GPS_DIRECTION_TRUE, "baseItemBinder", "callback", "clazz", "bindChildClick", "", "viewHolder", "viewType", "bindClick", "bindViewClickListener", "convert", "holder", "item", "payloads", "", "findViewType", "getDefItemViewType", "position", "getItemBinder", "getItemBinderOrNull", "onCreateDefViewHolder", "parent", "Landroid/view/ViewGroup;", "onFailedToRecycleView", "", "onViewAttachedToWindow", "onViewDetachedFromWindow", "ItemCallback", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
public class BaseBinderAdapter extends BaseQuickAdapter<Object, BaseViewHolder> {
    private final HashMap<Class<?>, DiffUtil.ItemCallback<Object>> classDiffMap;
    private final SparseArray<BaseItemBinder<Object, ?>> mBinderArray;
    private final HashMap<Class<?>, Integer> mTypeMap;

    public BaseBinderAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final <T> BaseBinderAdapter addItemBinder(Class<? extends T> cls, BaseItemBinder<T, ?> baseItemBinder) {
        return addItemBinder$default(this, cls, baseItemBinder, null, 4, null);
    }

    public BaseBinderAdapter(List<Object> list) {
        super(0, list);
        this.classDiffMap = new HashMap<>();
        this.mTypeMap = new HashMap<>();
        this.mBinderArray = new SparseArray<>();
        setDiffCallback(new ItemCallback());
    }

    public /* synthetic */ BaseBinderAdapter(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? (List) null : list);
    }

    public static /* synthetic */ BaseBinderAdapter addItemBinder$default(BaseBinderAdapter baseBinderAdapter, Class cls, BaseItemBinder baseItemBinder, DiffUtil.ItemCallback itemCallback, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addItemBinder");
        }
        if ((i & 4) != 0) {
            itemCallback = (DiffUtil.ItemCallback) null;
        }
        return baseBinderAdapter.addItemBinder(cls, baseItemBinder, itemCallback);
    }

    public final <T> BaseBinderAdapter addItemBinder(Class<? extends T> clazz, BaseItemBinder<T, ?> baseItemBinder, DiffUtil.ItemCallback<T> callback) {
        Intrinsics.checkParameterIsNotNull(clazz, "clazz");
        Intrinsics.checkParameterIsNotNull(baseItemBinder, "baseItemBinder");
        int size = this.mTypeMap.size() + 1;
        this.mTypeMap.put(clazz, Integer.valueOf(size));
        this.mBinderArray.append(size, baseItemBinder);
        baseItemBinder.set_adapter$com_github_CymChad_brvah(this);
        if (callback != null) {
            HashMap<Class<?>, DiffUtil.ItemCallback<Object>> map = this.classDiffMap;
            if (callback == null) {
                throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.DiffUtil.ItemCallback<kotlin.Any>");
            }
            map.put(clazz, callback);
        }
        return this;
    }

    public static /* synthetic */ BaseBinderAdapter addItemBinder$default(BaseBinderAdapter baseBinderAdapter, BaseItemBinder baseItemBinder, DiffUtil.ItemCallback itemCallback, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addItemBinder");
        }
        if ((i & 2) != 0) {
            itemCallback = (DiffUtil.ItemCallback) null;
        }
        Intrinsics.checkParameterIsNotNull(baseItemBinder, "baseItemBinder");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        baseBinderAdapter.addItemBinder(Object.class, baseItemBinder, itemCallback);
        return baseBinderAdapter;
    }

    public final /* synthetic */ <T> BaseBinderAdapter addItemBinder(BaseItemBinder<T, ?> baseItemBinder, DiffUtil.ItemCallback<T> callback) {
        Intrinsics.checkParameterIsNotNull(baseItemBinder, "baseItemBinder");
        Intrinsics.reifiedOperationMarker(4, ExifInterface.GPS_DIRECTION_TRUE);
        addItemBinder(Object.class, baseItemBinder, callback);
        return this;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder onCreateDefViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        BaseItemBinder<Object, BaseViewHolder> itemBinder = getItemBinder(viewType);
        itemBinder.set_context$com_github_CymChad_brvah(getContext());
        return itemBinder.onCreateViewHolder(parent, viewType);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(BaseViewHolder holder, Object item) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Intrinsics.checkParameterIsNotNull(item, "item");
        getItemBinder(holder.getItemViewType()).convert(holder, item);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(BaseViewHolder holder, Object item, List<? extends Object> payloads) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Intrinsics.checkParameterIsNotNull(item, "item");
        Intrinsics.checkParameterIsNotNull(payloads, "payloads");
        getItemBinder(holder.getItemViewType()).convert(holder, item, payloads);
    }

    public BaseItemBinder<Object, BaseViewHolder> getItemBinder(int viewType) {
        BaseItemBinder<Object, BaseViewHolder> baseItemBinder = (BaseItemBinder) this.mBinderArray.get(viewType);
        if (baseItemBinder != null) {
            return baseItemBinder;
        }
        throw new IllegalStateException(("getItemBinder: viewType '" + viewType + "' no such Binder found，please use addItemBinder() first!").toString());
    }

    public BaseItemBinder<Object, BaseViewHolder> getItemBinderOrNull(int viewType) {
        BaseItemBinder<Object, BaseViewHolder> baseItemBinder = (BaseItemBinder) this.mBinderArray.get(viewType);
        if (baseItemBinder instanceof BaseItemBinder) {
            return baseItemBinder;
        }
        return null;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int getDefItemViewType(int position) {
        return findViewType(getData().get(position).getClass());
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void bindViewClickListener(BaseViewHolder viewHolder, int viewType) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        super.bindViewClickListener(viewHolder, viewType);
        bindClick(viewHolder);
        bindChildClick(viewHolder, viewType);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        super.onViewAttachedToWindow((BaseBinderAdapter) holder);
        BaseItemBinder<Object, BaseViewHolder> itemBinderOrNull = getItemBinderOrNull(holder.getItemViewType());
        if (itemBinderOrNull != null) {
            itemBinderOrNull.onViewAttachedToWindow(holder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(BaseViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        super.onViewDetachedFromWindow((BaseBinderAdapter) holder);
        BaseItemBinder<Object, BaseViewHolder> itemBinderOrNull = getItemBinderOrNull(holder.getItemViewType());
        if (itemBinderOrNull != null) {
            itemBinderOrNull.onViewDetachedFromWindow(holder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(BaseViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        BaseItemBinder<Object, BaseViewHolder> itemBinderOrNull = getItemBinderOrNull(holder.getItemViewType());
        if (itemBinderOrNull != null) {
            return itemBinderOrNull.onFailedToRecycleView(holder);
        }
        return false;
    }

    protected final int findViewType(Class<?> clazz) {
        Intrinsics.checkParameterIsNotNull(clazz, "clazz");
        Integer num = this.mTypeMap.get(clazz);
        if (num == null) {
            throw new IllegalStateException(("findViewType: ViewType: " + clazz + " Not Find!").toString());
        }
        return num.intValue();
    }

    protected void bindClick(final BaseViewHolder viewHolder) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        if (getMOnItemClickListener() == null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseBinderAdapter.bindClick.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View it) {
                    int adapterPosition = viewHolder.getAdapterPosition();
                    if (adapterPosition == -1) {
                        return;
                    }
                    int headerLayoutCount = adapterPosition - BaseBinderAdapter.this.getHeaderLayoutCount();
                    BaseItemBinder<Object, BaseViewHolder> itemBinder = BaseBinderAdapter.this.getItemBinder(viewHolder.getItemViewType());
                    BaseViewHolder baseViewHolder = viewHolder;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    itemBinder.onClick(baseViewHolder, it, BaseBinderAdapter.this.getData().get(headerLayoutCount), headerLayoutCount);
                }
            });
        }
        if (getMOnItemLongClickListener() == null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseBinderAdapter.bindClick.2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View it) {
                    int adapterPosition = viewHolder.getAdapterPosition();
                    if (adapterPosition == -1) {
                        return false;
                    }
                    int headerLayoutCount = adapterPosition - BaseBinderAdapter.this.getHeaderLayoutCount();
                    BaseItemBinder<Object, BaseViewHolder> itemBinder = BaseBinderAdapter.this.getItemBinder(viewHolder.getItemViewType());
                    BaseViewHolder baseViewHolder = viewHolder;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    return itemBinder.onLongClick(baseViewHolder, it, BaseBinderAdapter.this.getData().get(headerLayoutCount), headerLayoutCount);
                }
            });
        }
    }

    protected void bindChildClick(final BaseViewHolder viewHolder, int viewType) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        if (getMOnItemChildClickListener() == null) {
            final BaseItemBinder<Object, BaseViewHolder> itemBinder = getItemBinder(viewType);
            Iterator<T> it = itemBinder.getChildClickViewIds().iterator();
            while (it.hasNext()) {
                View viewFindViewById = viewHolder.itemView.findViewById(((Number) it.next()).intValue());
                if (viewFindViewById != null) {
                    if (!viewFindViewById.isClickable()) {
                        viewFindViewById.setClickable(true);
                    }
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View v) {
                            int adapterPosition = viewHolder.getAdapterPosition();
                            if (adapterPosition == -1) {
                                return;
                            }
                            int headerLayoutCount = adapterPosition - this.this$0.getHeaderLayoutCount();
                            BaseItemBinder baseItemBinder = itemBinder;
                            BaseViewHolder baseViewHolder = viewHolder;
                            Intrinsics.checkExpressionValueIsNotNull(v, "v");
                            baseItemBinder.onChildClick(baseViewHolder, v, this.this$0.getData().get(headerLayoutCount), headerLayoutCount);
                        }
                    });
                }
            }
        }
        if (getMOnItemChildLongClickListener() == null) {
            final BaseItemBinder<Object, BaseViewHolder> itemBinder2 = getItemBinder(viewType);
            Iterator<T> it2 = itemBinder2.getChildLongClickViewIds().iterator();
            while (it2.hasNext()) {
                View viewFindViewById2 = viewHolder.itemView.findViewById(((Number) it2.next()).intValue());
                if (viewFindViewById2 != null) {
                    if (!viewFindViewById2.isLongClickable()) {
                        viewFindViewById2.setLongClickable(true);
                    }
                    viewFindViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseBinderAdapter$bindChildClick$$inlined$forEach$lambda$2
                        @Override // android.view.View.OnLongClickListener
                        public final boolean onLongClick(View v) {
                            int adapterPosition = viewHolder.getAdapterPosition();
                            if (adapterPosition == -1) {
                                return false;
                            }
                            int headerLayoutCount = adapterPosition - this.this$0.getHeaderLayoutCount();
                            BaseItemBinder baseItemBinder = itemBinder2;
                            BaseViewHolder baseViewHolder = viewHolder;
                            Intrinsics.checkExpressionValueIsNotNull(v, "v");
                            return baseItemBinder.onChildLongClick(baseViewHolder, v, this.this$0.getData().get(headerLayoutCount), headerLayoutCount);
                        }
                    });
                }
            }
        }
    }

    /* compiled from: BaseBinderAdapter.kt */
    @Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0017J\u0018\u0010\b\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016J\u001a\u0010\t\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¨\u0006\n"}, m849d2 = {"Lcom/chad/library/adapter/base/BaseBinderAdapter$ItemCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "", "(Lcom/chad/library/adapter/base/BaseBinderAdapter;)V", "areContentsTheSame", "", "oldItem", "newItem", "areItemsTheSame", "getChangePayload", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
    private final class ItemCallback extends DiffUtil.ItemCallback<Object> {
        public ItemCallback() {
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(Object oldItem, Object newItem) {
            DiffUtil.ItemCallback itemCallback;
            Intrinsics.checkParameterIsNotNull(oldItem, "oldItem");
            Intrinsics.checkParameterIsNotNull(newItem, "newItem");
            if (Intrinsics.areEqual(oldItem.getClass(), newItem.getClass()) && (itemCallback = (DiffUtil.ItemCallback) BaseBinderAdapter.this.classDiffMap.get(oldItem.getClass())) != null) {
                return itemCallback.areItemsTheSame(oldItem, newItem);
            }
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(Object oldItem, Object newItem) {
            DiffUtil.ItemCallback itemCallback;
            Intrinsics.checkParameterIsNotNull(oldItem, "oldItem");
            Intrinsics.checkParameterIsNotNull(newItem, "newItem");
            if (!Intrinsics.areEqual(oldItem.getClass(), newItem.getClass()) || (itemCallback = (DiffUtil.ItemCallback) BaseBinderAdapter.this.classDiffMap.get(oldItem.getClass())) == null) {
                return true;
            }
            return itemCallback.areContentsTheSame(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public Object getChangePayload(Object oldItem, Object newItem) {
            DiffUtil.ItemCallback itemCallback;
            Intrinsics.checkParameterIsNotNull(oldItem, "oldItem");
            Intrinsics.checkParameterIsNotNull(newItem, "newItem");
            if (!Intrinsics.areEqual(oldItem.getClass(), newItem.getClass()) || (itemCallback = (DiffUtil.ItemCallback) BaseBinderAdapter.this.classDiffMap.get(oldItem.getClass())) == null) {
                return null;
            }
            return itemCallback.getChangePayload(oldItem, newItem);
        }
    }
}
