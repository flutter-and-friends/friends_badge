package com.lcodecore.tkrefreshlayout.header.progresslayout;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.lcodecore.tkrefreshlayout.IHeaderView;
import com.lcodecore.tkrefreshlayout.OnAnimEndListener;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class ProgressLayout extends FrameLayout implements IHeaderView {
    private static final int CIRCLE_BG_LIGHT = -328966;
    private static final int CIRCLE_DIAMETER = 40;
    private static final int CIRCLE_DIAMETER_LARGE = 56;
    public static final int DEFAULT = 1;
    private static final int DEFAULT_CIRCLE_TARGET = 64;
    public static final int LARGE = 0;
    private static final int MAX_ALPHA = 255;
    private static final float MAX_PROGRESS_ANGLE = 0.8f;
    private static final int STARTING_PROGRESS_ALPHA = 76;
    private int mCircleHeight;
    private CircleImageView mCircleView;
    private int mCircleWidth;
    private boolean mIsBeingDragged;
    private MaterialProgressDrawable mProgress;

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public View getView() {
        return this;
    }

    public ProgressLayout(Context context) {
        this(context, null);
    }

    public ProgressLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProgressLayout(Context context, AttributeSet attributeSet, int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        super(context, attributeSet, i);
        this.mIsBeingDragged = false;
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.mCircleWidth = (int) (displayMetrics.density * 40.0f);
        this.mCircleHeight = (int) (displayMetrics.density * 40.0f);
        createProgressView();
        ViewCompat.setChildrenDrawingOrderEnabled(this, true);
    }

    private void createProgressView() {
        this.mCircleView = new CircleImageView(getContext(), CIRCLE_BG_LIGHT, 20.0f);
        this.mProgress = new MaterialProgressDrawable(getContext(), this);
        this.mProgress.setBackgroundColor(CIRCLE_BG_LIGHT);
        this.mCircleView.setImageDrawable(this.mProgress);
        this.mCircleView.setVisibility(8);
        this.mCircleView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 17));
        addView(this.mCircleView);
    }

    public void setProgressBackgroundColorSchemeResource(int i) {
        setProgressBackgroundColorSchemeColor(getResources().getColor(i));
    }

    public void setProgressBackgroundColorSchemeColor(int i) {
        this.mCircleView.setBackgroundColor(i);
        this.mProgress.setBackgroundColor(i);
    }

    public void setColorSchemeResources(int... iArr) {
        Resources resources = getResources();
        int[] iArr2 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr2[i] = resources.getColor(iArr[i]);
        }
        setColorSchemeColors(iArr2);
    }

    public void setColorSchemeColors(int... iArr) {
        this.mProgress.setColorSchemeColors(iArr);
    }

    public void setSize(int i) {
        if (i == 0 || i == 1) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            if (i == 0) {
                int i2 = (int) (displayMetrics.density * 56.0f);
                this.mCircleWidth = i2;
                this.mCircleHeight = i2;
            } else {
                int i3 = (int) (displayMetrics.density * 40.0f);
                this.mCircleWidth = i3;
                this.mCircleHeight = i3;
            }
            this.mCircleView.setImageDrawable(null);
            this.mProgress.updateSizes(i);
            this.mCircleView.setImageDrawable(this.mProgress);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void reset() {
        this.mCircleView.clearAnimation();
        this.mProgress.stop();
        this.mCircleView.setVisibility(8);
        this.mCircleView.getBackground().setAlpha(255);
        this.mProgress.setAlpha(255);
        ViewCompat.setScaleX(this.mCircleView, 0.0f);
        ViewCompat.setScaleY(this.mCircleView, 0.0f);
        ViewCompat.setAlpha(this.mCircleView, 1.0f);
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void onPullingDown(float f, float f2, float f3) {
        if (!this.mIsBeingDragged) {
            this.mIsBeingDragged = true;
            this.mProgress.setAlpha(76);
        }
        if (this.mCircleView.getVisibility() != 0) {
            this.mCircleView.setVisibility(0);
        }
        if (f >= 1.0f) {
            ViewCompat.setScaleX(this.mCircleView, 1.0f);
            ViewCompat.setScaleY(this.mCircleView, 1.0f);
        } else {
            ViewCompat.setScaleX(this.mCircleView, f);
            ViewCompat.setScaleY(this.mCircleView, f);
        }
        if (f <= 1.0f) {
            this.mProgress.setAlpha((int) ((179.0f * f) + 76.0f));
        }
        float fMax = (((float) Math.max(f - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        this.mProgress.setStartEndTrim(0.0f, Math.min(MAX_PROGRESS_ANGLE, fMax * MAX_PROGRESS_ANGLE));
        this.mProgress.setArrowScale(Math.min(1.0f, fMax));
        this.mProgress.setProgressRotation(((fMax * 0.4f) - 0.25f) * 0.5f);
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void onPullReleasing(float f, float f2, float f3) {
        this.mIsBeingDragged = false;
        if (f >= 1.0f) {
            ViewCompat.setScaleX(this.mCircleView, 1.0f);
            ViewCompat.setScaleY(this.mCircleView, 1.0f);
        } else {
            ViewCompat.setScaleX(this.mCircleView, f);
            ViewCompat.setScaleY(this.mCircleView, f);
        }
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void startAnim(float f, float f2) {
        this.mCircleView.setVisibility(0);
        this.mCircleView.getBackground().setAlpha(255);
        this.mProgress.setAlpha(255);
        ViewCompat.setScaleX(this.mCircleView, 1.0f);
        ViewCompat.setScaleY(this.mCircleView, 1.0f);
        this.mProgress.setArrowScale(1.0f);
        this.mProgress.start();
    }

    @Override // com.lcodecore.tkrefreshlayout.IHeaderView
    public void onFinish(final OnAnimEndListener onAnimEndListener) {
        this.mCircleView.animate().scaleX(0.0f).scaleY(0.0f).alpha(0.0f).setListener(new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.header.progresslayout.ProgressLayout.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                ProgressLayout.this.reset();
                onAnimEndListener.onAnimEnd();
            }
        }).start();
    }
}
