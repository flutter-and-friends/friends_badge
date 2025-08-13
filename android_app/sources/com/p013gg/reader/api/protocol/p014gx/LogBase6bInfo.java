package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import java.util.Arrays;

/* loaded from: classes.dex */
public class LogBase6bInfo extends Message {
    private int antId;
    private byte[] bTid;
    private byte[] bUser;
    private String readerSerialNumber;
    private int result;
    private int rssi;
    private String tid;
    private String userdata;

    public String getTid() {
        return this.tid;
    }

    public void setTid(String str) {
        this.tid = str;
    }

    public byte[] getbTid() {
        return this.bTid;
    }

    public void setbTid(byte[] bArr) {
        this.bTid = bArr;
    }

    public int getAntId() {
        return this.antId;
    }

    public void setAntId(int i) {
        this.antId = i;
    }

    public int getRssi() {
        return this.rssi;
    }

    public void setRssi(int i) {
        this.rssi = i;
    }

    public int getResult() {
        return this.result;
    }

    public void setResult(int i) {
        this.result = i;
    }

    public String getUserdata() {
        return this.userdata;
    }

    public void setUserdata(String str) {
        this.userdata = str;
    }

    public byte[] getbUser() {
        return this.bUser;
    }

    public void setbUser(byte[] bArr) {
        this.bUser = bArr;
    }

    public String getReaderSerialNumber() {
        return this.readerSerialNumber;
    }

    public void setReaderSerialNumber(String str) {
        this.readerSerialNumber = str;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        super.pack();
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        if (this.cData == null || this.cData.length <= 0) {
            return;
        }
        BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
        bitBufferWrap.position(0);
        this.bTid = new byte[8];
        this.bTid = bitBufferWrap.get(this.bTid);
        byte[] bArr = this.bTid;
        if (bArr.length > 0) {
            this.tid = HexUtils.bytes2HexString(bArr);
        }
        this.antId = bitBufferWrap.getIntUnsigned(8);
        while (bitBufferWrap.position() / 8 < this.cData.length) {
            int intUnsigned = bitBufferWrap.getIntUnsigned(8);
            if (intUnsigned == 1) {
                this.rssi = bitBufferWrap.getIntUnsigned(8);
            } else if (intUnsigned == 2) {
                this.result = bitBufferWrap.getIntUnsigned(8);
            } else if (intUnsigned == 3) {
                int intUnsigned2 = bitBufferWrap.getIntUnsigned(16);
                this.bUser = new byte[intUnsigned2];
                if (intUnsigned2 > 0) {
                    this.bUser = bitBufferWrap.get(this.bUser);
                    this.userdata = HexUtils.bytes2HexString(this.bUser);
                }
            }
        }
    }

    public String toString() {
        return "LogBase6bInfo{tid='" + this.tid + "', bTid=" + Arrays.toString(this.bTid) + ", antId=" + this.antId + ", rssi=" + this.rssi + ", result=" + this.result + ", userdata='" + this.userdata + "', bUser=" + Arrays.toString(this.bUser) + ", readerSerialNumber='" + this.readerSerialNumber + "'}";
    }

    public String toHexString() {
        return "HexString{" + HexUtils.bytes2HexString(this.cData) + '}';
    }
}
