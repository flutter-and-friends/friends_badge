package devlight.p018io.library.behavior;

import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.snackbar.Snackbar;
import devlight.p018io.library.ntb.NavigationTabBar;

/* loaded from: classes2.dex */
public class NavigationTabBarBehavior extends VerticalScrollingBehavior<NavigationTabBar> {
    private static final int ANIMATION_DURATION = 300;
    private static final Interpolator INTERPOLATOR = new LinearOutSlowInInterpolator();
    private boolean mBehaviorTranslationEnabled;
    private boolean mFabBottomMarginInitialized;
    private FloatingActionButton mFloatingActionButton;
    private boolean mHidden;
    private Snackbar.SnackbarLayout mSnackBarLayout;
    private ViewPropertyAnimatorCompat mTranslationAnimator;
    private ObjectAnimator mTranslationObjectAnimator;
    private int mSnackBarHeight = -1;
    private float mTargetOffset = 0.0f;
    private float mFabTargetOffset = 0.0f;
    private float mFabDefaultBottomMargin = 0.0f;

    @Override // devlight.p018io.library.behavior.VerticalScrollingBehavior
    public void onDirectionNestedPreScroll() {
    }

    @Override // devlight.p018io.library.behavior.VerticalScrollingBehavior
    protected boolean onNestedDirectionFling() {
        return false;
    }

    @Override // devlight.p018io.library.behavior.VerticalScrollingBehavior
    public void onNestedVerticalOverScroll() {
    }

    @Override // devlight.p018io.library.behavior.VerticalScrollingBehavior
    public /* bridge */ /* synthetic */ int getOverScrollDirection() {
        return super.getOverScrollDirection();
    }

    @Override // devlight.p018io.library.behavior.VerticalScrollingBehavior
    public /* bridge */ /* synthetic */ int getScrollDirection() {
        return super.getScrollDirection();
    }

    public NavigationTabBarBehavior(boolean z) {
        this.mBehaviorTranslationEnabled = true;
        this.mBehaviorTranslationEnabled = z;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, NavigationTabBar navigationTabBar, int i) {
        return super.onLayoutChild(coordinatorLayout, (CoordinatorLayout) navigationTabBar, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onDependentViewChanged(CoordinatorLayout coordinatorLayout, NavigationTabBar navigationTabBar, View view) {
        return super.onDependentViewChanged(coordinatorLayout, (CoordinatorLayout) navigationTabBar, view);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onDependentViewRemoved(CoordinatorLayout coordinatorLayout, NavigationTabBar navigationTabBar, View view) {
        super.onDependentViewRemoved(coordinatorLayout, (CoordinatorLayout) navigationTabBar, view);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean layoutDependsOn(CoordinatorLayout coordinatorLayout, NavigationTabBar navigationTabBar, View view) {
        updateSnackBar(navigationTabBar, view);
        updateFloatingActionButton(view);
        return super.layoutDependsOn(coordinatorLayout, (CoordinatorLayout) navigationTabBar, view);
    }

    @Override // devlight.p018io.library.behavior.VerticalScrollingBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void onNestedScroll(CoordinatorLayout coordinatorLayout, NavigationTabBar navigationTabBar, View view, int i, int i2, int i3, int i4) {
        super.onNestedScroll(coordinatorLayout, (CoordinatorLayout) navigationTabBar, view, i, i2, i3, i4);
        if (i2 < 0) {
            handleDirection(navigationTabBar, -1);
        } else if (i2 > 0) {
            handleDirection(navigationTabBar, 1);
        }
    }

    @Override // devlight.p018io.library.behavior.VerticalScrollingBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean onStartNestedScroll(CoordinatorLayout coordinatorLayout, NavigationTabBar navigationTabBar, View view, View view2, int i) {
        return i == 2 || super.onStartNestedScroll(coordinatorLayout, (CoordinatorLayout) navigationTabBar, view, view2, i);
    }

    private void handleDirection(NavigationTabBar navigationTabBar, int i) {
        if (this.mBehaviorTranslationEnabled) {
            if (i == -1 && this.mHidden) {
                this.mHidden = false;
                animateOffset(navigationTabBar, 0, false, true);
            } else {
                if (i != 1 || this.mHidden) {
                    return;
                }
                this.mHidden = true;
                animateOffset(navigationTabBar, navigationTabBar.getHeight(), false, true);
            }
        }
    }

    private void animateOffset(NavigationTabBar navigationTabBar, int i, boolean z, boolean z2) {
        if (this.mBehaviorTranslationEnabled || z) {
            if (Build.VERSION.SDK_INT < 19) {
                ensureOrCancelObjectAnimation(navigationTabBar, i, z2);
                this.mTranslationObjectAnimator.start();
            } else {
                ensureOrCancelAnimator(navigationTabBar, z2);
                this.mTranslationAnimator.translationY(i).start();
            }
        }
    }

    private void ensureOrCancelAnimator(final NavigationTabBar navigationTabBar, boolean z) {
        ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mTranslationAnimator;
        if (viewPropertyAnimatorCompat == null) {
            this.mTranslationAnimator = ViewCompat.animate(navigationTabBar);
            this.mTranslationAnimator.setDuration(z ? 300L : 0L);
            this.mTranslationAnimator.setUpdateListener(new ViewPropertyAnimatorUpdateListener() { // from class: devlight.io.library.behavior.NavigationTabBarBehavior.1
                @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
                public void onAnimationUpdate(View view) {
                    if (NavigationTabBarBehavior.this.mSnackBarLayout != null && (NavigationTabBarBehavior.this.mSnackBarLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                        NavigationTabBarBehavior.this.mTargetOffset = navigationTabBar.getBarHeight() - view.getTranslationY();
                        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) NavigationTabBarBehavior.this.mSnackBarLayout.getLayoutParams();
                        marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, (int) NavigationTabBarBehavior.this.mTargetOffset);
                        NavigationTabBarBehavior.this.mSnackBarLayout.requestLayout();
                    }
                    if (NavigationTabBarBehavior.this.mFloatingActionButton == null || !(NavigationTabBarBehavior.this.mFloatingActionButton.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                        return;
                    }
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) NavigationTabBarBehavior.this.mFloatingActionButton.getLayoutParams();
                    NavigationTabBarBehavior navigationTabBarBehavior = NavigationTabBarBehavior.this;
                    navigationTabBarBehavior.mFabTargetOffset = navigationTabBarBehavior.mFabDefaultBottomMargin - view.getTranslationY();
                    marginLayoutParams2.setMargins(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, (int) NavigationTabBarBehavior.this.mFabTargetOffset);
                    NavigationTabBarBehavior.this.mFloatingActionButton.requestLayout();
                }
            });
            this.mTranslationAnimator.setInterpolator(INTERPOLATOR);
            return;
        }
        viewPropertyAnimatorCompat.setDuration(z ? 300L : 0L);
        this.mTranslationAnimator.cancel();
    }

    private static ObjectAnimator objectAnimatorOfTranslationY(View view, int i) {
        if (Build.VERSION.SDK_INT >= 14) {
            return ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, i);
        }
        ObjectAnimator objectAnimator = new ObjectAnimator();
        objectAnimator.setTarget(view);
        objectAnimator.setPropertyName("translationY");
        objectAnimator.setFloatValues(i);
        return objectAnimator;
    }

    private void ensureOrCancelObjectAnimation(final NavigationTabBar navigationTabBar, int i, boolean z) {
        ObjectAnimator objectAnimator = this.mTranslationObjectAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.mTranslationObjectAnimator = objectAnimatorOfTranslationY(navigationTabBar, i);
        this.mTranslationObjectAnimator.setDuration(z ? 300L : 0L);
        this.mTranslationObjectAnimator.setInterpolator(INTERPOLATOR);
        this.mTranslationObjectAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: devlight.io.library.behavior.NavigationTabBarBehavior.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (NavigationTabBarBehavior.this.mSnackBarLayout != null && (NavigationTabBarBehavior.this.mSnackBarLayout.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                    NavigationTabBarBehavior.this.mTargetOffset = navigationTabBar.getBarHeight() - navigationTabBar.getTranslationY();
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) NavigationTabBarBehavior.this.mSnackBarLayout.getLayoutParams();
                    marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, (int) NavigationTabBarBehavior.this.mTargetOffset);
                    NavigationTabBarBehavior.this.mSnackBarLayout.requestLayout();
                }
                if (NavigationTabBarBehavior.this.mFloatingActionButton == null || !(NavigationTabBarBehavior.this.mFloatingActionButton.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                    return;
                }
                NavigationTabBarBehavior navigationTabBarBehavior = NavigationTabBarBehavior.this;
                navigationTabBarBehavior.mFabTargetOffset = navigationTabBarBehavior.mFabDefaultBottomMargin - navigationTabBar.getTranslationY();
                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) NavigationTabBarBehavior.this.mFloatingActionButton.getLayoutParams();
                marginLayoutParams2.setMargins(marginLayoutParams2.leftMargin, marginLayoutParams2.topMargin, marginLayoutParams2.rightMargin, (int) NavigationTabBarBehavior.this.mFabTargetOffset);
                NavigationTabBarBehavior.this.mFloatingActionButton.requestLayout();
            }
        });
    }

    public static NavigationTabBarBehavior from(NavigationTabBar navigationTabBar) {
        ViewGroup.LayoutParams layoutParams = navigationTabBar.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.LayoutParams)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
        if (!(behavior instanceof NavigationTabBarBehavior)) {
            throw new IllegalArgumentException("The view is not associated with NavigationTabBarBehavior");
        }
        return (NavigationTabBarBehavior) behavior;
    }

    public void setBehaviorTranslationEnabled(boolean z) {
        this.mBehaviorTranslationEnabled = z;
    }

    public void hideView(NavigationTabBar navigationTabBar, int i, boolean z) {
        if (this.mHidden) {
            return;
        }
        this.mHidden = true;
        animateOffset(navigationTabBar, i, true, z);
    }

    public void resetOffset(NavigationTabBar navigationTabBar, boolean z) {
        if (this.mHidden) {
            this.mHidden = false;
            animateOffset(navigationTabBar, 0, true, z);
        }
    }

    private void updateSnackBar(final NavigationTabBar navigationTabBar, View view) {
        if (view == null || !(view instanceof Snackbar.SnackbarLayout)) {
            return;
        }
        this.mSnackBarLayout = (Snackbar.SnackbarLayout) view;
        if (Build.VERSION.SDK_INT >= 19) {
            this.mSnackBarLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: devlight.io.library.behavior.NavigationTabBarBehavior.3
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    if (NavigationTabBarBehavior.this.mFloatingActionButton == null || !(NavigationTabBarBehavior.this.mFloatingActionButton.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                        return;
                    }
                    NavigationTabBarBehavior navigationTabBarBehavior = NavigationTabBarBehavior.this;
                    navigationTabBarBehavior.mFabTargetOffset = navigationTabBarBehavior.mFabDefaultBottomMargin - navigationTabBar.getTranslationY();
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) NavigationTabBarBehavior.this.mFloatingActionButton.getLayoutParams();
                    marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, (int) NavigationTabBarBehavior.this.mFabTargetOffset);
                    NavigationTabBarBehavior.this.mFloatingActionButton.requestLayout();
                }
            });
        }
        if (this.mSnackBarHeight == -1) {
            this.mSnackBarHeight = view.getHeight();
        }
        int barHeight = (int) (navigationTabBar.getBarHeight() - navigationTabBar.getTranslationY());
        navigationTabBar.bringToFront();
        if (Build.VERSION.SDK_INT >= 21) {
            view.setStateListAnimator(null);
            view.setElevation(0.0f);
        }
        if (view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
            marginLayoutParams.setMargins(marginLayoutParams.leftMargin, marginLayoutParams.topMargin, marginLayoutParams.rightMargin, barHeight);
            view.requestLayout();
        }
    }

    private void updateFloatingActionButton(View view) {
        if (view == null || !(view instanceof FloatingActionButton)) {
            return;
        }
        this.mFloatingActionButton = (FloatingActionButton) view;
        if (this.mFabBottomMarginInitialized || !(view.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            return;
        }
        this.mFabBottomMarginInitialized = true;
        this.mFabDefaultBottomMargin = ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin;
    }
}
