package com.yanzhenjie.permission.bridge;

import com.yanzhenjie.permission.bridge.Messenger;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes.dex */
final class RequestExecutor extends Thread implements Messenger.Callback {
    private Messenger mMessenger;
    private final BlockingQueue<BridgeRequest> mQueue;
    private BridgeRequest mRequest;

    public RequestExecutor(BlockingQueue<BridgeRequest> blockingQueue) {
        this.mQueue = blockingQueue;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        while (true) {
            synchronized (this) {
                try {
                    try {
                        this.mRequest = this.mQueue.take();
                        this.mMessenger = new Messenger(this.mRequest.getSource().getContext(), this);
                        this.mMessenger.register();
                        executeCurrent();
                        try {
                            wait();
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private void executeCurrent() {
        switch (this.mRequest.getType()) {
            case 1:
                BridgeActivity.requestAppDetails(this.mRequest.getSource());
                break;
            case 2:
                BridgeActivity.requestPermission(this.mRequest.getSource(), this.mRequest.getPermissions());
                break;
            case 3:
                BridgeActivity.requestInstall(this.mRequest.getSource());
                break;
            case 4:
                BridgeActivity.requestOverlay(this.mRequest.getSource());
                break;
            case 5:
                BridgeActivity.requestAlertWindow(this.mRequest.getSource());
                break;
            case 6:
                BridgeActivity.requestNotify(this.mRequest.getSource());
                break;
            case 7:
                BridgeActivity.requestNotificationListener(this.mRequest.getSource());
                break;
        }
    }

    @Override // com.yanzhenjie.permission.bridge.Messenger.Callback
    public void onCallback() {
        synchronized (this) {
            this.mMessenger.unRegister();
            this.mRequest.getCallback().onCallback();
            notify();
        }
    }
}
