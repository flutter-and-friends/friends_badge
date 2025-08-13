package com.chad.library.adapter.base;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseProviderMultiAdapter.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00030\u0002B\u0017\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u0016\u0010\u000e\u001a\u00020\u000f2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\tH\u0016J\u0018\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0003H\u0014J\u0018\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u001d\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010\u001aJ+\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00028\u00002\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0014¢\u0006\u0002\u0010\u001eJ\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020\u0014H\u0014J\u0018\u0010!\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\t2\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u001e\u0010\"\u001a\u00020\u00142\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u001c2\u0006\u0010 \u001a\u00020\u0014H$J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020\u0014H\u0014J\u0010\u0010&\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0003H\u0016J\u0010\u0010'\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0003H\u0016R'\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t0\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\n\u0010\u000b¨\u0006("}, m849d2 = {"Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "data", "", "(Ljava/util/List;)V", "mItemProviders", "Landroid/util/SparseArray;", "Lcom/chad/library/adapter/base/provider/BaseItemProvider;", "getMItemProviders", "()Landroid/util/SparseArray;", "mItemProviders$delegate", "Lkotlin/Lazy;", "addItemProvider", "", "provider", "bindChildClick", "viewHolder", "viewType", "", "bindClick", "bindViewClickListener", "convert", "holder", "item", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V", "payloads", "", "", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V", "getDefItemViewType", "position", "getItemProvider", "getItemType", "onCreateDefViewHolder", "parent", "Landroid/view/ViewGroup;", "onViewAttachedToWindow", "onViewDetachedFromWindow", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
public abstract class BaseProviderMultiAdapter<T> extends BaseQuickAdapter<T, BaseViewHolder> {

    /* renamed from: mItemProviders$delegate, reason: from kotlin metadata */
    private final Lazy mItemProviders;

    public BaseProviderMultiAdapter() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SparseArray<BaseItemProvider<T>> getMItemProviders() {
        return (SparseArray) this.mItemProviders.getValue();
    }

    protected abstract int getItemType(List<? extends T> data, int position);

    public /* synthetic */ BaseProviderMultiAdapter(List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? (List) null : list);
    }

    public BaseProviderMultiAdapter(List<T> list) {
        super(0, list);
        this.mItemProviders = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<SparseArray<BaseItemProvider<T>>>() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter$mItemProviders$2
            @Override // kotlin.jvm.functions.Function0
            public final SparseArray<BaseItemProvider<T>> invoke() {
                return new SparseArray<>();
            }
        });
    }

    public void addItemProvider(BaseItemProvider<T> provider) {
        Intrinsics.checkParameterIsNotNull(provider, "provider");
        provider.setAdapter$com_github_CymChad_brvah(this);
        getMItemProviders().put(provider.getItemViewType(), provider);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected BaseViewHolder onCreateDefViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        BaseItemProvider<T> itemProvider = getItemProvider(viewType);
        if (itemProvider == null) {
            throw new IllegalStateException(("ViewType: " + viewType + " no such provider found，please use addItemProvider() first!").toString());
        }
        Context context = parent.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "parent.context");
        itemProvider.setContext(context);
        BaseViewHolder baseViewHolderOnCreateViewHolder = itemProvider.onCreateViewHolder(parent, viewType);
        itemProvider.onViewHolderCreated(baseViewHolderOnCreateViewHolder, viewType);
        return baseViewHolderOnCreateViewHolder;
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected int getDefItemViewType(int position) {
        return getItemType(getData(), position);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(BaseViewHolder holder, T item) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        if (itemProvider == null) {
            Intrinsics.throwNpe();
        }
        itemProvider.convert(holder, item);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void convert(BaseViewHolder holder, T item, List<? extends Object> payloads) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Intrinsics.checkParameterIsNotNull(payloads, "payloads");
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        if (itemProvider == null) {
            Intrinsics.throwNpe();
        }
        itemProvider.convert(holder, item, payloads);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter
    protected void bindViewClickListener(BaseViewHolder viewHolder, int viewType) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        super.bindViewClickListener(viewHolder, viewType);
        bindClick(viewHolder);
        bindChildClick(viewHolder, viewType);
    }

    protected BaseItemProvider<T> getItemProvider(int viewType) {
        return getMItemProviders().get(viewType);
    }

    @Override // com.chad.library.adapter.base.BaseQuickAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        super.onViewAttachedToWindow((BaseProviderMultiAdapter<T>) holder);
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        if (itemProvider != null) {
            itemProvider.onViewAttachedToWindow(holder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(BaseViewHolder holder) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        super.onViewDetachedFromWindow((BaseProviderMultiAdapter<T>) holder);
        BaseItemProvider<T> itemProvider = getItemProvider(holder.getItemViewType());
        if (itemProvider != null) {
            itemProvider.onViewDetachedFromWindow(holder);
        }
    }

    protected void bindClick(final BaseViewHolder viewHolder) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        if (getMOnItemClickListener() == null) {
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter.bindClick.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View it) {
                    int adapterPosition = viewHolder.getAdapterPosition();
                    if (adapterPosition == -1) {
                        return;
                    }
                    int headerLayoutCount = adapterPosition - BaseProviderMultiAdapter.this.getHeaderLayoutCount();
                    BaseItemProvider baseItemProvider = (BaseItemProvider) BaseProviderMultiAdapter.this.getMItemProviders().get(viewHolder.getItemViewType());
                    BaseViewHolder baseViewHolder = viewHolder;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    baseItemProvider.onClick(baseViewHolder, it, BaseProviderMultiAdapter.this.getData().get(headerLayoutCount), headerLayoutCount);
                }
            });
        }
        if (getMOnItemLongClickListener() == null) {
            viewHolder.itemView.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter.bindClick.2
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View it) {
                    int adapterPosition = viewHolder.getAdapterPosition();
                    if (adapterPosition == -1) {
                        return false;
                    }
                    int headerLayoutCount = adapterPosition - BaseProviderMultiAdapter.this.getHeaderLayoutCount();
                    BaseItemProvider baseItemProvider = (BaseItemProvider) BaseProviderMultiAdapter.this.getMItemProviders().get(viewHolder.getItemViewType());
                    BaseViewHolder baseViewHolder = viewHolder;
                    Intrinsics.checkExpressionValueIsNotNull(it, "it");
                    return baseItemProvider.onLongClick(baseViewHolder, it, BaseProviderMultiAdapter.this.getData().get(headerLayoutCount), headerLayoutCount);
                }
            });
        }
    }

    protected void bindChildClick(final BaseViewHolder viewHolder, int viewType) {
        final BaseItemProvider<T> itemProvider;
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        if (getMOnItemChildClickListener() == null) {
            final BaseItemProvider<T> itemProvider2 = getItemProvider(viewType);
            if (itemProvider2 == null) {
                return;
            }
            Iterator<T> it = itemProvider2.getChildClickViewIds().iterator();
            while (it.hasNext()) {
                View viewFindViewById = viewHolder.itemView.findViewById(((Number) it.next()).intValue());
                if (viewFindViewById != null) {
                    if (!viewFindViewById.isClickable()) {
                        viewFindViewById.setClickable(true);
                    }
                    viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View v) {
                            int adapterPosition = viewHolder.getAdapterPosition();
                            if (adapterPosition == -1) {
                                return;
                            }
                            int headerLayoutCount = adapterPosition - this.this$0.getHeaderLayoutCount();
                            BaseItemProvider baseItemProvider = itemProvider2;
                            BaseViewHolder baseViewHolder = viewHolder;
                            Intrinsics.checkExpressionValueIsNotNull(v, "v");
                            baseItemProvider.onChildClick(baseViewHolder, v, this.this$0.getData().get(headerLayoutCount), headerLayoutCount);
                        }
                    });
                }
            }
        }
        if (getMOnItemChildLongClickListener() != null || (itemProvider = getItemProvider(viewType)) == null) {
            return;
        }
        Iterator<T> it2 = itemProvider.getChildLongClickViewIds().iterator();
        while (it2.hasNext()) {
            View viewFindViewById2 = viewHolder.itemView.findViewById(((Number) it2.next()).intValue());
            if (viewFindViewById2 != null) {
                if (!viewFindViewById2.isLongClickable()) {
                    viewFindViewById2.setLongClickable(true);
                }
                viewFindViewById2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.chad.library.adapter.base.BaseProviderMultiAdapter$bindChildClick$$inlined$forEach$lambda$2
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View v) {
                        int adapterPosition = viewHolder.getAdapterPosition();
                        if (adapterPosition == -1) {
                            return false;
                        }
                        int headerLayoutCount = adapterPosition - this.this$0.getHeaderLayoutCount();
                        BaseItemProvider baseItemProvider = itemProvider;
                        BaseViewHolder baseViewHolder = viewHolder;
                        Intrinsics.checkExpressionValueIsNotNull(v, "v");
                        return baseItemProvider.onChildLongClick(baseViewHolder, v, this.this$0.getData().get(headerLayoutCount), headerLayoutCount);
                    }
                });
            }
        }
    }
}
