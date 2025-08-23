package cn.highlight.core.utils.threadpool.builder;

import cn.highlight.core.utils.threadpool.ThreadPoolType;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class CustomBuilder extends ThreadPoolBuilder<ExecutorService> {
    private int mCorePoolSize = 1;
    private int mMaximumPoolSize = Integer.MAX_VALUE;
    private long mKeepAliveTime = 60;
    private TimeUnit mUnit = TimeUnit.SECONDS;
    private BlockingQueue<Runnable> mWorkQueue = new SynchronousQueue();

    @Override // cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder
    protected ExecutorService create() {
        return new ThreadPoolExecutor(this.mCorePoolSize, this.mMaximumPoolSize, this.mKeepAliveTime, this.mUnit, this.mWorkQueue);
    }

    @Override // cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder
    protected ThreadPoolType getType() {
        return ThreadPoolType.CUSTOM;
    }

    public CustomBuilder corePoolSize(int i) {
        this.mCorePoolSize = i;
        return this;
    }

    public CustomBuilder maximumPoolSize(int i) {
        this.mMaximumPoolSize = i;
        return this;
    }

    public CustomBuilder keepAliveTime(long j) {
        this.mKeepAliveTime = j;
        return this;
    }

    public CustomBuilder unit(TimeUnit timeUnit) {
        this.mUnit = timeUnit;
        return this;
    }

    public CustomBuilder workQueue(BlockingQueue<Runnable> blockingQueue) {
        this.mWorkQueue = blockingQueue;
        return this;
    }
}
