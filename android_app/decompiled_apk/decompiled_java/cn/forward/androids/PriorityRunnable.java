package cn.forward.androids;

/* loaded from: classes.dex */
public class PriorityRunnable implements CompareRunnable<PriorityRunnable> {
    private final Priority mPriority;
    private final Runnable mRunnable;

    public PriorityRunnable(Priority priority) {
        this(priority, null);
    }

    public PriorityRunnable(Priority priority, Runnable runnable) {
        this.mPriority = priority == null ? Priority.DEFAULT : priority;
        this.mRunnable = runnable;
    }

    @Override // java.lang.Comparable
    public int compareTo(PriorityRunnable priorityRunnable) {
        if (this.mPriority.ordinal() < priorityRunnable.mPriority.ordinal()) {
            return -1;
        }
        return this.mPriority.ordinal() > priorityRunnable.mPriority.ordinal() ? 1 : 0;
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable = this.mRunnable;
        if (runnable != null) {
            runnable.run();
        }
    }
}
