package com.chad.library.adapter.base.util;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AdapterUtils.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0001\u0010\u0003\u001a\u00020\u0004¨\u0006\u0005"}, m849d2 = {"getItemView", "Landroid/view/View;", "Landroid/view/ViewGroup;", "layoutResId", "", "com.github.CymChad.brvah"}, m850k = 2, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class AdapterUtilsKt {
    public static final View getItemView(ViewGroup getItemView, int i) {
        Intrinsics.checkParameterIsNotNull(getItemView, "$this$getItemView");
        View viewInflate = LayoutInflater.from(getItemView.getContext()).inflate(i, getItemView, false);
        Intrinsics.checkExpressionValueIsNotNull(viewInflate, "LayoutInflater.from(this…layoutResId, this, false)");
        return viewInflate;
    }
}
