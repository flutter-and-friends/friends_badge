package com.chad.library.adapter.base.animation;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SlideInLeftAnimation.kt */
@Metadata(m847bv = {1, 0, 3}, m848d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¢\u0006\u0002\u0010\b¨\u0006\t"}, m849d2 = {"Lcom/chad/library/adapter/base/animation/SlideInLeftAnimation;", "Lcom/chad/library/adapter/base/animation/BaseAnimation;", "()V", "animators", "", "Landroid/animation/Animator;", "view", "Landroid/view/View;", "(Landroid/view/View;)[Landroid/animation/Animator;", "com.github.CymChad.brvah"}, m850k = 1, m851mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class SlideInLeftAnimation implements BaseAnimation {
    @Override // com.chad.library.adapter.base.animation.BaseAnimation
    public Animator[] animators(View view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkExpressionValueIsNotNull(view.getRootView(), "view.rootView");
        ObjectAnimator animator = ObjectAnimator.ofFloat(view, "translationX", -r1.getWidth(), 0.0f);
        Intrinsics.checkExpressionValueIsNotNull(animator, "animator");
        animator.setDuration(400L);
        animator.setInterpolator(new DecelerateInterpolator(1.8f));
        return new Animator[]{animator};
    }
}
