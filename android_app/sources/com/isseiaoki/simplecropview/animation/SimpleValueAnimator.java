package com.isseiaoki.simplecropview.animation;

/* loaded from: classes.dex */
public interface SimpleValueAnimator {
    void addAnimatorListener(SimpleValueAnimatorListener simpleValueAnimatorListener);

    void cancelAnimation();

    boolean isAnimationStarted();

    void startAnimation(long j);
}
