package cn.forward.androids.utils;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateDecelerateInterpolator;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class AnimatorUtil {
    private static final TimeInterpolator sDefaultInterpolator = new AccelerateDecelerateInterpolator();

    public static AnimatorSetWrap createAnimator() {
        return new AnimatorSetWrap();
    }

    public static AnimatorSetWrap createAnimator(TimeInterpolator timeInterpolator) {
        return new AnimatorSetWrap(timeInterpolator);
    }

    public static class AnimatorSetWrap {
        public static final long DEFAULT_DURATION = 300;
        private AnimatorSet mAnimatorSet;
        private AnimatorSet.Builder mAnimatorSetBuilder;
        private ArrayList<Animator> mAnimatorsThen;
        private int mCurrentRepeat;
        private boolean mHasInitThenAnim;
        private boolean mIsCanceled;
        private boolean mIsPlaying;
        private int mRepeatCount;
        private ScheduledExecutorService mRepeatSchedule;
        private TimeInterpolator mTimeInterpolator;
        private View mView;

        static /* synthetic */ int access$808(AnimatorSetWrap animatorSetWrap) {
            int i = animatorSetWrap.mCurrentRepeat;
            animatorSetWrap.mCurrentRepeat = i + 1;
            return i;
        }

        public AnimatorSetWrap() {
            this(AnimatorUtil.sDefaultInterpolator);
        }

        public AnimatorSetWrap(TimeInterpolator timeInterpolator) {
            this.mAnimatorsThen = new ArrayList<>();
            this.mIsPlaying = false;
            this.mHasInitThenAnim = false;
            this.mRepeatCount = 0;
            this.mRepeatCount = 0;
            this.mAnimatorSet = new AnimatorSet();
            this.mTimeInterpolator = timeInterpolator;
        }

        public AnimatorSetWrap setRepeatCount(int i) {
            this.mRepeatCount = i;
            return this;
        }

        public int getRepeatCount() {
            return this.mRepeatCount;
        }

        public AnimatorSetWrap play(View view, String str, float... fArr) {
            return play(view, 300L, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap play(View view, long j, String str, float... fArr) {
            return play(view, j, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap play(View view, long j, Animator.AnimatorListener animatorListener, String str, float... fArr) {
            return play(view, j, animatorListener, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap play(View view, long j, Animator.AnimatorListener animatorListener, TimeInterpolator timeInterpolator, String str, float... fArr) {
            if (this.mIsPlaying) {
                throw new RuntimeException("AnimatorSetWrap.play()方法只能调用一次");
            }
            if (view == null) {
                throw new RuntimeException("view 不能为空");
            }
            this.mIsPlaying = true;
            this.mView = view;
            ObjectAnimator duration = ObjectAnimator.ofFloat(view, str, fArr).setDuration(j);
            duration.setInterpolator(timeInterpolator);
            if (animatorListener != null) {
                duration.addListener(animatorListener);
            }
            this.mAnimatorsThen.clear();
            this.mAnimatorSetBuilder = this.mAnimatorSet.play(duration);
            return this;
        }

        public AnimatorSetWrap play(Animator animator) {
            this.mAnimatorSetBuilder = this.mAnimatorSet.play(animator);
            return this;
        }

        public AnimatorSetWrap play(AnimatorSetWrap animatorSetWrap) {
            this.mAnimatorSetBuilder = this.mAnimatorSet.play(animatorSetWrap.getAnimatorSet());
            return this;
        }

        public AnimatorSetWrap with(View view, String str, float... fArr) {
            return with(view, 300L, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap with(View view, long j, String str, float... fArr) {
            return with(view, j, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap with(View view, long j, Animator.AnimatorListener animatorListener, String str, float... fArr) {
            return with(view, j, animatorListener, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap with(View view, long j, Animator.AnimatorListener animatorListener, TimeInterpolator timeInterpolator, String str, float... fArr) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(view, str, fArr).setDuration(j);
            duration.setInterpolator(timeInterpolator);
            if (animatorListener != null) {
                duration.addListener(animatorListener);
            }
            this.mAnimatorSetBuilder = this.mAnimatorSetBuilder.with(duration);
            return this;
        }

        public AnimatorSetWrap with(Animator animator) {
            this.mAnimatorSetBuilder = this.mAnimatorSetBuilder.with(animator);
            return this;
        }

        public AnimatorSetWrap with(AnimatorSetWrap animatorSetWrap) {
            this.mAnimatorSetBuilder = this.mAnimatorSetBuilder.with(animatorSetWrap.getAnimatorSet());
            return this;
        }

        public AnimatorSetWrap before(View view, String str, float... fArr) {
            return before(view, 300L, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap before(View view, long j, String str, float... fArr) {
            return before(view, j, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap before(View view, long j, Animator.AnimatorListener animatorListener, String str, float... fArr) {
            return before(view, j, animatorListener, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap before(View view, long j, Animator.AnimatorListener animatorListener, TimeInterpolator timeInterpolator, String str, float... fArr) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(view, str, fArr).setDuration(j);
            duration.setInterpolator(timeInterpolator);
            if (animatorListener != null) {
                duration.addListener(animatorListener);
            }
            this.mAnimatorSetBuilder = this.mAnimatorSetBuilder.before(duration);
            return this;
        }

        public AnimatorSetWrap before(Animator animator) {
            this.mAnimatorSetBuilder = this.mAnimatorSetBuilder.before(animator);
            return this;
        }

        public AnimatorSetWrap before(AnimatorSetWrap animatorSetWrap) {
            this.mAnimatorSetBuilder = this.mAnimatorSetBuilder.before(animatorSetWrap.getAnimatorSet());
            return this;
        }

        public AnimatorSetWrap after(View view, String str, float... fArr) {
            return after(view, 300L, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap after(View view, long j, String str, float... fArr) {
            return after(view, j, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap after(View view, long j, Animator.AnimatorListener animatorListener, String str, float... fArr) {
            return after(view, j, animatorListener, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap after(View view, long j, Animator.AnimatorListener animatorListener, TimeInterpolator timeInterpolator, String str, float... fArr) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(view, str, fArr).setDuration(j);
            duration.setInterpolator(timeInterpolator);
            if (animatorListener != null) {
                duration.addListener(animatorListener);
            }
            this.mAnimatorSetBuilder = this.mAnimatorSetBuilder.after(duration);
            return this;
        }

        public AnimatorSetWrap after(Animator animator) {
            this.mAnimatorSetBuilder = this.mAnimatorSetBuilder.after(animator);
            return this;
        }

        public AnimatorSetWrap after(AnimatorSetWrap animatorSetWrap) {
            this.mAnimatorSetBuilder = this.mAnimatorSetBuilder.after(animatorSetWrap.getAnimatorSet());
            return this;
        }

        public AnimatorSetWrap after(long j) {
            this.mAnimatorSetBuilder.after(j);
            return this;
        }

        public AnimatorSetWrap then(View view, String str, float... fArr) {
            return then(view, 300L, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap then(View view, long j, String str, float... fArr) {
            return then(view, j, null, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap then(View view, long j, Animator.AnimatorListener animatorListener, String str, float... fArr) {
            return then(view, j, animatorListener, this.mTimeInterpolator, str, fArr);
        }

        public AnimatorSetWrap then(View view, long j, Animator.AnimatorListener animatorListener, TimeInterpolator timeInterpolator, String str, float... fArr) {
            ObjectAnimator duration = ObjectAnimator.ofFloat(view, str, fArr).setDuration(j);
            duration.setInterpolator(timeInterpolator);
            if (animatorListener != null) {
                duration.addListener(animatorListener);
            }
            then(duration);
            return this;
        }

        public AnimatorSetWrap then(Animator animator) {
            this.mAnimatorsThen.add(animator);
            return this;
        }

        public AnimatorSetWrap then(AnimatorSetWrap animatorSetWrap) {
            this.mAnimatorsThen.add(animatorSetWrap.getAnimatorSet());
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void shutdownRepeat() {
            ScheduledExecutorService scheduledExecutorService = this.mRepeatSchedule;
            if (scheduledExecutorService != null) {
                try {
                    scheduledExecutorService.shutdownNow();
                    this.mRepeatSchedule = null;
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

        private void handleRepeat() {
            shutdownRepeat();
            this.mCurrentRepeat = 0;
            if (this.mRepeatCount == 0) {
                return;
            }
            this.mAnimatorSet.addListener(new AnonymousClass1());
        }

        /* renamed from: cn.forward.androids.utils.AnimatorUtil$AnimatorSetWrap$1, reason: invalid class name */
        class AnonymousClass1 extends AnimatorListenerAdapter {
            long mEnd;
            long mStart;

            AnonymousClass1() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                this.mStart = System.currentTimeMillis();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                this.mEnd = System.currentTimeMillis();
                AnimatorSetWrap.this.mAnimatorSet.removeListener(this);
                if (Build.VERSION.SDK_INT >= 12) {
                    AnimatorSetWrap.this.mView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: cn.forward.androids.utils.AnimatorUtil.AnimatorSetWrap.1.1
                        @Override // android.view.View.OnAttachStateChangeListener
                        public void onViewAttachedToWindow(View view) {
                        }

                        @Override // android.view.View.OnAttachStateChangeListener
                        public void onViewDetachedFromWindow(View view) {
                            AnimatorSetWrap.this.cancel();
                        }
                    });
                }
                repeat();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public void repeat() {
                if (AnimatorSetWrap.this.mView == null || AnimatorSetWrap.this.mIsCanceled) {
                    AnimatorSetWrap.this.shutdownRepeat();
                    return;
                }
                AnimatorSetWrap.this.mRepeatSchedule = Executors.newSingleThreadScheduledExecutor();
                AnimatorSetWrap.this.mRepeatSchedule.scheduleAtFixedRate(new Runnable() { // from class: cn.forward.androids.utils.AnimatorUtil.AnimatorSetWrap.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        LogUtil.d("hzw", "animator schedule");
                        if (AnimatorSetWrap.this.mIsCanceled) {
                            AnimatorSetWrap.this.shutdownRepeat();
                            return;
                        }
                        if (!AnimatorUtil.isVisibleOnScreen(AnimatorSetWrap.this.mView)) {
                            AnimatorSetWrap.this.shutdownRepeat();
                            AnimatorSetWrap.this.mView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: cn.forward.androids.utils.AnimatorUtil.AnimatorSetWrap.1.2.1
                                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                                public boolean onPreDraw() {
                                    if (!AnimatorUtil.isVisibleOnScreen(AnimatorSetWrap.this.mView)) {
                                        return true;
                                    }
                                    AnimatorSetWrap.this.mView.getViewTreeObserver().removeOnPreDrawListener(this);
                                    AnonymousClass1.this.repeat();
                                    return true;
                                }
                            });
                            return;
                        }
                        AnimatorSetWrap.this.mView.post(new Runnable() { // from class: cn.forward.androids.utils.AnimatorUtil.AnimatorSetWrap.1.2.2
                            @Override // java.lang.Runnable
                            public void run() {
                                AnimatorSetWrap.this.mAnimatorSet.cancel();
                                AnimatorSetWrap.this.mAnimatorSet.start();
                            }
                        });
                        if (AnimatorSetWrap.this.mRepeatCount > 0) {
                            AnimatorSetWrap.access$808(AnimatorSetWrap.this);
                            if (AnimatorSetWrap.this.mCurrentRepeat == AnimatorSetWrap.this.mRepeatCount) {
                                AnimatorSetWrap.this.shutdownRepeat();
                            }
                        }
                    }
                }, 0L, this.mEnd - this.mStart, TimeUnit.MILLISECONDS);
            }
        }

        private void beforeStart() {
            this.mIsCanceled = false;
            handleRepeat();
            if (this.mHasInitThenAnim) {
                return;
            }
            this.mHasInitThenAnim = true;
            if (this.mAnimatorsThen.size() > 0) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playSequentially(this.mAnimatorsThen);
                this.mAnimatorSetBuilder.before(animatorSet);
            }
        }

        public void start() {
            beforeStart();
            this.mAnimatorSet.start();
        }

        public void start(long j) {
            beforeStart();
            this.mAnimatorSet.setDuration(j);
            this.mAnimatorSet.start();
        }

        public void startDelay(long j) {
            beforeStart();
            this.mAnimatorSet.setStartDelay(j);
            this.mAnimatorSet.start();
        }

        public void cancel() {
            this.mIsCanceled = true;
            shutdownRepeat();
            this.mAnimatorSet.cancel();
            this.mCurrentRepeat = Integer.MAX_VALUE;
        }

        private AnimatorSet getAnimatorSet() {
            return this.mAnimatorSet;
        }

        public AnimatorSetWrap setListener(Animator.AnimatorListener animatorListener) {
            this.mAnimatorSet.addListener(animatorListener);
            return this;
        }

        public ArrayList<Animator.AnimatorListener> getListeners() {
            return this.mAnimatorSet.getListeners();
        }

        public void removeListner(Animator.AnimatorListener animatorListener) {
            this.mAnimatorSet.removeListener(animatorListener);
        }

        public void removeAllListeners() {
            this.mAnimatorSet.removeAllListeners();
        }
    }

    public static boolean isVisibleOnScreen(View view) {
        return view != null && view.getWindowVisibility() == 0 && view.getVisibility() == 0 && view.isShown();
    }
}
