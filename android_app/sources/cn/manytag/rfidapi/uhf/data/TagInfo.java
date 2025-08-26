package cn.manytag.rfidapi.uhf.data;

/* loaded from: classes.dex */
public class TagInfo {
    private String epc;
    private float rssi;

    public String getEpc() {
        return this.epc;
    }

    public float getRssi() {
        return this.rssi;
    }

    public void setEpc(String str) {
        this.epc = str;
    }

    public void setRssi(float f) {
        this.rssi = f;
    }
}
