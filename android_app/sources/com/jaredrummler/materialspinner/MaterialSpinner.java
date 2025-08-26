package com.jaredrummler.materialspinner;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import cn.highlight.p004tx.ble.BleManager;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class MaterialSpinner extends TextView {
    private MaterialSpinnerBaseAdapter adapter;
    private int arrowColor;
    private int arrowColorDisabled;
    private Drawable arrowDrawable;
    private int backgroundColor;
    private int backgroundSelector;
    private boolean hideArrow;
    private int hintColor;
    private String hintText;
    private ListView listView;
    private boolean nothingSelected;
    private OnItemSelectedListener onItemSelectedListener;
    private OnNothingSelectedListener onNothingSelectedListener;
    private int popupPaddingBottom;
    private int popupPaddingLeft;
    private int popupPaddingRight;
    private int popupPaddingTop;
    private PopupWindow popupWindow;
    private int popupWindowHeight;
    private int popupWindowMaxHeight;
    private int selectedIndex;
    private int textColor;

    public interface OnItemSelectedListener<T> {
        void onItemSelected(MaterialSpinner materialSpinner, int i, long j, T t);
    }

    public interface OnNothingSelectedListener {
        void onNothingSelected(MaterialSpinner materialSpinner);
    }

    public MaterialSpinner(Context context) throws Resources.NotFoundException, NoSuchMethodException, SecurityException {
        super(context);
        init(context, null);
    }

    public MaterialSpinner(Context context, AttributeSet attributeSet) throws Resources.NotFoundException, NoSuchMethodException, SecurityException {
        super(context, attributeSet);
        init(context, attributeSet);
    }

    public MaterialSpinner(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException, NoSuchMethodException, SecurityException {
        super(context, attributeSet, i);
        init(context, attributeSet);
    }

    private void init(Context context, AttributeSet attributeSet) throws Resources.NotFoundException, NoSuchMethodException, SecurityException {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1258R.styleable.MaterialSpinner);
        int defaultColor = getTextColors().getDefaultColor();
        boolean zIsRtl = Utils.isRtl(context);
        Resources resources = getResources();
        int dimensionPixelSize3 = resources.getDimensionPixelSize(C1258R.dimen.ms__padding_top);
        if (zIsRtl) {
            dimensionPixelSize2 = resources.getDimensionPixelSize(C1258R.dimen.ms__padding_left);
            dimensionPixelSize = dimensionPixelSize3;
        } else {
            dimensionPixelSize = resources.getDimensionPixelSize(C1258R.dimen.ms__padding_left);
            dimensionPixelSize2 = dimensionPixelSize3;
        }
        int dimensionPixelSize4 = resources.getDimensionPixelSize(C1258R.dimen.ms__popup_padding_left);
        int dimensionPixelSize5 = resources.getDimensionPixelSize(C1258R.dimen.ms__popup_padding_top);
        try {
            this.backgroundColor = typedArrayObtainStyledAttributes.getColor(C1258R.styleable.MaterialSpinner_ms_background_color, -1);
            this.backgroundSelector = typedArrayObtainStyledAttributes.getResourceId(C1258R.styleable.MaterialSpinner_ms_background_selector, 0);
            this.textColor = typedArrayObtainStyledAttributes.getColor(C1258R.styleable.MaterialSpinner_ms_text_color, defaultColor);
            this.hintColor = typedArrayObtainStyledAttributes.getColor(C1258R.styleable.MaterialSpinner_ms_hint_color, defaultColor);
            this.arrowColor = typedArrayObtainStyledAttributes.getColor(C1258R.styleable.MaterialSpinner_ms_arrow_tint, this.textColor);
            this.hideArrow = typedArrayObtainStyledAttributes.getBoolean(C1258R.styleable.MaterialSpinner_ms_hide_arrow, false);
            this.hintText = typedArrayObtainStyledAttributes.getString(C1258R.styleable.MaterialSpinner_ms_hint) == null ? "" : typedArrayObtainStyledAttributes.getString(C1258R.styleable.MaterialSpinner_ms_hint);
            this.popupWindowMaxHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1258R.styleable.MaterialSpinner_ms_dropdown_max_height, 0);
            this.popupWindowHeight = typedArrayObtainStyledAttributes.getLayoutDimension(C1258R.styleable.MaterialSpinner_ms_dropdown_height, -2);
            int dimensionPixelSize6 = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1258R.styleable.MaterialSpinner_ms_padding_top, dimensionPixelSize3);
            int dimensionPixelSize7 = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1258R.styleable.MaterialSpinner_ms_padding_left, dimensionPixelSize);
            int dimensionPixelSize8 = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1258R.styleable.MaterialSpinner_ms_padding_bottom, dimensionPixelSize3);
            int dimensionPixelSize9 = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1258R.styleable.MaterialSpinner_ms_padding_right, dimensionPixelSize2);
            this.popupPaddingTop = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1258R.styleable.MaterialSpinner_ms_popup_padding_top, dimensionPixelSize5);
            this.popupPaddingLeft = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1258R.styleable.MaterialSpinner_ms_popup_padding_left, dimensionPixelSize4);
            this.popupPaddingBottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1258R.styleable.MaterialSpinner_ms_popup_padding_bottom, dimensionPixelSize5);
            this.popupPaddingRight = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1258R.styleable.MaterialSpinner_ms_popup_padding_right, dimensionPixelSize4);
            this.arrowColorDisabled = Utils.lighter(this.arrowColor, 0.8f);
            typedArrayObtainStyledAttributes.recycle();
            this.nothingSelected = true;
            setGravity(8388627);
            setClickable(true);
            setPadding(dimensionPixelSize7, dimensionPixelSize6, dimensionPixelSize9, dimensionPixelSize8);
            setBackgroundResource(C1258R.drawable.ms__selector);
            if (Build.VERSION.SDK_INT >= 17 && zIsRtl) {
                setLayoutDirection(1);
                setTextDirection(4);
            }
            if (!this.hideArrow) {
                this.arrowDrawable = Utils.getDrawable(context, C1258R.drawable.ms__arrow).mutate();
                this.arrowDrawable.setColorFilter(this.arrowColor, PorterDuff.Mode.SRC_IN);
                Drawable[] compoundDrawables = getCompoundDrawables();
                if (zIsRtl) {
                    compoundDrawables[0] = this.arrowDrawable;
                } else {
                    compoundDrawables[2] = this.arrowDrawable;
                }
                setCompoundDrawablesWithIntrinsicBounds(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
            }
            this.listView = new ListView(context);
            this.listView.setId(getId());
            this.listView.setDivider(null);
            this.listView.setItemsCanFocus(true);
            this.listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.jaredrummler.materialspinner.MaterialSpinner.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    if (i >= MaterialSpinner.this.selectedIndex && i < MaterialSpinner.this.adapter.getCount() && MaterialSpinner.this.adapter.getItems().size() != 1 && TextUtils.isEmpty(MaterialSpinner.this.hintText)) {
                        i++;
                    }
                    int i2 = i;
                    MaterialSpinner.this.selectedIndex = i2;
                    MaterialSpinner.this.nothingSelected = false;
                    Object obj = MaterialSpinner.this.adapter.get(i2);
                    MaterialSpinner.this.adapter.notifyItemSelected(i2);
                    MaterialSpinner materialSpinner = MaterialSpinner.this;
                    materialSpinner.setTextColor(materialSpinner.textColor);
                    MaterialSpinner.this.setText(obj.toString());
                    MaterialSpinner.this.collapse();
                    if (MaterialSpinner.this.onItemSelectedListener != null) {
                        MaterialSpinner.this.onItemSelectedListener.onItemSelected(MaterialSpinner.this, i2, j, obj);
                    }
                }
            });
            this.popupWindow = new PopupWindow(context);
            this.popupWindow.setContentView(this.listView);
            this.popupWindow.setOutsideTouchable(true);
            this.popupWindow.setFocusable(true);
            if (Build.VERSION.SDK_INT >= 21) {
                this.popupWindow.setElevation(16.0f);
                this.popupWindow.setBackgroundDrawable(Utils.getDrawable(context, C1258R.drawable.ms__drawable));
            } else {
                this.popupWindow.setBackgroundDrawable(Utils.getDrawable(context, C1258R.drawable.ms__drop_down_shadow));
            }
            int i = this.backgroundColor;
            if (i != -1) {
                setBackgroundColor(i);
            } else {
                int i2 = this.backgroundSelector;
                if (i2 != 0) {
                    setBackgroundResource(i2);
                }
            }
            int i3 = this.textColor;
            if (i3 != defaultColor) {
                setTextColor(i3);
            }
            this.popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.jaredrummler.materialspinner.MaterialSpinner.2
                @Override // android.widget.PopupWindow.OnDismissListener
                public void onDismiss() {
                    if (MaterialSpinner.this.nothingSelected && MaterialSpinner.this.onNothingSelectedListener != null) {
                        MaterialSpinner.this.onNothingSelectedListener.onNothingSelected(MaterialSpinner.this);
                    }
                    if (MaterialSpinner.this.hideArrow) {
                        return;
                    }
                    MaterialSpinner.this.animateArrow(false);
                }
            });
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        this.popupWindow.setWidth(View.MeasureSpec.getSize(i));
        this.popupWindow.setHeight(calculatePopupWindowHeight());
        if (this.adapter != null) {
            CharSequence text = getText();
            String string = text.toString();
            for (int i3 = 0; i3 < this.adapter.getCount(); i3++) {
                String itemText = this.adapter.getItemText(i3);
                if (itemText.length() > string.length()) {
                    string = itemText;
                }
            }
            setText(string);
            super.onMeasure(i, i2);
            setText(text);
            return;
        }
        super.onMeasure(i, i2);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1 && isEnabled() && isClickable()) {
            if (!this.popupWindow.isShowing()) {
                expand();
            } else {
                collapse();
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) throws NoSuchMethodException, SecurityException {
        this.backgroundColor = i;
        Drawable background = getBackground();
        if (background instanceof StateListDrawable) {
            try {
                Method declaredMethod = StateListDrawable.class.getDeclaredMethod("getStateDrawable", Integer.TYPE);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                int[] iArr = {Utils.darker(i, 0.85f), i};
                for (int i2 = 0; i2 < iArr.length; i2++) {
                    ((ColorDrawable) declaredMethod.invoke(background, Integer.valueOf(i2))).setColor(iArr[i2]);
                }
            } catch (Exception e) {
                Log.e("MaterialSpinner", "Error setting background color", e);
            }
        } else if (background != null) {
            background.setColorFilter(i, PorterDuff.Mode.SRC_IN);
        }
        this.popupWindow.getBackground().setColorFilter(i, PorterDuff.Mode.SRC_IN);
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        this.textColor = i;
        MaterialSpinnerBaseAdapter materialSpinnerBaseAdapter = this.adapter;
        if (materialSpinnerBaseAdapter != null) {
            materialSpinnerBaseAdapter.setTextColor(this.textColor);
            this.adapter.notifyDataSetChanged();
        }
        super.setTextColor(i);
    }

    public void setHintColor(int i) {
        this.hintColor = i;
        super.setTextColor(i);
    }

    @Override // android.widget.TextView, android.view.View
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("state", super.onSaveInstanceState());
        bundle.putInt("selected_index", this.selectedIndex);
        bundle.putBoolean("nothing_selected", this.nothingSelected);
        PopupWindow popupWindow = this.popupWindow;
        if (popupWindow != null) {
            bundle.putBoolean("is_popup_showing", popupWindow.isShowing());
            collapse();
        } else {
            bundle.putBoolean("is_popup_showing", false);
        }
        return bundle;
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            this.selectedIndex = bundle.getInt("selected_index");
            this.nothingSelected = bundle.getBoolean("nothing_selected");
            if (this.adapter != null) {
                if (this.nothingSelected && !TextUtils.isEmpty(this.hintText)) {
                    setHintColor(this.hintColor);
                    setText(this.hintText);
                } else {
                    setTextColor(this.textColor);
                    setText(this.adapter.get(this.selectedIndex).toString());
                }
                this.adapter.notifyItemSelected(this.selectedIndex);
            }
            if (bundle.getBoolean("is_popup_showing") && this.popupWindow != null) {
                post(new Runnable() { // from class: com.jaredrummler.materialspinner.MaterialSpinner.3
                    @Override // java.lang.Runnable
                    public void run() {
                        MaterialSpinner.this.expand();
                    }
                });
            }
            parcelable = bundle.getParcelable("state");
        }
        super.onRestoreInstanceState(parcelable);
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        Drawable drawable = this.arrowDrawable;
        if (drawable != null) {
            drawable.setColorFilter(z ? this.arrowColor : this.arrowColorDisabled, PorterDuff.Mode.SRC_IN);
        }
    }

    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    public void setSelectedIndex(int i) {
        MaterialSpinnerBaseAdapter materialSpinnerBaseAdapter = this.adapter;
        if (materialSpinnerBaseAdapter != null) {
            if (i >= 0 && i <= materialSpinnerBaseAdapter.getCount()) {
                this.adapter.notifyItemSelected(i);
                this.selectedIndex = i;
                setText(this.adapter.get(i).toString());
                return;
            }
            throw new IllegalArgumentException("Position must be lower than adapter count!");
        }
    }

    public void setOnItemSelectedListener(OnItemSelectedListener onItemSelectedListener) {
        this.onItemSelectedListener = onItemSelectedListener;
    }

    public void setOnNothingSelectedListener(OnNothingSelectedListener onNothingSelectedListener) {
        this.onNothingSelectedListener = onNothingSelectedListener;
    }

    public <T> void setItems(T... tArr) {
        setItems(Arrays.asList(tArr));
    }

    public <T> void setItems(List<T> list) {
        this.adapter = new MaterialSpinnerAdapter(getContext(), list).setPopupPadding(this.popupPaddingLeft, this.popupPaddingTop, this.popupPaddingRight, this.popupPaddingBottom).setBackgroundSelector(this.backgroundSelector).setTextColor(this.textColor);
        setAdapterInternal(this.adapter);
    }

    public void setAdapter(ListAdapter listAdapter) {
        this.adapter = new MaterialSpinnerAdapterWrapper(getContext(), listAdapter).setPopupPadding(this.popupPaddingLeft, this.popupPaddingTop, this.popupPaddingRight, this.popupPaddingBottom).setBackgroundSelector(this.backgroundSelector).setTextColor(this.textColor);
        setAdapterInternal(this.adapter);
    }

    public <T> void setAdapter(MaterialSpinnerAdapter<T> materialSpinnerAdapter) {
        this.adapter = materialSpinnerAdapter;
        this.adapter.setTextColor(this.textColor);
        this.adapter.setBackgroundSelector(this.backgroundSelector);
        this.adapter.setPopupPadding(this.popupPaddingLeft, this.popupPaddingTop, this.popupPaddingRight, this.popupPaddingBottom);
        setAdapterInternal(materialSpinnerAdapter);
    }

    private void setAdapterInternal(MaterialSpinnerBaseAdapter materialSpinnerBaseAdapter) {
        boolean z = this.listView.getAdapter() != null;
        materialSpinnerBaseAdapter.setHintEnabled(true ^ TextUtils.isEmpty(this.hintText));
        this.listView.setAdapter((ListAdapter) materialSpinnerBaseAdapter);
        if (this.selectedIndex >= materialSpinnerBaseAdapter.getCount()) {
            this.selectedIndex = 0;
        }
        if (materialSpinnerBaseAdapter.getItems().size() > 0) {
            if (this.nothingSelected && !TextUtils.isEmpty(this.hintText)) {
                setText(this.hintText);
                setHintColor(this.hintColor);
            } else {
                setTextColor(this.textColor);
                setText(materialSpinnerBaseAdapter.get(this.selectedIndex).toString());
            }
        } else {
            setText("");
        }
        if (z) {
            this.popupWindow.setHeight(calculatePopupWindowHeight());
        }
    }

    public <T> List<T> getItems() {
        MaterialSpinnerBaseAdapter materialSpinnerBaseAdapter = this.adapter;
        if (materialSpinnerBaseAdapter == null) {
            return null;
        }
        return materialSpinnerBaseAdapter.getItems();
    }

    public void expand() {
        if (canShowPopup()) {
            if (!this.hideArrow) {
                animateArrow(true);
            }
            this.nothingSelected = true;
            this.popupWindow.showAsDropDown(this);
        }
    }

    public void collapse() {
        if (!this.hideArrow) {
            animateArrow(false);
        }
        this.popupWindow.dismiss();
    }

    public void setArrowColor(int i) {
        this.arrowColor = i;
        this.arrowColorDisabled = Utils.lighter(this.arrowColor, 0.8f);
        Drawable drawable = this.arrowDrawable;
        if (drawable != null) {
            drawable.setColorFilter(this.arrowColor, PorterDuff.Mode.SRC_IN);
        }
    }

    private boolean canShowPopup() {
        Activity activity = getActivity();
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return isLaidOut();
        }
        return getWidth() > 0 && getHeight() > 0;
    }

    private Activity getActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateArrow(boolean z) {
        int i = BleManager.DEFAULT_SCAN_TIME;
        int i2 = z ? 0 : BleManager.DEFAULT_SCAN_TIME;
        if (!z) {
            i = 0;
        }
        ObjectAnimator.ofInt(this.arrowDrawable, "level", i2, i).start();
    }

    public void setDropdownMaxHeight(int i) {
        this.popupWindowMaxHeight = i;
        this.popupWindow.setHeight(calculatePopupWindowHeight());
    }

    public void setDropdownHeight(int i) {
        this.popupWindowHeight = i;
        this.popupWindow.setHeight(calculatePopupWindowHeight());
    }

    private int calculatePopupWindowHeight() throws Resources.NotFoundException {
        if (this.adapter == null) {
            return -2;
        }
        float dimension = getResources().getDimension(C1258R.dimen.ms__item_height);
        float count = this.adapter.getCount() * dimension;
        int i = this.popupWindowMaxHeight;
        if (i > 0 && count > i) {
            return i;
        }
        int i2 = this.popupWindowHeight;
        if (i2 != -1 && i2 != -2 && i2 <= count) {
            return i2;
        }
        if (count == 0.0f && this.adapter.getItems().size() == 1) {
            return (int) dimension;
        }
        return -2;
    }

    public PopupWindow getPopupWindow() {
        return this.popupWindow;
    }

    public ListView getListView() {
        return this.listView;
    }
}
