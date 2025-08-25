package cn.highlight.core.utils.threadpool.builder;

import cn.highlight.core.utils.threadpool.ThreadPoolType;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class FixedBuilder extends ThreadPoolBuilder<ExecutorService> {
    private int mSize = 1;

    @Override // cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder
    protected ExecutorService create() {
        return Executors.newFixedThreadPool(this.mSize);
    }

    @Override // cn.highlight.core.utils.threadpool.builder.ThreadPoolBuilder
    protected ThreadPoolType getType() {
        return ThreadPoolType.FIXED;
    }

    public FixedBuilder setSize(int i) {
        this.mSize = i;
        return this;
    }
}
