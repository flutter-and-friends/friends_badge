package cn.highlight.core.utils.threadpool;

import cn.highlight.core.utils.threadpool.builder.CachedBuilder;
import cn.highlight.core.utils.threadpool.builder.CustomBuilder;
import cn.highlight.core.utils.threadpool.builder.FixedBuilder;
import cn.highlight.core.utils.threadpool.builder.ScheduledBuilder;
import cn.highlight.core.utils.threadpool.builder.SingleBuilder;
import cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ThreadPoolHelp {

    public static class Builder {
        private int mCorePoolSize;
        private long mKeepAliveTime;
        private int mMaximumPoolSize;
        private String mName;
        private int mSize;
        private ThreadPoolBuilder<ExecutorService> mThreadPoolBuilder;
        private ThreadPoolType mType;
        private TimeUnit mUnit;
        private BlockingQueue<Runnable> mWorkQueue;

        public Builder(ThreadPoolType threadPoolType) {
            this.mName = null;
            this.mType = null;
            this.mSize = 1;
            this.mCorePoolSize = 1;
            this.mMaximumPoolSize = Integer.MAX_VALUE;
            this.mKeepAliveTime = 60L;
            this.mUnit = TimeUnit.SECONDS;
            this.mWorkQueue = new SynchronousQueue();
            this.mThreadPoolBuilder = null;
            this.mType = threadPoolType;
        }

        public Builder(ThreadPoolType threadPoolType, int i) {
            this.mName = null;
            this.mType = null;
            this.mSize = 1;
            this.mCorePoolSize = 1;
            this.mMaximumPoolSize = Integer.MAX_VALUE;
            this.mKeepAliveTime = 60L;
            this.mUnit = TimeUnit.SECONDS;
            this.mWorkQueue = new SynchronousQueue();
            this.mThreadPoolBuilder = null;
            this.mType = threadPoolType;
            this.mSize = i;
        }

        public Builder(ThreadPoolType threadPoolType, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
            this.mName = null;
            this.mType = null;
            this.mSize = 1;
            this.mCorePoolSize = 1;
            this.mMaximumPoolSize = Integer.MAX_VALUE;
            this.mKeepAliveTime = 60L;
            this.mUnit = TimeUnit.SECONDS;
            this.mWorkQueue = new SynchronousQueue();
            this.mThreadPoolBuilder = null;
            this.mType = threadPoolType;
            this.mCorePoolSize = i;
            this.mMaximumPoolSize = i2;
            this.mKeepAliveTime = j;
            this.mUnit = timeUnit;
            this.mWorkQueue = blockingQueue;
        }

        public static Builder cached() {
            return new Builder(ThreadPoolType.CACHED);
        }

        public static Builder fixed(int i) {
            return new Builder(ThreadPoolType.FIXED, i);
        }

        public static Builder single() {
            return new Builder(ThreadPoolType.SINGLE);
        }

        public static Builder schedule(int i) {
            return new Builder(ThreadPoolType.SCHEDULED, i);
        }

        public static Builder custom(int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue) {
            return new Builder(ThreadPoolType.CUSTOM, i, i2, j, timeUnit, blockingQueue);
        }

        public Builder name(String str) {
            this.mName = str;
            return this;
        }

        public ExecutorService builder() {
            createThreadPoolBuilder();
            return this.mThreadPoolBuilder.builder();
        }

        public ScheduledExecutorService scheduleBuilder() {
            createThreadPoolBuilder();
            if (this.mThreadPoolBuilder.builder() instanceof ScheduledExecutorService) {
                return (ScheduledExecutorService) this.mThreadPoolBuilder.builder();
            }
            return null;
        }

        private void createThreadPoolBuilder() {
            if (this.mType == ThreadPoolType.CACHED) {
                this.mThreadPoolBuilder = new CachedBuilder().poolName(this.mName);
                return;
            }
            if (this.mType == ThreadPoolType.FIXED) {
                this.mThreadPoolBuilder = new FixedBuilder().setSize(this.mSize).poolName(this.mName);
                return;
            }
            if (this.mType == ThreadPoolType.SCHEDULED) {
                this.mThreadPoolBuilder = new ScheduledBuilder().poolName(this.mName);
            } else if (this.mType == ThreadPoolType.SINGLE) {
                this.mThreadPoolBuilder = new SingleBuilder().poolName(this.mName);
            } else if (this.mType == ThreadPoolType.CUSTOM) {
                this.mThreadPoolBuilder = new CustomBuilder().corePoolSize(this.mCorePoolSize).maximumPoolSize(this.mMaximumPoolSize).keepAliveTime(this.mKeepAliveTime).unit(this.mUnit).workQueue(this.mWorkQueue).poolName(this.mName);
            }
        }
    }
}
