package net.lucode.hackware.magicindicator.buildins.commonnavigator;

import android.content.Context;
import android.database.DataSetObserver;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
import net.lucode.hackware.magicindicator.C1663R;
import net.lucode.hackware.magicindicator.NavigatorHelper;
import net.lucode.hackware.magicindicator.abs.IPagerNavigator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.CommonNavigatorAdapter;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IMeasurablePagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.abs.IPagerTitleView;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.model.PositionData;

/* loaded from: classes2.dex */
public class CommonNavigator extends FrameLayout implements IPagerNavigator, NavigatorHelper.OnNavigatorScrollListener {
    private CommonNavigatorAdapter mAdapter;
    private boolean mAdjustMode;
    private boolean mEnablePivotScroll;
    private boolean mFollowTouch;
    private IPagerIndicator mIndicator;
    private LinearLayout mIndicatorContainer;
    private boolean mIndicatorOnTop;
    private int mLeftPadding;
    private NavigatorHelper mNavigatorHelper;
    private DataSetObserver mObserver;
    private List<PositionData> mPositionDataList;
    private boolean mReselectWhenLayout;
    private int mRightPadding;
    private float mScrollPivotX;
    private HorizontalScrollView mScrollView;
    private boolean mSkimOver;
    private boolean mSmoothScroll;
    private LinearLayout mTitleContainer;

    @Override // net.lucode.hackware.magicindicator.abs.IPagerNavigator
    public void onDetachFromMagicIndicator() {
    }

    public CommonNavigator(Context context) {
        super(context);
        this.mScrollPivotX = 0.5f;
        this.mSmoothScroll = true;
        this.mFollowTouch = true;
        this.mReselectWhenLayout = true;
        this.mPositionDataList = new ArrayList();
        this.mObserver = new DataSetObserver() { // from class: net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator.1
            @Override // android.database.DataSetObserver
            public void onInvalidated() {
            }

            @Override // android.database.DataSetObserver
            public void onChanged() {
                CommonNavigator.this.mNavigatorHelper.setTotalCount(CommonNavigator.this.mAdapter.getCount());
                CommonNavigator.this.init();
            }
        };
        this.mNavigatorHelper = new NavigatorHelper();
        this.mNavigatorHelper.setNavigatorScrollListener(this);
    }

    @Override // net.lucode.hackware.magicindicator.abs.IPagerNavigator
    public void notifyDataSetChanged() {
        CommonNavigatorAdapter commonNavigatorAdapter = this.mAdapter;
        if (commonNavigatorAdapter != null) {
            commonNavigatorAdapter.notifyDataSetChanged();
        }
    }

    public boolean isAdjustMode() {
        return this.mAdjustMode;
    }

    public void setAdjustMode(boolean z) {
        this.mAdjustMode = z;
    }

    public CommonNavigatorAdapter getAdapter() {
        return this.mAdapter;
    }

    public void setAdapter(CommonNavigatorAdapter commonNavigatorAdapter) {
        CommonNavigatorAdapter commonNavigatorAdapter2 = this.mAdapter;
        if (commonNavigatorAdapter2 == commonNavigatorAdapter) {
            return;
        }
        if (commonNavigatorAdapter2 != null) {
            commonNavigatorAdapter2.unregisterDataSetObserver(this.mObserver);
        }
        this.mAdapter = commonNavigatorAdapter;
        CommonNavigatorAdapter commonNavigatorAdapter3 = this.mAdapter;
        if (commonNavigatorAdapter3 != null) {
            commonNavigatorAdapter3.registerDataSetObserver(this.mObserver);
            this.mNavigatorHelper.setTotalCount(this.mAdapter.getCount());
            if (this.mTitleContainer != null) {
                this.mAdapter.notifyDataSetChanged();
                return;
            }
            return;
        }
        this.mNavigatorHelper.setTotalCount(0);
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void init() {
        View viewInflate;
        removeAllViews();
        if (this.mAdjustMode) {
            viewInflate = LayoutInflater.from(getContext()).inflate(C1663R.layout.pager_navigator_layout_no_scroll, this);
        } else {
            viewInflate = LayoutInflater.from(getContext()).inflate(C1663R.layout.pager_navigator_layout, this);
        }
        this.mScrollView = (HorizontalScrollView) viewInflate.findViewById(C1663R.id.scroll_view);
        this.mTitleContainer = (LinearLayout) viewInflate.findViewById(C1663R.id.title_container);
        this.mTitleContainer.setPadding(this.mLeftPadding, 0, this.mRightPadding, 0);
        this.mIndicatorContainer = (LinearLayout) viewInflate.findViewById(C1663R.id.indicator_container);
        if (this.mIndicatorOnTop) {
            this.mIndicatorContainer.getParent().bringChildToFront(this.mIndicatorContainer);
        }
        initTitlesAndIndicator();
    }

    private void initTitlesAndIndicator() {
        LinearLayout.LayoutParams layoutParams;
        int totalCount = this.mNavigatorHelper.getTotalCount();
        for (int i = 0; i < totalCount; i++) {
            Object titleView = this.mAdapter.getTitleView(getContext(), i);
            if (titleView instanceof View) {
                View view = (View) titleView;
                if (this.mAdjustMode) {
                    layoutParams = new LinearLayout.LayoutParams(0, -1);
                    layoutParams.weight = this.mAdapter.getTitleWeight(getContext(), i);
                } else {
                    layoutParams = new LinearLayout.LayoutParams(-2, -1);
                }
                this.mTitleContainer.addView(view, layoutParams);
            }
        }
        CommonNavigatorAdapter commonNavigatorAdapter = this.mAdapter;
        if (commonNavigatorAdapter != null) {
            this.mIndicator = commonNavigatorAdapter.getIndicator(getContext());
            if (this.mIndicator instanceof View) {
                this.mIndicatorContainer.addView((View) this.mIndicator, new FrameLayout.LayoutParams(-1, -1));
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.mAdapter != null) {
            preparePositionData();
            IPagerIndicator iPagerIndicator = this.mIndicator;
            if (iPagerIndicator != null) {
                iPagerIndicator.onPositionDataProvide(this.mPositionDataList);
            }
            if (this.mReselectWhenLayout && this.mNavigatorHelper.getScrollState() == 0) {
                onPageSelected(this.mNavigatorHelper.getCurrentIndex());
                onPageScrolled(this.mNavigatorHelper.getCurrentIndex(), 0.0f, 0);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void preparePositionData() {
        this.mPositionDataList.clear();
        int totalCount = this.mNavigatorHelper.getTotalCount();
        for (int i = 0; i < totalCount; i++) {
            PositionData positionData = new PositionData();
            View childAt = this.mTitleContainer.getChildAt(i);
            if (childAt != 0) {
                positionData.mLeft = childAt.getLeft();
                positionData.mTop = childAt.getTop();
                positionData.mRight = childAt.getRight();
                positionData.mBottom = childAt.getBottom();
                if (childAt instanceof IMeasurablePagerTitleView) {
                    IMeasurablePagerTitleView iMeasurablePagerTitleView = (IMeasurablePagerTitleView) childAt;
                    positionData.mContentLeft = iMeasurablePagerTitleView.getContentLeft();
                    positionData.mContentTop = iMeasurablePagerTitleView.getContentTop();
                    positionData.mContentRight = iMeasurablePagerTitleView.getContentRight();
                    positionData.mContentBottom = iMeasurablePagerTitleView.getContentBottom();
                } else {
                    positionData.mContentLeft = positionData.mLeft;
                    positionData.mContentTop = positionData.mTop;
                    positionData.mContentRight = positionData.mRight;
                    positionData.mContentBottom = positionData.mBottom;
                }
            }
            this.mPositionDataList.add(positionData);
        }
    }

    @Override // net.lucode.hackware.magicindicator.abs.IPagerNavigator
    public void onPageScrolled(int i, float f, int i2) {
        if (this.mAdapter != null) {
            this.mNavigatorHelper.onPageScrolled(i, f, i2);
            IPagerIndicator iPagerIndicator = this.mIndicator;
            if (iPagerIndicator != null) {
                iPagerIndicator.onPageScrolled(i, f, i2);
            }
            if (this.mScrollView == null || this.mPositionDataList.size() <= 0 || i < 0 || i >= this.mPositionDataList.size()) {
                return;
            }
            if (this.mFollowTouch) {
                int iMin = Math.min(this.mPositionDataList.size() - 1, i);
                int iMin2 = Math.min(this.mPositionDataList.size() - 1, i + 1);
                PositionData positionData = this.mPositionDataList.get(iMin);
                PositionData positionData2 = this.mPositionDataList.get(iMin2);
                float fHorizontalCenter = positionData.horizontalCenter() - (this.mScrollView.getWidth() * this.mScrollPivotX);
                this.mScrollView.scrollTo((int) (fHorizontalCenter + (((positionData2.horizontalCenter() - (this.mScrollView.getWidth() * this.mScrollPivotX)) - fHorizontalCenter) * f)), 0);
                return;
            }
            boolean z = this.mEnablePivotScroll;
        }
    }

    public float getScrollPivotX() {
        return this.mScrollPivotX;
    }

    public void setScrollPivotX(float f) {
        this.mScrollPivotX = f;
    }

    @Override // net.lucode.hackware.magicindicator.abs.IPagerNavigator
    public void onPageSelected(int i) {
        if (this.mAdapter != null) {
            this.mNavigatorHelper.onPageSelected(i);
            IPagerIndicator iPagerIndicator = this.mIndicator;
            if (iPagerIndicator != null) {
                iPagerIndicator.onPageSelected(i);
            }
        }
    }

    @Override // net.lucode.hackware.magicindicator.abs.IPagerNavigator
    public void onPageScrollStateChanged(int i) {
        if (this.mAdapter != null) {
            this.mNavigatorHelper.onPageScrollStateChanged(i);
            IPagerIndicator iPagerIndicator = this.mIndicator;
            if (iPagerIndicator != null) {
                iPagerIndicator.onPageScrollStateChanged(i);
            }
        }
    }

    @Override // net.lucode.hackware.magicindicator.abs.IPagerNavigator
    public void onAttachToMagicIndicator() {
        init();
    }

    public IPagerIndicator getPagerIndicator() {
        return this.mIndicator;
    }

    public boolean isEnablePivotScroll() {
        return this.mEnablePivotScroll;
    }

    public void setEnablePivotScroll(boolean z) {
        this.mEnablePivotScroll = z;
    }

    @Override // net.lucode.hackware.magicindicator.NavigatorHelper.OnNavigatorScrollListener
    public void onEnter(int i, int i2, float f, boolean z) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i);
        if (childAt instanceof IPagerTitleView) {
            ((IPagerTitleView) childAt).onEnter(i, i2, f, z);
        }
    }

    @Override // net.lucode.hackware.magicindicator.NavigatorHelper.OnNavigatorScrollListener
    public void onLeave(int i, int i2, float f, boolean z) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i);
        if (childAt instanceof IPagerTitleView) {
            ((IPagerTitleView) childAt).onLeave(i, i2, f, z);
        }
    }

    public boolean isSmoothScroll() {
        return this.mSmoothScroll;
    }

    public void setSmoothScroll(boolean z) {
        this.mSmoothScroll = z;
    }

    public boolean isFollowTouch() {
        return this.mFollowTouch;
    }

    public void setFollowTouch(boolean z) {
        this.mFollowTouch = z;
    }

    public boolean isSkimOver() {
        return this.mSkimOver;
    }

    public void setSkimOver(boolean z) {
        this.mSkimOver = z;
        this.mNavigatorHelper.setSkimOver(z);
    }

    @Override // net.lucode.hackware.magicindicator.NavigatorHelper.OnNavigatorScrollListener
    public void onSelected(int i, int i2) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i);
        if (childAt instanceof IPagerTitleView) {
            ((IPagerTitleView) childAt).onSelected(i, i2);
        }
        if (this.mAdjustMode || this.mFollowTouch || this.mScrollView == null || this.mPositionDataList.size() <= 0) {
            return;
        }
        PositionData positionData = this.mPositionDataList.get(Math.min(this.mPositionDataList.size() - 1, i));
        if (this.mEnablePivotScroll) {
            float fHorizontalCenter = positionData.horizontalCenter() - (this.mScrollView.getWidth() * this.mScrollPivotX);
            if (this.mSmoothScroll) {
                this.mScrollView.smoothScrollTo((int) fHorizontalCenter, 0);
                return;
            } else {
                this.mScrollView.scrollTo((int) fHorizontalCenter, 0);
                return;
            }
        }
        if (this.mScrollView.getScrollX() > positionData.mLeft) {
            if (this.mSmoothScroll) {
                this.mScrollView.smoothScrollTo(positionData.mLeft, 0);
                return;
            } else {
                this.mScrollView.scrollTo(positionData.mLeft, 0);
                return;
            }
        }
        if (this.mScrollView.getScrollX() + getWidth() < positionData.mRight) {
            if (this.mSmoothScroll) {
                this.mScrollView.smoothScrollTo(positionData.mRight - getWidth(), 0);
            } else {
                this.mScrollView.scrollTo(positionData.mRight - getWidth(), 0);
            }
        }
    }

    @Override // net.lucode.hackware.magicindicator.NavigatorHelper.OnNavigatorScrollListener
    public void onDeselected(int i, int i2) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return;
        }
        KeyEvent.Callback childAt = linearLayout.getChildAt(i);
        if (childAt instanceof IPagerTitleView) {
            ((IPagerTitleView) childAt).onDeselected(i, i2);
        }
    }

    public IPagerTitleView getPagerTitleView(int i) {
        LinearLayout linearLayout = this.mTitleContainer;
        if (linearLayout == null) {
            return null;
        }
        return (IPagerTitleView) linearLayout.getChildAt(i);
    }

    public LinearLayout getTitleContainer() {
        return this.mTitleContainer;
    }

    public int getRightPadding() {
        return this.mRightPadding;
    }

    public void setRightPadding(int i) {
        this.mRightPadding = i;
    }

    public int getLeftPadding() {
        return this.mLeftPadding;
    }

    public void setLeftPadding(int i) {
        this.mLeftPadding = i;
    }

    public boolean isIndicatorOnTop() {
        return this.mIndicatorOnTop;
    }

    public void setIndicatorOnTop(boolean z) {
        this.mIndicatorOnTop = z;
    }

    public boolean isReselectWhenLayout() {
        return this.mReselectWhenLayout;
    }

    public void setReselectWhenLayout(boolean z) {
        this.mReselectWhenLayout = z;
    }
}
