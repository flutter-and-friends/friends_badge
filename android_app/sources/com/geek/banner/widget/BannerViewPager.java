package com.geek.banner.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class BannerViewPager extends ViewPager {
    private ArrayList<Integer> childCenterXAbs;
    private SparseArray<Integer> childIndex;
    private boolean mEnableMzEffects;
    private boolean mScrollable;

    public BannerViewPager(Context context) {
        super(context);
        this.childCenterXAbs = new ArrayList<>();
        this.childIndex = new SparseArray<>();
        this.mScrollable = true;
        this.mEnableMzEffects = false;
    }

    public BannerViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.childCenterXAbs = new ArrayList<>();
        this.childIndex = new SparseArray<>();
        this.mScrollable = true;
        this.mEnableMzEffects = false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mScrollable) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mScrollable) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return false;
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    protected int getChildDrawingOrder(int i, int i2) {
        if (this.mEnableMzEffects) {
            if (i2 == 0 || this.childIndex.size() != i) {
                this.childCenterXAbs.clear();
                this.childIndex.clear();
                int viewCenterX = getViewCenterX(this);
                for (int i3 = 0; i3 < i; i3++) {
                    int iAbs = Math.abs(viewCenterX - getViewCenterX(getChildAt(i3)));
                    if (this.childIndex.get(iAbs) != null) {
                        iAbs++;
                    }
                    this.childCenterXAbs.add(Integer.valueOf(iAbs));
                    this.childIndex.append(iAbs, Integer.valueOf(i3));
                }
                Collections.sort(this.childCenterXAbs);
            }
            return this.childIndex.get(this.childCenterXAbs.get((i - 1) - i2).intValue()).intValue();
        }
        return super.getChildDrawingOrder(i, i2);
    }

    private int getViewCenterX(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[0] + (view.getWidth() / 2);
    }

    public void setScrollable(boolean z) {
        this.mScrollable = z;
    }

    public void setEnableMzEffects(boolean z) {
        this.mEnableMzEffects = z;
    }
}
