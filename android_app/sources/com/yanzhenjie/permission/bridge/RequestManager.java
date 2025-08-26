package com.yanzhenjie.permission.bridge;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* loaded from: classes.dex */
public class RequestManager {
    private static RequestManager sManager;
    private final BlockingQueue<BridgeRequest> mQueue = new LinkedBlockingQueue();

    public static RequestManager get() {
        if (sManager == null) {
            synchronized (RequestManager.class) {
                if (sManager == null) {
                    sManager = new RequestManager();
                }
            }
        }
        return sManager;
    }

    private RequestManager() {
        new RequestExecutor(this.mQueue).start();
    }

    public void add(BridgeRequest bridgeRequest) {
        this.mQueue.add(bridgeRequest);
    }
}
