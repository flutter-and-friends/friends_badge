package com.p013gg.reader.api.dal;

import com.p013gg.reader.api.protocol.p014gx.Message;
import com.p013gg.reader.api.utils.ManualResetEvent;

/* loaded from: classes.dex */
public class ClientManualResetEvent {
    public Message data;
    public ManualResetEvent evt;

    public ClientManualResetEvent(boolean z) {
        this.evt = new ManualResetEvent(z);
    }
}
