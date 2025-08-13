package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseSetBaseband extends Message {
    private int baseSpeed;
    private int inventoryFlag;
    private int qValue;
    private int session;

    public MsgBaseSetBaseband() {
        this.baseSpeed = Integer.MAX_VALUE;
        this.qValue = Integer.MAX_VALUE;
        this.session = Integer.MAX_VALUE;
        this.inventoryFlag = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) 11;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseSetBaseband(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        this.baseSpeed = bitBufferWrap.getIntUnsigned(8);
                    } else if (b == 2) {
                        this.qValue = bitBufferWrap.getIntUnsigned(8);
                    } else if (b == 3) {
                        this.session = bitBufferWrap.getIntUnsigned(8);
                    } else if (b == 4) {
                        this.inventoryFlag = bitBufferWrap.getIntUnsigned(8);
                    }
                }
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
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        if (Integer.MAX_VALUE != this.baseSpeed) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putLong(this.baseSpeed, 8);
        }
        if (Integer.MAX_VALUE != this.qValue) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.putLong(this.qValue, 8);
        }
        if (Integer.MAX_VALUE != this.session) {
            bitBufferAllocateDynamic.putInt(3, 8);
            bitBufferAllocateDynamic.putLong(this.session, 8);
        }
        if (Integer.MAX_VALUE != this.inventoryFlag) {
            bitBufferAllocateDynamic.putInt(4, 8);
            bitBufferAllocateDynamic.putLong(this.inventoryFlag, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseSetBaseband.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Parameter not supported.");
                put((byte) 2, "Q value parameter error.");
                put((byte) 3, "Session parameter error.");
                put((byte) 4, "Inventory parameter error.");
                put((byte) 5, "Other error.");
                put((byte) 6, "Save failure.");
            }
        };
        if (this.cData == null || this.cData.length != 1) {
            return;
        }
        setRtCode(this.cData[0]);
        if (hashtable.containsKey(Byte.valueOf(this.cData[0]))) {
            setRtMsg(hashtable.get(Byte.valueOf(this.cData[0])));
        }
    }
}
