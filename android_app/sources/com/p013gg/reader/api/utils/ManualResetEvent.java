package com.p013gg.reader.api.utils;

/* loaded from: classes.dex */
public class ManualResetEvent {
    private final Object monitor = new Object();
    private volatile boolean open;

    public ManualResetEvent(boolean z) {
        this.open = false;
        this.open = z;
    }

    public void waitOne() throws InterruptedException {
        synchronized (this.monitor) {
            while (!this.open) {
                this.monitor.wait();
            }
        }
    }

    public boolean waitOne(long j) throws InterruptedException {
        synchronized (this.monitor) {
            if (this.open) {
                return true;
            }
            this.monitor.wait(j);
            return this.open;
        }
    }

    public void set() {
        synchronized (this.monitor) {
            this.open = true;
            this.monitor.notifyAll();
        }
    }

    public void reset() {
        this.open = false;
    }
}
