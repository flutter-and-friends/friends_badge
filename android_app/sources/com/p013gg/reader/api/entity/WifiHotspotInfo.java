package com.p013gg.reader.api.entity;

import java.io.Serializable;

/* loaded from: classes.dex */
public class WifiHotspotInfo implements Serializable {
    private String bssid;
    private String capabilities;
    private int frequency;
    private int level;
    private String ssid;
    private int networkId = -1;
    private int status = -1;

    public String getCapabilities() {
        return this.capabilities;
    }

    public void setCapabilities(String str) {
        this.capabilities = str;
    }

    public int getFrequency() {
        return this.frequency;
    }

    public void setFrequency(int i) {
        this.frequency = i;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public int getNetworkId() {
        return this.networkId;
    }

    public void setNetworkId(int i) {
        this.networkId = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public String getBssid() {
        return this.bssid;
    }

    public void setBssid(String str) {
        this.bssid = str;
    }

    public String getSsid() {
        return this.ssid;
    }

    public void setSsid(String str) {
        this.ssid = str;
    }

    public String toString() {
        return "WifiHotspotInfo{capabilities='" + this.capabilities + "', frequency=" + this.frequency + ", level=" + this.level + ", networkId=" + this.networkId + ", status=" + this.status + ", bssid='" + this.bssid + "', ssid='" + this.ssid + "'}";
    }
}
