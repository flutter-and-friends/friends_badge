package com.p013gg.reader.api.dal;

import com.p013gg.reader.api.entity.GMulticast;
import com.p013gg.reader.api.utils.ThreadPoolUtils;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

/* loaded from: classes.dex */
public class GUdpMulticast {
    private String _GroupIP;
    private int _GroupPort;
    private InetAddress address;
    public HandlerDebugLog debugLog;
    public HandlerUdpMulticast handlerUdpMulticast;

    /* renamed from: ms */
    private MulticastSocket f349ms;
    private DatagramPacket dataPacket = null;
    private Boolean keepReceive = false;
    private int index = 0;

    static /* synthetic */ int access$208(GUdpMulticast gUdpMulticast) {
        int i = gUdpMulticast.index;
        gUdpMulticast.index = i + 1;
        return i;
    }

    public GUdpMulticast(String str, int i, int i2) {
        this.f349ms = null;
        this._GroupIP = "230.1.1.168";
        this._GroupPort = 8161;
        try {
            this._GroupIP = str;
            this._GroupPort = i;
            this.f349ms = new MulticastSocket(this._GroupPort);
            this.f349ms.setSoTimeout(i2);
            this.address = InetAddress.getByName(this._GroupIP);
        } catch (IOException unused) {
        }
    }

    public void triggerOnUdpMulticast(GMulticast gMulticast) {
        try {
            if (this.handlerUdpMulticast != null) {
                this.handlerUdpMulticast.log(gMulticast);
            }
        } catch (Exception unused) {
        }
    }

    public void start() throws SocketException {
        if (this.keepReceive.booleanValue()) {
            return;
        }
        this.keepReceive = true;
        final List<String> allNif = getAllNif();
        ThreadPoolUtils.run(new Runnable() { // from class: com.gg.reader.api.dal.GUdpMulticast.1
            @Override // java.lang.Runnable
            public void run() throws IOException {
                while (GUdpMulticast.this.keepReceive.booleanValue()) {
                    try {
                        try {
                            GUdpMulticast.this.f349ms.joinGroup(new InetSocketAddress(GUdpMulticast.this.address, 8161), NetworkInterface.getByName((String) allNif.get(GUdpMulticast.this.index % allNif.size())));
                            byte[] bArr = new byte[1024];
                            GUdpMulticast.this.dataPacket = new DatagramPacket(bArr, bArr.length);
                            if (GUdpMulticast.this.debugLog != null) {
                                GUdpMulticast.this.debugLog.receiveDebugLog("[Udp]-->" + ((String) allNif.get(GUdpMulticast.this.index % allNif.size())) + ":Receive");
                            }
                            GUdpMulticast.this.f349ms.receive(GUdpMulticast.this.dataPacket);
                            if (GUdpMulticast.this.dataPacket.getLength() > 0 && GUdpMulticast.this.debugLog != null) {
                                GUdpMulticast.this.debugLog.receiveDebugLog("[Udp]-->[" + new String(GUdpMulticast.this.dataPacket.getData(), "ASCII") + "]");
                            }
                            GUdpMulticast.this.triggerOnUdpMulticast(new GMulticast(new String(GUdpMulticast.this.dataPacket.getData(), "ASCII").trim()));
                            GUdpMulticast.this.f349ms.leaveGroup(GUdpMulticast.this.address);
                        } catch (IOException unused) {
                        }
                    } catch (Exception unused2) {
                        GUdpMulticast.this.f349ms.leaveGroup(GUdpMulticast.this.address);
                        if (GUdpMulticast.this.debugLog != null) {
                            GUdpMulticast.this.debugLog.receiveDebugLog("[Udp]-->Next network adapter");
                        }
                    }
                    GUdpMulticast.access$208(GUdpMulticast.this);
                }
            }
        });
    }

    public void close() {
        this.keepReceive = false;
        this.f349ms.close();
    }

    private List<String> getAllNif() throws SocketException {
        ArrayList arrayList = new ArrayList();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            while (networkInterfaces.hasMoreElements()) {
                NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                while (inetAddresses.hasMoreElements()) {
                    InetAddress inetAddressNextElement = inetAddresses.nextElement();
                    if ((inetAddressNextElement instanceof Inet4Address) && !inetAddressNextElement.getHostAddress().equals("127.0.0.1")) {
                        arrayList.add(networkInterfaceNextElement.getName());
                    }
                }
            }
        } catch (Exception unused) {
        }
        return arrayList;
    }
}
