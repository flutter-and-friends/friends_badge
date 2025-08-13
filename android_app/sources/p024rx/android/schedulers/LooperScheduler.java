package p024rx.android.schedulers;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.concurrent.TimeUnit;
import p024rx.Scheduler;
import p024rx.Subscription;
import p024rx.android.plugins.RxAndroidPlugins;
import p024rx.android.plugins.RxAndroidSchedulersHook;
import p024rx.exceptions.OnErrorNotImplementedException;
import p024rx.functions.Action0;
import p024rx.plugins.RxJavaPlugins;
import p024rx.subscriptions.Subscriptions;

/* loaded from: classes2.dex */
class LooperScheduler extends Scheduler {
    private final Handler handler;

    LooperScheduler(Looper looper) {
        this.handler = new Handler(looper);
    }

    LooperScheduler(Handler handler) {
        this.handler = handler;
    }

    @Override // p024rx.Scheduler
    public Scheduler.Worker createWorker() {
        return new HandlerWorker(this.handler);
    }

    static class HandlerWorker extends Scheduler.Worker {
        private final Handler handler;
        private final RxAndroidSchedulersHook hook = RxAndroidPlugins.getInstance().getSchedulersHook();
        private volatile boolean unsubscribed;

        HandlerWorker(Handler handler) {
            this.handler = handler;
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            this.unsubscribed = true;
            this.handler.removeCallbacksAndMessages(this);
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return this.unsubscribed;
        }

        @Override // rx.Scheduler.Worker
        public Subscription schedule(Action0 action0, long j, TimeUnit timeUnit) {
            if (this.unsubscribed) {
                return Subscriptions.unsubscribed();
            }
            ScheduledAction scheduledAction = new ScheduledAction(this.hook.onSchedule(action0), this.handler);
            Message messageObtain = Message.obtain(this.handler, scheduledAction);
            messageObtain.obj = this;
            this.handler.sendMessageDelayed(messageObtain, timeUnit.toMillis(j));
            if (!this.unsubscribed) {
                return scheduledAction;
            }
            this.handler.removeCallbacks(scheduledAction);
            return Subscriptions.unsubscribed();
        }

        @Override // rx.Scheduler.Worker
        public Subscription schedule(Action0 action0) {
            return schedule(action0, 0L, TimeUnit.MILLISECONDS);
        }
    }

    static final class ScheduledAction implements Runnable, Subscription {
        private final Action0 action;
        private final Handler handler;
        private volatile boolean unsubscribed;

        ScheduledAction(Action0 action0, Handler handler) {
            this.action = action0;
            this.handler = handler;
        }

        @Override // java.lang.Runnable
        public void run() {
            IllegalStateException illegalStateException;
            try {
                this.action.call();
            } catch (Throwable th) {
                if (th instanceof OnErrorNotImplementedException) {
                    illegalStateException = new IllegalStateException("Exception thrown on Scheduler.Worker thread. Add `onError` handling.", th);
                } else {
                    illegalStateException = new IllegalStateException("Fatal Exception thrown on Scheduler.Worker thread.", th);
                }
                RxJavaPlugins.getInstance().getErrorHandler().handleError(illegalStateException);
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, illegalStateException);
            }
        }

        @Override // p024rx.Subscription
        public void unsubscribe() {
            this.unsubscribed = true;
            this.handler.removeCallbacks(this);
        }

        @Override // p024rx.Subscription
        public boolean isUnsubscribed() {
            return this.unsubscribed;
        }
    }
}
