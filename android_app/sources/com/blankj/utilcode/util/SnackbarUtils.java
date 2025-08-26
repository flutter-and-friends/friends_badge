package com.blankj.utilcode.util;

import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.snackbar.Snackbar;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class SnackbarUtils {
    private static final int COLOR_DEFAULT = -16777217;
    private static final int COLOR_ERROR = -65536;
    private static final int COLOR_MESSAGE = -1;
    private static final int COLOR_SUCCESS = -13912576;
    private static final int COLOR_WARNING = -16128;
    public static final int LENGTH_INDEFINITE = -2;
    public static final int LENGTH_LONG = 0;
    public static final int LENGTH_SHORT = -1;
    private static WeakReference<Snackbar> sReference;
    private View.OnClickListener actionListener;
    private CharSequence actionText;
    private int actionTextColor;
    private int bgColor;
    private int bgResource;
    private int bottomMargin;
    private int duration;
    private CharSequence message;
    private int messageColor;
    private View view;

    @Retention(RetentionPolicy.SOURCE)
    public @interface Duration {
    }

    private SnackbarUtils(View view) {
        setDefault();
        this.view = view;
    }

    private void setDefault() {
        this.message = "";
        this.messageColor = COLOR_DEFAULT;
        this.bgColor = COLOR_DEFAULT;
        this.bgResource = -1;
        this.duration = -1;
        this.actionText = "";
        this.actionTextColor = COLOR_DEFAULT;
        this.bottomMargin = 0;
    }

    public static SnackbarUtils with(View view) {
        if (view == null) {
            throw new NullPointerException("Argument 'view' of type View (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return new SnackbarUtils(view);
    }

    public SnackbarUtils setMessage(CharSequence charSequence) {
        if (charSequence == null) {
            throw new NullPointerException("Argument 'msg' of type CharSequence (#0 out of 1, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        this.message = charSequence;
        return this;
    }

    public SnackbarUtils setMessageColor(int i) {
        this.messageColor = i;
        return this;
    }

    public SnackbarUtils setBgColor(int i) {
        this.bgColor = i;
        return this;
    }

    public SnackbarUtils setBgResource(int i) {
        this.bgResource = i;
        return this;
    }

    public SnackbarUtils setDuration(int i) {
        this.duration = i;
        return this;
    }

    public SnackbarUtils setAction(CharSequence charSequence, View.OnClickListener onClickListener) {
        if (charSequence == null) {
            throw new NullPointerException("Argument 'text' of type CharSequence (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (onClickListener == null) {
            throw new NullPointerException("Argument 'listener' of type View.OnClickListener (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        return setAction(charSequence, COLOR_DEFAULT, onClickListener);
    }

    public SnackbarUtils setAction(CharSequence charSequence, int i, View.OnClickListener onClickListener) {
        if (charSequence == null) {
            throw new NullPointerException("Argument 'text' of type CharSequence (#0 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (onClickListener == null) {
            throw new NullPointerException("Argument 'listener' of type View.OnClickListener (#2 out of 3, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        this.actionText = charSequence;
        this.actionTextColor = i;
        this.actionListener = onClickListener;
        return this;
    }

    public SnackbarUtils setBottomMargin(int i) {
        this.bottomMargin = i;
        return this;
    }

    public Snackbar show() {
        View view = this.view;
        if (view == null) {
            return null;
        }
        if (this.messageColor != COLOR_DEFAULT) {
            SpannableString spannableString = new SpannableString(this.message);
            spannableString.setSpan(new ForegroundColorSpan(this.messageColor), 0, spannableString.length(), 33);
            sReference = new WeakReference<>(Snackbar.make(view, spannableString, this.duration));
        } else {
            sReference = new WeakReference<>(Snackbar.make(view, this.message, this.duration));
        }
        Snackbar snackbar = sReference.get();
        View view2 = snackbar.getView();
        int i = this.bgResource;
        if (i != -1) {
            view2.setBackgroundResource(i);
        } else {
            int i2 = this.bgColor;
            if (i2 != COLOR_DEFAULT) {
                view2.setBackgroundColor(i2);
            }
        }
        if (this.bottomMargin != 0) {
            ((ViewGroup.MarginLayoutParams) view2.getLayoutParams()).bottomMargin = this.bottomMargin;
        }
        if (this.actionText.length() > 0 && this.actionListener != null) {
            int i3 = this.actionTextColor;
            if (i3 != COLOR_DEFAULT) {
                snackbar.setActionTextColor(i3);
            }
            snackbar.setAction(this.actionText, this.actionListener);
        }
        snackbar.show();
        return snackbar;
    }

    public void showSuccess() {
        this.bgColor = COLOR_SUCCESS;
        this.messageColor = -1;
        this.actionTextColor = -1;
        show();
    }

    public void showWarning() {
        this.bgColor = COLOR_WARNING;
        this.messageColor = -1;
        this.actionTextColor = -1;
        show();
    }

    public void showError() {
        this.bgColor = -65536;
        this.messageColor = -1;
        this.actionTextColor = -1;
        show();
    }

    public static void dismiss() {
        WeakReference<Snackbar> weakReference = sReference;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        sReference.get().dismiss();
        sReference = null;
    }

    public static View getView() {
        Snackbar snackbar = sReference.get();
        if (snackbar == null) {
            return null;
        }
        return snackbar.getView();
    }

    public static void addView(int i, ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            throw new NullPointerException("Argument 'params' of type ViewGroup.LayoutParams (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        View view = getView();
        if (view != null) {
            view.setPadding(0, 0, 0, 0);
            ((Snackbar.SnackbarLayout) view).addView(LayoutInflater.from(view.getContext()).inflate(i, (ViewGroup) null), -1, layoutParams);
        }
    }

    public static void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (view == null) {
            throw new NullPointerException("Argument 'child' of type View (#0 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        if (layoutParams == null) {
            throw new NullPointerException("Argument 'params' of type ViewGroup.LayoutParams (#1 out of 2, zero-based) is marked by @android.support.annotation.NonNull but got null for it");
        }
        View view2 = getView();
        if (view2 != null) {
            view2.setPadding(0, 0, 0, 0);
            ((Snackbar.SnackbarLayout) view2).addView(view, layoutParams);
        }
    }
}
