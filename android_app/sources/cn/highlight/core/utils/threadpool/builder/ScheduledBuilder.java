package cn.highlight.core.utils.threadpool.builder;

import cn.highlight.core.utils.threadpool.ThreadPoolType;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public class ScheduledBuilder extends ThreadPoolBuilder<ExecutorService> {
    private int mSize = 1;
    protected ScheduledExecutorService mExecutorService = null;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder
    public ScheduledExecutorService create() {
        return Executors.newScheduledThreadPool(this.mSize);
    }

    @Override // cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder
    protected ThreadPoolType getType() {
        return ThreadPoolType.SCHEDULED;
    }

    @Override // cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder
    public ScheduledExecutorService builder() {
        if (mThreadPoolMap.get(getType() + "_" + this.mPoolName) != null) {
            this.mExecutorService = (ScheduledExecutorService) mThreadPoolMap.get(getType() + "_" + this.mPoolName);
        } else {
            this.mExecutorService = create();
            mThreadPoolMap.put(getType() + "_" + this.mPoolName, this.mExecutorService);
        }
        return this.mExecutorService;
    }

    public ScheduledExecutorService getExecutorService() {
        return this.mExecutorService;
    }

    public ScheduledBuilder size(int i) {
        this.mSize = i;
        return this;
    }
}
