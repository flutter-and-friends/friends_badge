package com.chad.library.adapter.base.binder;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.databinding.ViewDataBinding;
import androidx.exifinterface.media.ExifInterface;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: QuickDataBindingItemBinder.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018\u0000*\u0004\b\u0000\u0010\u0001*\b\b\u0001\u0010\u0002*\u00020\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00050\u0004:\u0001\u0010B\u0005¢\u0006\u0002\u0010\u0006J%\u0010\u0007\u001a\u00028\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH&¢\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00010\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016¨\u0006\u0011"}, m849d2 = {"Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder;", ExifInterface.GPS_DIRECTION_TRUE, "DB", "Landroidx/databinding/ViewDataBinding;", "Lcom/chad/library/adapter/base/binder/BaseItemBinder;", "Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder;", "()V", "onCreateDataBinding", "layoutInflater", "Landroid/view/LayoutInflater;", "parent", "Landroid/view/ViewGroup;", "viewType", "", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;", "onCreateViewHolder", "BinderDataBindingHolder", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
public abstract class QuickDataBindingItemBinder<T, DB extends ViewDataBinding> extends BaseItemBinder<T, BinderDataBindingHolder<DB>> {
    public abstract DB onCreateDataBinding(LayoutInflater layoutInflater, ViewGroup parent, int viewType);

    /* compiled from: QuickDataBindingItemBinder.kt */
    @Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\b\b\u0002\u0010\u0001*\u00020\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00028\u0002¢\u0006\u0002\u0010\u0005R\u0013\u0010\u0004\u001a\u00028\u0002¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, m849d2 = {"Lcom/chad/library/adapter/base/binder/QuickDataBindingItemBinder$BinderDataBindingHolder;", "DB", "Landroidx/databinding/ViewDataBinding;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "dataBinding", "(Landroidx/databinding/ViewDataBinding;)V", "getDataBinding", "()Landroidx/databinding/ViewDataBinding;", "Landroidx/databinding/ViewDataBinding;", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
    public static final class BinderDataBindingHolder<DB extends ViewDataBinding> extends BaseViewHolder {
        private final DB dataBinding;

        /* JADX WARN: Illegal instructions before constructor call */
        public BinderDataBindingHolder(DB dataBinding) {
            Intrinsics.checkParameterIsNotNull(dataBinding, "dataBinding");
            View root = dataBinding.getRoot();
            Intrinsics.checkExpressionValueIsNotNull(root, "dataBinding.root");
            super(root);
            this.dataBinding = dataBinding;
        }

        public final DB getDataBinding() {
            return this.dataBinding;
        }
    }

    @Override // com.chad.library.adapter.base.binder.BaseItemBinder
    public BinderDataBindingHolder<DB> onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(parent.getContext());
        Intrinsics.checkExpressionValueIsNotNull(layoutInflaterFrom, "LayoutInflater.from(parent.context)");
        return new BinderDataBindingHolder<>(onCreateDataBinding(layoutInflaterFrom, parent, viewType));
    }
}
