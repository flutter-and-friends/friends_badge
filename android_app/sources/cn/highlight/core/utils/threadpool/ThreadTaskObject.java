package cn.highlight.core.utils.threadpool;

import cn.highlight.core.utils.threadpool.ThreadPoolHelp;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public abstract class ThreadTaskObject implements Runnable {
    private ExecutorService mExecutorService;
    private String mPoolName;

    public ThreadTaskObject() {
        this.mExecutorService = null;
        this.mPoolName = null;
        init();
    }

    public ThreadTaskObject(String str) {
        this.mExecutorService = null;
        this.mPoolName = null;
        this.mPoolName = str;
        init();
    }

    private void init() {
        this.mExecutorService = ThreadPoolHelp.Builder.cached().name(this.mPoolName).builder();
    }

    public void start() {
        this.mExecutorService.execute(this);
    }
}
