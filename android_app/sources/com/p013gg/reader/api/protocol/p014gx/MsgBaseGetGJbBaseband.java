package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgBaseGetGJbBaseband extends Message {
    private int inventoryFlag;
    private ParamGbAntiCollision paramGbAntiCollision;
    private ParamGbBaseSpeed paramGbBaseSpeed;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgBaseGetGJbBaseband() {
        this.inventoryFlag = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) -27;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseGetGJbBaseband(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(this.cData);
                bitBufferWrap.position(0);
                byte[] bArr2 = new byte[1];
                bitBufferWrap.get(bArr2);
                this.paramGbBaseSpeed = new ParamGbBaseSpeed(bArr2);
                byte[] bArr3 = new byte[1];
                bitBufferWrap.get(bArr3);
                this.paramGbAntiCollision = new ParamGbAntiCollision(bArr3);
                this.inventoryFlag = bitBufferWrap.getIntUnsigned(8);
            } catch (Exception unused) {
            }
        }
    }

    public ParamGbBaseSpeed getParamGbBaseSpeed() {
        return this.paramGbBaseSpeed;
    }

    public void setParamGbBaseSpeed(ParamGbBaseSpeed paramGbBaseSpeed) {
        this.paramGbBaseSpeed = paramGbBaseSpeed;
    }

    public ParamGbAntiCollision getParamGbAntiCollision() {
        return this.paramGbAntiCollision;
    }

    public void setParamGbAntiCollision(ParamGbAntiCollision paramGbAntiCollision) {
        this.paramGbAntiCollision = paramGbAntiCollision;
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
            if (this.paramGbBaseSpeed != null) {
                bitBufferAllocateDynamic.put(this.paramGbBaseSpeed.toBytes());
            }
            if (this.paramGbAntiCollision != null) {
                bitBufferAllocateDynamic.put(this.paramGbAntiCollision.toBytes());
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
        byte[] bArr = new byte[1];
        bitBufferWrap.get(bArr);
        this.paramGbBaseSpeed = new ParamGbBaseSpeed(bArr);
        byte[] bArr2 = new byte[1];
        bitBufferWrap.get(bArr2);
        this.paramGbAntiCollision = new ParamGbAntiCollision(bArr2);
        this.inventoryFlag = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgBaseGetGbBaseband{paramGbBaseSpeed=" + this.paramGbBaseSpeed + ", paramGbAntiCollision=" + this.paramGbAntiCollision + ", inventoryFlag=" + this.inventoryFlag + '}';
    }
}
