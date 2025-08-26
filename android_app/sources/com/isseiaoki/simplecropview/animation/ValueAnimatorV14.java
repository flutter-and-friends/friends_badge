package com.isseiaoki.simplecropview.animation;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.animation.Interpolator;

/* loaded from: classes.dex */
public class ValueAnimatorV14 implements SimpleValueAnimator, Animator.AnimatorListener, ValueAnimator.AnimatorUpdateListener {
    private static final int DEFAULT_ANIMATION_DURATION = 150;
    private SimpleValueAnimatorListener animatorListener = new SimpleValueAnimatorListener() { // from class: com.isseiaoki.simplecropview.animation.ValueAnimatorV14.1
        @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener
        public void onAnimationFinished() {
        }

        @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener
        public void onAnimationStarted() {
        }

        @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimatorListener
        public void onAnimationUpdated(float f) {
        }
    };
    private ValueAnimator animator = ValueAnimator.ofFloat(0.0f, 1.0f);

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    public ValueAnimatorV14(Interpolator interpolator) {
        this.animator.addListener(this);
        this.animator.addUpdateListener(this);
        this.animator.setInterpolator(interpolator);
    }

    @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimator
    public void startAnimation(long j) {
        if (j >= 0) {
            this.animator.setDuration(j);
        } else {
            this.animator.setDuration(150L);
        }
        this.animator.start();
    }

    @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimator
    public void cancelAnimation() {
        this.animator.cancel();
    }

    @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimator
    public boolean isAnimationStarted() {
        return this.animator.isStarted();
    }

    @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimator
    public void addAnimatorListener(SimpleValueAnimatorListener simpleValueAnimatorListener) {
        if (simpleValueAnimatorListener != null) {
            this.animatorListener = simpleValueAnimatorListener;
        }
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.animatorListener.onAnimationStarted();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.animatorListener.onAnimationFinished();
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.animatorListener.onAnimationFinished();
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.animatorListener.onAnimationUpdated(valueAnimator.getAnimatedFraction());
    }
}
