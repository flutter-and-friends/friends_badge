package com.geek.banner;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.geek.banner.loader.BannerEntry;
import com.geek.banner.loader.BannerLoader;
import com.geek.banner.transformer.complex.AlphaPageTransformer;
import com.geek.banner.transformer.complex.NonPageTransformer;
import com.geek.banner.transformer.complex.RotateDownPageTransformer;
import com.geek.banner.transformer.complex.RotateUpPageTransformer;
import com.geek.banner.transformer.complex.RotateYTransformer;
import com.geek.banner.transformer.complex.ScaleInTransformer;
import com.geek.banner.transformer.complex.ScaleYTransformer;
import com.geek.banner.transformer.simple.AccordionTransformer;
import com.geek.banner.transformer.simple.BackgroundToForegroundTransformer;
import com.geek.banner.transformer.simple.CubeInTransformer;
import com.geek.banner.transformer.simple.CubeOutTransformer;
import com.geek.banner.transformer.simple.DefaultTransformer;
import com.geek.banner.transformer.simple.DepthPageTransformer;
import com.geek.banner.transformer.simple.FlipHorizontalTransformer;
import com.geek.banner.transformer.simple.FlipVerticalTransformer;
import com.geek.banner.transformer.simple.ForegroundToBackgroundTransformer;
import com.geek.banner.transformer.simple.RotateDownTransformer;
import com.geek.banner.transformer.simple.RotateUpTransformer;
import com.geek.banner.transformer.simple.ScaleInOutTransformer;
import com.geek.banner.transformer.simple.StackTransformer;
import com.geek.banner.transformer.simple.TabletTransformer;
import com.geek.banner.transformer.simple.ZoomInTransformer;
import com.geek.banner.transformer.simple.ZoomOutSlideTransformer;
import com.geek.banner.transformer.simple.ZoomOutTranformer;
import com.geek.banner.widget.BannerScroller;
import com.geek.banner.widget.BannerViewPager;
import com.geek.banner.widget.WeakHandler;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class Banner extends RelativeLayout implements ViewPager.OnPageChangeListener {
    public static final boolean DEBUG = false;
    public static final int MULTIPAGE_EXTRA_NUM = 4;
    public static final int NORMAL_EXTRA_NUM = 2;
    public static final String TAG = "banner";
    private List<BannerEntry> mBannerEntry;
    private ArrayList<View> mBannerItems;
    private BannerLoader mBannerLoader;
    private BannerPagerAdapter mBannerPagerAdapter;
    private OnBannerPagerChangedListener mBannerPagerChangedListener;
    private final Runnable mBannerPlayRunnable;
    private TextView mBannerText;
    private boolean mCanAutoPlay;
    private int mCurIndicatorIndex;
    private int mCurrentIndex;
    private int mDefaultBanner;
    private ImageView mDefaultImg;
    private int mExposeWidth;
    private int mIndicatorDefaultD;
    private int mIndicatorDefaultH;
    private int mIndicatorDefaultW;
    private LinearLayout mIndicatorLl;
    private int mIndicatorMarginBottom;
    private int mIndicatorSelectD;
    private int mIndicatorSelectedH;
    private int mIndicatorSelectedW;
    private int mIndicatorSpacing;
    private int mIntervalTime;
    private int mMultiTransform;
    private int mMzTransform;
    private int mNeedPagers;
    private OnBannerClickListener mOnBannerClickListener;
    private int mOverlapSize;
    private int mPageSpacing;
    private int mPagerScrollTime;
    private int mRealPagers;
    private boolean mShowIndicator;
    private int mShowModel;
    private int mSingleTransform;
    private BannerViewPager mViewPager;
    private WeakHandler mWeakHandler;

    public interface OnBannerClickListener {
        void onBannerClick(int i);
    }

    public interface OnBannerPagerChangedListener {
        void onPageScrollStateChanged(int i);

        void onPageScrolled(int i, float f, int i2);

        void onPageSelected(int i);
    }

    public static class OnBannerSimplePagerListener implements OnBannerPagerChangedListener {
        @Override // com.geek.banner.Banner.OnBannerPagerChangedListener
        public void onPageScrollStateChanged(int i) {
        }

        @Override // com.geek.banner.Banner.OnBannerPagerChangedListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // com.geek.banner.Banner.OnBannerPagerChangedListener
        public void onPageSelected(int i) {
        }
    }

    static /* synthetic */ int access$108(Banner banner) {
        int i = banner.mCurrentIndex;
        banner.mCurrentIndex = i + 1;
        return i;
    }

    public Banner(Context context) {
        this(context, null);
    }

    public Banner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Banner(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super(context, attributeSet, i);
        this.mWeakHandler = new WeakHandler();
        this.mBannerItems = new ArrayList<>();
        this.mBannerEntry = new ArrayList();
        this.mCurrentIndex = 1;
        this.mCurIndicatorIndex = 0;
        this.mBannerPlayRunnable = new Runnable() { // from class: com.geek.banner.Banner.1
            @Override // java.lang.Runnable
            public void run() {
                Banner.access$108(Banner.this);
                if (Banner.this.mShowModel == 2 || Banner.this.mShowModel == 3) {
                    if (Banner.this.mCurrentIndex == Banner.this.mNeedPagers - 1) {
                        Banner.this.mViewPager.setCurrentItem(2, false);
                        Banner.this.mWeakHandler.post(Banner.this.mBannerPlayRunnable);
                        return;
                    } else {
                        Banner.this.mViewPager.setCurrentItem(Banner.this.mCurrentIndex);
                        Banner.this.mWeakHandler.postDelayed(Banner.this.mBannerPlayRunnable, Banner.this.mIntervalTime);
                        return;
                    }
                }
                if (Banner.this.mCurrentIndex == Banner.this.mNeedPagers) {
                    Banner.this.mViewPager.setCurrentItem(1, false);
                    Banner.this.mWeakHandler.post(Banner.this.mBannerPlayRunnable);
                } else {
                    Banner.this.mViewPager.setCurrentItem(Banner.this.mCurrentIndex);
                    Banner.this.mWeakHandler.postDelayed(Banner.this.mBannerPlayRunnable, Banner.this.mIntervalTime);
                }
            }
        };
        inflate(context, C0931R.layout.merge_banner, this);
        initAttributes(context, attributeSet, i);
        initView();
        initViewPagerScroll();
    }

    private void initAttributes(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0931R.styleable.Banner);
        this.mCanAutoPlay = typedArrayObtainStyledAttributes.getBoolean(C0931R.styleable.Banner_banner_auto_play, true);
        this.mShowModel = typedArrayObtainStyledAttributes.getInteger(C0931R.styleable.Banner_banner_show_model, 1);
        this.mShowIndicator = typedArrayObtainStyledAttributes.getBoolean(C0931R.styleable.Banner_banner_show_indicator, true);
        this.mDefaultBanner = typedArrayObtainStyledAttributes.getResourceId(C0931R.styleable.Banner_banner_default_image, C0931R.drawable.no_banner);
        this.mIntervalTime = typedArrayObtainStyledAttributes.getInteger(C0931R.styleable.Banner_banner_interval_time, 3000);
        this.mPagerScrollTime = typedArrayObtainStyledAttributes.getInteger(C0931R.styleable.Banner_banner_scroll_time, 800);
        this.mExposeWidth = (int) typedArrayObtainStyledAttributes.getDimension(C0931R.styleable.Banner_banner_expose_width, 40.0f);
        this.mOverlapSize = (int) typedArrayObtainStyledAttributes.getDimension(C0931R.styleable.Banner_banner_mz_overlap, 10.0f);
        this.mPageSpacing = (int) typedArrayObtainStyledAttributes.getDimension(C0931R.styleable.Banner_banner_page_spacing, 10.0f);
        this.mIndicatorSelectedW = (int) typedArrayObtainStyledAttributes.getDimension(C0931R.styleable.Banner_indicator_select_width, dip2px(context, 8.0f));
        this.mIndicatorDefaultW = (int) typedArrayObtainStyledAttributes.getDimension(C0931R.styleable.Banner_indicator_default_width, dip2px(context, 8.0f));
        this.mIndicatorSelectedH = (int) typedArrayObtainStyledAttributes.getDimension(C0931R.styleable.Banner_indicator_select_height, dip2px(context, 8.0f));
        this.mIndicatorDefaultH = (int) typedArrayObtainStyledAttributes.getDimension(C0931R.styleable.Banner_indicator_default_height, dip2px(context, 8.0f));
        this.mIndicatorSpacing = (int) typedArrayObtainStyledAttributes.getDimension(C0931R.styleable.Banner_indicator_space, dip2px(context, 6.0f));
        this.mIndicatorMarginBottom = (int) typedArrayObtainStyledAttributes.getDimension(C0931R.styleable.Banner_indicator_margin_bottom, dip2px(context, 10.0f));
        this.mIndicatorSelectD = typedArrayObtainStyledAttributes.getResourceId(C0931R.styleable.Banner_indicator_select_drawable, C0931R.drawable.shape_banner_select_indicator);
        this.mIndicatorDefaultD = typedArrayObtainStyledAttributes.getResourceId(C0931R.styleable.Banner_indicator_default_drawable, C0931R.drawable.shape_banner_default_indicator);
        this.mSingleTransform = typedArrayObtainStyledAttributes.getInteger(C0931R.styleable.Banner_banner_single_anim, 0);
        this.mMultiTransform = typedArrayObtainStyledAttributes.getInteger(C0931R.styleable.Banner_banner_multi_anim, 0);
        this.mMzTransform = typedArrayObtainStyledAttributes.getInteger(C0931R.styleable.Banner_banner_mz_anim, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void initView() {
        this.mViewPager = (BannerViewPager) findViewById(C0931R.id.banner_vp);
        this.mIndicatorLl = (LinearLayout) findViewById(C0931R.id.indicator_ll);
        this.mDefaultImg = (ImageView) findViewById(C0931R.id.default_iv);
        this.mDefaultImg.setImageResource(this.mDefaultBanner);
        initIndicator();
        initMultiPage();
        initBannerTransformer();
    }

    private void initMultiPage() {
        if (this.mShowModel == 1) {
            return;
        }
        if (this.mExposeWidth < 0) {
            this.mExposeWidth = 0;
        }
        if (this.mPageSpacing < 0) {
            this.mPageSpacing = 0;
        }
        if (this.mOverlapSize < 0) {
            this.mOverlapSize = 0;
        }
        setClipChildren(false);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mViewPager.getLayoutParams();
        int i = this.mShowModel == 2 ? this.mExposeWidth + this.mPageSpacing : this.mExposeWidth;
        layoutParams.leftMargin = i;
        layoutParams.rightMargin = i;
        this.mViewPager.setLayoutParams(layoutParams);
        if (this.mShowModel == 3) {
            this.mViewPager.setEnableMzEffects(true);
        }
        setPagerMargin(this.mShowModel == 2 ? this.mPageSpacing : -this.mOverlapSize);
        setOffscreenPageLimit(2);
    }

    private void initIndicator() {
        if (this.mShowIndicator) {
            this.mIndicatorLl.setVisibility(0);
        }
        int iDip2px = dip2px(getContext(), 16.0f);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.mIndicatorLl.getLayoutParams();
        int i = this.mShowModel;
        if (i == 2) {
            int i2 = this.mExposeWidth;
            int i3 = this.mPageSpacing;
            layoutParams.leftMargin = i2 + i3 + iDip2px;
            layoutParams.rightMargin = i2 + i3 + iDip2px;
            layoutParams.bottomMargin = this.mIndicatorMarginBottom;
        } else if (i == 3) {
            int i4 = this.mExposeWidth;
            layoutParams.leftMargin = i4 + iDip2px;
            layoutParams.rightMargin = i4 + iDip2px;
            layoutParams.bottomMargin = this.mIndicatorMarginBottom;
        } else {
            layoutParams.leftMargin = iDip2px;
            layoutParams.rightMargin = iDip2px;
            layoutParams.bottomMargin = this.mIndicatorMarginBottom;
        }
        this.mIndicatorLl.setLayoutParams(layoutParams);
    }

    private void initViewPagerScroll() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            BannerScroller bannerScroller = new BannerScroller(this.mViewPager.getContext());
            bannerScroller.setDuration(this.mPagerScrollTime);
            declaredField.set(this.mViewPager, bannerScroller);
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }

    private void initBannerTransformer() {
        int i = this.mShowModel;
        if (i != 1) {
            if (i == 2) {
                int i2 = this.mMultiTransform;
                if (i2 == 0) {
                    setBannerTransformer(new AlphaPageTransformer());
                    return;
                }
                if (i2 == 1) {
                    setBannerTransformer(new NonPageTransformer());
                    return;
                }
                if (i2 == 2) {
                    setBannerTransformer(new RotateDownPageTransformer());
                    return;
                }
                if (i2 == 3) {
                    setBannerTransformer(new RotateUpPageTransformer());
                    return;
                } else if (i2 == 4) {
                    setBannerTransformer(new RotateYTransformer());
                    return;
                } else {
                    setBannerTransformer(new ScaleInTransformer());
                    return;
                }
            }
            int i3 = this.mMzTransform;
            if (i3 == 0) {
                setBannerTransformer(new RotateYTransformer());
                return;
            } else if (i3 == 1) {
                setBannerTransformer(new ScaleInTransformer());
                return;
            } else {
                setBannerTransformer(new ScaleYTransformer());
                return;
            }
        }
        int i4 = this.mSingleTransform;
        if (i4 == 0) {
            setBannerTransformer(new DefaultTransformer());
            return;
        }
        if (i4 == 1) {
            setBannerTransformer(new AccordionTransformer());
            return;
        }
        if (i4 == 2) {
            setBannerTransformer(new BackgroundToForegroundTransformer());
            return;
        }
        if (i4 == 3) {
            setBannerTransformer(new ForegroundToBackgroundTransformer());
            return;
        }
        if (i4 == 4) {
            setBannerTransformer(new CubeInTransformer());
            return;
        }
        if (i4 == 5) {
            setBannerTransformer(new CubeOutTransformer());
            return;
        }
        if (i4 == 6) {
            setBannerTransformer(new DepthPageTransformer());
            return;
        }
        if (i4 == 7) {
            setBannerTransformer(new FlipHorizontalTransformer());
            return;
        }
        if (i4 == 8) {
            setBannerTransformer(new FlipVerticalTransformer());
            return;
        }
        if (i4 == 9) {
            setBannerTransformer(new RotateDownTransformer());
            return;
        }
        if (i4 == 10) {
            setBannerTransformer(new RotateUpTransformer());
            return;
        }
        if (i4 == 11) {
            setBannerTransformer(new ScaleInOutTransformer());
            return;
        }
        if (i4 == 12) {
            setBannerTransformer(new StackTransformer());
            return;
        }
        if (i4 == 13) {
            setBannerTransformer(new TabletTransformer());
            return;
        }
        if (i4 == 14) {
            setBannerTransformer(new ZoomInTransformer());
        } else if (i4 == 15) {
            setBannerTransformer(new ZoomOutTranformer());
        } else {
            setBannerTransformer(new ZoomOutSlideTransformer());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.mCanAutoPlay) {
            int action = motionEvent.getAction();
            if (action == 1 || action == 3 || action == 4) {
                startAutoPlay();
            } else if (action == 0) {
                stopAutoPlay();
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setPagerMargin(int i) {
        if (this.mViewPager == null) {
            return;
        }
        int i2 = this.mShowModel;
        if (i2 == 2 || i2 == 3) {
            this.mViewPager.setPageMargin(i);
        }
    }

    public Banner setAutoPlay(boolean z) {
        this.mCanAutoPlay = z;
        return this;
    }

    public Banner setIntervalTime(int i) {
        this.mIntervalTime = i;
        return this;
    }

    public Banner setBannerLoader(BannerLoader bannerLoader) {
        this.mBannerLoader = bannerLoader;
        return this;
    }

    public Banner setBannerText(TextView textView) {
        this.mBannerText = textView;
        return this;
    }

    public Banner setOffscreenPageLimit(int i) {
        BannerViewPager bannerViewPager = this.mViewPager;
        if (bannerViewPager != null) {
            bannerViewPager.setOffscreenPageLimit(i);
        }
        return this;
    }

    public Banner setBannerTransformer(ViewPager.PageTransformer pageTransformer) {
        try {
            if (this.mViewPager != null) {
                this.mViewPager.setPageTransformer(true, pageTransformer);
            }
        } catch (Exception unused) {
            Log.e(TAG, "Please set the PageTransformer class");
        }
        return this;
    }

    public void loadImagePaths(List<? extends BannerEntry> list) {
        BannerPagerAdapter bannerPagerAdapter;
        if (!this.mBannerEntry.isEmpty()) {
            this.mWeakHandler.removeCallbacks(this.mBannerPlayRunnable);
            this.mBannerEntry.clear();
            this.mBannerItems.clear();
            this.mRealPagers = 0;
            this.mNeedPagers = 0;
            this.mCurIndicatorIndex = 0;
            if (this.mIntervalTime < 3000 && (bannerPagerAdapter = this.mBannerPagerAdapter) != null) {
                this.mViewPager.setAdapter(bannerPagerAdapter);
            }
        }
        View viewFindViewById = findViewById(C0931R.id.only_one_pager);
        if (viewFindViewById != null) {
            removeView(viewFindViewById);
        }
        this.mDefaultImg.setVisibility(8);
        if (list == null || list.isEmpty()) {
            this.mDefaultImg.setVisibility(0);
            return;
        }
        this.mRealPagers = list.size();
        if (list.size() == 1) {
            createOnlyOnePager(list.get(0));
            BannerPagerAdapter bannerPagerAdapter2 = this.mBannerPagerAdapter;
            if (bannerPagerAdapter2 != null) {
                bannerPagerAdapter2.notifyDataSetChanged();
                return;
            }
            return;
        }
        createDefaultIndicator(this.mRealPagers);
        int i = this.mShowModel;
        if (i == 2 || i == 3) {
            int i2 = this.mRealPagers;
            this.mNeedPagers = i2 + 4;
            this.mBannerEntry.add(list.get(i2 - 2));
            this.mBannerEntry.add(list.get(this.mRealPagers - 1));
            this.mBannerEntry.addAll(list);
            this.mBannerEntry.add(list.get(0));
            this.mBannerEntry.add(list.get(1));
        } else {
            int i3 = this.mRealPagers;
            this.mNeedPagers = i3 + 2;
            this.mBannerEntry.add(list.get(i3 - 1));
            this.mBannerEntry.addAll(list);
            this.mBannerEntry.add(list.get(0));
        }
        notifyBannerData();
    }

    private void notifyBannerData() {
        int i = this.mShowModel;
        if (i == 2 || i == 3) {
            this.mCurrentIndex = 2;
        } else {
            this.mCurrentIndex = 1;
        }
        if (this.mBannerPagerAdapter == null) {
            this.mBannerPagerAdapter = new BannerPagerAdapter();
            this.mViewPager.addOnPageChangeListener(this);
        }
        this.mViewPager.setAdapter(this.mBannerPagerAdapter);
        this.mViewPager.setFocusable(true);
        this.mViewPager.setCurrentItem(this.mCurrentIndex, false);
        if (this.mCanAutoPlay) {
            startAutoPlay();
        }
    }

    public int getBannerCurrentIndex() {
        return findRealPosition(this.mCurrentIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findRealPosition(int i) {
        int i2;
        int i3 = this.mShowModel;
        if (i3 == 2 || i3 == 3) {
            if (i == 1) {
                i2 = this.mRealPagers;
            } else {
                if (i == 2 || this.mNeedPagers - 2 == i) {
                    return 0;
                }
                return i - 2;
            }
        } else if (i == 0) {
            i2 = this.mRealPagers;
        } else {
            if (i == this.mNeedPagers - 1) {
                return 0;
            }
            return i - 1;
        }
        return i2 - 1;
    }

    public void startAutoPlay() {
        if (!this.mCanAutoPlay || this.mRealPagers <= 1) {
            return;
        }
        this.mWeakHandler.removeCallbacks(this.mBannerPlayRunnable);
        this.mWeakHandler.postDelayed(this.mBannerPlayRunnable, this.mIntervalTime);
    }

    public void stopAutoPlay() {
        if (!this.mCanAutoPlay || this.mRealPagers <= 1) {
            return;
        }
        this.mWeakHandler.removeCallbacks(this.mBannerPlayRunnable);
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        OnBannerPagerChangedListener onBannerPagerChangedListener = this.mBannerPagerChangedListener;
        if (onBannerPagerChangedListener != null) {
            onBannerPagerChangedListener.onPageScrollStateChanged(i);
        }
        if (i == 0 || i != 1) {
            return;
        }
        int i2 = this.mShowModel;
        if (i2 == 2 || i2 == 3) {
            int i3 = this.mCurrentIndex;
            if (i3 == 1) {
                this.mViewPager.setCurrentItem(this.mNeedPagers - 3, false);
                return;
            } else {
                if (i3 == this.mNeedPagers - 2) {
                    this.mViewPager.setCurrentItem(2, false);
                    return;
                }
                return;
            }
        }
        int i4 = this.mCurrentIndex;
        if (i4 == 0) {
            this.mViewPager.setCurrentItem(this.mNeedPagers - 2, false);
        } else if (i4 == this.mNeedPagers - 1) {
            this.mViewPager.setCurrentItem(1, false);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        OnBannerPagerChangedListener onBannerPagerChangedListener = this.mBannerPagerChangedListener;
        if (onBannerPagerChangedListener != null) {
            onBannerPagerChangedListener.onPageScrolled(findRealPosition(i), f, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        this.mCurrentIndex = i;
        setSelectedIndicator(findRealPosition(i));
        OnBannerPagerChangedListener onBannerPagerChangedListener = this.mBannerPagerChangedListener;
        if (onBannerPagerChangedListener != null) {
            onBannerPagerChangedListener.onPageSelected(findRealPosition(i));
        }
        TextView textView = this.mBannerText;
        if (textView != null) {
            textView.setText(this.mBannerEntry.get(i).getIndicatorText());
        }
    }

    private class BannerPagerAdapter extends PagerAdapter {
        @Override // androidx.viewpager.widget.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        private BannerPagerAdapter() {
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            return Banner.this.mBannerEntry.size();
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            if (Banner.this.mBannerLoader != null) {
                while (Banner.this.mBannerItems.size() <= i) {
                    Banner.this.mBannerItems.add(null);
                }
                View view = (View) Banner.this.mBannerItems.get(i);
                if (view == null) {
                    final int iFindRealPosition = Banner.this.findRealPosition(i);
                    View viewCreateView = Banner.this.mBannerLoader.createView(Banner.this.mViewPager.getContext(), iFindRealPosition);
                    Banner.this.mBannerLoader.loadView(Banner.this.mViewPager.getContext(), (BannerEntry) Banner.this.mBannerEntry.get(i), iFindRealPosition, viewCreateView);
                    Banner.this.mBannerItems.set(i, viewCreateView);
                    viewCreateView.setOnClickListener(new View.OnClickListener() { // from class: com.geek.banner.Banner.BannerPagerAdapter.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view2) {
                            if (Banner.this.mOnBannerClickListener != null) {
                                Banner.this.mOnBannerClickListener.onBannerClick(iFindRealPosition);
                            }
                        }
                    });
                    view = viewCreateView;
                }
                viewGroup.addView(view);
                return view;
            }
            throw new RuntimeException("[Banner] --> The mBannerLoader is not null");
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView((View) obj);
        }
    }

    private void createDefaultIndicator(int i) {
        if (this.mShowIndicator) {
            this.mIndicatorLl.removeAllViews();
            while (i > 0) {
                View view = new View(getContext());
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.mIndicatorDefaultW, this.mIndicatorDefaultH);
                layoutParams.setMargins(this.mIndicatorSpacing, 0, 0, 0);
                view.setLayoutParams(layoutParams);
                view.setBackgroundResource(this.mIndicatorDefaultD);
                this.mIndicatorLl.addView(view);
                i--;
            }
        }
    }

    private void setSelectedIndicator(int i) {
        int childCount;
        int i2;
        if (this.mShowIndicator && i <= this.mIndicatorLl.getChildCount() - 1 && (i2 = this.mCurIndicatorIndex) <= childCount) {
            View childAt = this.mIndicatorLl.getChildAt(i2);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            layoutParams.width = this.mIndicatorDefaultW;
            layoutParams.height = this.mIndicatorDefaultH;
            childAt.setLayoutParams(layoutParams);
            childAt.setBackgroundResource(this.mIndicatorDefaultD);
            View childAt2 = this.mIndicatorLl.getChildAt(i);
            ViewGroup.LayoutParams layoutParams2 = childAt2.getLayoutParams();
            layoutParams2.width = this.mIndicatorSelectedW;
            layoutParams2.height = this.mIndicatorSelectedH;
            childAt2.setLayoutParams(layoutParams2);
            childAt2.setBackgroundResource(this.mIndicatorSelectD);
            this.mCurIndicatorIndex = i;
        }
    }

    private void createOnlyOnePager(BannerEntry bannerEntry) {
        View viewCreateView = this.mBannerLoader.createView(this.mViewPager.getContext(), 0);
        this.mBannerLoader.loadView(this.mViewPager.getContext(), bannerEntry, 0, viewCreateView);
        viewCreateView.setOnClickListener(new View.OnClickListener() { // from class: com.geek.banner.Banner.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Banner.this.mOnBannerClickListener != null) {
                    Banner.this.mOnBannerClickListener.onBannerClick(0);
                }
            }
        });
        viewCreateView.setId(C0931R.id.only_one_pager);
        addView(viewCreateView, new RelativeLayout.LayoutParams(-1, -1));
    }

    public static int dip2px(Context context, float f) {
        return (int) ((f * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int px2dip(Context context, float f) {
        return (int) ((f / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setOnBannerClickListener(OnBannerClickListener onBannerClickListener) {
        this.mOnBannerClickListener = onBannerClickListener;
    }

    public void setBannerPagerChangedListener(OnBannerPagerChangedListener onBannerPagerChangedListener) {
        this.mBannerPagerChangedListener = onBannerPagerChangedListener;
    }
}
