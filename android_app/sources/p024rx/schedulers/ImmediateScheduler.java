package p024rx.schedulers;

import p024rx.Scheduler;

@Deprecated
/* loaded from: classes2.dex */
public final class ImmediateScheduler extends Scheduler {
    @Override // p024rx.Scheduler
    public Scheduler.Worker createWorker() {
        return null;
    }

    private ImmediateScheduler() {
        throw new IllegalStateException("No instances!");
    }
}
