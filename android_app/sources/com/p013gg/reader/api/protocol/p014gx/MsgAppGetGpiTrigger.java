package com.p013gg.reader.api.protocol.p014gx;

import com.p013gg.reader.api.utils.BitBuffer;
import com.p013gg.reader.api.utils.HexUtils;
import com.p013gg.reader.api.utils.StringUtils;
import java.util.Arrays;

/* loaded from: classes.dex */
public class MsgAppGetGpiTrigger extends Message {
    private int gpiPort;
    private String hexTriggerCommand;
    private int levelUploadSwitch;
    private int overDelayTime;
    private byte[] triggerCommand;
    private int triggerOver;
    private int triggerStart;

    public MsgAppGetGpiTrigger() {
        this.overDelayTime = Integer.MAX_VALUE;
        this.levelUploadSwitch = Integer.MAX_VALUE;
        try {
            this.msgType = new MsgType();
            this.msgType.mt_8_11 = EnumG.MSG_TYPE_BIT_APP;
            this.msgType.msgId = (byte) 12;
            this.dataLen = 0;
        } catch (Exception unused) {
        }
    }

    public MsgAppGetGpiTrigger(byte[] bArr) {
        this();
        if (bArr != null) {
            try {
                if (bArr.length <= 0) {
                    return;
                }
                BitBuffer bitBufferWrap = BitBuffer.wrap(bArr);
                bitBufferWrap.position(0);
                this.triggerStart = bitBufferWrap.getIntUnsigned(8);
                int intUnsigned = bitBufferWrap.getIntUnsigned(16);
                if (intUnsigned > 0) {
                    this.triggerCommand = bitBufferWrap.get(new byte[intUnsigned]);
                    this.hexTriggerCommand = HexUtils.bytes2HexString(this.triggerCommand);
                }
                this.triggerOver = bitBufferWrap.getIntUnsigned(8);
                this.overDelayTime = bitBufferWrap.getIntUnsigned(16);
                this.levelUploadSwitch = bitBufferWrap.getIntUnsigned(8);
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

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void pack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.gpiPort, 8);
            this.cData = bitBufferAllocateDynamic.asByteArray();
            this.dataLen = this.cData.length;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.p013gg.reader.api.protocol.p014gx.Message
    public void ackPack() {
        try {
            BitBuffer bitBufferAllocateDynamic = BitBuffer.allocateDynamic();
            bitBufferAllocateDynamic.putLong(this.triggerStart, 8);
            if (this.triggerCommand != null && this.triggerCommand.length >= 0) {
                bitBufferAllocateDynamic.putInt(this.triggerCommand.length, 16);
                bitBufferAllocateDynamic.put(this.triggerCommand);
            } else {
                bitBufferAllocateDynamic.putInt(0, 16);
            }
            bitBufferAllocateDynamic.putLong(this.triggerOver, 8);
            if (Integer.MAX_VALUE != this.overDelayTime) {
                bitBufferAllocateDynamic.put(this.overDelayTime, 16);
            }
            if (Integer.MAX_VALUE != this.levelUploadSwitch) {
                bitBufferAllocateDynamic.putLong(this.levelUploadSwitch, 8);
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
        this.triggerStart = bitBufferWrap.getIntUnsigned(8);
        int intUnsigned = bitBufferWrap.getIntUnsigned(16);
        if (intUnsigned > 0) {
            this.triggerCommand = bitBufferWrap.get(new byte[intUnsigned]);
            this.hexTriggerCommand = HexUtils.bytes2HexString(this.triggerCommand);
        }
        this.triggerOver = bitBufferWrap.getIntUnsigned(8);
        this.overDelayTime = bitBufferWrap.getIntUnsigned(16);
        this.levelUploadSwitch = bitBufferWrap.getIntUnsigned(8);
        setRtCode((byte) 0);
    }

    public String toString() {
        return "MsgAppGetGpiTrigger{gpiPort=" + this.gpiPort + ", triggerStart=" + this.triggerStart + ", triggerCommand=" + Arrays.toString(this.triggerCommand) + ", hexTriggerCommand='" + this.hexTriggerCommand + "', triggerOver=" + this.triggerOver + ", overDelayTime=" + this.overDelayTime + ", levelUploadSwitch=" + this.levelUploadSwitch + '}';
    }
}
