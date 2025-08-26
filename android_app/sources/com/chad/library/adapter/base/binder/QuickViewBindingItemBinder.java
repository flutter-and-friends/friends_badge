package com.chad.library.adapter.base.binder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.viewbinding.ViewBinding;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: QuickViewBindingItemBinder.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0006J%\u0010\u0007\u001a\u00028\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&¢\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u0011"}, m849d2 = {"Lcom/chad/library/adapter/base/binder/QuickViewBindingItemBinder;", ExifInterface.GPS_DIRECTION_TRUE, "VB", "Landroidx/viewbinding/ViewBinding;", "Lcom/chad/library/adapter/base/binder/BaseItemBinder;", "Lcom/chad/library/adapter/base/binder/QuickViewBindingItemBinder$BinderVBHolder;", "()V", "onCreateViewBinding", "layoutInflater", "Landroid/view/LayoutInflater;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroidx/viewbinding/ViewBinding;", "onCreateViewHolder", "BinderVBHolder", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
public abstract class QuickViewBindingItemBinder<T, VB extends ViewBinding> extends BaseItemBinder<T, BinderVBHolder<VB>> {
    public abstract VB onCreateViewBinding(LayoutInflater layoutInflater, ViewGroup parent, int viewType);

    /* compiled from: QuickViewBindingItemBinder.kt */
    @Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u00028\u0002¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, m849d2 = {"Lcom/chad/library/adapter/base/binder/QuickViewBindingItemBinder$BinderVBHolder;", "VB", "Landroidx/viewbinding/ViewBinding;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "viewBinding", "(Landroidx/viewbinding/ViewBinding;)V", "getViewBinding", "()Landroidx/viewbinding/ViewBinding;", "Landroidx/viewbinding/ViewBinding;", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
    public static final class BinderVBHolder<VB extends ViewBinding> extends BaseViewHolder {
        private final VB viewBinding;

        /* JADX WARN: Illegal instructions before constructor call */
        public BinderVBHolder(VB viewBinding) {
            Intrinsics.checkParameterIsNotNull(viewBinding, "viewBinding");
            View root = viewBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "viewBinding.root");
            super(root);
            this.viewBinding = viewBinding;
        }

        public final VB getViewBinding() {
            return this.viewBinding;
        }
    }

    @Override // com.chad.library.adapter.base.binder.BaseItemBinder
    public BinderVBHolder<VB> onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        Intrinsics.checkExpressionValueIsNotNull(layoutInflaterFrom, "LayoutInflater.from(parent.context)");
        return new BinderVBHolder<>(onCreateViewBinding(layoutInflaterFrom, parent, viewType));
    }
}
