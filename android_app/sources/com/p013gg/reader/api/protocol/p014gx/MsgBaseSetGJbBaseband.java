package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgBaseSetGJbBaseband extends Message {
    private int inventoryFlag;
    private ParamGbAntiCollision paramGbAntiCollision;
    private ParamGbBaseSpeed paramGbBaseSpeed;

    public MsgBaseSetGJbBaseband() {
        this.inventoryFlag = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_BASE;
            this.msgType.msgId = (byte) -28;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgBaseSetGJbBaseband(byte[] bArr) {
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
                        byte[] bArr2 = new byte[bitBufferWrap.getIntUnsigned(8)];
                        bitBufferWrap.get(bArr2);
                        this.paramGbBaseSpeed = new ParamGbBaseSpeed(bArr2);
                    } else if (b == 2) {
                        byte[] bArr3 = new byte[bitBufferWrap.getIntUnsigned(8)];
                        bitBufferWrap.get(bArr3);
                        this.paramGbAntiCollision = new ParamGbAntiCollision(bArr3);
                    } else if (b == 3) {
                        this.inventoryFlag = bitBufferWrap.getIntUnsigned(8);
                    }
                }
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
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        if (this.paramGbBaseSpeed != null) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.put(this.paramGbBaseSpeed.toBytes());
        }
        if (this.paramGbAntiCollision != null) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.put(this.paramGbAntiCollision.toBytes());
        }
        if (Integer.MAX_VALUE != this.inventoryFlag) {
            bitBufferAllocateDynamic.putInt(3, 8);
            bitBufferAllocateDynamic.putInt(this.inventoryFlag, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgBaseSetGJbBaseband.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Baseband rate not support.");
                put((byte) 2, "Session parameter error.");
                put((byte) 3, "Inventory parameter error.");
                put((byte) 4, "Other error.");
                put((byte) 5, "Save failure.");
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
