package com.bigkoo.pickerview.builder;

import android.content.Context;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import com.bigkoo.pickerview.configure.PickerOptions;
import com.bigkoo.pickerview.listener.CustomListener;
import com.bigkoo.pickerview.listener.OnOptionsSelectChangeListener;
import com.bigkoo.pickerview.listener.OnOptionsSelectListener;
import com.bigkoo.pickerview.view.OptionsPickerView;
import com.contrarywind.view.WheelView;

/* loaded from: classes.dex */
public class OptionsPickerBuilder {
    private PickerOptions mPickerOptions = new PickerOptions(1);

    public OptionsPickerBuilder(Context context, OnOptionsSelectListener onOptionsSelectListener) {
        PickerOptions pickerOptions = this.mPickerOptions;
        pickerOptions.context = context;
        pickerOptions.optionsSelectListener = onOptionsSelectListener;
    }

    public OptionsPickerBuilder setSubmitText(String str) {
        this.mPickerOptions.textContentConfirm = str;
        return this;
    }

    public OptionsPickerBuilder setCancelText(String str) {
        this.mPickerOptions.textContentCancel = str;
        return this;
    }

    public OptionsPickerBuilder setTitleText(String str) {
        this.mPickerOptions.textContentTitle = str;
        return this;
    }

    public OptionsPickerBuilder isDialog(boolean z) {
        this.mPickerOptions.isDialog = z;
        return this;
    }

    public OptionsPickerBuilder addOnCancelClickListener(View.OnClickListener onClickListener) {
        this.mPickerOptions.cancelListener = onClickListener;
        return this;
    }

    public OptionsPickerBuilder setSubmitColor(int i) {
        this.mPickerOptions.textColorConfirm = i;
        return this;
    }

    public OptionsPickerBuilder setCancelColor(int i) {
        this.mPickerOptions.textColorCancel = i;
        return this;
    }

    @Deprecated
    public OptionsPickerBuilder setBackgroundId(int i) {
        this.mPickerOptions.outSideColor = i;
        return this;
    }

    public OptionsPickerBuilder setOutSideColor(int i) {
        this.mPickerOptions.outSideColor = i;
        return this;
    }

    public OptionsPickerBuilder setDecorView(ViewGroup viewGroup) {
        this.mPickerOptions.decorView = viewGroup;
        return this;
    }

    public OptionsPickerBuilder setLayoutRes(int i, CustomListener customListener) {
        PickerOptions pickerOptions = this.mPickerOptions;
        pickerOptions.layoutRes = i;
        pickerOptions.customListener = customListener;
        return this;
    }

    public OptionsPickerBuilder setBgColor(int i) {
        this.mPickerOptions.bgColorWheel = i;
        return this;
    }

    public OptionsPickerBuilder setTitleBgColor(int i) {
        this.mPickerOptions.bgColorTitle = i;
        return this;
    }

    public OptionsPickerBuilder setTitleColor(int i) {
        this.mPickerOptions.textColorTitle = i;
        return this;
    }

    public OptionsPickerBuilder setSubCalSize(int i) {
        this.mPickerOptions.textSizeSubmitCancel = i;
        return this;
    }

    public OptionsPickerBuilder setTitleSize(int i) {
        this.mPickerOptions.textSizeTitle = i;
        return this;
    }

    public OptionsPickerBuilder setContentTextSize(int i) {
        this.mPickerOptions.textSizeContent = i;
        return this;
    }

    public OptionsPickerBuilder setOutSideCancelable(boolean z) {
        this.mPickerOptions.cancelable = z;
        return this;
    }

    public OptionsPickerBuilder setLabels(String str, String str2, String str3) {
        PickerOptions pickerOptions = this.mPickerOptions;
        pickerOptions.label1 = str;
        pickerOptions.label2 = str2;
        pickerOptions.label3 = str3;
        return this;
    }

    public OptionsPickerBuilder setLineSpacingMultiplier(float f) {
        this.mPickerOptions.lineSpacingMultiplier = f;
        return this;
    }

    public OptionsPickerBuilder setDividerColor(int i) {
        this.mPickerOptions.dividerColor = i;
        return this;
    }

    public OptionsPickerBuilder setDividerType(WheelView.DividerType dividerType) {
        this.mPickerOptions.dividerType = dividerType;
        return this;
    }

    public OptionsPickerBuilder setTextColorCenter(int i) {
        this.mPickerOptions.textColorCenter = i;
        return this;
    }

    public OptionsPickerBuilder setTextColorOut(int i) {
        this.mPickerOptions.textColorOut = i;
        return this;
    }

    public OptionsPickerBuilder setTypeface(Typeface typeface) {
        this.mPickerOptions.font = typeface;
        return this;
    }

    public OptionsPickerBuilder setCyclic(boolean z, boolean z2, boolean z3) {
        PickerOptions pickerOptions = this.mPickerOptions;
        pickerOptions.cyclic1 = z;
        pickerOptions.cyclic2 = z2;
        pickerOptions.cyclic3 = z3;
        return this;
    }

    public OptionsPickerBuilder setSelectOptions(int i) {
        this.mPickerOptions.option1 = i;
        return this;
    }

    public OptionsPickerBuilder setSelectOptions(int i, int i2) {
        PickerOptions pickerOptions = this.mPickerOptions;
        pickerOptions.option1 = i;
        pickerOptions.option2 = i2;
        return this;
    }

    public OptionsPickerBuilder setSelectOptions(int i, int i2, int i3) {
        PickerOptions pickerOptions = this.mPickerOptions;
        pickerOptions.option1 = i;
        pickerOptions.option2 = i2;
        pickerOptions.option3 = i3;
        return this;
    }

    public OptionsPickerBuilder setTextXOffset(int i, int i2, int i3) {
        PickerOptions pickerOptions = this.mPickerOptions;
        pickerOptions.x_offset_one = i;
        pickerOptions.x_offset_two = i2;
        pickerOptions.x_offset_three = i3;
        return this;
    }

    public OptionsPickerBuilder isCenterLabel(boolean z) {
        this.mPickerOptions.isCenterLabel = z;
        return this;
    }

    public OptionsPickerBuilder setItemVisibleCount(int i) {
        this.mPickerOptions.itemsVisibleCount = i;
        return this;
    }

    public OptionsPickerBuilder isAlphaGradient(boolean z) {
        this.mPickerOptions.isAlphaGradient = z;
        return this;
    }

    public OptionsPickerBuilder isRestoreItem(boolean z) {
        this.mPickerOptions.isRestoreItem = z;
        return this;
    }

    public OptionsPickerBuilder setOptionsSelectChangeListener(OnOptionsSelectChangeListener onOptionsSelectChangeListener) {
        this.mPickerOptions.optionsSelectChangeListener = onOptionsSelectChangeListener;
        return this;
    }

    public <T> OptionsPickerView<T> build() {
        return new OptionsPickerView<>(this.mPickerOptions);
    }
}
