package devlight.p018io.library.ntb;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.widget.Scroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import androidx.viewpager.widget.ViewPager;
import com.gigamole.navigationtabbar.C1048R;
import devlight.p018io.library.behavior.NavigationTabBarBehavior;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/* loaded from: classes2.dex */
public class NavigationTabBar extends View implements ViewPager.OnPageChangeListener {
    public static final int AUTO_COLOR = -3;
    public static final int AUTO_SCALE = -4;
    public static final int AUTO_SIZE = -2;
    protected static final float BADGE_HORIZONTAL_FRACTION = 0.5f;
    protected static final float BADGE_TITLE_SIZE_FRACTION = 0.9f;
    protected static final float BADGE_VERTICAL_FRACTION = 0.75f;
    protected static final float CENTER_FRACTION = 0.5f;
    protected static final int DEFAULT_ACTIVE_COLOR = -1;
    protected static final int DEFAULT_ANIMATION_DURATION = 300;
    protected static final int DEFAULT_BADGE_ANIMATION_DURATION = 200;
    protected static final int DEFAULT_BADGE_REFRESH_ANIMATION_DURATION = 100;
    protected static final float DEFAULT_ICON_SIZE_FRACTION = 0.5f;
    protected static final float DEFAULT_TITLE_ICON_SIZE_FRACTION = 0.5f;
    protected static final int FLAGS = 7;
    protected static final int INVALID_INDEX = -1;
    protected static final float LEFT_FRACTION = 0.25f;
    protected static final int MAX_ALPHA = 255;
    protected static final float MAX_FRACTION = 1.0f;
    protected static final int MIN_ALPHA = 0;
    protected static final float MIN_FRACTION = 0.0f;
    protected static final String PREVIEW_BADGE = "0";
    protected static final String PREVIEW_TITLE = "Title";
    protected static final float RIGHT_FRACTION = 0.75f;
    protected static final float SCALED_FRACTION = 0.3f;
    protected static final float TITLE_ACTIVE_ICON_SCALE_BY = 0.2f;
    protected static final float TITLE_ACTIVE_SCALE_BY = 0.2f;
    protected static final float TITLE_MARGIN_FRACTION = 0.15f;
    protected static final float TITLE_MARGIN_SCALE_FRACTION = 0.25f;
    protected static final float TITLE_SIZE_FRACTION = 0.2f;
    protected int mActiveColor;
    protected boolean mAnimateHide;
    protected int mAnimationDuration;
    protected final ValueAnimator mAnimator;
    protected Animator.AnimatorListener mAnimatorListener;
    protected int mBadgeBgColor;
    protected final Rect mBadgeBounds;
    protected BadgeGravity mBadgeGravity;
    protected float mBadgeMargin;
    protected final Paint mBadgePaint;
    protected BadgePosition mBadgePosition;
    protected int mBadgeTitleColor;
    protected float mBadgeTitleSize;
    protected NavigationTabBarBehavior mBehavior;
    protected boolean mBehaviorEnabled;
    protected final RectF mBgBadgeBounds;
    protected final RectF mBgBounds;
    protected int mBgColor;
    protected final Paint mBgPaint;
    protected Bitmap mBitmap;
    protected final RectF mBounds;
    protected final Canvas mCanvas;
    protected float mCornersRadius;
    protected float mEndPointerX;
    protected float mFraction;
    protected final Paint mIconPaint;
    protected final Paint mIconPointerPaint;
    protected float mIconSize;
    protected float mIconSizeFraction;
    protected Bitmap mIconsBitmap;
    protected final Canvas mIconsCanvas;
    protected int mInactiveColor;
    protected int mIndex;
    protected boolean mIsActionDown;
    protected boolean mIsBadgeUseTypeface;
    protected boolean mIsBadged;
    protected boolean mIsBehaviorSet;
    protected boolean mIsHorizontalOrientation;
    protected boolean mIsPointerActionDown;
    protected boolean mIsResizeIn;
    protected boolean mIsScaled;
    protected boolean mIsSetIndexFromTabBar;
    protected boolean mIsSwiped;
    protected boolean mIsTinted;
    protected boolean mIsTitled;
    protected boolean mIsViewPagerMode;
    protected int mLastIndex;
    protected float mModelSize;
    protected final Paint mModelTitlePaint;
    protected float mModelTitleSize;
    protected final List<Model> mModels;
    protected boolean mNeedHide;
    protected ViewPager.OnPageChangeListener mOnPageChangeListener;
    protected OnTabBarSelectedIndexListener mOnTabBarSelectedIndexListener;
    protected final Paint mPaint;
    protected Bitmap mPointerBitmap;
    protected final RectF mPointerBounds;
    protected final Canvas mPointerCanvas;
    protected float mPointerLeftTop;
    protected final Paint mPointerPaint;
    protected float mPointerRightBottom;
    protected final ResizeInterpolator mResizeInterpolator;
    protected int mScrollState;
    protected final Paint mSelectedIconPaint;
    protected float mStartPointerX;
    protected float mTitleMargin;
    protected TitleMode mTitleMode;
    protected Bitmap mTitlesBitmap;
    protected final Canvas mTitlesCanvas;
    protected Typeface mTypeface;
    protected ViewPager mViewPager;
    protected static final int DEFAULT_INACTIVE_COLOR = Color.parseColor("#9f90af");
    protected static final int DEFAULT_BG_COLOR = Color.parseColor("#605271");
    protected static final Interpolator DECELERATE_INTERPOLATOR = new DecelerateInterpolator();
    protected static final Interpolator ACCELERATE_INTERPOLATOR = new AccelerateInterpolator();
    protected static final Interpolator OUT_SLOW_IN_INTERPOLATOR = new LinearOutSlowInInterpolator();

    public enum BadgeGravity {
        TOP,
        BOTTOM;

        public static final int BOTTOM_INDEX = 1;
        public static final int TOP_INDEX = 0;
    }

    public interface OnTabBarSelectedIndexListener {
        void onEndTabSelected(Model model, int i);

        void onStartTabSelected(Model model, int i);
    }

    public enum TitleMode {
        ALL,
        ACTIVE;

        public static final int ACTIVE_INDEX = 1;
        public static final int ALL_INDEX = 0;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
    }

    public NavigationTabBar(Context context) {
        this(context, null);
    }

    public NavigationTabBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NavigationTabBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mBounds = new RectF();
        this.mBgBounds = new RectF();
        this.mPointerBounds = new RectF();
        this.mBadgeBounds = new Rect();
        this.mBgBadgeBounds = new RectF();
        this.mCanvas = new Canvas();
        this.mIconsCanvas = new Canvas();
        this.mTitlesCanvas = new Canvas();
        this.mPointerCanvas = new Canvas();
        int i2 = 7;
        this.mPaint = new Paint(i2) { // from class: devlight.io.library.ntb.NavigationTabBar.1
            {
                setStyle(Paint.Style.FILL);
            }
        };
        this.mBgPaint = new Paint(i2) { // from class: devlight.io.library.ntb.NavigationTabBar.2
            {
                setStyle(Paint.Style.FILL);
            }
        };
        this.mPointerPaint = new Paint(i2) { // from class: devlight.io.library.ntb.NavigationTabBar.3
            {
                setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
            }
        };
        this.mIconPaint = new Paint(7);
        this.mSelectedIconPaint = new Paint(7);
        this.mIconPointerPaint = new Paint(i2) { // from class: devlight.io.library.ntb.NavigationTabBar.4
            {
                setStyle(Paint.Style.FILL);
                setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
            }
        };
        this.mModelTitlePaint = new TextPaint(i2) { // from class: devlight.io.library.ntb.NavigationTabBar.5
            {
                setColor(-1);
                setTextAlign(Paint.Align.CENTER);
            }
        };
        this.mBadgePaint = new TextPaint(i2) { // from class: devlight.io.library.ntb.NavigationTabBar.6
            {
                setTextAlign(Paint.Align.CENTER);
                setFakeBoldText(true);
            }
        };
        this.mAnimator = new ValueAnimator();
        this.mResizeInterpolator = new ResizeInterpolator();
        this.mModels = new ArrayList();
        this.mModelTitleSize = -2.0f;
        this.mBadgeTitleSize = -2.0f;
        this.mBadgeTitleColor = -3;
        this.mBadgeBgColor = -3;
        this.mLastIndex = -1;
        this.mIndex = -1;
        int i3 = 0;
        setWillNotDraw(false);
        ViewCompat.setLayerType(this, 1, null);
        setLayerType(1, null);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1048R.styleable.NavigationTabBar);
        try {
            setIsTitled(typedArrayObtainStyledAttributes.getBoolean(C1048R.styleable.NavigationTabBar_ntb_titled, false));
            setIsBadged(typedArrayObtainStyledAttributes.getBoolean(C1048R.styleable.NavigationTabBar_ntb_badged, false));
            setIsScaled(typedArrayObtainStyledAttributes.getBoolean(C1048R.styleable.NavigationTabBar_ntb_scaled, true));
            setIsTinted(typedArrayObtainStyledAttributes.getBoolean(C1048R.styleable.NavigationTabBar_ntb_tinted, true));
            setIsSwiped(typedArrayObtainStyledAttributes.getBoolean(C1048R.styleable.NavigationTabBar_ntb_swiped, true));
            setTitleSize(typedArrayObtainStyledAttributes.getDimension(C1048R.styleable.NavigationTabBar_ntb_title_size, -2.0f));
            setIsBadgeUseTypeface(typedArrayObtainStyledAttributes.getBoolean(C1048R.styleable.NavigationTabBar_ntb_badge_use_typeface, false));
            setTitleMode(typedArrayObtainStyledAttributes.getInt(C1048R.styleable.NavigationTabBar_ntb_title_mode, 0));
            setBadgeSize(typedArrayObtainStyledAttributes.getDimension(C1048R.styleable.NavigationTabBar_ntb_badge_size, -2.0f));
            setBadgePosition(typedArrayObtainStyledAttributes.getInt(C1048R.styleable.NavigationTabBar_ntb_badge_position, 2));
            setBadgeGravity(typedArrayObtainStyledAttributes.getInt(C1048R.styleable.NavigationTabBar_ntb_badge_gravity, 0));
            setBadgeBgColor(typedArrayObtainStyledAttributes.getColor(C1048R.styleable.NavigationTabBar_ntb_badge_bg_color, -3));
            setBadgeTitleColor(typedArrayObtainStyledAttributes.getColor(C1048R.styleable.NavigationTabBar_ntb_badge_title_color, -3));
            setTypeface(typedArrayObtainStyledAttributes.getString(C1048R.styleable.NavigationTabBar_ntb_typeface));
            setInactiveColor(typedArrayObtainStyledAttributes.getColor(C1048R.styleable.NavigationTabBar_ntb_inactive_color, DEFAULT_INACTIVE_COLOR));
            setActiveColor(typedArrayObtainStyledAttributes.getColor(C1048R.styleable.NavigationTabBar_ntb_active_color, -1));
            setBgColor(typedArrayObtainStyledAttributes.getColor(C1048R.styleable.NavigationTabBar_ntb_bg_color, DEFAULT_BG_COLOR));
            setAnimationDuration(typedArrayObtainStyledAttributes.getInteger(C1048R.styleable.NavigationTabBar_ntb_animation_duration, DEFAULT_ANIMATION_DURATION));
            setCornersRadius(typedArrayObtainStyledAttributes.getDimension(C1048R.styleable.NavigationTabBar_ntb_corners_radius, 0.0f));
            setIconSizeFraction(typedArrayObtainStyledAttributes.getFloat(C1048R.styleable.NavigationTabBar_ntb_icon_size_fraction, -4.0f));
            this.mAnimator.setFloatValues(0.0f, 1.0f);
            this.mAnimator.setInterpolator(new LinearInterpolator());
            this.mAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: devlight.io.library.ntb.NavigationTabBar.7
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    NavigationTabBar.this.updateIndicatorPosition(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
            try {
                if (isInEditMode()) {
                    try {
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C1048R.styleable.NavigationTabBar_ntb_preview_colors, 0);
                        String[] stringArray = resourceId == 0 ? null : typedArrayObtainStyledAttributes.getResources().getStringArray(resourceId);
                        stringArray = stringArray == null ? typedArrayObtainStyledAttributes.getResources().getStringArray(C1048R.array.default_preview) : stringArray;
                        int length = stringArray.length;
                        while (i3 < length) {
                            this.mModels.add(new Model.Builder(null, Color.parseColor(stringArray[i3])).build());
                            i3++;
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                        String[] stringArray2 = typedArrayObtainStyledAttributes.getResources().getStringArray(C1048R.array.default_preview);
                        int length2 = stringArray2.length;
                        while (i3 < length2) {
                            this.mModels.add(new Model.Builder(null, Color.parseColor(stringArray2[i3])).build());
                            i3++;
                        }
                    }
                    requestLayout();
                }
            } catch (Throwable th) {
                String[] stringArray3 = typedArrayObtainStyledAttributes.getResources().getStringArray(C1048R.array.default_preview);
                int length3 = stringArray3.length;
                while (i3 < length3) {
                    this.mModels.add(new Model.Builder(null, Color.parseColor(stringArray3[i3])).build());
                    i3++;
                }
                requestLayout();
                throw th;
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public int getAnimationDuration() {
        return this.mAnimationDuration;
    }

    public void setAnimationDuration(int i) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        this.mAnimationDuration = i;
        this.mAnimator.setDuration(this.mAnimationDuration);
        resetScroller();
    }

    public List<Model> getModels() {
        return this.mModels;
    }

    public void setModels(List<Model> list) {
        for (final Model model : list) {
            model.mBadgeAnimator.removeAllUpdateListeners();
            model.mBadgeAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: devlight.io.library.ntb.NavigationTabBar.8
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    model.mBadgeFraction = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    NavigationTabBar.this.postInvalidate();
                }
            });
        }
        this.mModels.clear();
        this.mModels.addAll(list);
        requestLayout();
    }

    public boolean isTitled() {
        return this.mIsTitled;
    }

    public void setIsTitled(boolean z) {
        this.mIsTitled = z;
        requestLayout();
    }

    public boolean isBadged() {
        return this.mIsBadged;
    }

    public void setIsBadged(boolean z) {
        this.mIsBadged = z;
        requestLayout();
    }

    public boolean isScaled() {
        return this.mIsScaled;
    }

    public void setIsScaled(boolean z) {
        this.mIsScaled = z;
        requestLayout();
    }

    public boolean isTinted() {
        return this.mIsTinted;
    }

    public void setIsTinted(boolean z) {
        this.mIsTinted = z;
        updateTint();
    }

    public boolean isSwiped() {
        return this.mIsSwiped;
    }

    public void setIsSwiped(boolean z) {
        this.mIsSwiped = z;
    }

    public float getTitleSize() {
        return this.mModelTitleSize;
    }

    public void setTitleSize(float f) {
        this.mModelTitleSize = f;
        if (f == -2.0f) {
            requestLayout();
        }
    }

    public boolean isBadgeUseTypeface() {
        return this.mIsBadgeUseTypeface;
    }

    public void setIsBadgeUseTypeface(boolean z) {
        this.mIsBadgeUseTypeface = z;
        setBadgeTypeface();
        postInvalidate();
    }

    public TitleMode getTitleMode() {
        return this.mTitleMode;
    }

    protected void setTitleMode(int i) {
        if (i == 1) {
            setTitleMode(TitleMode.ACTIVE);
        } else {
            setTitleMode(TitleMode.ALL);
        }
    }

    public void setTitleMode(TitleMode titleMode) {
        this.mTitleMode = titleMode;
        postInvalidate();
    }

    public BadgePosition getBadgePosition() {
        return this.mBadgePosition;
    }

    protected void setBadgePosition(int i) {
        if (i == 0) {
            setBadgePosition(BadgePosition.LEFT);
        } else if (i == 1) {
            setBadgePosition(BadgePosition.CENTER);
        } else {
            setBadgePosition(BadgePosition.RIGHT);
        }
    }

    public void setBadgePosition(BadgePosition badgePosition) {
        this.mBadgePosition = badgePosition;
        postInvalidate();
    }

    public BadgeGravity getBadgeGravity() {
        return this.mBadgeGravity;
    }

    protected void setBadgeGravity(int i) {
        if (i == 1) {
            setBadgeGravity(BadgeGravity.BOTTOM);
        } else {
            setBadgeGravity(BadgeGravity.TOP);
        }
    }

    public void setBadgeGravity(BadgeGravity badgeGravity) {
        this.mBadgeGravity = badgeGravity;
        requestLayout();
    }

    public int getBadgeBgColor() {
        return this.mBadgeBgColor;
    }

    public void setBadgeBgColor(int i) {
        this.mBadgeBgColor = i;
    }

    public int getBadgeTitleColor() {
        return this.mBadgeTitleColor;
    }

    public void setBadgeTitleColor(int i) {
        this.mBadgeTitleColor = i;
    }

    public float getBadgeSize() {
        return this.mBadgeTitleSize;
    }

    public void setBadgeSize(float f) {
        this.mBadgeTitleSize = f;
        if (this.mBadgeTitleSize == -2.0f) {
            requestLayout();
        }
    }

    public Typeface getTypeface() {
        return this.mTypeface;
    }

    public void setTypeface(String str) {
        Typeface typefaceCreateFromAsset;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            typefaceCreateFromAsset = Typeface.createFromAsset(getContext().getAssets(), str);
        } catch (Exception e) {
            Typeface typefaceCreate = Typeface.create(Typeface.DEFAULT, 0);
            e.printStackTrace();
            typefaceCreateFromAsset = typefaceCreate;
        }
        setTypeface(typefaceCreateFromAsset);
    }

    public void setTypeface(Typeface typeface) {
        this.mTypeface = typeface;
        this.mModelTitlePaint.setTypeface(typeface);
        setBadgeTypeface();
        postInvalidate();
    }

    protected void setBadgeTypeface() {
        this.mBadgePaint.setTypeface(this.mIsBadgeUseTypeface ? this.mTypeface : Typeface.create(Typeface.DEFAULT, 0));
    }

    public int getActiveColor() {
        return this.mActiveColor;
    }

    public void setActiveColor(int i) {
        this.mActiveColor = i;
        this.mIconPointerPaint.setColor(this.mActiveColor);
        updateTint();
    }

    public int getInactiveColor() {
        return this.mInactiveColor;
    }

    public void setInactiveColor(int i) {
        this.mInactiveColor = i;
        this.mModelTitlePaint.setColor(this.mInactiveColor);
        updateTint();
    }

    public int getBgColor() {
        return this.mBgColor;
    }

    public void setBgColor(int i) {
        this.mBgColor = i;
        this.mBgPaint.setColor(this.mBgColor);
        postInvalidate();
    }

    public float getCornersRadius() {
        return this.mCornersRadius;
    }

    public void setCornersRadius(float f) {
        this.mCornersRadius = f;
        postInvalidate();
    }

    public float getIconSizeFraction() {
        return this.mIconSizeFraction;
    }

    public void setIconSizeFraction(float f) {
        this.mIconSizeFraction = f;
        requestLayout();
    }

    public float getBadgeMargin() {
        return this.mBadgeMargin;
    }

    public float getBarHeight() {
        return this.mBounds.height();
    }

    public OnTabBarSelectedIndexListener getOnTabBarSelectedIndexListener() {
        return this.mOnTabBarSelectedIndexListener;
    }

    public void setOnTabBarSelectedIndexListener(OnTabBarSelectedIndexListener onTabBarSelectedIndexListener) {
        this.mOnTabBarSelectedIndexListener = onTabBarSelectedIndexListener;
        if (this.mAnimatorListener == null) {
            this.mAnimatorListener = new AnimatorListenerAdapter() { // from class: devlight.io.library.ntb.NavigationTabBar.9
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    if (NavigationTabBar.this.mOnTabBarSelectedIndexListener != null) {
                        NavigationTabBar.this.mOnTabBarSelectedIndexListener.onStartTabSelected(NavigationTabBar.this.mModels.get(NavigationTabBar.this.mIndex), NavigationTabBar.this.mIndex);
                    }
                    animator.removeListener(this);
                    animator.addListener(this);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (NavigationTabBar.this.mIsViewPagerMode) {
                        return;
                    }
                    animator.removeListener(this);
                    animator.addListener(this);
                    if (NavigationTabBar.this.mOnTabBarSelectedIndexListener != null) {
                        NavigationTabBar.this.mOnTabBarSelectedIndexListener.onEndTabSelected(NavigationTabBar.this.mModels.get(NavigationTabBar.this.mIndex), NavigationTabBar.this.mIndex);
                    }
                }
            };
        }
        this.mAnimator.removeListener(this.mAnimatorListener);
        this.mAnimator.addListener(this.mAnimatorListener);
    }

    public void setViewPager(ViewPager viewPager) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (viewPager == null) {
            this.mIsViewPagerMode = false;
            return;
        }
        if (viewPager.equals(this.mViewPager)) {
            return;
        }
        ViewPager viewPager2 = this.mViewPager;
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not provide adapter instance.");
        }
        this.mIsViewPagerMode = true;
        this.mViewPager = viewPager;
        this.mViewPager.removeOnPageChangeListener(this);
        this.mViewPager.addOnPageChangeListener(this);
        resetScroller();
        postInvalidate();
    }

    public void setViewPager(ViewPager viewPager, int i) throws IllegalAccessException, NoSuchFieldException, Resources.NotFoundException, IllegalArgumentException {
        setViewPager(viewPager);
        this.mIndex = i;
        if (this.mIsViewPagerMode) {
            this.mViewPager.setCurrentItem(i, true);
        }
        postInvalidate();
    }

    protected void resetScroller() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        if (this.mViewPager == null) {
            return;
        }
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mScroller");
            declaredField.setAccessible(true);
            declaredField.set(this.mViewPager, new ResizeViewPagerScroller(getContext()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.mOnPageChangeListener = onPageChangeListener;
    }

    public boolean isBehaviorEnabled() {
        return this.mBehaviorEnabled;
    }

    public void setBehaviorEnabled(boolean z) {
        this.mBehaviorEnabled = z;
        if (getParent() == null || !(getParent() instanceof CoordinatorLayout)) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        NavigationTabBarBehavior navigationTabBarBehavior = this.mBehavior;
        if (navigationTabBarBehavior == null) {
            this.mBehavior = new NavigationTabBarBehavior(z);
        } else {
            navigationTabBarBehavior.setBehaviorTranslationEnabled(z);
        }
        ((CoordinatorLayout.LayoutParams) layoutParams).setBehavior(this.mBehavior);
        if (this.mNeedHide) {
            this.mNeedHide = false;
            this.mBehavior.hideView(this, (int) getBarHeight(), this.mAnimateHide);
        }
    }

    public int getModelIndex() {
        return this.mIndex;
    }

    public void setModelIndex(int i) throws Resources.NotFoundException {
        setModelIndex(i, false);
    }

    public void setModelIndex(int i, boolean z) throws Resources.NotFoundException {
        if (this.mAnimator.isRunning() || this.mModels.isEmpty()) {
            return;
        }
        if (this.mIndex == -1) {
            z = true;
        }
        if (i == this.mIndex) {
            z = true;
        }
        int iMax = Math.max(0, Math.min(i, this.mModels.size() - 1));
        this.mIsResizeIn = iMax < this.mIndex;
        this.mLastIndex = this.mIndex;
        this.mIndex = iMax;
        this.mIsSetIndexFromTabBar = true;
        if (this.mIsViewPagerMode) {
            ViewPager viewPager = this.mViewPager;
            if (viewPager == null) {
                throw new IllegalStateException("ViewPager is null.");
            }
            viewPager.setCurrentItem(iMax, !z);
        }
        if (z) {
            this.mStartPointerX = this.mIndex * this.mModelSize;
            this.mEndPointerX = this.mStartPointerX;
        } else {
            this.mStartPointerX = this.mPointerLeftTop;
            this.mEndPointerX = this.mIndex * this.mModelSize;
        }
        if (z) {
            updateIndicatorPosition(1.0f);
            OnTabBarSelectedIndexListener onTabBarSelectedIndexListener = this.mOnTabBarSelectedIndexListener;
            if (onTabBarSelectedIndexListener != null) {
                onTabBarSelectedIndexListener.onStartTabSelected(this.mModels.get(this.mIndex), this.mIndex);
            }
            if (this.mIsViewPagerMode) {
                if (!this.mViewPager.isFakeDragging()) {
                    this.mViewPager.beginFakeDrag();
                }
                if (this.mViewPager.isFakeDragging()) {
                    this.mViewPager.fakeDragBy(0.0f);
                }
                if (this.mViewPager.isFakeDragging()) {
                    this.mViewPager.endFakeDrag();
                    return;
                }
                return;
            }
            OnTabBarSelectedIndexListener onTabBarSelectedIndexListener2 = this.mOnTabBarSelectedIndexListener;
            if (onTabBarSelectedIndexListener2 != null) {
                onTabBarSelectedIndexListener2.onEndTabSelected(this.mModels.get(this.mIndex), this.mIndex);
                return;
            }
            return;
        }
        this.mAnimator.start();
    }

    public void deselect() {
        this.mLastIndex = -1;
        this.mIndex = -1;
        this.mStartPointerX = this.mModelSize * (-1.0f);
        this.mEndPointerX = this.mStartPointerX;
        updateIndicatorPosition(0.0f);
    }

    protected void updateIndicatorPosition(float f) {
        this.mFraction = f;
        float f2 = this.mStartPointerX;
        float resizeInterpolation = this.mResizeInterpolator.getResizeInterpolation(f, this.mIsResizeIn);
        float f3 = this.mEndPointerX;
        float f4 = this.mStartPointerX;
        this.mPointerLeftTop = f2 + (resizeInterpolation * (f3 - f4));
        this.mPointerRightBottom = f4 + this.mModelSize + (this.mResizeInterpolator.getResizeInterpolation(f, !this.mIsResizeIn) * (this.mEndPointerX - this.mStartPointerX));
        postInvalidate();
    }

    protected void notifyDataSetChanged() {
        requestLayout();
        postInvalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0043, code lost:
    
        if (r4.mIsActionDown != false) goto L46;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r5) throws android.content.res.Resources.NotFoundException {
        /*
            r4 = this;
            android.animation.ValueAnimator r0 = r4.mAnimator
            boolean r0 = r0.isRunning()
            r1 = 1
            if (r0 == 0) goto La
            return r1
        La:
            int r0 = r4.mScrollState
            if (r0 == 0) goto Lf
            return r1
        Lf:
            int r0 = r5.getAction()
            r2 = 0
            if (r0 == 0) goto L6d
            if (r0 == r1) goto L46
            r3 = 2
            if (r0 == r3) goto L1c
            goto L68
        L1c:
            boolean r0 = r4.mIsPointerActionDown
            if (r0 == 0) goto L41
            boolean r0 = r4.mIsHorizontalOrientation
            if (r0 == 0) goto L33
            androidx.viewpager.widget.ViewPager r0 = r4.mViewPager
            float r5 = r5.getX()
            float r2 = r4.mModelSize
            float r5 = r5 / r2
            int r5 = (int) r5
            r0.setCurrentItem(r5, r1)
            goto L9c
        L33:
            androidx.viewpager.widget.ViewPager r0 = r4.mViewPager
            float r5 = r5.getY()
            float r2 = r4.mModelSize
            float r5 = r5 / r2
            int r5 = (int) r5
            r0.setCurrentItem(r5, r1)
            goto L9c
        L41:
            boolean r0 = r4.mIsActionDown
            if (r0 == 0) goto L46
            goto L9c
        L46:
            boolean r0 = r4.mIsActionDown
            if (r0 == 0) goto L68
            r4.playSoundEffect(r2)
            boolean r0 = r4.mIsHorizontalOrientation
            if (r0 == 0) goto L5d
            float r5 = r5.getX()
            float r0 = r4.mModelSize
            float r5 = r5 / r0
            int r5 = (int) r5
            r4.setModelIndex(r5)
            goto L68
        L5d:
            float r5 = r5.getY()
            float r0 = r4.mModelSize
            float r5 = r5 / r0
            int r5 = (int) r5
            r4.setModelIndex(r5)
        L68:
            r4.mIsPointerActionDown = r2
            r4.mIsActionDown = r2
            goto L9c
        L6d:
            r4.mIsActionDown = r1
            boolean r0 = r4.mIsViewPagerMode
            if (r0 != 0) goto L74
            goto L9c
        L74:
            boolean r0 = r4.mIsSwiped
            if (r0 != 0) goto L79
            goto L9c
        L79:
            boolean r0 = r4.mIsHorizontalOrientation
            if (r0 == 0) goto L8d
            float r5 = r5.getX()
            float r0 = r4.mModelSize
            float r5 = r5 / r0
            int r5 = (int) r5
            int r0 = r4.mIndex
            if (r5 != r0) goto L8a
            r2 = 1
        L8a:
            r4.mIsPointerActionDown = r2
            goto L9c
        L8d:
            float r5 = r5.getY()
            float r0 = r4.mModelSize
            float r5 = r5 / r0
            int r5 = (int) r5
            int r0 = r4.mIndex
            if (r5 != r0) goto L9a
            r2 = 1
        L9a:
            r4.mIsPointerActionDown = r2
        L9c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: devlight.p018io.library.ntb.NavigationTabBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.mModels.isEmpty() || size == 0 || size2 == 0) {
            return;
        }
        if (size > size2) {
            this.mIsHorizontalOrientation = true;
            this.mModelSize = size / this.mModels.size();
            float f = this.mModelSize;
            float f2 = size2;
            if (f > f2) {
                f = f2;
            }
            if (this.mIsBadged) {
                f -= f * 0.2f;
            }
            float f3 = this.mIconSizeFraction;
            if (f3 == -4.0f) {
                boolean z = this.mIsTitled;
                f3 = 0.5f;
            }
            this.mIconSize = f3 * f;
            if (this.mModelTitleSize == -2.0f) {
                this.mModelTitleSize = f * 0.2f;
            }
            this.mTitleMargin = TITLE_MARGIN_FRACTION * f;
            if (this.mIsBadged) {
                if (this.mBadgeTitleSize == -2.0f) {
                    this.mBadgeTitleSize = f * 0.2f * BADGE_TITLE_SIZE_FRACTION;
                }
                Rect rect = new Rect();
                this.mBadgePaint.setTextSize(this.mBadgeTitleSize);
                this.mBadgePaint.getTextBounds(PREVIEW_BADGE, 0, 1, rect);
                this.mBadgeMargin = (rect.height() * 0.5f) + (this.mBadgeTitleSize * 0.5f * 0.75f);
            }
        } else {
            this.mBehaviorEnabled = false;
            this.mIsHorizontalOrientation = false;
            this.mIsTitled = false;
            this.mIsBadged = false;
            this.mModelSize = size2 / this.mModels.size();
            float f4 = this.mModelSize;
            float f5 = size;
            if (f4 > f5) {
                f4 = f5;
            }
            this.mIconSize = (int) (f4 * (this.mIconSizeFraction != -4.0f ? r6 : 0.5f));
        }
        this.mBounds.set(0.0f, 0.0f, size, size2 - this.mBadgeMargin);
        float f6 = this.mBadgeGravity == BadgeGravity.TOP ? this.mBadgeMargin : 0.0f;
        this.mBgBounds.set(0.0f, f6, this.mBounds.width(), this.mBounds.height() + f6);
        for (Model model : this.mModels) {
            model.mInactiveIconScale = this.mIconSize / (model.mIcon.getWidth() > model.mIcon.getHeight() ? model.mIcon.getWidth() : model.mIcon.getHeight());
            model.mActiveIconScaleBy = model.mInactiveIconScale * (this.mIsTitled ? 0.2f : SCALED_FRACTION);
        }
        this.mBitmap = null;
        this.mPointerBitmap = null;
        this.mIconsBitmap = null;
        if (this.mIsTitled) {
            this.mTitlesBitmap = null;
        }
        if (isInEditMode() || !this.mIsViewPagerMode) {
            this.mIsSetIndexFromTabBar = true;
            if (isInEditMode()) {
                this.mIndex = new Random().nextInt(this.mModels.size());
                if (this.mIsBadged) {
                    for (int i3 = 0; i3 < this.mModels.size(); i3++) {
                        Model model2 = this.mModels.get(i3);
                        if (i3 == this.mIndex) {
                            model2.mBadgeFraction = 1.0f;
                            model2.showBadge();
                        } else {
                            model2.mBadgeFraction = 0.0f;
                            model2.hideBadge();
                        }
                    }
                }
            }
            this.mStartPointerX = this.mIndex * this.mModelSize;
            this.mEndPointerX = this.mStartPointerX;
            updateIndicatorPosition(1.0f);
        }
        if (this.mIsBehaviorSet) {
            return;
        }
        setBehaviorEnabled(this.mBehaviorEnabled);
        this.mIsBehaviorSet = true;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i;
        float f;
        float height;
        float width;
        float f2;
        int i2;
        float f3;
        float f4;
        int iHeight = (int) (this.mBounds.height() + this.mBadgeMargin);
        Bitmap bitmap = this.mBitmap;
        if (bitmap == null || bitmap.isRecycled()) {
            this.mBitmap = Bitmap.createBitmap((int) this.mBounds.width(), iHeight, Bitmap.Config.ARGB_8888);
            this.mCanvas.setBitmap(this.mBitmap);
        }
        Bitmap bitmap2 = this.mPointerBitmap;
        if (bitmap2 == null || bitmap2.isRecycled()) {
            this.mPointerBitmap = Bitmap.createBitmap((int) this.mBounds.width(), iHeight, Bitmap.Config.ARGB_8888);
            this.mPointerCanvas.setBitmap(this.mPointerBitmap);
        }
        Bitmap bitmap3 = this.mIconsBitmap;
        if (bitmap3 == null || bitmap3.isRecycled()) {
            this.mIconsBitmap = Bitmap.createBitmap((int) this.mBounds.width(), iHeight, Bitmap.Config.ARGB_8888);
            this.mIconsCanvas.setBitmap(this.mIconsBitmap);
        }
        if (this.mIsTitled) {
            Bitmap bitmap4 = this.mTitlesBitmap;
            if (bitmap4 == null || bitmap4.isRecycled()) {
                this.mTitlesBitmap = Bitmap.createBitmap((int) this.mBounds.width(), iHeight, Bitmap.Config.ARGB_8888);
                this.mTitlesCanvas.setBitmap(this.mTitlesBitmap);
            }
        } else {
            this.mTitlesBitmap = null;
        }
        boolean z = false;
        this.mCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        this.mPointerCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        this.mIconsCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        if (this.mIsTitled) {
            this.mTitlesCanvas.drawColor(0, PorterDuff.Mode.CLEAR);
        }
        float f5 = this.mCornersRadius;
        if (f5 == 0.0f) {
            canvas.drawRect(this.mBgBounds, this.mBgPaint);
        } else {
            canvas.drawRoundRect(this.mBgBounds, f5, f5, this.mBgPaint);
        }
        float f6 = this.mBadgeGravity == BadgeGravity.TOP ? this.mBadgeMargin : 0.0f;
        for (int i3 = 0; i3 < this.mModels.size(); i3++) {
            this.mPaint.setColor(this.mModels.get(i3).getColor());
            if (this.mIsHorizontalOrientation) {
                float f7 = this.mModelSize;
                float f8 = i3 * f7;
                this.mCanvas.drawRect(f8, f6, f8 + f7, this.mBounds.height() + f6, this.mPaint);
            } else {
                float f9 = this.mModelSize;
                float f10 = f9 * i3;
                this.mCanvas.drawRect(0.0f, f10, this.mBounds.width(), f10 + f9, this.mPaint);
            }
        }
        if (this.mIsHorizontalOrientation) {
            this.mPointerBounds.set(this.mPointerLeftTop, f6, this.mPointerRightBottom, this.mBounds.height() + f6);
        } else {
            this.mPointerBounds.set(0.0f, this.mPointerLeftTop, this.mBounds.width(), this.mPointerRightBottom);
        }
        float f11 = this.mCornersRadius;
        if (f11 == 0.0f) {
            this.mPointerCanvas.drawRect(this.mPointerBounds, this.mPaint);
        } else {
            this.mPointerCanvas.drawRoundRect(this.mPointerBounds, f11, f11, this.mPaint);
        }
        this.mCanvas.drawBitmap(this.mPointerBitmap, 0.0f, 0.0f, this.mPointerPaint);
        float f12 = this.mIconSize + this.mTitleMargin + this.mModelTitleSize;
        int i4 = 0;
        while (true) {
            i = 1;
            if (i4 >= this.mModels.size()) {
                break;
            }
            Model model = this.mModels.get(i4);
            float f13 = this.mModelSize;
            float f14 = i4;
            float f15 = (f13 * f14) + (f13 * 0.5f);
            float fHeight = this.mBounds.height() - ((this.mBounds.height() - f12) * 0.5f);
            if (this.mIsHorizontalOrientation) {
                float f16 = this.mModelSize;
                width = (f14 * f16) + ((f16 - model.mIcon.getWidth()) * 0.5f);
                height = (this.mBounds.height() - model.mIcon.getHeight()) * 0.5f;
            } else {
                float fWidth = (this.mBounds.width() - model.mIcon.getWidth()) * 0.5f;
                float f17 = this.mModelSize;
                height = (f14 * f17) + ((f17 - model.mIcon.getHeight()) * 0.5f);
                width = fWidth;
            }
            float width2 = width + (model.mIcon.getWidth() * 0.5f);
            float height2 = height + (model.mIcon.getHeight() * 0.5f);
            float height3 = height - (model.mIcon.getHeight() * 0.25f);
            model.mIconMatrix.setTranslate(width, (this.mIsTitled && this.mTitleMode == TitleMode.ALL) ? height3 : height);
            float resizeInterpolation = this.mResizeInterpolator.getResizeInterpolation(this.mFraction, true);
            float resizeInterpolation2 = this.mResizeInterpolator.getResizeInterpolation(this.mFraction, z);
            float f18 = model.mActiveIconScaleBy * resizeInterpolation;
            float f19 = model.mActiveIconScaleBy * resizeInterpolation2;
            int i5 = (int) (resizeInterpolation * 255.0f);
            int i6 = 255 - ((int) (255.0f * resizeInterpolation2));
            float f20 = this.mIsScaled ? (resizeInterpolation * 0.2f) + 1.0f : 1.0f;
            float f21 = this.mIsScaled ? 1.2f - (0.2f * resizeInterpolation2) : f20;
            this.mIconPaint.setAlpha(255);
            if (model.mSelectedIcon != null) {
                this.mSelectedIconPaint.setAlpha(255);
            }
            if (this.mIsSetIndexFromTabBar) {
                if (this.mIndex == i4) {
                    f4 = fHeight;
                    f2 = f15;
                    i2 = i4;
                    f3 = f6;
                    updateCurrentModel(model, width, height, height3, resizeInterpolation, width2, height2, f18, f20, i5);
                } else {
                    f4 = fHeight;
                    f2 = f15;
                    i2 = i4;
                    f3 = f6;
                    if (this.mLastIndex == i2) {
                        updateLastModel(model, width, height, height3, resizeInterpolation2, width2, height2, f19, f21, i6);
                    } else {
                        updateInactiveModel(model, width, height, f20, f18, width2, height2);
                    }
                }
            } else {
                f2 = f15;
                i2 = i4;
                f3 = f6;
                int i7 = this.mIndex;
                if (i2 == i7 + 1) {
                    f4 = fHeight;
                    updateCurrentModel(model, width, height, height3, resizeInterpolation, width2, height2, f18, f20, i5);
                } else {
                    f4 = fHeight;
                    if (i2 == i7) {
                        updateLastModel(model, width, height, height3, resizeInterpolation2, width2, height2, f19, f21, i6);
                    } else {
                        updateInactiveModel(model, width, height, f20, f18, width2, height2);
                    }
                }
            }
            if (model.mSelectedIcon != null) {
                if (this.mIconPaint.getAlpha() != 0 && model.mIcon != null && !model.mIcon.isRecycled()) {
                    this.mIconsCanvas.drawBitmap(model.mIcon, model.mIconMatrix, this.mIconPaint);
                }
            } else if (model.mIcon != null && !model.mIcon.isRecycled()) {
                this.mIconsCanvas.drawBitmap(model.mIcon, model.mIconMatrix, this.mIconPaint);
            }
            if (this.mSelectedIconPaint.getAlpha() != 0 && model.mSelectedIcon != null && !model.mSelectedIcon.isRecycled()) {
                this.mIconsCanvas.drawBitmap(model.mSelectedIcon, model.mIconMatrix, this.mSelectedIconPaint);
            }
            if (this.mIsTitled) {
                this.mTitlesCanvas.drawText(isInEditMode() ? PREVIEW_TITLE : model.getTitle(), f2, f4, this.mModelTitlePaint);
            }
            i4 = i2 + 1;
            f6 = f3;
            z = false;
        }
        float f22 = f6;
        if (this.mIsHorizontalOrientation) {
            f = 0.0f;
            this.mPointerBounds.set(this.mPointerLeftTop, 0.0f, this.mPointerRightBottom, this.mBounds.height());
        } else {
            f = 0.0f;
        }
        float f23 = this.mCornersRadius;
        if (f23 == f) {
            if (this.mIsTinted) {
                this.mIconsCanvas.drawRect(this.mPointerBounds, this.mIconPointerPaint);
            }
            if (this.mIsTitled) {
                this.mTitlesCanvas.drawRect(this.mPointerBounds, this.mIconPointerPaint);
            }
        } else {
            if (this.mIsTinted) {
                this.mIconsCanvas.drawRoundRect(this.mPointerBounds, f23, f23, this.mIconPointerPaint);
            }
            if (this.mIsTitled) {
                Canvas canvas2 = this.mTitlesCanvas;
                RectF rectF = this.mPointerBounds;
                float f24 = this.mCornersRadius;
                canvas2.drawRoundRect(rectF, f24, f24, this.mIconPointerPaint);
            }
        }
        canvas.drawBitmap(this.mBitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawBitmap(this.mIconsBitmap, 0.0f, f22, (Paint) null);
        if (this.mIsTitled) {
            canvas.drawBitmap(this.mTitlesBitmap, 0.0f, f22, (Paint) null);
        }
        if (this.mIsBadged) {
            float fHeight2 = this.mBadgeGravity == BadgeGravity.TOP ? this.mBadgeMargin : this.mBounds.height();
            float fHeight3 = this.mBadgeGravity == BadgeGravity.TOP ? 0.0f : this.mBounds.height() - this.mBadgeMargin;
            int i8 = 0;
            while (i8 < this.mModels.size()) {
                Model model2 = this.mModels.get(i8);
                if (isInEditMode() || TextUtils.isEmpty(model2.getBadgeTitle())) {
                    model2.setBadgeTitle(PREVIEW_BADGE);
                }
                this.mBadgePaint.setTextSize(this.mBadgeTitleSize * model2.mBadgeFraction);
                this.mBadgePaint.getTextBounds(model2.getBadgeTitle(), 0, model2.getBadgeTitle().length(), this.mBadgeBounds);
                float f25 = this.mBadgeTitleSize * 0.5f;
                float f26 = 0.75f * f25;
                float f27 = this.mModelSize;
                float f28 = (i8 * f27) + (f27 * this.mBadgePosition.mPositionFraction);
                float f29 = this.mBadgeMargin * model2.mBadgeFraction;
                if (model2.getBadgeTitle().length() == i) {
                    this.mBgBadgeBounds.set(f28 - f29, fHeight2 - f29, f28 + f29, f29 + fHeight2);
                } else {
                    this.mBgBadgeBounds.set(f28 - Math.max(f29, this.mBadgeBounds.centerX() + f25), fHeight2 - f29, Math.max(f29, this.mBadgeBounds.centerX() + f25) + f28, (f26 * 2.0f) + fHeight3 + this.mBadgeBounds.height());
                }
                if (model2.mBadgeFraction == 0.0f) {
                    this.mBadgePaint.setColor(0);
                } else {
                    Paint paint = this.mBadgePaint;
                    int i9 = this.mBadgeBgColor;
                    if (i9 == -3) {
                        i9 = this.mActiveColor;
                    }
                    paint.setColor(i9);
                }
                this.mBadgePaint.setAlpha((int) (model2.mBadgeFraction * 255.0f));
                float fHeight4 = this.mBgBadgeBounds.height() * 0.5f;
                canvas.drawRoundRect(this.mBgBadgeBounds, fHeight4, fHeight4, this.mBadgePaint);
                if (model2.mBadgeFraction == 0.0f) {
                    this.mBadgePaint.setColor(0);
                } else {
                    Paint paint2 = this.mBadgePaint;
                    int color = this.mBadgeTitleColor;
                    if (color == -3) {
                        color = model2.getColor();
                    }
                    paint2.setColor(color);
                }
                this.mBadgePaint.setAlpha((int) (model2.mBadgeFraction * 255.0f));
                canvas.drawText(model2.getBadgeTitle(), f28, (((((this.mBgBadgeBounds.height() * 0.5f) + (this.mBadgeBounds.height() * 0.5f)) - this.mBadgeBounds.bottom) + fHeight3) + this.mBadgeBounds.height()) - (this.mBadgeBounds.height() * model2.mBadgeFraction), this.mBadgePaint);
                i8++;
                i = 1;
            }
        }
    }

    protected void updateCurrentModel(Model model, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i) {
        if (this.mIsTitled && this.mTitleMode == TitleMode.ACTIVE) {
            model.mIconMatrix.setTranslate(f, f2 - ((f2 - f3) * f4));
        }
        float f9 = model.mInactiveIconScale;
        float f10 = 0.0f;
        if (!this.mIsScaled) {
            f7 = 0.0f;
        }
        float f11 = f9 + f7;
        model.mIconMatrix.postScale(f11, f11, f5, f6);
        this.mModelTitlePaint.setTextSize(this.mModelTitleSize * f8);
        if (this.mTitleMode == TitleMode.ACTIVE) {
            this.mModelTitlePaint.setAlpha(i);
        }
        if (model.mSelectedIcon == null) {
            this.mIconPaint.setAlpha(255);
            return;
        }
        if (f4 > 0.475f) {
            float f12 = f4 >= 0.525f ? 1.9f * (f4 - 0.55f) : 0.0f;
            this.mIconPaint.setAlpha((int) (clampValue(f10) * 255.0f));
            this.mSelectedIconPaint.setAlpha((int) (clampValue(f12) * 255.0f));
        }
        f10 = 1.0f - (f4 * 2.1f);
        this.mIconPaint.setAlpha((int) (clampValue(f10) * 255.0f));
        this.mSelectedIconPaint.setAlpha((int) (clampValue(f12) * 255.0f));
    }

    protected void updateLastModel(Model model, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i) {
        float f9;
        if (this.mIsTitled && this.mTitleMode == TitleMode.ACTIVE) {
            model.mIconMatrix.setTranslate(f, f3 + ((f2 - f3) * f4));
        }
        float f10 = model.mInactiveIconScale + (this.mIsScaled ? model.mActiveIconScaleBy - f7 : 0.0f);
        model.mIconMatrix.postScale(f10, f10, f5, f6);
        this.mModelTitlePaint.setTextSize(this.mModelTitleSize * f8);
        if (this.mTitleMode == TitleMode.ACTIVE) {
            this.mModelTitlePaint.setAlpha(i);
        }
        if (model.mSelectedIcon == null) {
            this.mIconPaint.setAlpha(255);
            return;
        }
        if (f4 <= 0.475f) {
            f9 = 1.0f - (f4 * 2.1f);
        } else {
            f = f4 >= 0.525f ? 1.9f * (f4 - 0.55f) : 0.0f;
            f9 = 0.0f;
        }
        this.mIconPaint.setAlpha((int) (clampValue(f) * 255.0f));
        this.mSelectedIconPaint.setAlpha((int) (clampValue(f9) * 255.0f));
    }

    protected void updateInactiveModel(Model model, float f, float f2, float f3, float f4, float f5, float f6) {
        if (this.mIsTitled && this.mTitleMode == TitleMode.ACTIVE) {
            model.mIconMatrix.setTranslate(f, f2);
        }
        model.mIconMatrix.postScale(model.mInactiveIconScale, model.mInactiveIconScale, f5, f6);
        this.mModelTitlePaint.setTextSize(this.mModelTitleSize);
        if (this.mTitleMode == TitleMode.ACTIVE) {
            this.mModelTitlePaint.setAlpha(0);
        }
        if (model.mSelectedIcon == null) {
            this.mIconPaint.setAlpha(255);
        } else {
            this.mSelectedIconPaint.setAlpha(0);
        }
    }

    protected void updateTint() {
        if (this.mIsTinted) {
            PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(this.mInactiveColor, PorterDuff.Mode.SRC_IN);
            this.mIconPaint.setColorFilter(porterDuffColorFilter);
            this.mSelectedIconPaint.setColorFilter(porterDuffColorFilter);
        } else {
            this.mIconPaint.reset();
            this.mSelectedIconPaint.reset();
        }
        postInvalidate();
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        ViewPager.OnPageChangeListener onPageChangeListener = this.mOnPageChangeListener;
        if (onPageChangeListener != null) {
            onPageChangeListener.onPageScrolled(i, f, i2);
        }
        if (!this.mIsSetIndexFromTabBar) {
            this.mIsResizeIn = i < this.mIndex;
            this.mLastIndex = this.mIndex;
            this.mIndex = i;
            float f2 = this.mModelSize;
            this.mStartPointerX = i * f2;
            this.mEndPointerX = this.mStartPointerX + f2;
            updateIndicatorPosition(f);
        }
        if (this.mAnimator.isRunning() || !this.mIsSetIndexFromTabBar) {
            return;
        }
        this.mFraction = 0.0f;
        this.mIsSetIndexFromTabBar = false;
    }

    @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        OnTabBarSelectedIndexListener onTabBarSelectedIndexListener;
        this.mScrollState = i;
        if (i == 0) {
            ViewPager.OnPageChangeListener onPageChangeListener = this.mOnPageChangeListener;
            if (onPageChangeListener != null) {
                onPageChangeListener.onPageSelected(this.mIndex);
            }
            if (this.mIsViewPagerMode && (onTabBarSelectedIndexListener = this.mOnTabBarSelectedIndexListener) != null) {
                onTabBarSelectedIndexListener.onEndTabSelected(this.mModels.get(this.mIndex), this.mIndex);
            }
        }
        ViewPager.OnPageChangeListener onPageChangeListener2 = this.mOnPageChangeListener;
        if (onPageChangeListener2 != null) {
            onPageChangeListener2.onPageScrollStateChanged(i);
        }
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mIndex = savedState.index;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.index = this.mIndex;
        return savedState;
    }

    protected static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: devlight.io.library.ntb.NavigationTabBar.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private int index;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.index = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.index);
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        requestLayout();
        final int i = this.mIndex;
        deselect();
        post(new Runnable() { // from class: devlight.io.library.ntb.NavigationTabBar.10
            @Override // java.lang.Runnable
            public void run() throws Resources.NotFoundException {
                NavigationTabBar.this.setModelIndex(i, true);
            }
        });
    }

    protected float clampValue(float f) {
        return Math.max(Math.min(f, 1.0f), 0.0f);
    }

    public void hide() {
        NavigationTabBarBehavior navigationTabBarBehavior = this.mBehavior;
        if (navigationTabBarBehavior != null) {
            navigationTabBarBehavior.hideView(this, (int) getBarHeight(), true);
        } else if (getParent() != null && (getParent() instanceof CoordinatorLayout)) {
            this.mNeedHide = true;
            this.mAnimateHide = true;
        } else {
            scrollDown();
        }
    }

    public void show() {
        NavigationTabBarBehavior navigationTabBarBehavior = this.mBehavior;
        if (navigationTabBarBehavior != null) {
            navigationTabBarBehavior.resetOffset(this, true);
        } else {
            scrollUp();
        }
    }

    protected void scrollDown() {
        ViewCompat.animate(this).translationY(getBarHeight()).setInterpolator(new LinearOutSlowInInterpolator()).setDuration(300L).start();
    }

    protected void scrollUp() {
        ViewCompat.animate(this).translationY(0.0f).setInterpolator(OUT_SLOW_IN_INTERPOLATOR).setDuration(300L).start();
    }

    public static class Model {
        private float mActiveIconScaleBy;
        private float mBadgeFraction;
        private String mBadgeTitle;
        private int mColor;
        private final Bitmap mIcon;
        private float mInactiveIconScale;
        private boolean mIsBadgeShowed;
        private boolean mIsBadgeUpdated;
        private final Bitmap mSelectedIcon;
        private String mTitle;
        private final Matrix mIconMatrix = new Matrix();
        private String mTempBadgeTitle = "";
        private final ValueAnimator mBadgeAnimator = new ValueAnimator();

        Model(Builder builder) {
            this.mTitle = "";
            this.mBadgeTitle = "";
            this.mColor = builder.mColor;
            this.mIcon = builder.mIcon;
            this.mSelectedIcon = builder.mSelectedIcon;
            this.mTitle = builder.mTitle;
            this.mBadgeTitle = builder.mBadgeTitle;
            this.mBadgeAnimator.addListener(new AnimatorListenerAdapter() { // from class: devlight.io.library.ntb.NavigationTabBar.Model.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    animator.removeListener(this);
                    animator.addListener(this);
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    animator.removeListener(this);
                    animator.addListener(this);
                    if (!Model.this.mIsBadgeUpdated) {
                        Model.this.mIsBadgeShowed = !r2.mIsBadgeShowed;
                    } else {
                        Model.this.mIsBadgeUpdated = false;
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                    if (Model.this.mIsBadgeUpdated) {
                        Model model = Model.this;
                        model.mBadgeTitle = model.mTempBadgeTitle;
                    }
                }
            });
        }

        public String getTitle() {
            return this.mTitle;
        }

        public void setTitle(String str) {
            this.mTitle = str;
        }

        public int getColor() {
            return this.mColor;
        }

        public void setColor(int i) {
            this.mColor = i;
        }

        public boolean isBadgeShowed() {
            return this.mIsBadgeShowed;
        }

        public String getBadgeTitle() {
            return this.mBadgeTitle;
        }

        public void setBadgeTitle(String str) {
            this.mBadgeTitle = str;
        }

        public void updateBadgeTitle(String str) {
            if (this.mIsBadgeShowed) {
                if (this.mBadgeAnimator.isRunning()) {
                    this.mBadgeAnimator.end();
                }
                this.mTempBadgeTitle = str;
                this.mIsBadgeUpdated = true;
                this.mBadgeAnimator.setFloatValues(1.0f, 0.0f);
                this.mBadgeAnimator.setDuration(100L);
                this.mBadgeAnimator.setRepeatMode(2);
                this.mBadgeAnimator.setRepeatCount(1);
                this.mBadgeAnimator.start();
            }
        }

        public void toggleBadge() {
            if (this.mBadgeAnimator.isRunning()) {
                this.mBadgeAnimator.end();
            }
            if (this.mIsBadgeShowed) {
                hideBadge();
            } else {
                showBadge();
            }
        }

        public void showBadge() {
            this.mIsBadgeUpdated = false;
            if (this.mBadgeAnimator.isRunning()) {
                this.mBadgeAnimator.end();
            }
            if (this.mIsBadgeShowed) {
                return;
            }
            this.mBadgeAnimator.setFloatValues(0.0f, 1.0f);
            this.mBadgeAnimator.setInterpolator(NavigationTabBar.DECELERATE_INTERPOLATOR);
            this.mBadgeAnimator.setDuration(200L);
            this.mBadgeAnimator.setRepeatMode(1);
            this.mBadgeAnimator.setRepeatCount(0);
            this.mBadgeAnimator.start();
        }

        public void hideBadge() {
            this.mIsBadgeUpdated = false;
            if (this.mBadgeAnimator.isRunning()) {
                this.mBadgeAnimator.end();
            }
            if (this.mIsBadgeShowed) {
                this.mBadgeAnimator.setFloatValues(1.0f, 0.0f);
                this.mBadgeAnimator.setInterpolator(NavigationTabBar.ACCELERATE_INTERPOLATOR);
                this.mBadgeAnimator.setDuration(200L);
                this.mBadgeAnimator.setRepeatMode(1);
                this.mBadgeAnimator.setRepeatCount(0);
                this.mBadgeAnimator.start();
            }
        }

        public static class Builder {
            private String mBadgeTitle;
            private final int mColor;
            private final Bitmap mIcon;
            private Bitmap mSelectedIcon;
            private String mTitle;

            public Builder(Drawable drawable, int i) {
                this.mColor = i;
                if (drawable != null) {
                    if (drawable instanceof BitmapDrawable) {
                        this.mIcon = ((BitmapDrawable) drawable).getBitmap();
                        return;
                    }
                    this.mIcon = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(this.mIcon);
                    drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    drawable.draw(canvas);
                    return;
                }
                this.mIcon = Bitmap.createBitmap(1, 1, Bitmap.Config.RGB_565);
            }

            public Builder selectedIcon(Drawable drawable) {
                if (drawable != null) {
                    if (drawable instanceof BitmapDrawable) {
                        this.mSelectedIcon = ((BitmapDrawable) drawable).getBitmap();
                    } else {
                        this.mSelectedIcon = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(this.mSelectedIcon);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                    }
                } else {
                    this.mSelectedIcon = null;
                }
                return this;
            }

            public Builder title(String str) {
                this.mTitle = str;
                return this;
            }

            public Builder badgeTitle(String str) {
                this.mBadgeTitle = str;
                return this;
            }

            public Model build() {
                return new Model(this);
            }
        }
    }

    protected class ResizeViewPagerScroller extends Scroller {
        ResizeViewPagerScroller(Context context) {
            super(context, new AccelerateDecelerateInterpolator());
        }

        @Override // android.widget.Scroller
        public void startScroll(int i, int i2, int i3, int i4, int i5) {
            super.startScroll(i, i2, i3, i4, NavigationTabBar.this.mAnimationDuration);
        }

        @Override // android.widget.Scroller
        public void startScroll(int i, int i2, int i3, int i4) {
            super.startScroll(i, i2, i3, i4, NavigationTabBar.this.mAnimationDuration);
        }
    }

    protected class ResizeInterpolator implements Interpolator {
        private static final float FACTOR = 1.0f;
        private boolean mResizeIn;

        protected ResizeInterpolator() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f) {
            return this.mResizeIn ? (float) (1.0d - Math.pow(1.0f - f, 2.0d)) : (float) Math.pow(f, 2.0d);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public float getResizeInterpolation(float f, boolean z) {
            this.mResizeIn = z;
            return getInterpolation(f);
        }
    }

    public enum BadgePosition {
        LEFT(0.25f),
        CENTER(0.5f),
        RIGHT(0.75f);

        public static final int CENTER_INDEX = 1;
        public static final int LEFT_INDEX = 0;
        public static final int RIGHT_INDEX = 2;
        private final float mPositionFraction;

        BadgePosition(float f) {
            this.mPositionFraction = f;
        }
    }
}
