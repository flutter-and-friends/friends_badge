package cn.forward.androids.views;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class KeyboardLayout extends FrameLayout {
    private boolean mIsKeyboardActive;
    private int mKeyboardHeight;
    private KeyboardLayoutListener mListener;

    public interface KeyboardLayoutListener {
        void onKeyboardStateChanged(boolean z, int i);
    }

    public KeyboardLayout(Context context) {
        this(context, null, 0);
    }

    public KeyboardLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KeyboardLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mIsKeyboardActive = false;
        this.mKeyboardHeight = 0;
        getViewTreeObserver().addOnGlobalLayoutListener(new KeyboardOnGlobalChangeListener());
    }

    private class KeyboardOnGlobalChangeListener implements ViewTreeObserver.OnGlobalLayoutListener {
        Rect mRect;
        int mScreenHeight;

        private KeyboardOnGlobalChangeListener() {
            this.mScreenHeight = 0;
            this.mRect = new Rect();
        }

        private int getScreenHeight() {
            int i = this.mScreenHeight;
            if (i > 0) {
                return i;
            }
            this.mScreenHeight = ((WindowManager) KeyboardLayout.this.getContext().getSystemService("window")).getDefaultDisplay().getHeight();
            return this.mScreenHeight;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            boolean z;
            KeyboardLayout.this.getWindowVisibleDisplayFrame(this.mRect);
            int screenHeight = getScreenHeight();
            int i = screenHeight - this.mRect.bottom;
            if (Math.abs(i) > screenHeight / 5) {
                z = true;
                KeyboardLayout.this.mKeyboardHeight = i;
            } else {
                z = false;
            }
            KeyboardLayout.this.mIsKeyboardActive = z;
            if (KeyboardLayout.this.mListener != null) {
                KeyboardLayout.this.mListener.onKeyboardStateChanged(z, i);
            }
        }
    }

    public void setKeyboardListener(KeyboardLayoutListener keyboardLayoutListener) {
        this.mListener = keyboardLayoutListener;
    }

    public KeyboardLayoutListener getKeyboardListener() {
        return this.mListener;
    }

    public boolean isKeyboardActive() {
        return this.mIsKeyboardActive;
    }

    public int getKeyboardHeight() {
        return this.mKeyboardHeight;
    }
}
