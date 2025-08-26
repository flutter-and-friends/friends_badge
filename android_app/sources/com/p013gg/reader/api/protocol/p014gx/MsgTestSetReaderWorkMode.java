package com.p013gg.reader.api.protocol.p014gx;

import cn.highlight.p004tx.app.CmdCenter;
import com.p013gg.reader.api.utils.BitBuffer;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgTestSetReaderWorkMode extends Message {
    private int baudRate232;
    private int baudRate485;
    private int dataBit485;
    private int parityBit485;
    private int stopBit485;
    private int workMode;

    public MsgTestSetReaderWorkMode() {
        this.baudRate485 = Integer.MAX_VALUE;
        this.dataBit485 = Integer.MAX_VALUE;
        this.parityBit485 = Integer.MAX_VALUE;
        this.stopBit485 = Integer.MAX_VALUE;
        this.baudRate232 = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_TEST;
            this.msgType.msgId = CmdCenter.CMD_getCabinetLockStatus;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgTestSetReaderWorkMode(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.workMode = bitBufferWrap.getInt(8);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        this.baudRate485 = bitBufferWrap.getIntUnsigned(8);
                        this.dataBit485 = bitBufferWrap.getIntUnsigned(8);
                        this.parityBit485 = bitBufferWrap.getIntUnsigned(8);
                        this.stopBit485 = bitBufferWrap.getIntUnsigned(8);
                    } else if (b == 2) {
                        this.baudRate232 = bitBufferWrap.getIntUnsigned(8);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public int getWorkMode() {
        return this.workMode;
    }

    public void setWorkMode(int i) {
        this.workMode = i;
    }

    public int getBaudRate485() {
        return this.baudRate485;
    }

    public void setBaudRate485(int i) {
        this.baudRate485 = i;
    }

    public int getDataBit485() {
        return this.dataBit485;
    }

    public void setDataBit485(int i) {
        this.dataBit485 = i;
    }

    public int getParityBit485() {
        return this.parityBit485;
    }

    public void setParityBit485(int i) {
        this.parityBit485 = i;
    }

    public int getStopBit485() {
        return this.stopBit485;
    }

    public void setStopBit485(int i) {
        this.stopBit485 = i;
    }

    public int getBaudRate232() {
        return this.baudRate232;
    }

    public void setBaudRate232(int i) {
        this.baudRate232 = i;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putInt(this.workMode, 8);
        if (Integer.MAX_VALUE != this.baudRate485) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.putInt(this.baudRate485, 8);
        }
        int i = this.dataBit485;
        if (Integer.MAX_VALUE != i) {
            bitBufferAllocateDynamic.putInt(i, 8);
        }
        int i2 = this.parityBit485;
        if (Integer.MAX_VALUE != i2) {
            bitBufferAllocateDynamic.putInt(i2, 8);
        }
        int i3 = this.stopBit485;
        if (Integer.MAX_VALUE != i3) {
            bitBufferAllocateDynamic.putInt(i3, 8);
        }
        if (Integer.MAX_VALUE != this.baudRate232) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.putInt(this.baudRate232, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgTestSetReaderWorkMode.1
            {
                put((byte) 0, "Set success.");
                put((byte) 1, "Other error.");
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
