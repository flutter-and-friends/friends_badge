package com.p013gg.reader.api.dal.communication;

import com.p013gg.reader.api.dal.HandlerRemoteConnected;
import com.p013gg.reader.api.utils.ThreadPoolUtils;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;

/* loaded from: classes.dex */
public class TcpServer {
    public HandlerRemoteConnected onRemoteConnected;
    private ServerSocket listenSocket = null;
    public Boolean keepListen = false;
    public int listenPort = 8160;

    protected void triggerClientConnectedEvent(TcpClient tcpClient) {
        try {
            if (this.onRemoteConnected != null) {
                synchronized (this.onRemoteConnected) {
                    this.onRemoteConnected.log(tcpClient);
                }
            }
        } catch (Exception unused) {
        }
    }

    public boolean open(int i) throws IOException {
        if (this.listenSocket != null) {
            return false;
        }
        this.keepListen = true;
        try {
            this.listenPort = i;
            this.listenSocket = new ServerSocket();
            this.listenSocket.bind(new InetSocketAddress("0.0.0.0", this.listenPort));
            startListen();
            return true;
        } catch (Exception unused) {
            close();
            return false;
        }
    }

    public void startListen() {
        ThreadPoolUtils.run(new Runnable() { // from class: com.gg.reader.api.dal.communication.TcpServer.1
            @Override // java.lang.Runnable
            public void run() throws IOException {
                while (TcpServer.this.keepListen.booleanValue()) {
                    try {
                        Socket socketAccept = TcpServer.this.listenSocket.accept();
                        TcpClient tcpClient = new TcpClient();
                        tcpClient.connType = 3;
                        if (tcpClient.open(socketAccept)) {
                            tcpClient.serverIp = socketAccept.getInetAddress().getHostAddress();
                            tcpClient.serverPort = socketAccept.getPort();
                            TcpServer.this.triggerClientConnectedEvent(tcpClient);
                        } else {
                            socketAccept.close();
                            tcpClient.close();
                        }
                    } catch (Exception unused) {
                        return;
                    }
                }
            }
        });
    }

    public void close() throws IOException {
        this.keepListen = false;
        ServerSocket serverSocket = this.listenSocket;
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (Exception unused) {
            }
        }
    }
}
