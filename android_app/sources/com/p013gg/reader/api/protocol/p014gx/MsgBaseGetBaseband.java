package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgBaseGetBaseband extends Message {
    private int baseSpeed;
    private int inventoryFlag;
    private int qValue;
    private int session;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgBaseGetBaseband() {
        this.baseSpeed = Integer.MAX_VALUE;
        this.qValue = Integer.MAX_VALUE;
        this.session = Integer.MAX_VALUE;
        this.inventoryFlag = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 12;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseGetBaseband(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.baseSpeed = bitBufferWrap.getIntUnsigned(8);
                this.qValue = bitBufferWrap.getIntUnsigned(8);
                this.session = bitBufferWrap.getIntUnsigned(8);
                this.inventoryFlag = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public int getBaseSpeed() {
        return this.baseSpeed;
    }

    public void setBaseSpeed(int i) {
        this.baseSpeed = i;
    }

    public int getqValue() {
        return this.qValue;
    }

    public void setqValue(int i) {
        this.qValue = i;
    }

    public int getSession() {
        return this.session;
    }

    public void setSession(int i) {
        this.session = i;
    }

    public int getInventoryFlag() {
        return this.inventoryFlag;
    }

    public void setInventoryFlag(int i) {
        this.inventoryFlag = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            if (Integer.MAX_VALUE != this.baseSpeed) {
                bitBufferAllocateDynamic.putLong(this.baseSpeed, 8);
            }
            if (Integer.MAX_VALUE != this.qValue) {
                bitBufferAllocateDynamic.putLong(this.qValue, 8);
            }
            if (Integer.MAX_VALUE != this.session) {
                bitBufferAllocateDynamic.putLong(this.session, 8);
            }
            if (Integer.MAX_VALUE != this.inventoryFlag) {
                bitBufferAllocateDynamic.putLong(this.inventoryFlag, 8);
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
        this.baseSpeed = bitBufferWrap.getIntUnsigned(8);
        this.qValue = bitBufferWrap.getIntUnsigned(8);
        this.session = bitBufferWrap.getIntUnsigned(8);
        this.inventoryFlag = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgBaseGetBaseband{baseSpeed=" + this.baseSpeed + ", qValue=" + this.qValue + ", session=" + this.session + ", inventoryFlag=" + this.inventoryFlag + '}';
    }
}
