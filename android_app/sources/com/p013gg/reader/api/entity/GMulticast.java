package com.p013gg.reader.api.entity;

/* loaded from: classes.dex */
public class GMulticast {
    private String connectMode;
    private String deviceType;
    private String dhcp;
    private String gateway;

    /* renamed from: ip */
    private String f350ip;
    private String mac;
    private String mask;
    private String remoteIP;
    private String remotePort;
    private String serverPort;
    private String workingMode;

    public String getMac() {
        return this.mac;
    }

    public void setMac(String str) {
        this.mac = str;
    }

    public String getIp() {
        return this.f350ip;
    }

    public void setIp(String str) {
        this.f350ip = str;
    }

    public String getServerPort() {
        return this.serverPort;
    }

    public void setServerPort(String str) {
        this.serverPort = str;
    }

    public String getRemoteIP() {
        return this.remoteIP;
    }

    public void setRemoteIP(String str) {
        this.remoteIP = str;
    }

    public String getRemotePort() {
        return this.remotePort;
    }

    public void setRemotePort(String str) {
        this.remotePort = str;
    }

    public String getWorkingMode() {
        return this.workingMode;
    }

    public void setWorkingMode(String str) {
        this.workingMode = str;
    }

    public String getConnectMode() {
        return this.connectMode;
    }

    public void setConnectMode(String str) {
        this.connectMode = str;
    }

    public String getDeviceType() {
        return this.deviceType;
    }

    public void setDeviceType(String str) {
        this.deviceType = str;
    }

    public String getDhcp() {
        return this.dhcp;
    }

    public void setDhcp(String str) {
        this.dhcp = str;
    }

    public String getMask() {
        return this.mask;
    }

    public void setMask(String str) {
        this.mask = str;
    }

    public String getGateway() {
        return this.gateway;
    }

    public void setGateway(String str) {
        this.gateway = str;
    }

    public GMulticast() {
        this.mac = "";
        this.f350ip = "";
        this.serverPort = "";
        this.remoteIP = "";
        this.remotePort = "";
        this.workingMode = "";
        this.connectMode = "";
        this.deviceType = "";
        this.dhcp = "";
        this.mask = "";
        this.gateway = "";
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public GMulticast(java.lang.String r11) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p013gg.reader.api.entity.GMulticast.<init>(java.lang.String):void");
    }

    public String toString() {
        return "GMulticast{mac='" + this.mac + "', ip='" + this.f350ip + "', serverPort='" + this.serverPort + "', remoteIP='" + this.remoteIP + "', remotePort='" + this.remotePort + "', workingMode='" + this.workingMode + "', connectMode='" + this.connectMode + "', deviceType='" + this.deviceType + "', dhcp='" + this.dhcp + "', mask='" + this.mask + "', gateway='" + this.gateway + "'}";
    }
}
