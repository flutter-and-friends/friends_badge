package com.chad.library.adapter.base.module;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.listener.LoadMoreListenerImp;
import com.chad.library.adapter.base.listener.OnLoadMoreListener;
import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LoadMoreModule.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003¢\u0006\u0002\u0010\u0004J\u0015\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020 H\u0000¢\u0006\u0002\b-J\u0006\u0010.\u001a\u00020+J\u0012\u0010/\u001a\u00020 2\b\u00100\u001a\u0004\u0018\u000101H\u0002J\u0006\u00102\u001a\u00020\u0006J\b\u00103\u001a\u00020+H\u0002J\u0010\u00104\u001a\u00020\u00062\u0006\u00105\u001a\u000206H\u0002J\u0006\u00107\u001a\u00020+J\u0012\u00108\u001a\u00020+2\b\b\u0002\u00109\u001a\u00020\u0006H\u0007J\u0006\u0010:\u001a\u00020+J\u0006\u0010;\u001a\u00020+J\r\u0010<\u001a\u00020+H\u0000¢\u0006\u0002\b=J\u0012\u0010>\u001a\u00020+2\b\u0010?\u001a\u0004\u0018\u00010$H\u0016J\u0015\u0010@\u001a\u00020+2\u0006\u0010A\u001a\u00020BH\u0000¢\u0006\u0002\bCR\u0016\u0010\u0002\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\b\"\u0004\b\f\u0010\nR$\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\b\"\u0004\b\u000f\u0010\nR\u001a\u0010\u0010\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\b\"\u0004\b\u0011\u0010\nR\u001e\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\bR\u0011\u0010\u0014\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\bR\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0011\u0010\u001f\u001a\u00020 8F¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010&\u001a\u00020 2\u0006\u0010\r\u001a\u00020 @FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010\"\"\u0004\b(\u0010)¨\u0006D"}, m849d2 = {"Lcom/chad/library/adapter/base/module/BaseLoadMoreModule;", "Lcom/chad/library/adapter/base/listener/LoadMoreListenerImp;", "baseQuickAdapter", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "(Lcom/chad/library/adapter/base/BaseQuickAdapter;)V", "enableLoadMoreEndClick", "", "getEnableLoadMoreEndClick", "()Z", "setEnableLoadMoreEndClick", "(Z)V", "isAutoLoadMore", "setAutoLoadMore", "value", "isEnableLoadMore", "setEnableLoadMore", "isEnableLoadMoreIfNotFullPage", "setEnableLoadMoreIfNotFullPage", "<set-?>", "isLoadEndMoreGone", "isLoading", "Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;", "loadMoreStatus", "getLoadMoreStatus", "()Lcom/chad/library/adapter/base/loadmore/LoadMoreStatus;", "loadMoreView", "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "getLoadMoreView", "()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "setLoadMoreView", "(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V", "loadMoreViewPosition", "", "getLoadMoreViewPosition", "()I", "mLoadMoreListener", "Lcom/chad/library/adapter/base/listener/OnLoadMoreListener;", "mNextLoadEnable", "preLoadNumber", "getPreLoadNumber", "setPreLoadNumber", "(I)V", "autoLoadMore", "", "position", "autoLoadMore$com_github_CymChad_brvah", "checkDisableLoadMoreIfNotFullPage", "getTheBiggestNumber", "numbers", "", "hasLoadMoreView", "invokeLoadMoreListener", "isFullScreen", "llm", "Landroidx/recyclerview/widget/LinearLayoutManager;", "loadMoreComplete", "loadMoreEnd", "gone", "loadMoreFail", "loadMoreToLoading", "reset", "reset$com_github_CymChad_brvah", "setOnLoadMoreListener", "listener", "setupViewHolder", "viewHolder", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "setupViewHolder$com_github_CymChad_brvah", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
public class BaseLoadMoreModule implements LoadMoreListenerImp {
    private final BaseQuickAdapter<?, ?> baseQuickAdapter;
    private boolean enableLoadMoreEndClick;
    private boolean isAutoLoadMore;
    private boolean isEnableLoadMore;
    private boolean isEnableLoadMoreIfNotFullPage;
    private boolean isLoadEndMoreGone;
    private LoadMoreStatus loadMoreStatus;
    private BaseLoadMoreView loadMoreView;
    private OnLoadMoreListener mLoadMoreListener;
    private boolean mNextLoadEnable;
    private int preLoadNumber;

    public final void loadMoreEnd() {
        loadMoreEnd$default(this, false, 1, null);
    }

    public BaseLoadMoreModule(BaseQuickAdapter<?, ?> baseQuickAdapter) {
        Intrinsics.checkParameterIsNotNull(baseQuickAdapter, "baseQuickAdapter");
        this.baseQuickAdapter = baseQuickAdapter;
        this.mNextLoadEnable = true;
        this.loadMoreStatus = LoadMoreStatus.Complete;
        this.loadMoreView = LoadMoreModuleConfig.getDefLoadMoreView();
        this.isAutoLoadMore = true;
        this.isEnableLoadMoreIfNotFullPage = true;
        this.preLoadNumber = 1;
    }

    public final LoadMoreStatus getLoadMoreStatus() {
        return this.loadMoreStatus;
    }

    /* renamed from: isLoadEndMoreGone, reason: from getter */
    public final boolean getIsLoadEndMoreGone() {
        return this.isLoadEndMoreGone;
    }

    public final BaseLoadMoreView getLoadMoreView() {
        return this.loadMoreView;
    }

    public final void setLoadMoreView(BaseLoadMoreView baseLoadMoreView) {
        Intrinsics.checkParameterIsNotNull(baseLoadMoreView, "<set-?>");
        this.loadMoreView = baseLoadMoreView;
    }

    public final boolean getEnableLoadMoreEndClick() {
        return this.enableLoadMoreEndClick;
    }

    public final void setEnableLoadMoreEndClick(boolean z) {
        this.enableLoadMoreEndClick = z;
    }

    /* renamed from: isAutoLoadMore, reason: from getter */
    public final boolean getIsAutoLoadMore() {
        return this.isAutoLoadMore;
    }

    public final void setAutoLoadMore(boolean z) {
        this.isAutoLoadMore = z;
    }

    /* renamed from: isEnableLoadMoreIfNotFullPage, reason: from getter */
    public final boolean getIsEnableLoadMoreIfNotFullPage() {
        return this.isEnableLoadMoreIfNotFullPage;
    }

    public final void setEnableLoadMoreIfNotFullPage(boolean z) {
        this.isEnableLoadMoreIfNotFullPage = z;
    }

    public final int getPreLoadNumber() {
        return this.preLoadNumber;
    }

    public final void setPreLoadNumber(int i) {
        if (i > 1) {
            this.preLoadNumber = i;
        }
    }

    public final boolean isLoading() {
        return this.loadMoreStatus == LoadMoreStatus.Loading;
    }

    public final int getLoadMoreViewPosition() {
        if (this.baseQuickAdapter.hasEmptyView()) {
            return -1;
        }
        BaseQuickAdapter<?, ?> baseQuickAdapter = this.baseQuickAdapter;
        return baseQuickAdapter.getHeaderLayoutCount() + baseQuickAdapter.getData().size() + baseQuickAdapter.getFooterLayoutCount();
    }

    /* renamed from: isEnableLoadMore, reason: from getter */
    public final boolean getIsEnableLoadMore() {
        return this.isEnableLoadMore;
    }

    public final void setEnableLoadMore(boolean z) {
        boolean zHasLoadMoreView = hasLoadMoreView();
        this.isEnableLoadMore = z;
        boolean zHasLoadMoreView2 = hasLoadMoreView();
        if (zHasLoadMoreView) {
            if (zHasLoadMoreView2) {
                return;
            }
            this.baseQuickAdapter.notifyItemRemoved(getLoadMoreViewPosition());
        } else if (zHasLoadMoreView2) {
            this.loadMoreStatus = LoadMoreStatus.Complete;
            this.baseQuickAdapter.notifyItemInserted(getLoadMoreViewPosition());
        }
    }

    public final void setupViewHolder$com_github_CymChad_brvah(BaseViewHolder viewHolder) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.chad.library.adapter.base.module.BaseLoadMoreModule$setupViewHolder$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (this.this$0.getLoadMoreStatus() == LoadMoreStatus.Fail) {
                    this.this$0.loadMoreToLoading();
                    return;
                }
                if (this.this$0.getLoadMoreStatus() == LoadMoreStatus.Complete) {
                    this.this$0.loadMoreToLoading();
                } else if (this.this$0.getEnableLoadMoreEndClick() && this.this$0.getLoadMoreStatus() == LoadMoreStatus.End) {
                    this.this$0.loadMoreToLoading();
                }
            }
        });
    }

    public final void loadMoreToLoading() {
        if (this.loadMoreStatus == LoadMoreStatus.Loading) {
            return;
        }
        this.loadMoreStatus = LoadMoreStatus.Loading;
        this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
        invokeLoadMoreListener();
    }

    public final boolean hasLoadMoreView() {
        if (this.mLoadMoreListener == null || !this.isEnableLoadMore) {
            return false;
        }
        if (this.loadMoreStatus == LoadMoreStatus.End && this.isLoadEndMoreGone) {
            return false;
        }
        return !this.baseQuickAdapter.getData().isEmpty();
    }

    public final void autoLoadMore$com_github_CymChad_brvah(int position) {
        if (this.isAutoLoadMore && hasLoadMoreView() && position >= this.baseQuickAdapter.getItemCount() - this.preLoadNumber && this.loadMoreStatus == LoadMoreStatus.Complete && this.loadMoreStatus != LoadMoreStatus.Loading && this.mNextLoadEnable) {
            invokeLoadMoreListener();
        }
    }

    private final void invokeLoadMoreListener() {
        this.loadMoreStatus = LoadMoreStatus.Loading;
        RecyclerView mRecyclerView = this.baseQuickAdapter.getMRecyclerView();
        if (mRecyclerView != null) {
            mRecyclerView.post(new Runnable() { // from class: com.chad.library.adapter.base.module.BaseLoadMoreModule$invokeLoadMoreListener$$inlined$let$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    OnLoadMoreListener onLoadMoreListener = this.this$0.mLoadMoreListener;
                    if (onLoadMoreListener != null) {
                        onLoadMoreListener.onLoadMore();
                    }
                }
            });
            return;
        }
        OnLoadMoreListener onLoadMoreListener = this.mLoadMoreListener;
        if (onLoadMoreListener != null) {
            onLoadMoreListener.onLoadMore();
        }
    }

    public final void checkDisableLoadMoreIfNotFullPage() {
        final RecyclerView.LayoutManager layoutManager;
        if (this.isEnableLoadMoreIfNotFullPage) {
            return;
        }
        this.mNextLoadEnable = false;
        RecyclerView mRecyclerView = this.baseQuickAdapter.getMRecyclerView();
        if (mRecyclerView == null || (layoutManager = mRecyclerView.getLayoutManager()) == null) {
            return;
        }
        Intrinsics.checkExpressionValueIsNotNull(layoutManager, "recyclerView.layoutManager ?: return");
        if (layoutManager instanceof LinearLayoutManager) {
            mRecyclerView.postDelayed(new Runnable() { // from class: com.chad.library.adapter.base.module.BaseLoadMoreModule.checkDisableLoadMoreIfNotFullPage.1
                @Override // java.lang.Runnable
                public final void run() {
                    if (BaseLoadMoreModule.this.isFullScreen((LinearLayoutManager) layoutManager)) {
                        BaseLoadMoreModule.this.mNextLoadEnable = true;
                    }
                }
            }, 50L);
        } else if (layoutManager instanceof StaggeredGridLayoutManager) {
            mRecyclerView.postDelayed(new Runnable() { // from class: com.chad.library.adapter.base.module.BaseLoadMoreModule.checkDisableLoadMoreIfNotFullPage.2
                @Override // java.lang.Runnable
                public final void run() {
                    int[] iArr = new int[((StaggeredGridLayoutManager) layoutManager).getSpanCount()];
                    ((StaggeredGridLayoutManager) layoutManager).findLastCompletelyVisibleItemPositions(iArr);
                    if (BaseLoadMoreModule.this.getTheBiggestNumber(iArr) + 1 != BaseLoadMoreModule.this.baseQuickAdapter.getItemCount()) {
                        BaseLoadMoreModule.this.mNextLoadEnable = true;
                    }
                }
            }, 50L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isFullScreen(LinearLayoutManager llm) {
        return (llm.findLastCompletelyVisibleItemPosition() + 1 == this.baseQuickAdapter.getItemCount() && llm.findFirstCompletelyVisibleItemPosition() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getTheBiggestNumber(int[] numbers) {
        int i = -1;
        if (numbers != null) {
            if (!(numbers.length == 0)) {
                for (int i2 : numbers) {
                    if (i2 > i) {
                        i = i2;
                    }
                }
            }
        }
        return i;
    }

    public static /* synthetic */ void loadMoreEnd$default(BaseLoadMoreModule baseLoadMoreModule, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: loadMoreEnd");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        baseLoadMoreModule.loadMoreEnd(z);
    }

    public final void loadMoreEnd(boolean gone) {
        if (hasLoadMoreView()) {
            this.isLoadEndMoreGone = gone;
            this.loadMoreStatus = LoadMoreStatus.End;
            if (gone) {
                this.baseQuickAdapter.notifyItemRemoved(getLoadMoreViewPosition());
            } else {
                this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
            }
        }
    }

    public final void loadMoreComplete() {
        if (hasLoadMoreView()) {
            this.loadMoreStatus = LoadMoreStatus.Complete;
            this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
            checkDisableLoadMoreIfNotFullPage();
        }
    }

    public final void loadMoreFail() {
        if (hasLoadMoreView()) {
            this.loadMoreStatus = LoadMoreStatus.Fail;
            this.baseQuickAdapter.notifyItemChanged(getLoadMoreViewPosition());
        }
    }

    @Override // com.chad.library.adapter.base.listener.LoadMoreListenerImp
    public void setOnLoadMoreListener(OnLoadMoreListener listener) {
        this.mLoadMoreListener = listener;
        setEnableLoadMore(true);
    }

    public final void reset$com_github_CymChad_brvah() {
        if (this.mLoadMoreListener != null) {
            setEnableLoadMore(true);
            this.loadMoreStatus = LoadMoreStatus.Complete;
        }
    }
}
