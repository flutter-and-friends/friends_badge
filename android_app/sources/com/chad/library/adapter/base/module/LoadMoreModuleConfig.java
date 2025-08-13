package com.chad.library.adapter.base.module;

import com.chad.library.adapter.base.loadmore.BaseLoadMoreView;
import com.chad.library.adapter.base.loadmore.SimpleLoadMoreView;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LoadMoreModule.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\t¨\u0006\n"}, m849d2 = {"Lcom/chad/library/adapter/base/module/LoadMoreModuleConfig;", "", "()V", "defLoadMoreView", "Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "defLoadMoreView$annotations", "getDefLoadMoreView", "()Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;", "setDefLoadMoreView", "(Lcom/chad/library/adapter/base/loadmore/BaseLoadMoreView;)V", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class LoadMoreModuleConfig {
    public static final LoadMoreModuleConfig INSTANCE = new LoadMoreModuleConfig();
    private static BaseLoadMoreView defLoadMoreView = new SimpleLoadMoreView();

    @JvmStatic
    public static /* synthetic */ void defLoadMoreView$annotations() {
    }

    private LoadMoreModuleConfig() {
    }

    public static final BaseLoadMoreView getDefLoadMoreView() {
        return defLoadMoreView;
    }

    public static final void setDefLoadMoreView(BaseLoadMoreView baseLoadMoreView) {
        Intrinsics.checkParameterIsNotNull(baseLoadMoreView, "<set-?>");
        defLoadMoreView = baseLoadMoreView;
    }
}
