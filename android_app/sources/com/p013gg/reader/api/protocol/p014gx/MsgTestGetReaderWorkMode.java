package com.p013gg.reader.api.protocol.p014gx;

import cn.highlight.p004tx.app.CmdCenter;
import com.p013gg.reader.api.utils.BitBuffer;

/* loaded from: classes.dex */
public class MsgTestGetReaderWorkMode extends Message {
    private int baudRate232;
    private int baudRate485;
    private int dataBit485;
    private int parityBit485;
    private int stopBit485;
    private int workMode;

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
    }

    public MsgTestGetReaderWorkMode() {
        this.baudRate485 = Integer.MAX_VALUE;
        this.dataBit485 = Integer.MAX_VALUE;
        this.parityBit485 = Integer.MAX_VALUE;
        this.stopBit485 = Integer.MAX_VALUE;
        this.baudRate232 = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_TEST;
            this.msgType.msgId = CmdCenter.CMD_setCabinetSensor;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgTestGetReaderWorkMode(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.workMode = bitBufferWrap.getInt(8);
                this.baudRate485 = bitBufferWrap.getIntUnsigned(8);
                this.dataBit485 = bitBufferWrap.getIntUnsigned(8);
                this.parityBit485 = bitBufferWrap.getIntUnsigned(8);
                this.stopBit485 = bitBufferWrap.getIntUnsigned(8);
                this.baudRate232 = bitBufferWrap.getIntUnsigned(8);
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
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putInt(this.workMode, 8);
            bitBufferAllocateDynamic.putInt(this.baudRate485, 8);
            bitBufferAllocateDynamic.putInt(this.dataBit485, 8);
            bitBufferAllocateDynamic.putInt(this.parityBit485, 8);
            bitBufferAllocateDynamic.putInt(this.stopBit485, 8);
            bitBufferAllocateDynamic.putInt(this.baudRate232, 8);
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
        this.workMode = bitBufferWrap.getInt(8);
        this.baudRate485 = bitBufferWrap.getIntUnsigned(8);
        this.dataBit485 = bitBufferWrap.getIntUnsigned(8);
        this.parityBit485 = bitBufferWrap.getIntUnsigned(8);
        this.stopBit485 = bitBufferWrap.getIntUnsigned(8);
        this.baudRate232 = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgTestGetReaderWorkMode{workMode=" + this.workMode + ", baudRate485=" + this.baudRate485 + ", dataBit485=" + this.dataBit485 + ", parityBit485=" + this.parityBit485 + ", stopBit485=" + this.stopBit485 + ", baudRate232=" + this.baudRate232 + '}';
    }
}
