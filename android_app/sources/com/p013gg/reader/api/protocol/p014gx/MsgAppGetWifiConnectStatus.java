package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.StringUtils;

/* loaded from: classes.dex */
public class MsgAppGetWifiConnectStatus extends Message {
    private String hotspotName;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgAppGetWifiConnectStatus() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 52;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetWifiConnectStatus(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned > 0) {
                    this.hotspotName = new String(bitBufferWrap.get(new byte[intUnsigned]), "ASCII");
                }
            } catch (Exception unused) {
            }
        }
    }

    public String getHotspotName() {
        return this.hotspotName;
    }

    public void setHotspotName(String str) {
        this.hotspotName = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            if (!StringUtils.isNullOfEmpty(this.hotspotName)) {
                bitBufferAllocateDynamic.putInt(this.hotspotName.length(), 16);
                bitBufferAllocateDynamic.put(this.hotspotName);
            }
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        int intUnsigned = bitBufferWrap.getIntUnsigned(16);
        try {
            if (intUnsigned > 0) {
                this.hotspotName = new String(bitBufferWrap.get(new byte[intUnsigned]), "ASCII");
            } else {
                this.hotspotName = "未连接";
            }
        } catch (Exception unused) {
        }
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetWifiConnectStatus{hotspotName='" + this.hotspotName + "'}";
    }
}
