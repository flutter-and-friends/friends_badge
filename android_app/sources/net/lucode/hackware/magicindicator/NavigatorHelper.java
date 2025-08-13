package net.lucode.hackware.magicindicator;

import android.util.SparseArray;
import android.util.SparseBooleanArray;

/* loaded from: classes2.dex */
public class NavigatorHelper {
    private int mCurrentIndex;
    private int mLastIndex;
    private float mLastPositionOffsetSum;
    private OnNavigatorScrollListener mNavigatorScrollListener;
    private int mScrollState;
    private boolean mSkimOver;
    private int mTotalCount;
    private SparseBooleanArray mDeselectedItems = new SparseBooleanArray();
    private SparseArray<Float> mLeavedPercents = new SparseArray<>();

    public interface OnNavigatorScrollListener {
        void onDeselected(int i, int i2);

        void onEnter(int i, int i2, float f, boolean z);

        void onLeave(int i, int i2, float f, boolean z);

        void onSelected(int i, int i2);
    }

    public void onPageScrolled(int i, float f, int i2) {
        boolean z;
        float f2 = i + f;
        boolean z2 = this.mLastPositionOffsetSum <= f2;
        if (this.mScrollState != 0) {
            if (f2 == this.mLastPositionOffsetSum) {
                return;
            }
            int i3 = i + 1;
            if (f == 0.0f && z2) {
                i3 = i - 1;
                z = false;
            } else {
                z = true;
            }
            for (int i4 = 0; i4 < this.mTotalCount; i4++) {
                if (i4 != i && i4 != i3 && this.mLeavedPercents.get(i4, Float.valueOf(0.0f)).floatValue() != 1.0f) {
                    dispatchOnLeave(i4, 1.0f, z2, true);
                }
            }
            if (!z) {
                float f3 = 1.0f - f;
                dispatchOnLeave(i3, f3, true, false);
                dispatchOnEnter(i, f3, true, false);
            } else if (z2) {
                dispatchOnLeave(i, f, true, false);
                dispatchOnEnter(i3, f, true, false);
            } else {
                float f4 = 1.0f - f;
                dispatchOnLeave(i3, f4, false, false);
                dispatchOnEnter(i, f4, false, false);
            }
        } else {
            for (int i5 = 0; i5 < this.mTotalCount; i5++) {
                if (i5 != this.mCurrentIndex) {
                    if (!this.mDeselectedItems.get(i5)) {
                        dispatchOnDeselected(i5);
                    }
                    if (this.mLeavedPercents.get(i5, Float.valueOf(0.0f)).floatValue() != 1.0f) {
                        dispatchOnLeave(i5, 1.0f, false, true);
                    }
                }
            }
            dispatchOnEnter(this.mCurrentIndex, 1.0f, false, true);
            dispatchOnSelected(this.mCurrentIndex);
        }
        this.mLastPositionOffsetSum = f2;
    }

    private void dispatchOnEnter(int i, float f, boolean z, boolean z2) {
        if (this.mSkimOver || i == this.mCurrentIndex || this.mScrollState == 1 || z2) {
            OnNavigatorScrollListener onNavigatorScrollListener = this.mNavigatorScrollListener;
            if (onNavigatorScrollListener != null) {
                onNavigatorScrollListener.onEnter(i, this.mTotalCount, f, z);
            }
            this.mLeavedPercents.put(i, Float.valueOf(1.0f - f));
        }
    }

    private void dispatchOnLeave(int i, float f, boolean z, boolean z2) {
        if (!this.mSkimOver && i != this.mLastIndex && this.mScrollState != 1) {
            int i2 = this.mCurrentIndex;
            if (((i != i2 - 1 && i != i2 + 1) || this.mLeavedPercents.get(i, Float.valueOf(0.0f)).floatValue() == 1.0f) && !z2) {
                return;
            }
        }
        OnNavigatorScrollListener onNavigatorScrollListener = this.mNavigatorScrollListener;
        if (onNavigatorScrollListener != null) {
            onNavigatorScrollListener.onLeave(i, this.mTotalCount, f, z);
        }
        this.mLeavedPercents.put(i, Float.valueOf(f));
    }

    private void dispatchOnSelected(int i) {
        OnNavigatorScrollListener onNavigatorScrollListener = this.mNavigatorScrollListener;
        if (onNavigatorScrollListener != null) {
            onNavigatorScrollListener.onSelected(i, this.mTotalCount);
        }
        this.mDeselectedItems.put(i, false);
    }

    private void dispatchOnDeselected(int i) {
        OnNavigatorScrollListener onNavigatorScrollListener = this.mNavigatorScrollListener;
        if (onNavigatorScrollListener != null) {
            onNavigatorScrollListener.onDeselected(i, this.mTotalCount);
        }
        this.mDeselectedItems.put(i, true);
    }

    public void onPageSelected(int i) {
        this.mLastIndex = this.mCurrentIndex;
        this.mCurrentIndex = i;
        dispatchOnSelected(this.mCurrentIndex);
        for (int i2 = 0; i2 < this.mTotalCount; i2++) {
            if (i2 != this.mCurrentIndex && !this.mDeselectedItems.get(i2)) {
                dispatchOnDeselected(i2);
            }
        }
    }

    public void onPageScrollStateChanged(int i) {
        this.mScrollState = i;
    }

    public void setNavigatorScrollListener(OnNavigatorScrollListener onNavigatorScrollListener) {
        this.mNavigatorScrollListener = onNavigatorScrollListener;
    }

    public void setSkimOver(boolean z) {
        this.mSkimOver = z;
    }

    public int getTotalCount() {
        return this.mTotalCount;
    }

    public void setTotalCount(int i) {
        this.mTotalCount = i;
        this.mDeselectedItems.clear();
        this.mLeavedPercents.clear();
    }

    public int getCurrentIndex() {
        return this.mCurrentIndex;
    }

    public int getScrollState() {
        return this.mScrollState;
    }
}
