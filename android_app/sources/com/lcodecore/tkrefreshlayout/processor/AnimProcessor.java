package com.lcodecore.tkrefreshlayout.processor;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;
import androidx.recyclerview.widget.RecyclerView;
import com.lcodecore.tkrefreshlayout.TwinklingRefreshLayout;
import com.lcodecore.tkrefreshlayout.utils.LogUtil;
import com.lcodecore.tkrefreshlayout.utils.ScrollingUtil;
import java.util.LinkedList;

/* loaded from: classes.dex */
public class AnimProcessor implements IAnimRefresh, IAnimOverScroll {
    private static final float animFraction = 1.0f;
    private LinkedList<Animator> animQueue;

    /* renamed from: cp */
    private TwinklingRefreshLayout.CoContext f419cp;
    private boolean scrollHeadLocked = false;
    private boolean scrollBottomLocked = false;
    private boolean isAnimHeadToRefresh = false;
    private boolean isAnimHeadBack = false;
    private boolean isAnimBottomToLoad = false;
    private boolean isAnimBottomBack = false;
    private boolean isAnimHeadHide = false;
    private boolean isAnimBottomHide = false;
    private boolean isAnimOsTop = false;
    private boolean isOverScrollTopLocked = false;
    private boolean isAnimOsBottom = false;
    private boolean isOverScrollBottomLocked = false;
    private ValueAnimator.AnimatorUpdateListener animHeadUpListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.10
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (!AnimProcessor.this.scrollHeadLocked || !AnimProcessor.this.f419cp.isEnableKeepIView()) {
                AnimProcessor.this.f419cp.getHeader().getLayoutParams().height = iIntValue;
                AnimProcessor.this.f419cp.getHeader().requestLayout();
                AnimProcessor.this.f419cp.getHeader().setTranslationY(0.0f);
                AnimProcessor.this.f419cp.onPullDownReleasing(iIntValue);
            } else {
                AnimProcessor.this.transHeader(iIntValue);
            }
            if (AnimProcessor.this.f419cp.isOpenFloatRefresh()) {
                return;
            }
            AnimProcessor.this.f419cp.getTargetView().setTranslationY(iIntValue);
            AnimProcessor.this.translateExHead(iIntValue);
        }
    };
    private ValueAnimator.AnimatorUpdateListener animBottomUpListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.11
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (!AnimProcessor.this.scrollBottomLocked || !AnimProcessor.this.f419cp.isEnableKeepIView()) {
                AnimProcessor.this.f419cp.getFooter().getLayoutParams().height = iIntValue;
                AnimProcessor.this.f419cp.getFooter().requestLayout();
                AnimProcessor.this.f419cp.getFooter().setTranslationY(0.0f);
                AnimProcessor.this.f419cp.onPullUpReleasing(iIntValue);
            } else {
                AnimProcessor.this.transFooter(iIntValue);
            }
            AnimProcessor.this.f419cp.getTargetView().setTranslationY(-iIntValue);
        }
    };
    private ValueAnimator.AnimatorUpdateListener overScrollTopUpListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.12
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (AnimProcessor.this.f419cp.isOverScrollTopShow()) {
                if (AnimProcessor.this.f419cp.getHeader().getVisibility() != 0) {
                    AnimProcessor.this.f419cp.getHeader().setVisibility(0);
                }
            } else if (AnimProcessor.this.f419cp.getHeader().getVisibility() != 8) {
                AnimProcessor.this.f419cp.getHeader().setVisibility(8);
            }
            if (!AnimProcessor.this.scrollHeadLocked || !AnimProcessor.this.f419cp.isEnableKeepIView()) {
                AnimProcessor.this.f419cp.getHeader().setTranslationY(0.0f);
                AnimProcessor.this.f419cp.getHeader().getLayoutParams().height = iIntValue;
                AnimProcessor.this.f419cp.getHeader().requestLayout();
                AnimProcessor.this.f419cp.onPullDownReleasing(iIntValue);
            } else {
                AnimProcessor.this.transHeader(iIntValue);
            }
            AnimProcessor.this.f419cp.getTargetView().setTranslationY(iIntValue);
            AnimProcessor.this.translateExHead(iIntValue);
        }
    };
    private ValueAnimator.AnimatorUpdateListener overScrollBottomUpListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.13
        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (AnimProcessor.this.f419cp.isOverScrollBottomShow()) {
                if (AnimProcessor.this.f419cp.getFooter().getVisibility() != 0) {
                    AnimProcessor.this.f419cp.getFooter().setVisibility(0);
                }
            } else if (AnimProcessor.this.f419cp.getFooter().getVisibility() != 8) {
                AnimProcessor.this.f419cp.getFooter().setVisibility(8);
            }
            if (!AnimProcessor.this.scrollBottomLocked || !AnimProcessor.this.f419cp.isEnableKeepIView()) {
                AnimProcessor.this.f419cp.getFooter().getLayoutParams().height = iIntValue;
                AnimProcessor.this.f419cp.getFooter().requestLayout();
                AnimProcessor.this.f419cp.getFooter().setTranslationY(0.0f);
                AnimProcessor.this.f419cp.onPullUpReleasing(iIntValue);
            } else {
                AnimProcessor.this.transFooter(iIntValue);
            }
            AnimProcessor.this.f419cp.getTargetView().setTranslationY(-iIntValue);
        }
    };
    private DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator(8.0f);

    public AnimProcessor(TwinklingRefreshLayout.CoContext coContext) {
        this.f419cp = coContext;
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimRefresh
    public void scrollHeadByMove(float f) {
        float interpolation = (this.decelerateInterpolator.getInterpolation((f / this.f419cp.getMaxHeadHeight()) / 2.0f) * f) / 2.0f;
        if (this.f419cp.isPureScrollModeOn() || (!this.f419cp.enableRefresh() && !this.f419cp.isOverScrollTopShow())) {
            if (this.f419cp.getHeader().getVisibility() != 8) {
                this.f419cp.getHeader().setVisibility(8);
            }
        } else if (this.f419cp.getHeader().getVisibility() != 0) {
            this.f419cp.getHeader().setVisibility(0);
        }
        if (this.scrollHeadLocked && this.f419cp.isEnableKeepIView()) {
            this.f419cp.getHeader().setTranslationY(interpolation - this.f419cp.getHeader().getLayoutParams().height);
        } else {
            this.f419cp.getHeader().setTranslationY(0.0f);
            this.f419cp.getHeader().getLayoutParams().height = (int) Math.abs(interpolation);
            this.f419cp.getHeader().requestLayout();
            this.f419cp.onPullingDown(interpolation);
        }
        if (this.f419cp.isOpenFloatRefresh()) {
            return;
        }
        this.f419cp.getTargetView().setTranslationY(interpolation);
        translateExHead((int) interpolation);
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimRefresh
    public void scrollBottomByMove(float f) {
        float interpolation = (this.decelerateInterpolator.getInterpolation((f / this.f419cp.getMaxBottomHeight()) / 2.0f) * f) / 2.0f;
        if (this.f419cp.isPureScrollModeOn() || (!this.f419cp.enableLoadmore() && !this.f419cp.isOverScrollBottomShow())) {
            if (this.f419cp.getFooter().getVisibility() != 8) {
                this.f419cp.getFooter().setVisibility(8);
            }
        } else if (this.f419cp.getFooter().getVisibility() != 0) {
            this.f419cp.getFooter().setVisibility(0);
        }
        if (this.scrollBottomLocked && this.f419cp.isEnableKeepIView()) {
            this.f419cp.getFooter().setTranslationY(this.f419cp.getFooter().getLayoutParams().height - interpolation);
        } else {
            this.f419cp.getFooter().setTranslationY(0.0f);
            this.f419cp.getFooter().getLayoutParams().height = (int) Math.abs(interpolation);
            this.f419cp.getFooter().requestLayout();
            this.f419cp.onPullingUp(-interpolation);
        }
        this.f419cp.getTargetView().setTranslationY(-interpolation);
    }

    public void dealPullDownRelease() {
        if (!this.f419cp.isPureScrollModeOn() && this.f419cp.enableRefresh() && getVisibleHeadHeight() >= this.f419cp.getHeadHeight() - this.f419cp.getTouchSlop()) {
            animHeadToRefresh();
        } else {
            animHeadBack(false);
        }
    }

    public void dealPullUpRelease() {
        if (!this.f419cp.isPureScrollModeOn() && this.f419cp.enableLoadmore() && getVisibleFootHeight() >= this.f419cp.getBottomHeight() - this.f419cp.getTouchSlop()) {
            animBottomToLoad();
        } else {
            animBottomBack(false);
        }
    }

    private int getVisibleHeadHeight() {
        LogUtil.m313i("header translationY:" + this.f419cp.getHeader().getTranslationY() + ",Visible head height:" + (this.f419cp.getHeader().getLayoutParams().height + this.f419cp.getHeader().getTranslationY()));
        return (int) (this.f419cp.getHeader().getLayoutParams().height + this.f419cp.getHeader().getTranslationY());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getVisibleFootHeight() {
        LogUtil.m313i("footer translationY:" + this.f419cp.getFooter().getTranslationY() + "");
        return (int) (this.f419cp.getFooter().getLayoutParams().height - this.f419cp.getFooter().getTranslationY());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void transHeader(float f) {
        this.f419cp.getHeader().setTranslationY(f - this.f419cp.getHeader().getLayoutParams().height);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void transFooter(float f) {
        this.f419cp.getFooter().setTranslationY(this.f419cp.getFooter().getLayoutParams().height - f);
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimRefresh
    public void animHeadToRefresh() {
        LogUtil.m313i("animHeadToRefresh:");
        this.isAnimHeadToRefresh = true;
        animLayoutByTime(getVisibleHeadHeight(), this.f419cp.getHeadHeight(), this.animHeadUpListener, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimProcessor.this.isAnimHeadToRefresh = false;
                if (AnimProcessor.this.f419cp.getHeader().getVisibility() != 0) {
                    AnimProcessor.this.f419cp.getHeader().setVisibility(0);
                }
                AnimProcessor.this.f419cp.setRefreshVisible(true);
                if (AnimProcessor.this.f419cp.isEnableKeepIView()) {
                    if (AnimProcessor.this.scrollHeadLocked) {
                        return;
                    }
                    AnimProcessor.this.f419cp.setRefreshing(true);
                    AnimProcessor.this.f419cp.onRefresh();
                    AnimProcessor.this.scrollHeadLocked = true;
                    return;
                }
                AnimProcessor.this.f419cp.setRefreshing(true);
                AnimProcessor.this.f419cp.onRefresh();
            }
        });
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimRefresh
    public void animHeadBack(final boolean z) {
        LogUtil.m313i("animHeadBack：finishRefresh?->" + z);
        this.isAnimHeadBack = true;
        if (z && this.scrollHeadLocked && this.f419cp.isEnableKeepIView()) {
            this.f419cp.setPrepareFinishRefresh(true);
        }
        animLayoutByTime(getVisibleHeadHeight(), 0, this.animHeadUpListener, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimProcessor.this.isAnimHeadBack = false;
                AnimProcessor.this.f419cp.setRefreshVisible(false);
                if (z && AnimProcessor.this.scrollHeadLocked && AnimProcessor.this.f419cp.isEnableKeepIView()) {
                    AnimProcessor.this.f419cp.getHeader().getLayoutParams().height = 0;
                    AnimProcessor.this.f419cp.getHeader().requestLayout();
                    AnimProcessor.this.f419cp.getHeader().setTranslationY(0.0f);
                    AnimProcessor.this.scrollHeadLocked = false;
                    AnimProcessor.this.f419cp.setRefreshing(false);
                    AnimProcessor.this.f419cp.resetHeaderView();
                }
            }
        });
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimRefresh
    public void animBottomToLoad() {
        LogUtil.m313i("animBottomToLoad");
        this.isAnimBottomToLoad = true;
        animLayoutByTime(getVisibleFootHeight(), this.f419cp.getBottomHeight(), this.animBottomUpListener, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.3
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimProcessor.this.isAnimBottomToLoad = false;
                if (AnimProcessor.this.f419cp.getFooter().getVisibility() != 0) {
                    AnimProcessor.this.f419cp.getFooter().setVisibility(0);
                }
                AnimProcessor.this.f419cp.setLoadVisible(true);
                if (AnimProcessor.this.f419cp.isEnableKeepIView()) {
                    if (AnimProcessor.this.scrollBottomLocked) {
                        return;
                    }
                    AnimProcessor.this.f419cp.setLoadingMore(true);
                    AnimProcessor.this.f419cp.onLoadMore();
                    AnimProcessor.this.scrollBottomLocked = true;
                    return;
                }
                AnimProcessor.this.f419cp.setLoadingMore(true);
                AnimProcessor.this.f419cp.onLoadMore();
            }
        });
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimRefresh
    public void animBottomBack(final boolean z) {
        LogUtil.m313i("animBottomBack：finishLoading?->" + z);
        this.isAnimBottomBack = true;
        if (z && this.scrollBottomLocked && this.f419cp.isEnableKeepIView()) {
            this.f419cp.setPrepareFinishLoadMore(true);
        }
        animLayoutByTime(getVisibleFootHeight(), 0, new ValueAnimator.AnimatorUpdateListener() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.4
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int visibleFootHeight;
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                if (!ScrollingUtil.isViewToBottom(AnimProcessor.this.f419cp.getTargetView(), AnimProcessor.this.f419cp.getTouchSlop()) && (visibleFootHeight = AnimProcessor.this.getVisibleFootHeight() - iIntValue) > 0) {
                    if (AnimProcessor.this.f419cp.getTargetView() instanceof RecyclerView) {
                        ScrollingUtil.scrollAViewBy(AnimProcessor.this.f419cp.getTargetView(), visibleFootHeight);
                    } else {
                        ScrollingUtil.scrollAViewBy(AnimProcessor.this.f419cp.getTargetView(), visibleFootHeight / 2);
                    }
                }
                AnimProcessor.this.animBottomUpListener.onAnimationUpdate(valueAnimator);
            }
        }, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimProcessor.this.isAnimBottomBack = false;
                AnimProcessor.this.f419cp.setLoadVisible(false);
                if (z && AnimProcessor.this.scrollBottomLocked && AnimProcessor.this.f419cp.isEnableKeepIView()) {
                    AnimProcessor.this.f419cp.getFooter().getLayoutParams().height = 0;
                    AnimProcessor.this.f419cp.getFooter().requestLayout();
                    AnimProcessor.this.f419cp.getFooter().setTranslationY(0.0f);
                    AnimProcessor.this.scrollBottomLocked = false;
                    AnimProcessor.this.f419cp.resetBottomView();
                    AnimProcessor.this.f419cp.setLoadingMore(false);
                }
            }
        });
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimRefresh
    public void animHeadHideByVy(int i) {
        if (this.isAnimHeadHide) {
            return;
        }
        this.isAnimHeadHide = true;
        LogUtil.m313i("animHeadHideByVy：vy->" + i);
        int iAbs = Math.abs(i);
        if (iAbs < 5000) {
            iAbs = 8000;
        }
        animLayoutByTime(getVisibleHeadHeight(), 0, Math.abs((getVisibleHeadHeight() * 1000) / iAbs) * 5, this.animHeadUpListener, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.6
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimProcessor.this.isAnimHeadHide = false;
                AnimProcessor.this.f419cp.setRefreshVisible(false);
                if (AnimProcessor.this.f419cp.isEnableKeepIView()) {
                    return;
                }
                AnimProcessor.this.f419cp.setRefreshing(false);
                AnimProcessor.this.f419cp.onRefreshCanceled();
                AnimProcessor.this.f419cp.resetHeaderView();
            }
        });
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimRefresh
    public void animBottomHideByVy(int i) {
        LogUtil.m313i("animBottomHideByVy：vy->" + i);
        if (this.isAnimBottomHide) {
            return;
        }
        this.isAnimBottomHide = true;
        int iAbs = Math.abs(i);
        if (iAbs < 5000) {
            iAbs = 8000;
        }
        animLayoutByTime(getVisibleFootHeight(), 0, ((getVisibleFootHeight() * 5) * 1000) / iAbs, this.animBottomUpListener, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.7
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                AnimProcessor.this.isAnimBottomHide = false;
                AnimProcessor.this.f419cp.setLoadVisible(false);
                if (AnimProcessor.this.f419cp.isEnableKeepIView()) {
                    return;
                }
                AnimProcessor.this.f419cp.setLoadingMore(false);
                AnimProcessor.this.f419cp.onLoadmoreCanceled();
                AnimProcessor.this.f419cp.resetBottomView();
            }
        });
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimOverScroll
    public void animOverScrollTop(float f, int i) {
        LogUtil.m313i("animOverScrollTop：vy->" + f + ",computeTimes->" + i);
        if (this.isOverScrollTopLocked) {
            return;
        }
        this.isOverScrollTopLocked = true;
        this.isAnimOsTop = true;
        this.f419cp.setStatePTD();
        int iAbs = (int) Math.abs((f / i) / 2.0f);
        if (iAbs > this.f419cp.getOsHeight()) {
            iAbs = this.f419cp.getOsHeight();
        }
        final int i2 = iAbs;
        final int i3 = i2 <= 50 ? 115 : (int) ((i2 * 0.3d) + 100.0d);
        animLayoutByTime(getVisibleHeadHeight(), i2, i3, this.overScrollTopUpListener, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.8
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (AnimProcessor.this.scrollHeadLocked && AnimProcessor.this.f419cp.isEnableKeepIView() && AnimProcessor.this.f419cp.showRefreshingWhenOverScroll()) {
                    AnimProcessor.this.animHeadToRefresh();
                    AnimProcessor.this.isAnimOsTop = false;
                    AnimProcessor.this.isOverScrollTopLocked = false;
                } else {
                    AnimProcessor animProcessor = AnimProcessor.this;
                    animProcessor.animLayoutByTime(i2, 0, i3 * 2, animProcessor.overScrollTopUpListener, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.8.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            AnimProcessor.this.isAnimOsTop = false;
                            AnimProcessor.this.isOverScrollTopLocked = false;
                        }
                    });
                }
            }
        });
    }

    @Override // com.lcodecore.tkrefreshlayout.processor.IAnimOverScroll
    public void animOverScrollBottom(float f, int i) {
        LogUtil.m313i("animOverScrollBottom：vy->" + f + ",computeTimes->" + i);
        if (this.isOverScrollBottomLocked) {
            return;
        }
        this.f419cp.setStatePBU();
        int iAbs = (int) Math.abs((f / i) / 2.0f);
        if (iAbs > this.f419cp.getOsHeight()) {
            iAbs = this.f419cp.getOsHeight();
        }
        final int i2 = iAbs;
        final int i3 = i2 <= 50 ? 115 : (int) ((i2 * 0.3d) + 100.0d);
        if (!this.scrollBottomLocked && this.f419cp.autoLoadMore()) {
            this.f419cp.startLoadMore();
            return;
        }
        this.isOverScrollBottomLocked = true;
        this.isAnimOsBottom = true;
        animLayoutByTime(0, i2, i3, this.overScrollBottomUpListener, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.9
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (AnimProcessor.this.scrollBottomLocked && AnimProcessor.this.f419cp.isEnableKeepIView() && AnimProcessor.this.f419cp.showLoadingWhenOverScroll()) {
                    AnimProcessor.this.animBottomToLoad();
                    AnimProcessor.this.isAnimOsBottom = false;
                    AnimProcessor.this.isOverScrollBottomLocked = false;
                } else {
                    AnimProcessor animProcessor = AnimProcessor.this;
                    animProcessor.animLayoutByTime(i2, 0, i3 * 2, animProcessor.overScrollBottomUpListener, new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.9.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator2) {
                            AnimProcessor.this.isAnimOsBottom = false;
                            AnimProcessor.this.isOverScrollBottomLocked = false;
                        }
                    });
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void translateExHead(int i) {
        if (this.f419cp.isExHeadLocked()) {
            return;
        }
        this.f419cp.getExHead().setTranslationY(i);
    }

    public void animLayoutByTime(int i, int i2, long j, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, Animator.AnimatorListener animatorListener) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(animatorUpdateListener);
        valueAnimatorOfInt.addListener(animatorListener);
        valueAnimatorOfInt.setDuration(j);
        valueAnimatorOfInt.start();
    }

    public void animLayoutByTime(int i, int i2, long j, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(animatorUpdateListener);
        valueAnimatorOfInt.setDuration(j);
        valueAnimatorOfInt.start();
    }

    public void animLayoutByTime(int i, int i2, ValueAnimator.AnimatorUpdateListener animatorUpdateListener, Animator.AnimatorListener animatorListener) {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(i, i2);
        valueAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(animatorUpdateListener);
        valueAnimatorOfInt.addListener(animatorListener);
        valueAnimatorOfInt.setDuration((int) (Math.abs(i - i2) * 1.0f));
        valueAnimatorOfInt.start();
    }

    private void offerToQueue(Animator animator) {
        if (animator == null) {
            return;
        }
        if (this.animQueue == null) {
            this.animQueue = new LinkedList<>();
        }
        this.animQueue.offer(animator);
        System.out.println("Current Animators：" + this.animQueue.size());
        animator.addListener(new AnimatorListenerAdapter() { // from class: com.lcodecore.tkrefreshlayout.processor.AnimProcessor.14
            long startTime = 0;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator2) {
                this.startTime = System.currentTimeMillis();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator2) {
                AnimProcessor.this.animQueue.poll();
                if (AnimProcessor.this.animQueue.size() > 0) {
                    ((Animator) AnimProcessor.this.animQueue.getFirst()).start();
                }
                System.out.println("Anim end：start time->" + this.startTime + ",elapsed time->" + (System.currentTimeMillis() - this.startTime));
            }
        });
        if (this.animQueue.size() == 1) {
            animator.start();
        }
    }
}
