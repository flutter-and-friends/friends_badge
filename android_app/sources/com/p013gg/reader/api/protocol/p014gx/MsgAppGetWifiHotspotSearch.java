package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.entity.WifiHotspotInfo;
import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.JsonReader;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* loaded from: classes.dex */
public class MsgAppGetWifiHotspotSearch extends Message {
    private JsonReader jsonReader;
    private byte[] packetContent;
    private Long searchResultPacketNumber;

    public MsgAppGetWifiHotspotSearch() {
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 50;
            this.jsonReader = new JsonReader();
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetWifiHotspotSearch(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.searchResultPacketNumber = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                byte[] bArr2 = new byte[intUnsigned];
                if (intUnsigned > 0) {
                    this.packetContent = bitBufferWrap.get(bArr2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public Long getSearchResultPacketNumber() {
        return this.searchResultPacketNumber;
    }

    public void setSearchResultPacketNumber(Long l) {
        this.searchResultPacketNumber = l;
    }

    public byte[] getPacketContent() {
        return this.packetContent;
    }

    public void setPacketContent(byte[] bArr) {
        this.packetContent = bArr;
    }

    public WifiHotspotInfo getWifiFormatterParam(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            if (bArr.length > 0) {
                return (WifiHotspotInfo) this.jsonReader.jsonToClass(new String(bArr, "UTF-8"), WifiHotspotInfo.class);
            }
            return null;
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.searchResultPacketNumber.longValue(), 32);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception unused) {
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.searchResultPacketNumber.longValue(), 32);
            if (this.packetContent != null && this.packetContent.length > 0) {
                bitBufferAllocateDynamic.putInt(this.packetContent.length, 16);
                bitBufferAllocateDynamic.put(this.packetContent, 8);
            } else {
                bitBufferAllocateDynamic.putInt(0, 16);
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
        this.searchResultPacketNumber = Long.valueOf(bitBufferWrap.getLongUnsigned(32));
        int intUnsigned = bitBufferWrap.getIntUnsigned(16);
        byte[] bArr = new byte[intUnsigned];
        if (intUnsigned > 0) {
            this.packetContent = bitBufferWrap.get(bArr);
        }
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetWifiHotspotSearch{searchResultPacketNumber=" + this.searchResultPacketNumber + ", packetContent=" + Arrays.toString(this.packetContent) + '}';
    }
}
