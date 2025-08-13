package com.chad.library.adapter.base;

import android.widget.FrameLayout;
import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference0;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KDeclarationContainer;

/* compiled from: BaseQuickAdapter.kt */
@Metadata(m847bv = {1, 0, 3}, m850k = 3, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
final /* synthetic */ class BaseQuickAdapter$emptyLayout$1 extends MutablePropertyReference0 {
    BaseQuickAdapter$emptyLayout$1(BaseQuickAdapter baseQuickAdapter) {
        super(baseQuickAdapter);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public String getName() {
        return "mEmptyLayout";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public KDeclarationContainer getOwner() {
        return Reflection.getOrCreateKotlinClass(BaseQuickAdapter.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public String getSignature() {
        return "getMEmptyLayout()Landroid/widget/FrameLayout;";
    }

    @Override // kotlin.reflect.KProperty0
    public Object get() {
        return BaseQuickAdapter.access$getMEmptyLayout$p((BaseQuickAdapter) this.receiver);
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(Object obj) {
        ((BaseQuickAdapter) this.receiver).mEmptyLayout = (FrameLayout) obj;
    }
}
