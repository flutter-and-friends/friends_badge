package com.p013gg.reader.api.utils;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class ThreadPoolUtils {
    public static ExecutorService cachedThreadPool = Executors.newCachedThreadPool();
    public static ExecutorService fixedThreadPool;

    public static void runCachedThread(Runnable runnable) {
        cachedThreadPool.execute(runnable);
    }

    public static void initFixedThreadPool(int i) {
        fixedThreadPool = Executors.newFixedThreadPool(10);
    }

    public static void runFixedThread(Runnable runnable) {
        fixedThreadPool.execute(runnable);
    }

    public static void run(Runnable runnable) {
        runCachedThread(runnable);
    }

    public static void shutdownCachedThread() {
        ExecutorService executorService = cachedThreadPool;
        if (executorService != null) {
            executorService.shutdown();
            cachedThreadPool = Executors.newCachedThreadPool();
        }
    }

    public static void shutdownFixedThread() {
        ExecutorService executorService = fixedThreadPool;
        if (executorService != null) {
            executorService.shutdown();
        }
    }
}
