package cn.highlight.core.utils.threadpool.builder;

import cn.highlight.core.utils.threadpool.ThreadPoolType;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class CachedBuilder extends ThreadPoolBuilder<ExecutorService> {
    @Override // cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder
    protected ExecutorService create() {
        return Executors.newCachedThreadPool();
    }

    @Override // cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder
    protected ThreadPoolType getType() {
        return ThreadPoolType.CACHED;
    }
}
