package cn.highlight.p004tx.ble.data;

/* loaded from: classes.dex */
public class BleConnectStateParameter {
    private boolean isActive;
    private int status;

    public BleConnectStateParameter(int i) {
        this.status = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public boolean isActive() {
        return this.isActive;
    }

    public void setActive(boolean z) {
        this.isActive = z;
    }
}
