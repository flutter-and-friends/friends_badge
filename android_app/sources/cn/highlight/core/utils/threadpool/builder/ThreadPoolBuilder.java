package cn.highlight.core.utils.threadpool.builder;

import cn.highlight.core.utils.threadpool.ThreadPoolType;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public abstract class ThreadPoolBuilder<T extends ExecutorService> {
    protected static Map<String, ExecutorService> mThreadPoolMap = new ConcurrentHashMap();
    protected ExecutorService mExecutorService = null;
    protected String mPoolName = "default";

    protected abstract T create();

    protected abstract ThreadPoolType getType();

    public ExecutorService builder() {
        if (mThreadPoolMap.get(getType() + "_" + this.mPoolName) != null) {
            this.mExecutorService = mThreadPoolMap.get(getType() + "_" + this.mPoolName);
        } else {
            this.mExecutorService = create();
            mThreadPoolMap.put(getType() + "_" + this.mPoolName, this.mExecutorService);
        }
        return this.mExecutorService;
    }

    public ThreadPoolBuilder<T> poolName(String str) {
        if (str != null && str.length() > 0) {
            this.mPoolName = str;
        }
        return this;
    }
}
