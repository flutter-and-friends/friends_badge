package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.Crc16Utils;
import com.p013gg.reader.api.utils.GLog;
import com.p013gg.reader.api.utils.HexUtils;

/* loaded from: classes.dex */
public class Message {
    public static final byte HEAD = 90;
    public static final int MSG_MAX_LEN = 1024;
    public byte[] cData;
    public byte[] crc;
    public byte[] crcData;
    public int dataLen;
    public byte[] msgData;
    public MsgType msgType;
    public int rs485Address;
    private byte rtCode;
    private String rtMsg;

    public void ackUnpack() {
    }

    public byte getRtCode() {
        return this.rtCode;
    }

    public String getRtMsg() {
        return this.rtMsg;
    }

    public void setRtCode(byte b) {
        this.rtCode = b;
    }

    public void setRtMsg(String str) {
        this.rtMsg = str;
    }

    public Message() {
        this.msgType = null;
        this.rs485Address = 0;
        this.dataLen = 0;
        this.cData = null;
        this.crc = null;
        this.crcData = null;
        this.msgData = null;
        this.rtCode = (byte) -1;
        this.rtMsg = "";
    }

    public Message(byte[] bArr) {
        this.msgType = null;
        this.rs485Address = 0;
        this.dataLen = 0;
        this.cData = null;
        this.crc = null;
        this.crcData = null;
        this.msgData = null;
        this.rtCode = (byte) -1;
        this.rtMsg = "";
        try {
            this.msgData = bArr;
            this.crcData = new byte[bArr.length - 3];
            BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
            bitBufferWrap.position(8);
            this.msgType = new MsgType(bitBufferWrap.get(new byte[4]));
            if (this.msgType.mt_13.equals("1")) {
                this.rs485Address = bitBufferWrap.getIntUnsigned(8);
            }
            this.dataLen = bitBufferWrap.getIntUnsigned(16);
            if (this.dataLen > 0) {
                this.cData = new byte[this.dataLen];
                this.cData = bitBufferWrap.get(this.cData);
            }
            int iPosition = bitBufferWrap.position();
            bitBufferWrap.position(8);
            this.crcData = bitBufferWrap.get(this.crcData);
            bitBufferWrap.position(iPosition);
            this.crc = new byte[2];
            this.crc = bitBufferWrap.get(this.crc);
        } catch (Exception e) {
            GLog.m303e("Message unpacking error :" + e.getStackTrace());
        }
    }

    public byte[] toBytes() {
        return toBytes(false);
    }

    public byte[] toBytes(boolean z) {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.put(HEAD);
        bitBufferAllocateDynamic.put(this.msgType.toBytes());
        if (z) {
            bitBufferAllocateDynamic.putInt(this.rs485Address, 8);
        }
        bitBufferAllocateDynamic.putInt(this.dataLen, 16);
        byte[] bArr = this.cData;
        if (bArr != null && bArr.length > 0 && bArr.length == this.dataLen) {
            bitBufferAllocateDynamic.put(bArr);
        }
        int iPosition = bitBufferAllocateDynamic.position();
        this.crcData = new byte[(bitBufferAllocateDynamic.position() / 8) - 1];
        bitBufferAllocateDynamic.position(8);
        this.crcData = bitBufferAllocateDynamic.get(this.crcData);
        bitBufferAllocateDynamic.position(iPosition);
        this.crc = HexUtils.short2Bytes(Crc16Utils.CRC_XModem(this.crcData));
        bitBufferAllocateDynamic.put(this.crc);
        this.msgData = bitBufferAllocateDynamic.asByteArray();
        return this.msgData;
    }

    public void pack() {
        this.dataLen = 0;
    }

    public void ackPack() {
        this.crcData = new byte[]{this.rtCode};
        this.dataLen = 1;
    }

    public void ackUnpack(byte[] bArr) {
        this.cData = bArr;
        ackUnpack();
    }

    public boolean checkCrc() {
        try {
            if (this.crcData == null || this.crc == null) {
                return false;
            }
            byte[] bArrShort2Bytes = HexUtils.short2Bytes(Crc16Utils.CRC_XModem(this.crcData));
            for (int i = 0; i < bArrShort2Bytes.length; i++) {
                if (this.crc[i] != bArrShort2Bytes[i]) {
                    return false;
                }
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
