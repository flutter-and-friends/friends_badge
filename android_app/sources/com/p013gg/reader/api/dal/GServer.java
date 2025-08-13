package com.p013gg.reader.api.dal;

import com.p013gg.reader.api.dal.communication.TcpClient;
import com.p013gg.reader.api.dal.communication.TcpServer;
import com.p013gg.reader.api.protocol.p014gx.MsgAppGetReaderInfo;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class GServer {
    private int MSG_TIME_OUT = 3000;
    private HashMap<String, GClient> hpClient = new HashMap<>();
    public HandlerGClientConnected onGClientConnected;

    /* renamed from: ts */
    private TcpServer f348ts;

    public boolean isListend() {
        TcpServer tcpServer = this.f348ts;
        if (tcpServer == null) {
            return false;
        }
        return tcpServer.keepListen.booleanValue();
    }

    protected void triggerGClientConnectedEvent(GClient gClient, String str) {
        try {
            if (this.onGClientConnected != null) {
                synchronized (this.onGClientConnected) {
                    this.onGClientConnected.log(gClient, str);
                }
            }
        } catch (Exception unused) {
        }
    }

    public boolean open(int i) throws IOException {
        if (this.f348ts != null) {
            return false;
        }
        this.f348ts = new TcpServer();
        this.f348ts.onRemoteConnected = new HandlerRemoteConnected() { // from class: com.gg.reader.api.dal.GServer.1
            @Override // com.p013gg.reader.api.dal.HandlerRemoteConnected
            public void log(TcpClient tcpClient) throws IOException {
                GServer.this.processConnect(tcpClient);
            }
        };
        if (this.f348ts.open(i)) {
            return true;
        }
        close();
        return false;
    }

    public void close() throws IOException {
        TcpServer tcpServer = this.f348ts;
        if (tcpServer != null) {
            tcpServer.close();
            this.f348ts = null;
        }
    }

    public void closeClient(String str) {
        String[] strArrSplit;
        if (str == null || str == "" || (strArrSplit = str.split(":")) == null || strArrSplit.length != 2) {
            return;
        }
        synchronized (this.hpClient) {
            if (this.hpClient.containsKey(str)) {
                this.hpClient.get(str).close();
                this.hpClient.remove(str);
            }
        }
    }

    public void closeAllClient() {
        synchronized (this.hpClient) {
            Iterator<Map.Entry<String, GClient>> it = this.hpClient.entrySet().iterator();
            while (it.hasNext()) {
                it.next().getValue().close();
            }
            this.hpClient.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processConnect(TcpClient tcpClient) throws IOException {
        if (tcpClient == null) {
            return;
        }
        GClient gClient = new GClient();
        String str = tcpClient.serverIp + ":" + tcpClient.serverPort;
        if (gClient.open(str, tcpClient, this.MSG_TIME_OUT)) {
            gClient.setName(str);
            MsgAppGetReaderInfo msgAppGetReaderInfo = new MsgAppGetReaderInfo();
            gClient.sendSynMsg(msgAppGetReaderInfo);
            String readerSerialNumber = msgAppGetReaderInfo.getRtCode() == 0 ? msgAppGetReaderInfo.getReaderSerialNumber() : null;
            gClient.setSerialNumber(readerSerialNumber);
            triggerGClientConnectedEvent(gClient, readerSerialNumber);
            synchronized (this.hpClient) {
                if (this.hpClient.containsKey(str)) {
                    this.hpClient.get(str).close();
                }
                this.hpClient.put(str, gClient);
            }
            return;
        }
        gClient.close();
        tcpClient.close();
    }
}
