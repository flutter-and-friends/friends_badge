package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Hashtable;

/* loaded from: classes.dex */
public class MsgAppSetGpiTrigger extends Message {
    private int gpiPort;
    private String hexTriggerCommand;
    private int levelUploadSwitch;
    private int overDelayTime;
    private byte[] triggerCommand;
    private int triggerOver;
    private int triggerStart;

    public MsgAppSetGpiTrigger() {
        this.overDelayTime = Integer.MAX_VALUE;
        this.levelUploadSwitch = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 11;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppSetGpiTrigger(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.gpiPort = bitBufferWrap.getIntUnsigned(8);
                this.triggerStart = bitBufferWrap.getIntUnsigned(8);
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned > 0) {
                    this.triggerCommand = bitBufferWrap.get(new byte[intUnsigned]);
                    this.hexTriggerCommand = HexUtils.bytes2HexString(this.triggerCommand);
                }
                this.triggerOver = bitBufferWrap.getIntUnsigned(8);
                while (bitBufferWrap.position() / 8 < bArr.length) {
                    byte b = bitBufferWrap.getByte();
                    if (b == 1) {
                        this.overDelayTime = bitBufferWrap.getIntUnsigned(16);
                    } else if (b == 2) {
                        this.levelUploadSwitch = bitBufferWrap.getIntUnsigned(8);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public int getGpiPort() {
        return this.gpiPort;
    }

    public void setGpiPort(int i) {
        this.gpiPort = i;
    }

    public int getTriggerStart() {
        return this.triggerStart;
    }

    public void setTriggerStart(int i) {
        this.triggerStart = i;
    }

    public byte[] getTriggerCommand() {
        return this.triggerCommand;
    }

    public void setTriggerCommand(byte[] bArr) {
        this.triggerCommand = bArr;
    }

    public int getTriggerOver() {
        return this.triggerOver;
    }

    public void setTriggerOver(int i) {
        this.triggerOver = i;
    }

    public int getOverDelayTime() {
        return this.overDelayTime;
    }

    public void setOverDelayTime(int i) {
        this.overDelayTime = i;
    }

    public int getLevelUploadSwitch() {
        return this.levelUploadSwitch;
    }

    public void setLevelUploadSwitch(int i) {
        this.levelUploadSwitch = i;
    }

    public String getHexTriggerCommand() {
        return this.hexTriggerCommand;
    }

    public void setHexTriggerCommand(String str) {
        if (StringUtils.isNullOfEmpty(str)) {
            return;
        }
        this.hexTriggerCommand = str;
        this.triggerCommand = HexUtils.hexString2Bytes(this.hexTriggerCommand);
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
        bitBufferAllocateDynamic.putLong(this.gpiPort, 8);
        bitBufferAllocateDynamic.putLong(this.triggerStart, 8);
        byte[] bArr = this.triggerCommand;
        if (bArr != null && bArr.length >= 0) {
            bitBufferAllocateDynamic.putInt(bArr.length, 16);
            bitBufferAllocateDynamic.put(this.triggerCommand);
        } else {
            bitBufferAllocateDynamic.putInt(0, 16);
        }
        bitBufferAllocateDynamic.putLong(this.triggerOver, 8);
        if (Integer.MAX_VALUE != this.overDelayTime) {
            bitBufferAllocateDynamic.putInt(1, 8);
            bitBufferAllocateDynamic.put(this.overDelayTime, 16);
        }
        if (Integer.MAX_VALUE != this.levelUploadSwitch) {
            bitBufferAllocateDynamic.putInt(2, 8);
            bitBufferAllocateDynamic.putLong(this.levelUploadSwitch, 8);
        }
        this.cData = bitBufferAllocateDynamic.asByteArray();
        this.dataLen = this.cData.length;
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackUnpack() {
        Hashtable<Byte, String> hashtable = new Hashtable<Byte, String>() { // from class: com.gg.reader.api.protocol.gx.MsgAppSetGpiTrigger.1
            {
                put((byte) 0, "Success.");
                put((byte) 1, "Port parameter reader hardware is not supported .");
                put((byte) 2, "Parameters are missing .");
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
