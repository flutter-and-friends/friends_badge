package com.codbking.widget.view;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.codbking.widget.C0905R;
import com.codbking.widget.adapters.WheelViewAdapter;
import com.codbking.widget.view.WheelScroller;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public class WheelView extends View {
    private static final int DEF_VISIBLE_ITEMS = 5;
    private static final int ITEM_OFFSET_PERCENT = 10;
    private static final int PADDING = 10;
    private static final int[] SHADOWS_COLORS = {-15658735, 11184810, 11184810};
    private static final String TAG = "WheelView";
    private GradientDrawable bottomShadow;
    private Drawable centerDrawable;
    private List<OnWheelChangedListener> changingListeners;
    private List<OnWheelClickedListener> clickingListeners;
    private int currentItem;
    private DataSetObserver dataObserver;
    private int firstItem;
    boolean isCyclic;
    private boolean isScrollingPerformed;
    private int itemHeight;
    private LinearLayout itemsLayout;
    private WheelRecycle recycle;
    private WheelScroller scroller;
    WheelScroller.ScrollingListener scrollingListener;
    private List<OnWheelScrollListener> scrollingListeners;
    private int scrollingOffset;
    int selectTextColor;
    int textColor;
    private GradientDrawable topShadow;
    private WheelViewAdapter viewAdapter;
    private int visibleItems;

    public boolean isScrollingPerformed() {
        return this.isScrollingPerformed;
    }

    public WheelView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.currentItem = 0;
        this.visibleItems = 5;
        this.itemHeight = 0;
        this.isCyclic = false;
        this.recycle = new WheelRecycle(this);
        this.changingListeners = new LinkedList();
        this.scrollingListeners = new LinkedList();
        this.clickingListeners = new LinkedList();
        this.scrollingListener = new WheelScroller.ScrollingListener() { // from class: com.codbking.widget.view.WheelView.1
            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onStarted() {
                WheelView.this.isScrollingPerformed = true;
                WheelView.this.notifyScrollingListenersAboutStart();
            }

            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onScroll(int i2) {
                WheelView.this.doScroll(i2);
                int height = WheelView.this.getHeight();
                if (WheelView.this.scrollingOffset > height) {
                    WheelView.this.scrollingOffset = height;
                    WheelView.this.scroller.stopScrolling();
                    return;
                }
                int i3 = -height;
                if (WheelView.this.scrollingOffset < i3) {
                    WheelView.this.scrollingOffset = i3;
                    WheelView.this.scroller.stopScrolling();
                }
            }

            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onFinished() {
                if (WheelView.this.isScrollingPerformed) {
                    WheelView.this.notifyScrollingListenersAboutEnd();
                    WheelView.this.isScrollingPerformed = false;
                }
                WheelView.this.scrollingOffset = 0;
                WheelView.this.invalidate();
            }

            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onJustify() {
                if (Math.abs(WheelView.this.scrollingOffset) > 1) {
                    WheelView.this.scroller.scroll(WheelView.this.scrollingOffset, 0);
                }
            }
        };
        this.dataObserver = new DataSetObserver() { // from class: com.codbking.widget.view.WheelView.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                WheelView.this.invalidateWheel(false);
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                WheelView.this.invalidateWheel(true);
            }
        };
        initData(context);
    }

    public WheelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.currentItem = 0;
        this.visibleItems = 5;
        this.itemHeight = 0;
        this.isCyclic = false;
        this.recycle = new WheelRecycle(this);
        this.changingListeners = new LinkedList();
        this.scrollingListeners = new LinkedList();
        this.clickingListeners = new LinkedList();
        this.scrollingListener = new WheelScroller.ScrollingListener() { // from class: com.codbking.widget.view.WheelView.1
            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onStarted() {
                WheelView.this.isScrollingPerformed = true;
                WheelView.this.notifyScrollingListenersAboutStart();
            }

            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onScroll(int i2) {
                WheelView.this.doScroll(i2);
                int height = WheelView.this.getHeight();
                if (WheelView.this.scrollingOffset > height) {
                    WheelView.this.scrollingOffset = height;
                    WheelView.this.scroller.stopScrolling();
                    return;
                }
                int i3 = -height;
                if (WheelView.this.scrollingOffset < i3) {
                    WheelView.this.scrollingOffset = i3;
                    WheelView.this.scroller.stopScrolling();
                }
            }

            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onFinished() {
                if (WheelView.this.isScrollingPerformed) {
                    WheelView.this.notifyScrollingListenersAboutEnd();
                    WheelView.this.isScrollingPerformed = false;
                }
                WheelView.this.scrollingOffset = 0;
                WheelView.this.invalidate();
            }

            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onJustify() {
                if (Math.abs(WheelView.this.scrollingOffset) > 1) {
                    WheelView.this.scroller.scroll(WheelView.this.scrollingOffset, 0);
                }
            }
        };
        this.dataObserver = new DataSetObserver() { // from class: com.codbking.widget.view.WheelView.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                WheelView.this.invalidateWheel(false);
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                WheelView.this.invalidateWheel(true);
            }
        };
        initData(context);
    }

    public WheelView(Context context) {
        super(context);
        this.currentItem = 0;
        this.visibleItems = 5;
        this.itemHeight = 0;
        this.isCyclic = false;
        this.recycle = new WheelRecycle(this);
        this.changingListeners = new LinkedList();
        this.scrollingListeners = new LinkedList();
        this.clickingListeners = new LinkedList();
        this.scrollingListener = new WheelScroller.ScrollingListener() { // from class: com.codbking.widget.view.WheelView.1
            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onStarted() {
                WheelView.this.isScrollingPerformed = true;
                WheelView.this.notifyScrollingListenersAboutStart();
            }

            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onScroll(int i2) {
                WheelView.this.doScroll(i2);
                int height = WheelView.this.getHeight();
                if (WheelView.this.scrollingOffset > height) {
                    WheelView.this.scrollingOffset = height;
                    WheelView.this.scroller.stopScrolling();
                    return;
                }
                int i3 = -height;
                if (WheelView.this.scrollingOffset < i3) {
                    WheelView.this.scrollingOffset = i3;
                    WheelView.this.scroller.stopScrolling();
                }
            }

            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onFinished() {
                if (WheelView.this.isScrollingPerformed) {
                    WheelView.this.notifyScrollingListenersAboutEnd();
                    WheelView.this.isScrollingPerformed = false;
                }
                WheelView.this.scrollingOffset = 0;
                WheelView.this.invalidate();
            }

            @Override // com.codbking.widget.view.WheelScroller.ScrollingListener
            public void onJustify() {
                if (Math.abs(WheelView.this.scrollingOffset) > 1) {
                    WheelView.this.scroller.scroll(WheelView.this.scrollingOffset, 0);
                }
            }
        };
        this.dataObserver = new DataSetObserver() { // from class: com.codbking.widget.view.WheelView.2
            @Override // android.database.DataSetObserver
            public void onChanged() {
                WheelView.this.invalidateWheel(false);
            }

            @Override // android.database.DataSetObserver
            public void onInvalidated() {
                WheelView.this.invalidateWheel(true);
            }
        };
        initData(context);
    }

    private void initData(Context context) {
        this.scroller = new WheelScroller(getContext(), this.scrollingListener);
    }

    public void setInterpolator(Interpolator interpolator) {
        this.scroller.setInterpolator(interpolator);
    }

    public int getVisibleItems() {
        return this.visibleItems;
    }

    public void setVisibleItems(int i) {
        this.visibleItems = i;
    }

    public WheelViewAdapter getViewAdapter() {
        return this.viewAdapter;
    }

    public void setViewAdapter(WheelViewAdapter wheelViewAdapter) {
        WheelViewAdapter wheelViewAdapter2 = this.viewAdapter;
        if (wheelViewAdapter2 != null) {
            wheelViewAdapter2.unregisterDataSetObserver(this.dataObserver);
        }
        this.viewAdapter = wheelViewAdapter;
        WheelViewAdapter wheelViewAdapter3 = this.viewAdapter;
        if (wheelViewAdapter3 != null) {
            wheelViewAdapter3.registerDataSetObserver(this.dataObserver);
        }
        invalidateWheel(true);
    }

    public void setSelectTextColor(int i, int i2) {
        this.selectTextColor = i2;
        this.textColor = i;
    }

    public void addChangingListener(OnWheelChangedListener onWheelChangedListener) {
        this.changingListeners.add(onWheelChangedListener);
    }

    public void removeChangingListener(OnWheelChangedListener onWheelChangedListener) {
        this.changingListeners.remove(onWheelChangedListener);
    }

    protected void notifyChangingListeners(int i, int i2) {
        LinearLayout linearLayout;
        Iterator<OnWheelChangedListener> it = this.changingListeners.iterator();
        while (it.hasNext()) {
            it.next().onChanged(this, i, i2);
        }
        if (i < 0 || i2 < 0 || (linearLayout = this.itemsLayout) == null) {
            return;
        }
        View childAt = linearLayout.getChildAt(i - this.firstItem);
        View childAt2 = this.itemsLayout.getChildAt(i2 - this.firstItem);
        refreshTextStatus(childAt, i);
        refreshTextStatus(childAt2, i2);
    }

    public void addScrollingListener(OnWheelScrollListener onWheelScrollListener) {
        this.scrollingListeners.add(onWheelScrollListener);
    }

    public void removeScrollingListener(OnWheelScrollListener onWheelScrollListener) {
        this.scrollingListeners.remove(onWheelScrollListener);
    }

    protected void notifyScrollingListenersAboutStart() {
        Iterator<OnWheelScrollListener> it = this.scrollingListeners.iterator();
        while (it.hasNext()) {
            it.next().onScrollingStarted(this);
        }
    }

    protected void notifyScrollingListenersAboutEnd() {
        Iterator<OnWheelScrollListener> it = this.scrollingListeners.iterator();
        while (it.hasNext()) {
            it.next().onScrollingFinished(this);
        }
    }

    public void addClickingListener(OnWheelClickedListener onWheelClickedListener) {
        this.clickingListeners.add(onWheelClickedListener);
    }

    public void removeClickingListener(OnWheelClickedListener onWheelClickedListener) {
        this.clickingListeners.remove(onWheelClickedListener);
    }

    protected void notifyClickListenersAboutClick(int i) {
        Iterator<OnWheelClickedListener> it = this.clickingListeners.iterator();
        while (it.hasNext()) {
            it.next().onItemClicked(this, i);
        }
    }

    public int getCurrentItem() {
        return this.currentItem;
    }

    public void setCurrentItem(int i, boolean z) {
        int iMin;
        WheelViewAdapter wheelViewAdapter = this.viewAdapter;
        if (wheelViewAdapter == null || wheelViewAdapter.getItemsCount() == 0) {
            return;
        }
        int itemsCount = this.viewAdapter.getItemsCount();
        if (i < 0 || i >= itemsCount) {
            if (!this.isCyclic) {
                return;
            }
            while (i < 0) {
                i += itemsCount;
            }
            i %= itemsCount;
        }
        int i2 = this.currentItem;
        if (i != i2) {
            if (z) {
                int i3 = i - i2;
                if (this.isCyclic && (iMin = (itemsCount + Math.min(i, i2)) - Math.max(i, this.currentItem)) < Math.abs(i3)) {
                    i3 = i3 < 0 ? iMin : -iMin;
                }
                scroll(i3, 0);
                return;
            }
            this.scrollingOffset = 0;
            this.currentItem = i;
            notifyChangingListeners(i2, this.currentItem);
            invalidate();
        }
    }

    private void refreshTextStatus(View view, int i) {
        if (view == null) {
            return;
        }
        TextView textView = (TextView) view.findViewById(C0905R.id.text);
        if (i == this.currentItem) {
            textView.setTextColor(this.selectTextColor);
        } else {
            textView.setTextColor(this.textColor);
        }
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, false);
    }

    public boolean isCyclic() {
        return this.isCyclic;
    }

    public void setCyclic(boolean z) {
        this.isCyclic = z;
        invalidateWheel(false);
    }

    public void invalidateWheel(boolean z) {
        if (z) {
            this.recycle.clearAll();
            LinearLayout linearLayout = this.itemsLayout;
            if (linearLayout != null) {
                linearLayout.removeAllViews();
            }
            this.scrollingOffset = 0;
        } else {
            LinearLayout linearLayout2 = this.itemsLayout;
            if (linearLayout2 != null) {
                this.recycle.recycleItems(linearLayout2, this.firstItem, new ItemsRange());
            }
        }
        invalidate();
    }

    private void initResourcesIfNecessary() {
        if (this.topShadow == null) {
            this.topShadow = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, SHADOWS_COLORS);
        }
        if (this.bottomShadow == null) {
            this.bottomShadow = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, SHADOWS_COLORS);
        }
    }

    private int getDesiredHeight(LinearLayout linearLayout) {
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            this.itemHeight = linearLayout.getChildAt(0).getMeasuredHeight();
        }
        int i = this.itemHeight;
        return Math.max((this.visibleItems * i) - ((i * 10) / 50), getSuggestedMinimumHeight());
    }

    public int getItemHeight() {
        int i = this.itemHeight;
        if (i != 0) {
            return i;
        }
        LinearLayout linearLayout = this.itemsLayout;
        if (linearLayout != null && linearLayout.getChildAt(0) != null) {
            this.itemHeight = this.itemsLayout.getChildAt(0).getHeight();
            return this.itemHeight;
        }
        return getHeight() / this.visibleItems;
    }

    private int calculateLayoutWidth(int i, int i2) {
        initResourcesIfNecessary();
        this.itemsLayout.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
        this.itemsLayout.measure(View.MeasureSpec.makeMeasureSpec(i, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        int measuredWidth = this.itemsLayout.getMeasuredWidth();
        if (i2 != 1073741824) {
            int iMax = Math.max(measuredWidth + 20, getSuggestedMinimumWidth());
            if (i2 != Integer.MIN_VALUE || i >= iMax) {
                i = iMax;
            }
        }
        this.itemsLayout.measure(View.MeasureSpec.makeMeasureSpec(i - 20, 1073741824), View.MeasureSpec.makeMeasureSpec(0, 0));
        return i;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        buildViewForMeasuring();
        int iCalculateLayoutWidth = calculateLayoutWidth(size, mode);
        if (mode2 != 1073741824) {
            int desiredHeight = getDesiredHeight(this.itemsLayout);
            size2 = mode2 == Integer.MIN_VALUE ? Math.min(desiredHeight, size2) : desiredHeight;
        }
        setMeasuredDimension(iCalculateLayoutWidth, size2);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        layout(i3 - i, i4 - i2);
    }

    private void layout(int i, int i2) {
        this.itemsLayout.layout(0, 0, i - 20, i2);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        WheelViewAdapter wheelViewAdapter = this.viewAdapter;
        if (wheelViewAdapter == null || wheelViewAdapter.getItemsCount() <= 0) {
            return;
        }
        updateView();
        drawItems(canvas);
    }

    private void drawShadows(Canvas canvas) {
        int itemHeight = (int) (getItemHeight() * 1.5d);
        this.topShadow.setBounds(0, 0, getWidth(), itemHeight);
        this.topShadow.draw(canvas);
        this.bottomShadow.setBounds(0, getHeight() - itemHeight, getWidth(), getHeight());
        this.bottomShadow.draw(canvas);
    }

    private void drawItems(Canvas canvas) {
        canvas.save();
        canvas.translate(10.0f, (-(((this.currentItem - this.firstItem) * getItemHeight()) + ((getItemHeight() - getHeight()) / 2))) + this.scrollingOffset);
        this.itemsLayout.draw(canvas);
        canvas.restore();
    }

    private void drawCenterRect(Canvas canvas) {
        int height = getHeight() / 2;
        int itemHeight = getItemHeight() / 2;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int itemHeight;
        if (!isEnabled() || getViewAdapter() == null) {
            return true;
        }
        int action = motionEvent.getAction();
        if (action != 1) {
            if (action == 2 && getParent() != null) {
                getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (!this.isScrollingPerformed) {
            int y = ((int) motionEvent.getY()) - (getHeight() / 2);
            if (y > 0) {
                itemHeight = y + (getItemHeight() / 2);
            } else {
                itemHeight = y - (getItemHeight() / 2);
            }
            int itemHeight2 = itemHeight / getItemHeight();
            if (itemHeight2 != 0 && isValidItemIndex(this.currentItem + itemHeight2)) {
                notifyClickListenersAboutClick(this.currentItem + itemHeight2);
            }
        }
        return this.scroller.onTouchEvent(motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doScroll(int i) {
        this.scrollingOffset += i;
        int itemHeight = getItemHeight();
        int i2 = this.scrollingOffset / itemHeight;
        int i3 = this.currentItem - i2;
        int itemsCount = this.viewAdapter.getItemsCount();
        int i4 = this.scrollingOffset % itemHeight;
        if (Math.abs(i4) <= itemHeight / 2) {
            i4 = 0;
        }
        if (this.isCyclic && itemsCount > 0) {
            if (i4 > 0) {
                i3--;
                i2++;
            } else if (i4 < 0) {
                i3++;
                i2--;
            }
            while (i3 < 0) {
                i3 += itemsCount;
            }
            i3 %= itemsCount;
        } else if (i3 < 0) {
            i2 = this.currentItem;
            i3 = 0;
        } else if (i3 >= itemsCount) {
            i2 = (this.currentItem - itemsCount) + 1;
            i3 = itemsCount - 1;
        } else if (i3 > 0 && i4 > 0) {
            i3--;
            i2++;
        } else if (i3 < itemsCount - 1 && i4 < 0) {
            i3++;
            i2--;
        }
        int i5 = this.scrollingOffset;
        if (i3 != this.currentItem) {
            setCurrentItem(i3, false);
        } else {
            invalidate();
        }
        this.scrollingOffset = i5 - (i2 * itemHeight);
        if (this.scrollingOffset > getHeight()) {
            this.scrollingOffset = (this.scrollingOffset % getHeight()) + getHeight();
        }
    }

    public void scroll(int i, int i2) {
        this.scroller.scroll((i * getItemHeight()) - this.scrollingOffset, i2);
    }

    private ItemsRange getItemsRange() {
        if (getItemHeight() == 0) {
            return null;
        }
        int i = this.currentItem;
        int iAsin = 1;
        while (getItemHeight() * iAsin < getHeight()) {
            i--;
            iAsin += 2;
        }
        int i2 = this.scrollingOffset;
        if (i2 != 0) {
            if (i2 > 0) {
                i--;
            }
            int itemHeight = this.scrollingOffset / getItemHeight();
            i -= itemHeight;
            iAsin = (int) (iAsin + 1 + Math.asin(itemHeight));
        }
        return new ItemsRange(i, iAsin);
    }

    private boolean rebuildItems() {
        boolean z;
        ItemsRange itemsRange = getItemsRange();
        LinearLayout linearLayout = this.itemsLayout;
        if (linearLayout != null) {
            int iRecycleItems = this.recycle.recycleItems(linearLayout, this.firstItem, itemsRange);
            z = this.firstItem != iRecycleItems;
            this.firstItem = iRecycleItems;
        } else {
            createItemsLayout();
            z = true;
        }
        if (!z) {
            z = (this.firstItem == itemsRange.getFirst() && this.itemsLayout.getChildCount() == itemsRange.getCount()) ? false : true;
        }
        if (this.firstItem > itemsRange.getFirst() && this.firstItem <= itemsRange.getLast()) {
            for (int i = this.firstItem - 1; i >= itemsRange.getFirst() && addViewItem(i, true); i--) {
                this.firstItem = i;
            }
        } else {
            this.firstItem = itemsRange.getFirst();
        }
        int i2 = this.firstItem;
        for (int childCount = this.itemsLayout.getChildCount(); childCount < itemsRange.getCount(); childCount++) {
            if (!addViewItem(this.firstItem + childCount, false) && this.itemsLayout.getChildCount() == 0) {
                i2++;
            }
        }
        this.firstItem = i2;
        return z;
    }

    private void updateView() {
        if (rebuildItems()) {
            calculateLayoutWidth(getWidth(), 1073741824);
            layout(getWidth(), getHeight());
        }
    }

    private void createItemsLayout() {
        if (this.itemsLayout == null) {
            this.itemsLayout = new LinearLayout(getContext());
            this.itemsLayout.setOrientation(1);
        }
    }

    private void buildViewForMeasuring() {
        LinearLayout linearLayout = this.itemsLayout;
        if (linearLayout != null) {
            this.recycle.recycleItems(linearLayout, this.firstItem, new ItemsRange());
        } else {
            createItemsLayout();
        }
        int i = this.visibleItems / 2;
        for (int i2 = this.currentItem + i; i2 >= this.currentItem - i; i2--) {
            if (addViewItem(i2, true)) {
                this.firstItem = i2;
            }
        }
    }

    private boolean addViewItem(int i, boolean z) {
        View itemView = getItemView(i);
        refreshTextStatus(itemView, i);
        if (itemView == null) {
            return false;
        }
        if (z) {
            this.itemsLayout.addView(itemView, 0);
        } else {
            this.itemsLayout.addView(itemView);
        }
        return true;
    }

    private boolean isValidItemIndex(int i) {
        WheelViewAdapter wheelViewAdapter = this.viewAdapter;
        return wheelViewAdapter != null && wheelViewAdapter.getItemsCount() > 0 && (this.isCyclic || (i >= 0 && i < this.viewAdapter.getItemsCount()));
    }

    private View getItemView(int i) {
        WheelViewAdapter wheelViewAdapter = this.viewAdapter;
        if (wheelViewAdapter == null || wheelViewAdapter.getItemsCount() == 0) {
            return null;
        }
        int itemsCount = this.viewAdapter.getItemsCount();
        if (!isValidItemIndex(i)) {
            return this.viewAdapter.getEmptyItem(this.recycle.getEmptyItem(), this.itemsLayout);
        }
        while (i < 0) {
            i += itemsCount;
        }
        return this.viewAdapter.getItem(i % itemsCount, this.recycle.getItem(), this.itemsLayout);
    }

    public void stopScrolling() {
        this.scroller.stopScrolling();
    }
}
