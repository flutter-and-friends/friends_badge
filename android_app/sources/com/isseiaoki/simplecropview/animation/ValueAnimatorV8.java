package com.isseiaoki.simplecropview.animation;

import android.os.SystemClock;
import android.view.animation.Interpolator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ValueAnimatorV8 implements SimpleValueAnimator {
    private static final int DEFAULT_ANIMATION_DURATION = 150;
    private static final int FRAME_RATE = 30;
    private static final int UPDATE_SPAN = Math.round(33.333332f);
    long duration;
    private Interpolator mInterpolator;
    ScheduledExecutorService service;
    long start;
    boolean isAnimationStarted = false;
    private SimpleValueAnimatorListener animatorListener = new SimpleValueAnimatorListener() { // from class: com.isseiaoki.simplecropview.animation.ValueAnimatorV8.1
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
    private final Runnable runnable = new Runnable() { // from class: com.isseiaoki.simplecropview.animation.ValueAnimatorV8.2
        @Override // java.lang.Runnable
        public void run() {
            long jUptimeMillis = SystemClock.uptimeMillis() - ValueAnimatorV8.this.start;
            if (jUptimeMillis <= ValueAnimatorV8.this.duration) {
                ValueAnimatorV8.this.animatorListener.onAnimationUpdated(Math.min(ValueAnimatorV8.this.mInterpolator.getInterpolation(jUptimeMillis / ValueAnimatorV8.this.duration), 1.0f));
            } else {
                ValueAnimatorV8 valueAnimatorV8 = ValueAnimatorV8.this;
                valueAnimatorV8.isAnimationStarted = false;
                valueAnimatorV8.animatorListener.onAnimationFinished();
                ValueAnimatorV8.this.service.shutdown();
            }
        }
    };

    public ValueAnimatorV8(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimator
    public void startAnimation(long j) {
        if (j >= 0) {
            this.duration = j;
        } else {
            this.duration = 150L;
        }
        this.isAnimationStarted = true;
        this.animatorListener.onAnimationStarted();
        this.start = SystemClock.uptimeMillis();
        this.service = Executors.newSingleThreadScheduledExecutor();
        this.service.scheduleAtFixedRate(this.runnable, 0L, UPDATE_SPAN, TimeUnit.MILLISECONDS);
    }

    @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimator
    public void cancelAnimation() {
        this.isAnimationStarted = false;
        this.service.shutdown();
        this.animatorListener.onAnimationFinished();
    }

    @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimator
    public boolean isAnimationStarted() {
        return this.isAnimationStarted;
    }

    @Override // com.isseiaoki.simplecropview.animation.SimpleValueAnimator
    public void addAnimatorListener(SimpleValueAnimatorListener simpleValueAnimatorListener) {
        if (simpleValueAnimatorListener != null) {
            this.animatorListener = simpleValueAnimatorListener;
        }
    }
}
